from morse.builder import *

from morse.core import blenderapi
import mathutils
from mathutils import *

class Satellite(GroundRobot):
    """
    A template robot model for satellite, with a motion controller and a pose sensor.
    
    #builds the robot in the blender scene BEFORE the actual game environment
    """
    def __init__(self, name = None, debug = True):

        # satellite.blend is located in the data/robots directory
        Robot.__init__(self, 'vs/robots/satellite.blend', name)
        self.properties(classpath = "vs.robots.satellite.Satellite")

        #select layer to put the satellite into:
        #bpy.data.scenes['Scene'].layers=[False]*19+[True]
        #import packages from Satellite blender file TODO: move this into default "scene file" or find another solution with importing python files or something similar
        from genutils import copyobject as cpobj
        from arrows import arrow
        
        
        for i in range(10):
          newobj=cpobj("baustein")
          newobj.location=Vector([i*2.0,0,0])
          newobj.rotation_mode="XYZ"

        #sce = blenderapi.bge.logic.getCurrentScene()
        #obj_list = sce.objects
        
        #con=blenderapi.bge.logic.getCurrentController()
        #own = con.owner
        #obj=sce.addObject("Cone", own)
        #obj.localPosition=(0,0,0)

        ###################################
        # Actuators
        ###################################


        # (v,w) motion controller
        # Check here the other available actuators:
        # http://www.openrobots.org/morse/doc/stable/components_library.html#actuators
        #self.motion = MotionVW()
        #self.append(self.motion)

        ## Optionally allow to move the robot with the keyboard
        #if debug:
            #keyboard = Keyboard()
            #keyboard.properties(ControlType = 'Position')
            #self.append(keyboard)

        ####################################
        ## Sensors
        ####################################

        #self.pose = Pose()
        #self.append(self.pose)

