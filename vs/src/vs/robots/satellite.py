import logging; logger = logging.getLogger("morse." + __name__)
import morse.core.robot

from morse.core import blenderapi

class Satellite(morse.core.robot.Robot):
    """ 
    Class definition for the satellite robot.
    """

    _name = 'satellite robot'

    def __init__(self, obj, parent=None):
        """ Constructor method

        Receives the reference to the Blender object.
        Optionally it gets the name of the object's parent,
        but that information is not currently used for a robot.
        
        #gets executed within the blender game engine environment
        """

        logger.info('%s initialization' % obj.name)
        morse.core.robot.Robot.__init__(self, obj, parent)

        # Do here robot specific initializations
        logger.info('Component initialized')
        
        #sce = blenderapi.bge.logic.getCurrentScene()
        #obj_list = sce.objects
        
        #con=blenderapi.bge.logic.getCurrentController()
        #own = con.owner
        #obj=sce.addObject("Cone", own)
        #obj.localPosition=(0,0,0)
        
        #main simulation file
        #from itertools import product


        #print("start simulation")


        ##sim=bge.sim

        #dt=1.0/bge.logic.getLogicTicRate()

        #for x,y,z in product(range(-3,1),range(-3,3), range(-3,3)):
            #print("adding object")
            #obj=sce.addObject("baustein.transparent", own)
            ##obj.applyRotation((0,ay,az),1) 
            ##obj.setParent(sv.blobj)

    def default_action(self):
        """ Main loop of the robot
        """

        # This is usually not used (responsibility of the actuators
        # and sensors). But you can add here robot-level actions.
        pass
