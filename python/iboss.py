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
pq.constants.E0=pq.UnitConstant('Solar constant',1367*pq.W/pq.m**2,'E0')

#in python3:
def unicode(something):
  return str(something)

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

#convert vector to string (python list)
def vec2str(vec):
  return "{},{},{}".format(*vec)

#convert string to vector (python list)
def str2vec(stringvec): return vec(*[float(i) for i in stringvec.split(",")])
def str2vecint(stringvec): return vec(*[int(i) for i in stringvec.split(",")])

def prettyprintxml(xmltree):
  XML=et.tostring(xmltree,encoding="utf-8")
  XML=xml.dom.minidom.parseString(XML)
  return XML.toprettyxml()

class ibossxml(object):
  def xmllist(self):
    return None
  
  #todo: XML vektoren einlesen
  def addxmlprop(self,xmlprop):
    #convert to floats and vectors
    try:
      if xmlprop.tag in ["com","pos","th_vec","size"]: 
        val=self.xml2vec(xmlprop)
      else: 
        try:
          val=float(xmlprop.text)
        except ValueError: 
          val=xmlprop.text
    except:
      raise
      print("hat nicht funktioniert",xmlprop.text)

      
    #find out unit
    unit=xmlprop.get("unit")
    if unit: 
      unit=pq.Quantity(1,unit)
    else: unit=1
    
    vars(self)[xmlprop.tag]=val*unit
  
  @classmethod
  def xml2vec(cls,xmlvec):
    vec=[]
    for i in xmlvec:
      vec.append(float(i.text))
    return vec 

  @classmethod
  def vec2xml(cls,vec):
    x,y,z=et.Element("x"),et.Element("y"),et.Element("z")
    x.text=unicode(vec[0])
    y.text=unicode(vec[1])
    z.text=unicode(vec[2])
    return (x,y,z)
  
  @classmethod
  def property2xml(cls,vkey,vvalue):
    newelem=et.Element(vkey)
    #newelem=et.Element("property")
    if isinstance(vvalue,pq.Quantity): 
      newelem.set("unit",vvalue.dimensionality.string)
      if vvalue.size==1 :newelem.text=unicode(vvalue.magnitude)
      else: newelem.extend(cls.vec2xml(vvalue.magnitude))#vec2str(vvalue.magnitude))
    else: 
      try:
        if vvalue.size>1: newelem.extend(cls.vec2xml(vvalue))
        else: newelem.text=unicode(vvalue)
      except AttributeError: #in case of vvalue not beeing an array
        newelem.text=unicode(vvalue)
        
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

#end class ibossxml

class component(ibossxml):
  def __init__(self,cotype):
    self.type=cotype
    self.name=cotype#
    self.mass=0
  
  #def addxmlprop(self,xmlprop):
  #  super(FileInfo, self).addxmlprop(self,xmlprop)

class buildingblock(ibossxml):
  def __init__(self,bbtype):
    self.blocksize=0.4*pq.m #0.4m
    self.size=vec(1,1,1)*pq.blocks
    self.name=bbtype
    self.type=bbtype
    self.components=[]
    self.mass=0*pq.kg
    self.power=0*pq.W
    self.com=vec(0,0,0)*self.blocksize

  def xmllist(self):
    root=et.Element("components")
    for co in self.components:
      newelem=et.Element("component")
      newelem.set("type",co.type)
      if hasattr(co,"pos"): newelem.append(self.property2xml("pos",co.pos))#"pos", vec2str(co.pos))
      if hasattr(co,"rot"): newelem.append(self.property2xml("rot",co.rot))#set("rot", vec2str(co.rot.magnitude))
      if hasattr(co,"th_vec"): newelem.append(self.property2xml("th_vec",co.th_vec))#.set("th_vec", vec2str(co.th_vec))
      if hasattr(co,"num"): 
        if co.num!=1: newelem.set("num", unicode(co.num)) #if it is just one component number does not matter
      root.append(newelem)
    return root #so the list gets serialized in xml"""
    
  def add_co(self,co): #todo variable length argument list
    self.components.append(copy(co))
    if "num" not in vars(co): co.num=1
    if "mass" in vars(co): self.mass+=co.mass*co.num
  
  def update(self):
    self.power=0*pq.W
    for CO in self.components:
      if "power_max" in vars(CO): self.power+=CO.power_max*0.3
    self.power+=(5*pq.W)
    self.updatemass()
  
  def updatemass(self):
    self.mass=0*pq.kg
    for co in self.components:
      if "num" in vars(co): num=co.num
      else: num=1
      self.mass+=co.mass*num
    return self.mass

class mission(ibossxml):
  def __init__(self,mitype):
    self.bbgap=0.1 *pq.m#todo aus Tabelle abrufen
    self.bbsize=0.4 *pq.m
    self.name=mitype
    self.mass=0*pq.kg
    self.type=mitype
    self._bb=[]#list of building blocks
    self.orbparam="2-line-elem"

  def xmllist(self):
    root=et.Element("buildingblocks")
    for bb in self.bb:
      newelem=et.Element("buildingblock")
      newelem.set("type",bb.type)
      newelem.append(self.property2xml("pos",bb.pos))#.set("pos", vec2str(bb.pos))  #is dimensionless
      newelem.append(self.property2xml("rot",bb.rot))#.set("rot", vec2str(bb.rot.magnitude))
      root.append(newelem)
    return root #so the list gets serialized in xml
    
  #adds a new building block to the satellite
  def add_bb(self,bb,pos,rot):  #todo variable length argument list
    newbs=copy(bb)
    newbs.pos=pos
    newbs.rot=rot
    newbs.name=newbs.type
    self.bb.append(newbs)
   
  def update(self):
    self.mass=self.massgen
    
  @property
  def massgen(self):
    return np.sum([bb.mass for bb in self.bb])*pq.kg
    
  @property
  def bb(self):
    return self._bb
  @bb.setter
  def bb(self,value): #todo remove this function
    self._bb=value
  @bb.deleter
  def bb(self):
    del self._bb
    
  #calculate Center of Gravity for a Mission
  @property
  def com(self):
    self.__com=np.sum([(vec(*bb.pos)*(self.bbsize+self.bbgap))*bb.mass for bb in self.bb],axis=0)*pq.kg*pq.m/self.massgen  #2nd method
    return self.__com