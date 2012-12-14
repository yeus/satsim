#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: optsat.py
# author: - Thomas Meschede
# 
# usage: script optimizes a satellite and spits out result in iBoss-XML-Format (todo)
#
# modified:
#       - created: 2012 11 26 - Thomas Meschede

import tableop as taop
import numpy as np
from itertools import product
import iboss
from random import *
from math import *
import copy
import quantities as pq
import saveasxml


vec= lambda x,y,z: np.array([x,y,z])  #create a vector function

def printclasslist(instance):
  for i in instance:
    print("\n"+i.name+":")
    for vname,vval in vars(i).items():
      print("{:30}=  {}".format(vname,vval))

komponenten, bausteine, referenzmissionen=taop.converttable()

#printclasslist(komponenten.values())
#printclasslist(bausteine.values())


#einen generischen Baustein entwerfen:
satsize=vec(3,4,5)

#todo: wie findet man die optimale Anzahl an AOCS-Bausteinen heraus?

#todo:Einen Satelliten einer bestimmten Größe aus einer rein zufälligen Anordnung von Bausteinen zusammensetzen.
#Zusammenbau eines zufälligen Satlliten
#for i in product(range(a),range(b),range(c)):

#todo: satgrid ist die "DNA" des Satelliten
#generation of a satellite:

satgrid=np.ndarray(satsize, dtype=np.object)

#todo orgin to middle of satellite: for pos in np.ndindex(*(satsize*(-0.5))):
for pos in np.ndindex(*(satsize)):
  bb=copy.copy(choice(list(bausteine.values())))
  while(bb.type=="test Lageregelungsbaustein"):
    bb=copy.copy(choice(list(bausteine.values())))
    
  satgrid[pos]=bb 

satgrid[0,0,4]=copy.copy(bausteine["test Lageregelungsbaustein"])
satgrid[0,3,4]=copy.copy(bausteine["test Lageregelungsbaustein"])
satgrid[2,0,4]=copy.copy(bausteine["test Lageregelungsbaustein"])
satgrid[2,3,4]=copy.copy(bausteine["test Lageregelungsbaustein"])

#fitness=len([b for b in mission.bb if b.name=="test Lageregelungsbaustein"])

#organize the grid (rotate buildingblocks, add certain attributes for them):
for pos in np.ndindex(*satsize):
  bs=satgrid[pos]
  bs.pos=pos
  if bs.type=="test Lageregelungsbaustein":
    bs.rot=vec(0,0,0)*pq.deg
  else: satgrid[pos].rot=vec(randrange(4)*90,randrange(4)*90,randrange(4)*90)*pq.deg
  
def getmission():
  mission=iboss.mission("BSP_Mission")
  mission.bb=satgrid.flatten()
  return mission

if __name__ == "__main__":
  mission=getmission()
  saveasxml.savexml("bausteinkatalog/missionen_gen.xml",mission.xml)