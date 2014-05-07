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

import sys
import utils.odspy
from utils.odspy import ods2table
import numpy as np
import iboss_catalogue
from iboss_catalogue import pq, loaddata
from iboss_catalogue import str2vec, rstheader
import copy
import quantities as pq
import time

cat=iboss_catalogue.Catalog()
cat.loadxmldata()

#drei Kataloge:  cat.co, cat.bb, cat.sat

#Eigenschaften von Bausteinen aufrufen:
bs=cat.bb["Batteriebaustein"]


print("Anzahl der Komponenten im Baustein {}: {}".format(bs.name, len(bs.components)))


#welche Eigenschaften haben die Bausteine insgesamt im katalog?

Eigenschaften=[]
for bs in cat.bb.values():
    for var in vars(bs).keys(): #Liste von Variablennamen im python-Objekt (Datensatz) erzeugen
        if not var in Eigenschaften: #kam der Variablenname schon einmal vor?
            Eigenschaften+=[var]  #falls nicht ('not'), dann speichern in Liste


#Komponenteneigenschaften diese bausteins:
#wenn in spyder, dann wird mit "f5" das skript
#in der Kommandozeile ('ipython') ausgeführt und man kann sich z.B. die Variable
#"cotable" anzeigen lassen.
cotable=[[co.name, co.num] for co in bs.components] 



# Tabellen und csv-Tabellen erstellen
table = [[bb.name, bb.mass, bb.Einsatzgebiet] for bb in cat.bb.values()]

#print(table)

f=open("table.csv", 'w')

for r in table:
    f.write("{},{},{}\n".format(r[0],r[1],r[2]))

f.close()

f=open("table2.csv", 'w')

for bb in cat.bb.values():
    f.write("{},{},{}\n".format(bb.name.replace(',',' '), bb.Einsatzgebiet, bb.size))

f.close()