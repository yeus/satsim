#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: generate_paper.py
# author: - Thomas Meschede
#
# modified:
#       - 2014 02 03 - Thomas Meschede

"""generates a paper for conferences""" 


# - new challenges arrise from modular spacecraft
#       - highly specialised classical spacecraft
# goal: we want to have the same performance in modular spacecraft as in classical spacecraft


# definition of AOCS-modes
# entry/exit modes

# flexibility for AOCS developers needed in modular reconfigurable spacecraft
# --> generic modis (point spacecraft to specific points, "plug-in-sensors" etc...)

# characteristics of AOCS modi:
# - attitude accuracy
#       - pointing


#Erdbeobachtungs-Mode von BIRD
#Requirements
#Orbit Determination
#position in orbit per axis
 #100 m
#Time
 #20 msec
#Velocity
 #0.07 km/sec
#Attitude Determination
#pointing knowledge
 #0.1 mrad ≈ 0.2 arcmin
#Attitude Control
#pointing accuracy per axis
 #± 2 mrad ≈ 7 arcmin (3σ)
#pointing stability (jitter)
 #5 arcmin/sec
#slew rate
 #1.0 °/sec
#drift rate
 #1°/hr, 5° max.
#pointing range per axis
 #±180°
#payload and antenna pointing directions
 #Earth, nadir,
#Satellitenentwurf
 
# thruster events / resonance?
# electric thrusters

# definition of maneuvres

# Bestimmung der Störmomente

# Bestimmung von Pointing-Fehlern

# - accuracy of attitude knowledge
# - Base configuration of Sensors and redundancies
# - base configuration of aktuators and redundancies


# - concentration on modularity aspects of subsystems, especially AOCS

# control strategies:
#       - passive AOCS modules
#       - active controlled AOCS

# - altitude maintanance strategy (plot altitude over years)

# - systemsimulation

# - graph of an attitude simulation model

# - micrometeorites impacts

# - example: change in attitude curves when a satellite gets reconfigured
# - compare with classical mission (for example enmap)
# - DeltaV, accuracy etc...
# - plot performance of a satellite over a range of different configurations

# performance of reaction wheels in big satellites (they have to be arranged in a "funny" way) try different arrangements

# für die Simulation: blender mit python? oder direkt in Modelica und anschließend als FMU in blender?