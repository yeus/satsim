from morse.builder import *

from morse.core import blenderapi
import mathutils
from mathutils import *
import numpy as np
from numpy import pi

#iboss imports
#add path for buildingblock catalogue
import sys, os
#print(sys.path)
catalog_path = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '../../../../../catalog/'))
sys.path.insert(0,catalog_path)

import iboss_catalogue
import imp
imp.reload(iboss_catalogue)

class Satellite(GroundRobot):
    """
    A template robot model for satellite, with a motion controller and a pose sensor.
    
    #builds the robot in the blender scene BEFORE the actual game environment gets started
    """
    def __init__(self, name = None, debug = True):
        # satellite.blend is located in the data/robots directory
        Robot.__init__(self, 'vs/robots/satellite.blend', name)
        self.properties(classpath = "vs.robots.satellite.Satellite")

        false_layer = [False]*20
        orig_layer = [False]*20
        orig_layer[5] = True

        def cpobj(original):
            #bpy.ops.object.select_all(action='TOGGLE')
            blenderapi.bpy.data.objects[original].layers = [True]*20
            blenderapi.bpy.ops.object.select_pattern(pattern=original, extend = False) #select the object to-be copied            
            blenderapi.bpy.ops.object.duplicate(linked = True, mode = 'TRANSLATION')   

            ob = blenderapi.bpy.context.selected_objects[0]
            ob.layers = [True]*2 + [False]*18
            blenderapi.bpy.data.objects[original].layers = orig_layer
            return ob

        #select layer to put the satellite into:
        #bpy.data.scenes['Scene'].layers=[False]*19+[True]
        #import packages from Satellite blender file TODO: move this into default "scene file" or find another solution with importing python files or something similar
        #from genutils import copyobject as cpobj
        #from arrows import arrow
        
        objlist = ["2x2x2","baustein","düsenbaustein"]
        arrows = ["cross", "pfeil.spitze", "pfeil.schaft"]
        other = ["Empty"]
        
        #move generic objects to different layer
        for obj in objlist + arrows + other + [i+".transparent" for i in objlist]:
          blenderapi.bpy.data.objects[obj].layers = orig_layer
          
        #build a generic Satellite around a 2x2x2 central structure
        cat=iboss_catalogue.Catalog()
        catalog_path2 = os.path.join(catalog_path, "bausteinkatalog/")
        print("Use catalog in: {}".format(catalog_path2))
        cat.loadxmldata(directory = catalog_path2)
        #print(cat.sat)
        mission = cat.sat["EnMAP"]
        mission.update()

        print("\n\n Build mission: ", mission.name)
        
        ##TODO:  mit dieser Seite hier:
        ##http://www.blender.org/documentation/blender_python_api_2_69_release/info_tips_and_tricks.html
        ##ein GUI entwickeln

        ##render satellit with forces
        mode=""#".transparent"  #transparent render
        mo_id_counter = 0
        for bs in mission._bb:
            mo_id_counter += 1
            if bs.name   == "test Lageregelungsbaustein": newobj=cpobj("düsenbaustein"+mode)
            elif bs.name == "Kernstruktur2x2x2": newobj=cpobj("2x2x2"+mode)
            else: newobj=cpobj("baustein"+mode)
            newobj.location=Vector(bs.pos) - Vector(mission.com)
            newobj.rotation_mode="XYZ"
            newobj.rotation_euler=bs.orientation*pi/180
            newobj["blocktype"]=bs.name
            newobj["mission"]=mission.name
            newobj["test"]={"test2":1.0,"y":2.0}
            newobj.name="{bs.name}.{}".format(mo_id_counter, bs=bs)
            newobj.parent = blenderapi.bpy.data.objects["satellite"]
            
            #if mo_id_counter > 2: break
            #TODO: hier python drivers hinzufügen, um die Position von Objekten zu bestimmen
            #http://blenderartists.org/forum/archive/index.php/t-209910.html?s=078384d8fb1235542564a869f33b6ab0
                
            #render forces
            #if bs.name=="test Lageregelungsbaustein": 
                #for co in bs.components:
                    #if co.type=="testdüse": 
                        ##newar=arrow(newobj.location-Vector((0.2,0.2,0.2))+Vector(co["pos"])*0.4,Vector(co["th_vec"])*0.1,0.1)
                        #newar=arrow(-Vector((0.2,0.2,0.2))+Vector(co.pos)*0.4,Vector(co.th_vec).normalized()*0.3,0.1)
                        #newar.name="force: {}{}".format(co.pos,co.th_vec)
                        #newar.parent=newobj

        #blenderapi.bpy.ops.object.empty_add(type='PLAIN_AXES', view_align=False, location=(0,0,0), layers=[True]*2 + [False]*18) #add Center of Gravity
        #com = blenderapi.bpy.context.selected_objects[0]
        #com.name = "com"
        #blenderapi.bpy.data.objects["satellite"].parent = com
        #blenderapi.bpy.data.objects["satellite"].location = -mission.com
        
        #create cog as parent of the satellite compound

        ##render center of gravity:
        #newobj=cpobj("cross")
        #newobj.location=mission.com
        
        ###############
        #print(mission.com)
        #sce = blenderapi.bge.logic.getCurrentScene()
        #obj_list = sce.objects
        
        #con=blenderapi.bge.logic.getCurrentController()
        #own = con.owner
        #obj=sce.addObject("Cone", own)
        #obj.localPosition=(0,0,0)





        ###################################
        # Actuators
        ###################################

        forcetorque = ForceTorque()
        
        forcetorque.translate(1,0,0)
        forcetorque.rotate(0,0,0)
        self.append(forcetorque)
        
        forcetorque.add_interface('ros', topic = 'iboss/forcetorque')


        ####################################
        ## Sensors
        ####################################

        self.pose = Pose()
        self.append(self.pose)
        self.pose.add_interface('ros', topic = 'iboss/pose')
        
        """ Odometry Sensor """
        odometry = Odometry()
        self.append(odometry)
        odometry.add_interface('ros', topic="/iboss/odom")
        
        """ IMU    """
        # An IMU sensor is preinstalled in MORSE and can be used with ROS
        self.imu = IMU()
        self.imu.translate(0.0, 0.0, 0.0)
        self.imu.rotate(0.0, 0.0, 0.0)
        self.append(self.imu)
        self.imu.add_interface('ros', topic="/iboss/imu_data")


        """ Video Camera """
        videocamera = VideoCamera()
        videocamera.translate(0,0,5.0)
        videocamera.rotate(0,0,0)
        self.append(videocamera)
        videocamera.add_interface('ros', topic = '/iboss/camera')
        
        """ Depth camera """
        #self.depthimg = DepthCamera()
        #self.depthimg.translate(0.0, 1.0, 0.0)
        #self.depthimg.rotate(0.0,0.0,-pi*0.5)
        #self.append(self.depthimg)
        #self.depthimg.add_interface('ros', topic="Depth_IMG")

