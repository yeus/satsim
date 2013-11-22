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
import utils.odspy
from utils.odspy import ods2table
import numpy as np
import iboss_catalogue
from iboss_catalogue import pq
from iboss_catalogue import str2vec
import copy
import iboss_xml_load
import iboss_odt2xml

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

def set2str(dt):
  out=("="*59)+" "+"="*33+"\n"
  for line in dt:
    out+="{:60}{:30}\n".format(line[0].encode("utf-8"),str(line[1]))
    #out+=line[0].encode("utf-8")+str(line[1])
  out+=("="*59)+" "+"="*33+"\n"
  return out

def writereport():
  komponenten, bausteine, referenzmissionen=iboss_xml_load.loadxmldata("bausteinkatalog/katalog.1.1.xml")
  
  for bs in bausteine.values():
    bs.update()
  
  def listbsmass(bausteine):
    bsmasslist=set((key, value.mass) for key,value in bausteine.items())
    return sorted(bsmasslist, key=lambda bs: -bs[1])
  
  def listmsmass(referenzmissionen):
    msmasslist=set((key, value.mass) for key,value in referenzmissionen.items())
    return sorted(msmasslist, key=lambda ms: -ms[1])
  
  def listbspow(bausteine):
    bspowlist=set((key, value.power_max) for key,value in bausteine.items())
    return sorted(bspowlist, key=lambda bs: -bs[1])
  
  report="""
Bausteinreport:
===============

Referenzmissionen:
------------------

{0}

Bausteinmassen:
---------------

{1}

Bausteine, maximaler Energieverbrauch:
--------------------------------------
  
{2}""".format(set2str(listmsmass(referenzmissionen)),
              set2str(listbsmass(bausteine)),
              set2str(listbspow(bausteine)))

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
    try:
      if "odt" in argv:
         iboss_odt2xml.save_catalogue()
      if "w" in argv: report2file(writereport())
      if "p" in argv: print(writereport())
    except IndexError:
      print(helpstring)    
    except:
      raise
      return

if __name__ == "__main__":
  main()
  #komponenten, bausteine, referenzmissionen=iboss_xml_load.loadxmldata("bausteinkatalog/katalog.xml")