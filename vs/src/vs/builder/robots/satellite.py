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
from iboss_catalogue import vec
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
        #get center of satellite
        mission.center = mission._bb[0].pos + mission._bb[0].com #bb[0] should be the "Kernstruktur"
        sat = blenderapi.bpy.data.objects["satellite"]

        print("\n\n Build mission: ", mission.name)
        
        ##TODO:  mit dieser Seite hier:
        ##http://www.blender.org/documentation/blender_python_api_2_69_release/info_tips_and_tricks.html
        ##ein GUI entwickeln

        ##render satellit with forces
        mode=""#".transparent"  #transparent render
        mo_id_counter = 0
        bs_mapping = {"Kernstruktur2x2x2":"2x2x2"}
        for bs in mission._bb:
            mo_id_counter += 1
            #if mo_id_counter > 5: break
            #if bs.name   == "test Lageregelungsbaustein": newobj=cpobj("düsenbaustein"+mode)
            if bs.name == "Kernstruktur2x2x2": 
              newobj=cpobj(bs_mapping[bs.name]+mode)
              newobj.location=Vector(bs.pos) - Vector(mission.center)#- Vector(mission.com)
              newobj.parent = blenderapi.bpy.data.objects["satellite"]
              newobj.game.physics_type = 'NO_COLLISION'
              
              #set physics parameters
              sat.game.use_sleep = False
              sat.game.use_ghost = True
              sat.game.physics_type = 'RIGID_BODY'
              sat.game.mass = bs.mass
              sat.game.radius = 1.0 #must be relativly large, because otherwise the model gets messed up
              #sat.game.rotation_damping = 0.0
              #sat.game.damping = 0.0
            else: 
              newobj = cpobj("baustein"+mode)
              newobj.location=Vector(bs.pos) - Vector(mission.center)#- Vector(mission.com)
              
            newobj.rotation_mode="XYZ"
            newobj.rotation_euler=bs.orientation*pi/180
            newobj["blocktype"]=bs.name
            newobj["mission"]=mission.name
            newobj.name="{bs.name}.{}".format(mo_id_counter, bs=bs)
            
            if bs.name not in ["Kernstruktur2x2x2"]:
              #newobj.select = True
              #select object for rigid-body-joint addition:
              blenderapi.bpy.context.scene.objects.active = newobj
              blenderapi.bpy.ops.object.constraint_add(type='RIGID_BODY_JOINT')
              newobj.constraints["Rigid Body Joint"].pivot_type = 'GENERIC_6_DOF'
              newobj.constraints["Rigid Body Joint"].target = sat
              newobj.constraints["Rigid Body Joint"].use_linked_collision = True
              newobj.constraints["Rigid Body Joint"].use_limit_x = True
              #newobj.constraints["Rigid Body Joint"].limit_min_x = 0.01
              newobj.constraints["Rigid Body Joint"].use_limit_y = True
              #newobj.constraints["Rigid Body Joint"].limit_min_x = 0.01
              newobj.constraints["Rigid Body Joint"].use_limit_z = True
              newobj.constraints["Rigid Body Joint"].use_angular_limit_z = True
              newobj.constraints["Rigid Body Joint"].limit_angle_max_x = 0.01
              newobj.constraints["Rigid Body Joint"].use_angular_limit_y = True
              newobj.constraints["Rigid Body Joint"].limit_angle_max_y = 0.01
              newobj.constraints["Rigid Body Joint"].use_angular_limit_x = True
              newobj.constraints["Rigid Body Joint"].limit_angle_max_z = 0.01


              newobj.game.mass = 0.5
              newobj.game.rotation_damping = 0.0
              newobj.game.damping = 0.0
              newobj.game.use_sleep = False
              newobj.game.use_ghost = False
              newobj.game.use_collision_bounds = False
              newobj.game.collision_bounds_type = 'BOX'
              newobj.game.radius = 0.01



            #put properties from catalog into blender-data
            for key,val in sorted(vars(self).items()):
              try:
                newobj[key] = val
              except:
                print("unsupported property: {}={}".format(key,val))
            
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
        
        forcetorque.translate(0,0,0)
        forcetorque.rotate(0,0,0)
        self.append(forcetorque)
        
        forcetorque.add_interface('ros', topic = 'iboss/forcetorque')


        ####################################
        ## Sensors
        ####################################

        self.pose = Pose()
        self.append(self.pose)
        self.pose.add_interface('ros', topic = 'iboss/pose')
        
        #""" Odometry Sensor """
        #odometry = Odometry()
        #self.append(odometry)
        #odometry.add_interface('ros', topic="/iboss/odom")
        
        """ IMU    """
        # An IMU sensor is preinstalled in MORSE and can be used with ROS
        self.imu = IMU()
        self.imu.translate(0.0, 0.0, 0.0)
        self.imu.rotate(0.0, 0.0, 0.0)
        self.append(self.imu)
        self.imu.add_interface('ros', topic="/iboss/imu_data")


        """ Video Camera """
        #videocamera = VideoCamera()
        #videocamera.translate(0,0,5.0)
        #videocamera.rotate(0,0,0)
        #self.append(videocamera)
        #videocamera.add_interface('ros', topic = '/iboss/camera')
        
        """ Depth camera """
        #self.depthimg = DepthCamera()
        #self.depthimg.translate(0.0, 1.0, 0.0)
        #self.depthimg.rotate(0.0,0.0,-pi*0.5)
        #self.append(self.depthimg)
        #self.depthimg.add_interface('ros', topic="Depth_IMG")

