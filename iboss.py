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
import odspy

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

class ibossxml(object):
  def xmllist(self):
    return None
  
  def xmlproperty(self,vkey,vvalue):
    newelem=et.Element("property")
    newelem.set("name",vkey)
    newelem.set("value",unicode(vvalue))
    return newelem
  
  @property
  def xml(self):
    root=et.Element(self.__class__.__name__)
    root.set("type",self.type)
    for vkey,vvalue in vars(self).items():
      if vkey not in ["components","_bb"]:
        root.append(self.xmlproperty(vkey,vvalue))
    
    xmllist=self.xmllist()
    if xmllist!=None: root.append(xmllist)  
    
    return root 

class component(ibossxml):
  def __init__(self,name):
    self.type=name
    self.name=name#

class buildingblock(ibossxml):
  def __init__(self,name):
    self.size=0.4 #0.4m
    self.name=name
    self.type=name
    self.components=[]
    self.mass=0
    self.com=vec(0,0,0)*self.size

  def xmllist(self):
    root=et.Element("components")
    for co in self.components:
      newelem=et.Element("component")
      newelem.set("type",co.type)
      newelem.set("pos", str(co.pos))
      newelem.set("rot", str(co.pos))
      newelem.set("th_vec", str(co.pos))
      root.append(newelem)
    return root #so the list gets serialized in xml"""
    
  def add_co(self,co,num=1):
    co.num=num
    self.components.append(copy(co))
    if "mass" in vars(co): self.mass+=co.mass*num
      
  def updatemass(self):
    self.mass=0
    for co in self.components:
      self.mass+=co.mass
    return self.mass

class mission(ibossxml):
  def __init__(self,name):
    self.bbgap=0.1 #todo aus Tabelle abrufen
    self.bbsize=0.4
    self.name=name
    self.mass=0
    self.type=name
    self._bb=[]#list of building blocks
    self.orbparam=odspy.NULL

  def xmllist(self):
    root=et.Element("buildingblocks")
    for bb in self.bb:
      newelem=et.Element("buildingblock")
      newelem.set("type",bb.type)
      newelem.set("pos", str(bb.pos))
      newelem.set("rot", str(bb.rot))
      root.append(newelem)
    return root #so the list gets serialized in xml
    
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