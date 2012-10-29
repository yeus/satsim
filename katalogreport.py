#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: odspy.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

import sys

from odspy import ods2table

import numpy as np

tables=ods2table('bausteinkatalog.ods')

#tables=np.array(tables)
bausteinetable=np.array(tables["Bausteine"])
komponententable=np.array(tables["Komponenten"])

#organisieren der Komponenten in dictionaries:
komponenten={}
for k in komponententable[2:]:
    daten={}
    for i,bez in enumerate(komponententable[0][1:]):
      #print(i+1,bez)
      daten[bez]=k[i+1]
    komponenten[k[0]]=daten


#Massenreport für jeden einzelnen Baustein:
#Berechnung von Bausteineigenschaften
bausteine={}
for bs in bausteinetable[3:]:
  gewicht=0
  bskomponenten={}
  #print("\n\n")
  for bez,k in zip(bausteinetable[2,3:],bs[3:]):
    #print("{}: {}".format(bez,k))
    if int(k)>0: bskomponenten[bez]=int(k)
  
  for bez,num in bskomponenten.items():
    gewicht+=float(komponenten[bez]["Masse"])*int(num)
    
    
  bausteine[bs[0]]={"Komponenten":bskomponenten,"Gewicht":gewicht}
  
def listbsmass(bausteine):
  bsmasslist=set((key, value["Gewicht"]) for key,value in bausteine.items())
  return sorted(bsmasslist, key=lambda bs: -bs[1])

def set2str(dt):
  out=""
  for line in dt:
    out+="{:60}{:30.2f} kg\n".format(line[0],line[1])
  return out

def writereport():
  report="""
Bausteinreport:
===============

Bausteinmassen:
---------------"""

  report+="\n\n"+set2str(listbsmass(bausteine))
  
  return report

def report2file(report):
  reportfile=open("./Bausteinreport.txt","w")
  reportfile.write(report)
  reportfile.close()

def main(argv=None):
  if argv is None:
    argv = sys.argv
    try:
      if argv[1]=="w": report2file(writereport())
    except:
      1+1
    
  print(writereport())

if __name__ == "__main__":
  main()