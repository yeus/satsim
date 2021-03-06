#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: katalogreport.py
# author: - Thomas Meschede
#
# load iboss odt table into python structure and convert save it to xml
#
# modified:
#	- 2012 10 25 - Thomas Meschede

#pypy compatibility
#import sys
#pythonpath="/usr/lib/python2.7/dist-packages" 
#if pythonpath not in sys.path: 
#    sys.path.append(pythonpath)
#import numpypy

import utils
from utils.odspy import ods2table
import numpy as np
import iboss_catalogue
from iboss_catalogue import *
from iboss_catalogue import pq, u
from iboss_catalogue import str2vec
import copy
import traceback

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

#organisieren aller Daten in Python Klassen/Datenstrukturen:
def converttable():
  #laden der Tabellen aus *.ods Datei
  tables=ods2table('bausteinkatalog/bausteinkatalog.ods')
  
  referenzmissionentable=np.array(tables["Referenzmissionen"])
  missionsdaten=np.array(tables["Missionsdaten"])
  bausteinetable=np.array(tables["Bausteine"])
  komponententable=np.array(tables["Komponenten"])
  
  #todo: Option einbauen, daß immer alle Eigenschaften mit Standardwerten geladen werden.
  komponenten=dict()
  bausteine=dict()  
  referenzmissionen=dict()
  
  #organisieren der Komponenten in dictionaries:
  for k in komponententable[2:]:
    newcomponent=iboss_catalogue.component(k[0])
    for i,bez in enumerate(komponententable[0,1:]):
      if(bez!=utils.odspy.EMPTY): 
        unitstr=komponententable[1,1+i]
        if unitstr!=utils.odspy.EMPTY: unit=pq.Quantity(1,unitstr)
        else: unit=1
        
        try: val=(float(k[i+1]))*unit
        except ValueError: 
          val=k[i+1]
        if val!= utils.odspy.EMPTY: vars(newcomponent).update({bez.replace(" ","_"):val}) #put new class attributes into class according to the table
        
    komponenten[newcomponent.name]=newcomponent

  print("read bausteine liste")
  #Organisierung der Bausteineigenschaften
  for line in bausteinetable[2:]:
    if line[0] not in bausteine: #hinzufügen neuer Bausteine
      bs=iboss_catalogue.buildingblock(line[0])
      bausteine[line[0]]=bs
    else: bs=bausteine[line[0]]
    
    #Erstellen einer neuen Komponente
    if utils.odspy.EMPTY not in line[3]:
      try:
        newcomponent=copy.copy(komponenten[line[3]])
        #newcomponent=komponenten[line[3]]
      except KeyError:
        print("Komponente: "+line[3]+" existiert nicht!\n"+str(line))
        return
        
      if line[5]!=utils.odspy.EMPTY: newcomponent.pos=str2vec(line[5])*pq.m
      if line[7]!=utils.odspy.EMPTY: newcomponent.th_vec=str2vec(line[7])*pq.m
      if line[6]!=utils.odspy.EMPTY: newcomponent.rot=str2vec(line[6])*pq.deg
      #bausteine[line[0]]["Komponenten"].append(newcomponent)
      if utils.odspy.EMPTY!=line[4]: newcomponent.num=int(line[4]) 
      bs.add_co(newcomponent) 
    #Zuordnung der restlichen Werte
    if utils.odspy.EMPTY!=line[2]: bausteine[line[0]].Bemerkung=line[2]
    if utils.odspy.EMPTY!=line[1]: bausteine[line[0]].Einsatzgebiet=line[1]
  #Leerzeilen löschen
  bausteine.pop(utils.odspy.EMPTY)
    
  

  #Organisieren der Referenzmissionen
  startline=3
  quantity_names=referenzmissionentable[0] #wird gerade nicht benutzt, da eine Mission nur aus Bausteinen besteht
  for linenumber, line in enumerate(referenzmissionentable[startline:]):
    if line[0] == utils.odspy.EMPTY: continue
    
    if line[0] not in referenzmissionen:
      print("adding mission:"+str(line[0]))
      referenzmissionen[line[0]]=iboss_catalogue.Satellite(line[0])
    
    if line[1] in bausteine.keys():
      try:
        newbb=copy.copy(bausteine[line[1]])
        #newbb=bausteine[line[1]]

        pos=line[2].split(";")[0]
        if pos==utils.odspy.EMPTY or pos=="/" or pos=="nicht vorhanden":
            pos="0,0,0"
        
        referenzmissionen[line[0]].add_bb(bb=newbb,pos=str2vec(pos),orientation=str2vec(line[3])*pq.deg)
      except ValueError as VE:
        traceback.print_exc()
        print("\nline {}: {}".format(linenumber+startline+1,line))
        return None
    else:
      print("not in catalog: {}".format(line[1]))
  
  #laden der Missionsdaten für die Satelliten
  print("\n\n")
  print("length of table: {}".format(len(missionsdaten)))
  for line in missionsdaten[2:]:
    for i in ["","_ctank"]:
      if line[0] == utils.odspy.EMPTY: continue
      print(line[0]+i)
      mis=referenzmissionen[line[0]+i]
      mis.Anwendung   =line[1]
      mis.mission_objective=line[2]
      mis.Nutzlast   =line[3]   
      mis.Orbithoehe   = float(line[4])  *pq.km  
      mis.Orbitart    = line[5]    
      if line[6]!=utils.odspy.EMPTY: mis.Inklination = float(line[6])    *pq.deg
      if line[7]!=utils.odspy.EMPTY: mis.Umlaufzeit  = float(line[7])    *pq.h
      if line[8]!=utils.odspy.EMPTY: mis.semimajor_axis = float(line[8]) *pq.km
      if line[9]!=utils.odspy.EMPTY: mis.Lebensdauer     = line[9]
      mis.Bodensegment    = line[10]
      mis.Launchtime      = line[11]
  
  print("odt loading finished!\n\n")
  return komponenten, bausteine, referenzmissionen

def getdata():
  return converttable()

def save_catalogue():
    data=converttable() #todo: this is the odl table !!!
    if data==None:
      print("something went wrong")
      return
    iboss_catalogue.saveibosslists(*data)#"""
    
if __name__ == "__main__":
    save_catalogue()