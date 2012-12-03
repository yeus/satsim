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
from xml.etree import ElementTree as et
#from lxml import etree as et

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

class component(object):
  def __init__(self,name):
    self.type=name
    self.name=name#
    
  @property
  def xml(self):
    root=et.Element("component")
    root.set("type",self.type)
    for vkey,vvalue in vars(self).items(): 
      newelem=et.Element("property")
      newelem.set("name",vkey)
      newelem.set("value",unicode(vvalue))
      root.append(newelem)
    return root    

class buildingblock(object):
  def __init__(self,name):
    self.size=0.4 #0.4m
    self.name=name
    self.type=name
    self.components=[]
    self.mass=0
    self.com=vec(0,0,0)*self.size
    
  def add_co(self,co,num=1):
    co.num=num
    self.components.append(copy(co))
    if "mass" in vars(co): self.mass+=co.mass*num
    
  def updatemass(self):
    self.mass=0
    for co in self.components:
      self.mass+=co.mass
    return self.mass

class mission(object):
  def __init__(self,name):
    self.bbgap=0.1 #todo aus Tabelle abrufen
    self.bbsize=0.4
    self.name=name
    self.mass=0
    self.type=name
    self._bb=[]#list of building blocks
  
  #adds a new building block to the satellite
  def add_bb(self,bb,pos,rot):
    newbs=copy(bb)
    newbs.pos=pos
    newbs.rot=rot
    if "mass" in vars(bb): self.mass+=bb.mass
    self.bb.append(newbs)
    
  @property
  def bb(self):
    return self._bb
  
  @bb.setter
  def bb(self,value):
    self.mass=sum([bb.mass for bb in value])
    self._bb=value
  
  @bb.deleter
  def bb(self):
    del self._bb
    
  #calculate Center of Gravity for a Mission
  @property
  def com(self):
    self.__com=np.sum([(vec(*bb.pos)*(self.bbsize+self.bbgap))*bb.mass for bb in self.bb],axis=0)/self.mass  #2nd method
    return self.__com