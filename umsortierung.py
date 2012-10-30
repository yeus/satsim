#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: umsortierung.py
# author: - Thomas Meschede
#
# description: zur Umsortierung von Tabellen
#
# modified:
#       - 2012 10 25 - Thomas Meschede 

import sys
from odspy import ods2table
import numpy as np
import katalogreport as kr


bstable=kr.bausteine

ums=open("umsortiert.csv","w")

for bsk,bsv in bstable.items():
  for kp,no in bsv["Komponenten"].items():
    printstring="{0}:{1}:{2}:{3}:{4}\n".format(bsk,bsv["Einsatzgebiet"],bsv["Bemerkung"],kp,no)
    #print(printstring.encode("utf-8","ignore"))
    ums.write(printstring)
  ums.write("\n")
  #print("",)

ums.close()