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
import copy
import xml.etree.ElementTree as et


def loadxmldata(filename='bausteinkatalog/katalog1.0.xml'):
  data = et.parse(filename)
  data = data.getroot()

  co_list=data.find("components")
  bs_list=data.find("buildingblocks")

  components=dict()
  for i in co_list:
    new_co=iboss.component(i.find("name").text)
    for xmlprop in i:  #add properties
      new_co.addxmlprop(xmlprop)
    components[new_co.name]=new_co
    
  buildingblocks=dict()
  for i in bs_list:
    new_bs=iboss.buildingblock(i.find("name").text)
    for xmlprop in i:
      if xmlprop.tag=="components":
        for co in xmlprop:
          new_co=copy.copy(components[co.attrib["type"]])
          if co.attrib.has_key("num"): new_co.num=int(co.attrib["num"])
          if co.attrib.has_key("pos"): new_co.pos=iboss.str2vec(co.attrib["pos"])
          if co.attrib.has_key("th_vec"): new_co.th_vec=iboss.str2vec(co.attrib["th_vec"])
          new_bs.add_co(new_co)
      else: new_bs.addxmlprop(xmlprop)
    buildingblocks[new_bs.name]=new_bs

  mission=dict()
  
  return components, buildingblocks, mission
  