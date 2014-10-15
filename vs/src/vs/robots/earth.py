import logging; logger = logging.getLogger("morse." + __name__)
import morse.core.robot

from morse.core import blenderapi
from mathutils import *

from numpy import cos,sin,pi

import numpy as np

vec3d=lambda x,y,z: np.array([x,y,z])

class Earth(morse.core.robot.Robot):
    """ 
    Class definition for the earth robot.
    """

    _name = 'earth robot'

    def __init__(self, obj, parent=None):
        """ Constructor method

        Receives the reference to the Blender object.
        Optionally it gets the name of the object's parent,
        but that information is not currently used for a robot.
        """

        logger.info('%s initialization' % obj.name)
        super(self.__class__, self).__init__(obj, parent)

        # Do here robot specific initializations
        logger.info('Earth initialized')
        
        planet = self.bge_object #is a "bge.types.KX_GameObject" type object
        #planet.name="earth"
        
        scale=1000.0        
        
        self.size=6.3710*scale*2
        print(planet.worldScale)        
        planet.worldScale=[self.size]*3
        
        self.alpha=pi*0.8
        self.rotspeed=pi*0.3
        self.p=15.0000*scale
#       planet.worldPosition( [speed,0,0], True )
#       planet.worldRotation( [0,0,rotation], True )
        self.move()

    def default_action(self):
        """ Main loop of the robot
        """
        self.move()
    
    def move(self):
        dt=1.0/blenderapi.bge.logic.getLogicTicRate()
        
        self.alpha+=dt*2.0*pi/(180.0*60) #todo implement "real" movement of a satellite (FMU model?)
        self.rotspeed+=dt*2.0*pi/(3600.0*24)
        planet = self.bge_object #is a "bge.types.KX_GameObject" type object
        planet.worldPosition=vec3d(cos(self.alpha), sin(self.alpha),0.0)*self.p
        planet.worldOrientation=vec3d(0.0,0.0,self.rotspeed)