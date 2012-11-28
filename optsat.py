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

from __future__ import unicode_literals #so the script is compatible with python3

import tableop as taop
import numpy as np
from itertools import product
import iboss
from random import choice

import sys
version=sys.version_info.major

vec= lambda x,y,z: np.array([x,y,z])  #create a vector function

import sys

def printclasslist(instance):
  for i in instance:
    print("\n"+i.name+":")
    for vname,vval in vars(i).items():
      print(("{:30}=  {}").format(vname,vval))

komponenten, bausteine, referenzmissionen=taop.converttable()

#printclasslist(komponenten.values())
#printclasslist(bausteine.values())


#einen generischen Baustein entwerfen:
mission=iboss.mission("BSP_Mission")

satsize=vec(3,4,5)

#todo: wie findet man die optimale Anzahl an AOCS-Bausteinen heraus?

#todo:Einen Satelliten einer bestimmten Größe aus einer rein zufälligen Anordnung von Bausteinen zusammensetzen.
#Zusammenbau eines zufälligen Satelliten:
#for i in product(range(a),range(b),range(c)):
for pos in np.ndindex(*satsize):
  #print(pos)
  mission.add_bb(choice(list(bausteine.values())),pos,(0,0,0))

bs=[b for b in mission.bb if b.name=="test Lageregelungsbaustein"]

printclasslist(bs)