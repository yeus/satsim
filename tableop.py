#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: katalogreport.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

import sys
import odspy
from odspy import ods2table
import numpy as np
import iboss
import copy

#convert string to vector (python list)
def str2vec(stringvec):
  return [float(i) for i in stringvec.split(",")]

#organisieren aller Daten in Python Klassen/Datenstrukturen:
def converttable():
  #laden der Tabellen aus *.ods Datei
  tables=ods2table('bausteinkatalog.ods')
  
  referenzmissionentable=np.array(tables["Referenzmissionen"])
  bausteinetable=np.array(tables["Bausteine"])
  komponententable=np.array(tables["Komponenten"])
  
  
  #organisieren der Komponenten in dictionaries:
  komponenten=dict()
  for k in komponententable[2:]:
    newcomponent=iboss.component(k[0])
    for i,bez in enumerate(komponententable[0][1:]):
      if(bez!=odspy.NULL and k[i+1]!=odspy.NULL): 
        try:
          val=float(k[i+1])
        except ValueError:
          val=k[i+1]
        vars(newcomponent).update({bez:val}) #put new class attributes into class according to the table
    komponenten[newcomponent.name]=newcomponent

  #Organisierung der Bausteineigenschaften
  bausteine=dict()
  for line in bausteinetable[3:]:
    if line[0] not in bausteine:
      bs=iboss.buildingblock(line[0])
      bausteine[line[0]]=bs
    else: bs=bausteine[line[0]]
    
    #Zuordnung der Komponenten zu einzelnen Bausteinen
    if odspy.NULL not in line[3:5]:
      newcomponent=copy.copy(komponenten[line[3]])
      if line[5]!=odspy.NULL: newcomponent.pos=str2vec(line[5])
      if line[6]!=odspy.NULL: newcomponent.th_vec=str2vec(line[6])
      #bausteine[line[0]]["Komponenten"].append(newcomponent)
      bs.add_co(newcomponent,num=int(line[4]))
    #Zuordnung der restlichen Werte
    if odspy.NULL!=line[2]:
      bausteine[line[0]].Bemerkung=line[2]
    if odspy.NULL!=line[1]:
      bausteine[line[0]].Einsatzgebiet=line[1]
  #Leerzeilen löschen
  bausteine.pop(odspy.NULL)
    
  
  #Organisieren der Referenzmissionen
  referenzmissionen=dict()
  for line in referenzmissionentable[3:]:
    if line[0] not in referenzmissionen:
      referenzmissionen[line[0]]=iboss.mission(line[0])
    
    if line[1] in bausteine.keys():
      newbb=copy.copy(bausteine[line[1]])
      referenzmissionen[line[0]].add_bb(bb=newbb,pos=line[2],rot=line[3])
     
  #Leerzeilen löschen
  referenzmissionen.pop(odspy.NULL)
  
  return komponenten, bausteine, referenzmissionen

def set2str(dt):
  out=("="*59)+" "+"="*33+"\n"
  for line in dt:
    out+="{:60}{:30.2f} kg\n".format(line[0].encode("utf-8"),line[1])
    #out+=line[0].encode("utf-8")+str(line[1])
  out+=("="*59)+" "+"="*33+"\n"
  return out

def writereport():
  komponenten, bausteine, referenzmissionen=converttable()
  
  def listbsmass(bausteine):
    bsmasslist=set((key, value.mass) for key,value in bausteine.items())
    return sorted(bsmasslist, key=lambda bs: -bs[1])
  
  def listmsmass(referenzmissionen):
    msmasslist=set((key, value.mass) for key,value in referenzmissionen.items())
    return sorted(msmasslist, key=lambda ms: -ms[1])
  
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
    try:
      if argv[1]=="w": report2file(writereport())
      if argv[1]=="p": print(writereport())
    except IndexError:
      print(helpstring)    
    except:
      raise
      return

if __name__ == "__main__":
  main()
  #komponenten, bausteine, referenzmissionen=tablereorder()