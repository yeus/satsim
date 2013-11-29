#! /usr/bin/env morseexec

""" Basic MORSE simulation scene for <virtual_satellite> environment

Feel free to edit this template as you like!
"""

import morse
from morse.builder import *
from virtual_satellite.builder.robots import Cubesat, Earth, Sun

from math import pi

import numpy as np

#vec3d = lambda x,y,z: numpy.array([x,y,z])

# Add the MORSE mascott, MORSY.
# Out-the-box available robots are listed here:
# http://www.openrobots.org/morse/doc/stable/components_library.html
#
# 'morse add robot <name> virtual_satellite' can help you to build custom robots.
#robot = Morsy()

cubesat = Cubesat()

earth = Earth()
sun = Sun()

# The list of the main methods to manipulate your components
# is here: http://www.openrobots.org/morse/doc/stable/user/builder_overview.html
#position=np.array([0.0,-10.0,0.0])
#position=vec3d(*position)
#earth.translate(*position)

cubesat.translate(0,0,0)

# Add a motion controller
# Check here the other available actuators:
# http://www.openrobots.org/morse/doc/stable/components_library.html#actuators
#
# 'morse add actuator <name> virtual_satellite' can help you with the creation of a custom
# actuator.
# motion = MotionVW()
# robot.append(motion)


# Add a keyboard controller to move the robot with arrow keys.
# keyboard = Keyboard()
# robot.append(keyboard)

# Add a pose sensor that exports the current location and orientation
# of the robot in the world frame
# Check here the other available actuators:
# http://www.openrobots.org/morse/doc/stable/components_library.html#sensors
#
# 'morse add sensor <name> virtual_satellite' can help you with the creation of a custom
# sensor.
#pose = Pose()
#cubesat.append(pose)

# To ease development and debugging, we add a socket interface to our robot.
#
# Check here: http://www.openrobots.org/morse/doc/stable/user/integration.html 
# the other available interfaces (like ROS, YARP...)
cubesat.add_default_interface('socket')

# creates a new instance of the sensor
#videocamera = VideoCamera()
#
## place your component at the correct location
#videocamera.translate(0,0,0)
#videocamera.rotate(0,0,pi)
#
#cubesat.append(videocamera)
#videocamera.add_interface('socket')


# set 'fastmode' to True to switch to wireframe mode
env = Environment('space.blend', fastmode = False)
#env.set_material_mode(material_mode='GLSL')
#Material mode to use for rendering
#
#- ``SINGLETEXTURE`` Singletexture, Singletexture face materials.
#- ``MULTITEXTURE`` Multitexture, Multitexture materials.
#- ``GLSL`` GLSL, OpenGL shading language shaders.


#env.set_stereo(mode='ANAGLYPH', eye_separation=0.1, stereo='STEREO')
#        """ Configure to render image in stereo mode
#
#        (anaglyphs allows to see in 3d with special red-cyan glasses)
#
#        :param mode: Stereographic techniques. enum in ['QUADBUFFERED',
#                     'ABOVEBELOW', 'INTERLACED', 'ANAGLYPH', 'SIDEBYSIDE',
#                     'VINTERLACE'], default 'ANAGLYPH'
#        :param eye_separation: Distance between the eyes. float in [0.01, 5], default 0.1
#        :param stereo: enum in ['NONE', 'STEREO', 'DOME'], default 'STEREO'
#        """


env.place_camera(np.array([1.0,2.0,1.0]))
env.aim_camera([pi*0.4,0.0,pi*0.9])
env.set_camera_clip(0.7,50.0e6)
env.set_camera_speed(1000.0)
env.set_gravity(gravity=0.0)
env.set_horizon_color(color=(0.0, 0.0, 0.0))
#bpymorse.fullscreen()
env.fullscreen(fullscreen=True)