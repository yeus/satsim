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

class component:
  def __init__(self,name):
    self.name=name
    self.Masse=0

class buildingblock:
  def __init__(self,name):
    self.name=name
    self.type=name
    self.components=[]
    
  def add_co(self,co):
    self.components.append(co)

class mission:
  def __init__(self,name):
    self.name=name
    self.type=name
    self.bb=[]#list of building blocks
  
  #adds a new building block to the satellite
  def add_bb(self,baustein,pos,rot):
    newbs=copy(baustein)
    newbs.pos=pos
    newbs.rot=rot
    self.bb.append(newbs)
