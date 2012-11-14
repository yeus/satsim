#!/usr/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: katalogreport.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

import sys
from odspy import ods2table
import numpy as np

#organisieren aller Daten in Python Dictionaries:
def tablereorder():
  #laden der Tabellen aus *.ods Datei
  tables=ods2table('bausteinkatalog.ods')
  
  referenzmissionentable=np.array(tables["Referenzmissionen"])
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

  #Organisierung der Bausteineigenschaften
  bausteine={}
  for line in bausteinetable[3:]:
    if line[0] not in bausteine:
      bsdata={"Komponenten":{}, "Bemerkung":"", "Einsatzgebiet":""}
      bausteine[line[0]]=bsdata
      
    #Zuordnung der Komponenten zu einzelnen Bausteinen
    bausteine[line[0]]["Komponenten"].update({line[3]:line[4]})
    #Zuordnung der restlichen Werte
    bausteine[line[0]].update({"Bemerkung":line[2], "Einsatzgebiet":line[1]})
    
  #Leerzeilen löschen
  bausteine.pop("0")
  
  #Organisieren der Referenzmissionen
  referenzmissionen={}
  for line in referenzmissionentable[3:]:
    if line[0] not in referenzmissionen:
      satdata={"Bausteine":[]}
      referenzmissionen[line[0]]=satdata
      
    #Zuordnung der Komponenten zu einzelnen Bausteinen
    referenzmissionen[line[0]]["Bausteine"].append({"type":line[1],"pos":line[2],"rot":line[3]})
     
  #Leerzeilen löschen
  referenzmissionen.pop("0")
  
  return bausteine, komponenten, referenzmissionen

#Berechnet Gesamtmasse einzelner Bausteine/Referenzmissionen speichert sie in der Datenbank
def calculatemasses(bausteine, referenzmissionen):
  for bskey,bsval in bausteine.items():
    mass=0
    for kp,num in bsval["Komponenten"].items():
      mass+=float(komponenten[kp]["Masse"])*int(num)
    bsval["Masse"]=mass
    
  for mskey,msval in referenzmissionen.items():
    mass=0
    for bs in msval["Bausteine"]:
      if bs["type"] in bausteine:
        mass+=float(bausteine[bs["type"]]["Masse"])
    msval["Masse"]=mass

def listbsmass(bausteine):
  bsmasslist=set((key, value["Masse"]) for key,value in bausteine.items())
  return sorted(bsmasslist, key=lambda bs: -bs[1])

def listmsmass(referenzmissionen):
  msmasslist=set((key, value["Masse"]) for key,value in referenzmissionen.items())
  return sorted(msmasslist, key=lambda ms: -ms[1])

def set2str(dt):
  out=("="*59)+" "+"="*33+"\n"
  for line in dt:
    out+="{:60}{:30.2f} kg\n".format(line[0],line[1])
  out+=("="*59)+" "+"="*33+"\n"
  return out

bausteine, komponenten, referenzmissionen=tablereorder()

def writereport():
  calculatemasses(bausteine, referenzmissionen)
  
  
  report="""
Bausteinreport:
===============

Referenzmissionen:
------------------

{0}

Bausteinmassen:
---------------

{1}""".format(set2str(listmsmass(referenzmissionen)),set2str(listbsmass(bausteine)))

  return report

def report2file(report):
  reportfile=open("./Bausteinreport.rst","w")
  reportfile.write(report)
  reportfile.close()

helpstring="""
Usage: katalogreport <Options>

Options:

"w": report2file(writereport())
"p": print(writereport())
"""

def main(argv=None):
  if argv is None:
    argv = sys.argv
    if len(argv)==1: print(helpstring)
    try:
      if argv[1]=="w": report2file(writereport())
      if argv[1]=="p": print(writereport())
    except:
      raise
      return

if __name__ == "__main__":
  main()