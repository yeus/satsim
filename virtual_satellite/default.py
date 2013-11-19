#! /usr/bin/env morseexec

""" Basic MORSE simulation scene for <virtual_satellite> environment

Feel free to edit this template as you like!
"""

import morse
from morse.builder import *
from virtual_satellite.builder.robots import Cubesat

from math import pi

# Add the MORSE mascott, MORSY.
# Out-the-box available robots are listed here:
# http://www.openrobots.org/morse/doc/stable/components_library.html
#
# 'morse add robot <name> virtual_satellite' can help you to build custom robots.
#robot = Morsy()

cubesat = Cubesat()

# The list of the main methods to manipulate your components
# is here: http://www.openrobots.org/morse/doc/stable/user/builder_overview.html
cubesat.translate(0.0, 0.0, 0.0)

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
pose = Pose()
cubesat.append(pose)

# To ease development and debugging, we add a socket interface to our robot.
#
# Check here: http://www.openrobots.org/morse/doc/stable/user/integration.html 
# the other available interfaces (like ROS, YARP...)
cubesat.add_default_interface('socket')


# set 'fastmode' to True to switch to wireframe mode
env = Environment('LEO.blend', fastmode = False)
env.place_camera([0.0,2.0,1.0])
env.aim_camera([pi*0.4,0.0,pi])
env.set_camera_clip(0.1,100000.0e3)
env.set_gravity(gravity=0.0)
env.set_horizon_color(color=(0.0, 0.0, 0.0))