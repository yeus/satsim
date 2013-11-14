from morse.builder import *

class Bbbasic(Robot):
    """
    A template robot model for bbbasic, with a motion controller and a pose sensor.
    """
    def __init__(self, name = None, debug = True):

        # bbbasic.blend is located in the data/robots directory
        Robot.__init__(self, 'virtual_satellite/robots/bbbasic.blend', name)
        self.properties(classpath = "virtual_satellite.robots.bbbasic.Bbbasic")

        ###################################
        # Actuators
        ###################################


        # (v,w) motion controller
        # Check here the other available actuators:
        # http://www.openrobots.org/morse/doc/stable/components_library.html#actuators
        self.motion = MotionVW()
        self.append(self.motion)

        # Optionally allow to move the robot with the keyboard
        if debug:
            keyboard = Keyboard()
            self.append(keyboard)

        ###################################
        # Sensors
        ###################################

        self.pose = Pose()
        self.append(self.pose)

