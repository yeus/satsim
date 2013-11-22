#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: katalogreport.py
# author: - Thomas Meschede
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
from iboss_catalogue import pq
from iboss_catalogue import str2vec
import iboss_xml_save
import copy

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

#organisieren aller Daten in Python Klassen/Datenstrukturen:
def converttable():
  #laden der Tabellen aus *.ods Datei
  tables=ods2table('bausteinkatalog/bausteinkatalog.ods')
  
  referenzmissionentable=np.array(tables["Referenzmissionen"])
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
      if(bez!=utils.odspy.NULL): 
        unitstr=komponententable[1,1+i]
        if unitstr!=utils.odspy.NULL: unit=pq.Quantity(1,unitstr)
        else: unit=1
        
        try: val=(float(k[i+1]))*unit
        except ValueError: val=k[i+1]
        vars(newcomponent).update({bez:val}) #put new class attributes into class according to the table
        
    komponenten[newcomponent.name]=newcomponent

  #Organisierung der Bausteineigenschaften
  for line in bausteinetable[2:]:
    if line[0] not in bausteine: #hinzufügen neuer Bausteine
      bs=iboss_catalogue.buildingblock(line[0])
      bausteine[line[0]]=bs
    else: bs=bausteine[line[0]]
    
    #Erstellen einer neuen Komponente
    if utils.odspy.NULL not in line[3]:
      newcomponent=copy.copy(komponenten[line[3]])
      if line[5]!=utils.odspy.NULL: newcomponent.pos=str2vec(line[5])
      if line[7]!=utils.odspy.NULL: newcomponent.th_vec=str2vec(line[7])
      if line[6]!=utils.odspy.NULL: newcomponent.rot=str2vec(line[6])
      #bausteine[line[0]]["Komponenten"].append(newcomponent)
      if utils.odspy.NULL!=line[4]: newcomponent.num=int(line[4]) 
      bs.add_co(newcomponent) 
    #Zuordnung der restlichen Werte
    if utils.odspy.NULL!=line[2]: bausteine[line[0]].Bemerkung=line[2]
    if utils.odspy.NULL!=line[1]: bausteine[line[0]].Einsatzgebiet=line[1]
  #Leerzeilen löschen
  bausteine.pop(utils.odspy.NULL)
    
  
  #Organisieren der Referenzmissionen
  for line in referenzmissionentable[3:]:
    if line[0] not in referenzmissionen:
      referenzmissionen[line[0]]=iboss_catalogue.mission(line[0])
    
    if line[1] in bausteine.keys():
      newbb=copy.copy(bausteine[line[1]])
      referenzmissionen[line[0]].add_bb(bb=newbb,pos=str2vec(line[2]),rot=str2vec(line[3])*pq.deg)
     
  #Leerzeilen löschen
  referenzmissionen.pop(utils.odspy.NULL)
  
  return komponenten, bausteine, referenzmissionen

komponenten, bausteine, referenzmissionen=converttable()

iboss_xml_save.saveibosslists(komponenten, bausteine, referenzmissionen)