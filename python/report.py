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
from iboss_catalogue import str2vec
import copy
import quantities as pq
import time

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

def set2str(dt):
  out=("="*59)+" "+"="*33+"\n"
  for line in dt:
    out+="{:60}{:>30.2f} {}\n".format(line[0],float(line[1].magnitude),line[1].dimensionality.string)
    #out+=line[0].encode("utf-8")+str(line[1])
  out+=("="*59)+" "+"="*33+"\n"
  return out

def writereport():
  report="""
Katalogreport:
===============

:Datum: {}
:Version: {}

\u00A9TU Berlin

\n\n""".format(time.strftime("%Y/%m/%d"),iboss_catalogue.Version)
  
  cat=iboss_catalogue.loaddata()
  cat.update()
  
  def listmsmass(sats):
    ret="Referenzmissionen:\n------------------\n\n"
    
    msmasslist=list((sat.name, sat.mass) for sat in sats.values())
    return ret+set2str(sorted(msmasslist, key=lambda ms: -ms[1]))+"\n\n"
    #return 
  
  def listbsmass(bb):
    ret="Bausteinmassen:\n---------------\n\n"
    bsmasslist=list((key, value.mass) for key,value in bb.items())
    return ret+set2str(sorted(bsmasslist, key=lambda bs: -bs[1]))+"\n\n"
  
  def listbspow(bb):
    ret="Bausteine, maximaler Energieverbrauch:\n--------------------------------------\n\n"
    bspowlist=list((key, value.power_max) for key,value in bb.items())
    return ret+set2str(sorted(bspowlist, key=lambda bs: -bs[1]))+"\n\n"
  

  

  report+=listmsmass(cat.sat)
  report+=listbsmass(cat.bb)
  report+=listbspow(cat.bb)
  report+=str(cat)

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
"odt": first convert *.odt catalogue to xml
"""

def main(argv=None):
  if argv is None:
    argv = sys.argv
    if len(argv)<2: print(helpstring)
    try:
      if "odt" in argv:
         iboss_odt2xml.save_catalogue()
      if "w" in argv: 
        report2file(writereport())
      if "p" in argv: 
        print(writereport())
      if "py2xml" in argv: 
        cat=iboss_catalogue.loaddata()
        cat.save()
    except:
      raise
      return

if __name__ == "__main__":
  main()
  #komponenten, bausteine, referenzmissionen=iboss_xml_load.loadxmldata("bausteinkatalog/katalog.xml")