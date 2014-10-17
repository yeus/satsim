#! /usr/bin/env morseexec

""" Basic MORSE simulation scene for <virtual_satellite> environment

Feel free to edit this template as you like!
"""

import morse
import morse.core
from morse.builder import *
from morse.builder.morsebuilder import bpymorse
from vs.builder.robots import Earth, Sun, Satellite
from morse.core import blenderapi
#from bpymorse import bpy
#from blenderapi import bpy

from math import pi

import numpy as np

#vec3d = lambda x,y,z: numpy.array([x,y,z])

# Add the MORSE mascott, MORSY.
# Out-the-box available robots are listed here:
# http://www.openrobots.org/morse/doc/stable/components_library.html
#
# 'morse add robot <name> virtual_satellite' can help you to build custom robots.
#robot = Morsy()

#cubesat = Miss()
iboss = Satellite()

#bb = bbbasic()

earth = Earth()
earth.translate(-70,0,0)
earth.scale = (100,100,100)
earth.rotate(0,0,pi*0.7)
sun = Sun()
sun.translate(50,50,0)
sun.scale = (10,10,10)
sun.rotate(0,pi*0.51,pi*0.25)

# The list of the main methods to manipulate your components
# is here: http://www.openrobots.org/morse/doc/stable/user/builder_overview.html
#position=np.array([0.0,-10.0,0.0])
#position=vec3d(*position)
#earth.translate(*position)

iboss.translate(0,0,0)

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
#cubesat.add_default_interface('socket')

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


#print(dir(bpymorse.bpy.context.screen))
#blenderapi.bpy.context.space_data.show_floor = False
#bpymorse.get_context_window().space_data.show_floor = False

env.set_camera_location(np.array([1.0,2.0,1.0]))
env.set_camera_rotation([pi*0.4,0.0,pi*0.9])
env.set_camera_clip(0.7,50.0e6)
env.set_camera_speed(1000.0)
env.set_gravity(gravity=0.0)
env.set_horizon_color(color=(0.0, 0.0, 0.0))
#env.show_physics(value=True)
#env.set_time_strategy(self, strategy)
#env.set_debug(self, debug=True)
#set_animation_record(self, record=True)
#bpymorse.fullscreen()
#env.fullscreen(fullscreen=True)

#env.set_stereo(mode='ANAGLYPH', eye_separation=0.3, stereo='STEREO')
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