#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: katalogreport.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

#pypy compatibility
import sys
pythonpath="/usr/lib/python2.7/dist-packages" 
if pythonpath not in sys.path: 
    sys.path.append(pythonpath)
#import numpypy

import sys
import odspy
from odspy import ods2table
import numpy as np
import iboss
from iboss import pq
import copy

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

#convert string to vector (python list)
def str2vec(stringvec):
  try:
    return [float(i) for i in stringvec.split(",")]
  except ValueError: return odspy.NULL

#organisieren aller Daten in Python Klassen/Datenstrukturen:
def converttable():
  #laden der Tabellen aus *.ods Datei
  tables=ods2table('bausteinkatalog.ods')
  
  referenzmissionentable=np.array(tables["Referenzmissionen"])
  bausteinetable=np.array(tables["Bausteine"])
  komponententable=np.array(tables["Komponenten"])
  
  #todo: Option einbauen, daß immer alle Eigenschaften mit Standardwerten geladen werden.
  komponenten=dict()
  bausteine=dict()  
  referenzmissionen=dict()
  
  #organisieren der Komponenten in dictionaries:
  for k in komponententable[2:]:
    newcomponent=iboss.component(k[0])
    for i,bez in enumerate(komponententable[0,1:]):
      if(bez!=odspy.NULL): 
        unitstr=komponententable[1,1+i]
        if unitstr!=odspy.NULL: unit=pq.Quantity(1,unitstr)
        else: unit=1
        
        try: val=(float(k[i+1]))*unit
        except ValueError: val=k[i+1]
        vars(newcomponent).update({bez:val}) #put new class attributes into class according to the table
        
    komponenten[newcomponent.name]=newcomponent

  #Organisierung der Bausteineigenschaften
  for line in bausteinetable[2:]:
    if line[0] not in bausteine: #hinzufügen neuer Bausteine
      bs=iboss.buildingblock(line[0])
      bausteine[line[0]]=bs
    else: bs=bausteine[line[0]]
    
    #Erstellen einer neuen Komponente
    if odspy.NULL not in line[3]:
      newcomponent=copy.copy(komponenten[line[3]])
      newcomponent.pos=str2vec(line[5])
      newcomponent.th_vec=str2vec(line[7])
      newcomponent.rot=str2vec(line[6])
      #bausteine[line[0]]["Komponenten"].append(newcomponent)
      if odspy.NULL!=line[4]: bs.add_co(newcomponent,num=int(line[4])) 
    #Zuordnung der restlichen Werte
    if odspy.NULL!=line[2]: bausteine[line[0]].Bemerkung=line[2]
    if odspy.NULL!=line[1]: bausteine[line[0]].Einsatzgebiet=line[1]
  #Leerzeilen löschen
  bausteine.pop(odspy.NULL)
    
  
  #Organisieren der Referenzmissionen
  for line in referenzmissionentable[3:]:
    if line[0] not in referenzmissionen:
      referenzmissionen[line[0]]=iboss.mission(line[0])
    
    if line[1] in bausteine.keys():
      newbb=copy.copy(bausteine[line[1]])
      referenzmissionen[line[0]].add_bb(bb=newbb,pos=str2vec(line[2]),rot=str2vec(line[3])*pq.deg)
     
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
  komponenten, bausteine, referenzmissionen=converttable()