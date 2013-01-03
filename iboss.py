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
import xml.etree.ElementTree as et
import xml.dom.minidom
import xml
import odspy
import quantities as pq
pq.krad=pq.UnitQuantity('kilorad', pq.rads*1000, symbol='krad')
pq.blocks=pq.UnitQuantity('blocks', 1, symbol='blocks')

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

#convert vector to string (python list)
def vec2str(vec):
  return "{},{},{}".format(*vec)

#convert string to vector (python list)
def str2vec(stringvec):
  return vec(*[float(i) for i in stringvec.split(",")])

def prettyprintxml(xmltree):
  XML=et.tostring(xmltree,encoding="utf-8")
  XML=xml.dom.minidom.parseString(XML)
  return XML.toprettyxml()

class ibossxml(object):
  def xmllist(self):
    return None
  
  def addxmlprop(self,xmlprop):
    #convert to floats and vectors
    try:
      val=str2vec(xmlprop.text)
    except TypeError: 
      val=float(xmlprop.text)
    except ValueError: 
      val=xmlprop.text
      
    #find out unit
    unit=xmlprop.get("unit")
    if unit: 
      unit=pq.Quantity(1,unit)
    else: unit=1
    
    vars(self)[xmlprop.tag]=val*unit
  
  def property2xml(self,vkey,vvalue):
    newelem=et.Element(vkey)
    #newelem=et.Element("property")
    if isinstance(vvalue,pq.Quantity): 
      newelem.set("unit",vvalue.dimensionality.string)
      if vvalue.size==1 :vvalue=unicode(vvalue.magnitude)
      else: vvalue=vec2str(vvalue.magnitude)
    else: 
      vvalue=unicode(vvalue)
    
    """xmlvalue=et.Element("value")
    xmlvalue.text=vvalue
    xmlkey=et.Element("name")
    xmlkey.text=vkey
    newelem.extend((xmlkey,xmlvalue))"""
    newelem.text=vvalue
    return newelem
  
  @property
  def xml(self):
    root=et.Element(self.__class__.__name__)
    root.set("type",self.type)
    for vkey,vvalue in vars(self).items():
      if vkey not in ["components","_bb"]:  #sonderbehandlung (erstmal Auslassen) für BS-Listen
        if vvalue!=odspy.NULL: root.append(self.property2xml(vkey,vvalue)) #speichern sämtlicher Klassenvariablen
    
    xmllist=self.xmllist()  # eigentliche Sonderbehandlung von BS-Listen
    if xmllist!=None: root.append(xmllist)  
    
    return root 

  @property
  def xmlstr(self):  return prettyprintxml(self.xml)

class component(ibossxml):
  def __init__(self,name):
    self.type=name
    self.name=name#
    self.mass=0

class buildingblock(ibossxml):
  def __init__(self,name):
    self.blocksize=0.4*pq.m #0.4m
    self.size=vec(1,1,1)*pq.blocks
    self.name=name
    self.type=name
    self.components=[]
    self.mass=0*pq.kg
    self.com=vec(0,0,0)*self.blocksize

  def xmllist(self):
    root=et.Element("components")
    for co in self.components:
      newelem=et.Element("component")
      newelem.set("type",co.type)
      if hasattr(co,"pos"): newelem.set("pos", vec2str(co.pos))
      if hasattr(co,"rot"): newelem.set("rot", vec2str(co.rot.magnitude))
      if hasattr(co,"th_vec"): newelem.set("th_vec", vec2str(co.th_vec))
      if hasattr(co,"num"): 
        if co.num!=1: newelem.set("num", unicode(co.num)) #if it is just one component number does not matter
      root.append(newelem)
    return root #so the list gets serialized in xml"""
    
  def add_co(self,co):
    self.components.append(copy(co))
    if "num" not in vars(co): co.num=1
    if "mass" in vars(co): self.mass+=co.mass*co.num
      
  def updatemass(self):
    self.mass=0*pq.m
    for co in self.components:
      self.mass+=co.mass*co.num
    return self.mass

class mission(ibossxml):
  def __init__(self,name):
    self.bbgap=0.1 *pq.m#todo aus Tabelle abrufen
    self.bbsize=0.4 *pq.m
    self.name=name
    self.mass=0*pq.kg
    self.type=name
    self._bb=[]#list of building blocks
    self.orbparam=odspy.NULL

  def xmllist(self):
    root=et.Element("buildingblocks")
    for bb in self.bb:
      newelem=et.Element("buildingblock")
      newelem.set("type",bb.type)
      newelem.set("pos", vec2str(bb.pos))
      newelem.set("rot", vec2str(bb.rot.magnitude))
      root.append(newelem)
    return root #so the list gets serialized in xml
    
  #adds a new building block to the satellite
  def add_bb(self,bb,pos,rot):
    newbs=copy(bb)
    newbs.pos=pos
    newbs.rot=rot
    newbs.name=newbs.type
    if "mass" in vars(bb): self.mass+=bb.mass
    self.bb.append(newbs)
    
  @property
  def bb(self):
    return self._bb
  
  @bb.setter
  def bb(self,value):
    self.mass=np.sum([bb.mass for bb in value])*pq.kg
    self._bb=value
  
  @bb.deleter
  def bb(self):
    del self._bb
    
  #calculate Center of Gravity for a Mission
  @property
  def com(self):
    self.__com=np.sum([(vec(*bb.pos)*(self.bbsize+self.bbgap))*bb.mass for bb in self.bb],axis=0)*pq.kg*pq.m/self.mass  #2nd method
    return self.__com