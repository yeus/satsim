#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: saveasxml.py
# author: - Thomas Meschede
#
# Läd den bausteinkatalog aus dem im XML-Format in Python
#
#
#
#
# modified:
#       - 2013 01 03 - Thomas Meschede

import iboss
from iboss import pq
import copy
import xml.etree.ElementTree as et

def loadxmldata(filename='bausteinkatalog/katalog.1.1.xml'):
  data = et.parse(filename)
  data = data.getroot()

  co_list=data.find("components")
  bs_list=data.find("buildingblocks")

  #todo XML load routinen in iboss Klassen verschieben
  components=dict()
  for i in co_list:
    new_co=iboss.component(i.find("type").text)
    for xmlprop in i:  #add properties
      new_co.addxmlprop(xmlprop)
    components[new_co.name]=new_co
    
  buildingblocks=dict()
  for i in bs_list:
    new_bs=iboss.buildingblock(i.find("type").text)
    for xmlprop in i:
      if xmlprop.tag=="components":
        for co in xmlprop:
          new_co=copy.copy(components[co.attrib["type"]])
          if co.attrib.has_key("num"): new_co.num=int(co.attrib["num"])
          for co_prop in co:
            #new_co.addxmlprop(co_prop)
            if co_prop.tag=="pos": new_co.pos=iboss.ibossxml.xml2vec(co_prop)*pq.Quantity(1,"blocks")
            if co_prop.tag=="th_vec": new_co.th_vec=iboss.ibossxml.xml2vec(co_prop)*pq.dimensionless
          new_bs.add_co(new_co)
      else: new_bs.addxmlprop(xmlprop)
    buildingblocks[new_bs.name]=new_bs

  mission=dict()
  
  return components, buildingblocks, mission

def loadmission(filename):  
  co,bb,mn=loadxmldata()
  data = et.parse(filename)
  xmlmission = data.getroot()

  mission=iboss.mission(data.find("type").text)
  for xmlprop in xmlmission:
    if xmlprop.tag=="buildingblocks":
      for xmlbb in xmlprop:
        newbb=copy.copy(bb[xmlbb.attrib["type"]])
        mission.add_bb(bb=newbb,pos=iboss.str2vecint(xmlbb.attrib["pos"]),rot=iboss.str2vec(xmlbb.attrib["rot"])*pq.deg)
    else: mission.addxmlprop(xmlprop)
    
  return mission

#data = et.parse("bausteinkatalog/missionen_gen.xml")
#xmlmission = data.getroot()

#mission = xml2mission(xmlmission,bb)

co,bb,ms=loadxmldata()

#calculate power demands for buildingblocks
for BB in bb.values():
  power=0*pq.W
  for CO in BB.components:
    if "power_max" in vars(CO): 
      #print BB.name + ", " + CO.name + ", " + str(CO.power_max)
      power+=CO.power_max*0.3
  power+=(5*pq.W)
  BB.update()
  print u"{}: {}".format(BB.name,power)
  
def test():
  import saveasxml
  saveasxml.saveibosslists(co,bb,ms) #todo: implement as unittest
  pass