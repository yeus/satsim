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
vec= lambda x,y,z: np.array([x,y,z])  #create a vector function

def printclassproperties(instance):
  for i in instance:
    print("\n"+i.name+":")
    for vname,vval in vars(i).items():
      print(u"{:30}={}".format(vname,vval))

komponenten, bausteine, referenzmissionen=taop.converttable()

#printclassproperties(komponenten.values())
printclassproperties(bausteine.values())


#einen generischen Baustein entwerfen:
#mission=taop.iboss_mission("BSP_Mission")

satsize=vec(3,4,5)

#todo: wie findet man die optimale Anzahl an AOCS-Bausteinen heraus?

#todo:Einen Satelliten einer bestimmten Größe aus einer rein zufälligen Anordnung von Bausteinen zusammensetzen.

#Zusammenbau eines zufälligen Satelliten:
#for i in product(range(a),range(b),range(c)):
#for pos in np.ndindex(*satsize):
#  print(pos)
  #mission.add_bb(iboss_bb(),pos,(0,0,0))