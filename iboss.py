#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: iboss.py
# author: - Thomas Meschede
#
# modified:
#       - 2012 11 27 - Thomas Meschede

"""defines data structures for iboss project"""

from copy import copy
import numpy as np

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

class component:
  def __init__(self,name):
    self.type=name
    self.name=name

class buildingblock:
  def __init__(self,name):
    self.size=0.4 #0.4m
    self.name=name
    self.type=name
    self.components=[]
    self.mass=0
    #relativ com
    self.rcom=vec(0.5,0.5,0.5)
    
  def add_co(self,co,num=1):
    co.num=num
    self.components.append(copy(co))
    if "mass" in vars(co): self.mass+=co.mass*num
    
  def updatemass(self):
    self.mass=0
    for co in self.components:
      self.mass+=co.mass
    return self.mass

class mission:
  def __init__(self,name):
    self.name=name
    self.mass=0
    self.type=name
    self.bb=[]#list of building blocks
  
  #adds a new building block to the satellite
  def add_bb(self,bb,pos,rot):
    newbs=copy(bb)
    newbs.pos=pos
    newbs.rot=rot
    if "mass" in vars(bb): self.mass+=bb.mass
    self.bb.append(newbs)
    
  #calculate Center og Gravity of a Mission
  def updateCOM(self):
    com=vec(0,0,0)
    for bb in self.bb:
      i.pos*i.mass      
    return com
