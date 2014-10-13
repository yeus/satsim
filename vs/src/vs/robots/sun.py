import logging; logger = logging.getLogger("morse." + __name__)
import morse.core.robot

from morse.core import blenderapi

from numpy import cos,sin,pi

import numpy as np

vec3d=lambda x,y,z: np.array([x,y,z])

class Sun(morse.core.robot.Robot):
    """ 
    Class definition for the sun robot.
    """

    _name = 'sun robot'

    def __init__(self, obj, parent=None):
        """ Constructor method

        Receives the reference to the Blender object.
        Optionally it gets the name of the object's parent,
        but that information is not currently used for a robot.
        """

        logger.info('%s initialization' % obj.name)
        super(self.__class__, self).__init__(obj, parent)

        planet = self.bge_object #is a "bge.types.KX_GameObject" type object
        #planet.name="earth"
        
        scale=10000.0       
        
        self.size=scale*2
        #print(planet.worldScale)        
        planet.worldScale=[self.size]*3
        planet.worldPosition=[scale*10,0.0,0.0]
        planet.worldOrientation=[0.0,pi*0.5,0.0]


    def default_action(self):
        """ Main loop of the robot
        """
        pass
    

