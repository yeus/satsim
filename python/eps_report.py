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
from iboss import str2vec
import copy
import ibossxml

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

def set2str(dt):
  out=("="*59)+" "+"="*33+"\n"
  for line in dt:
    out+="{:60}{:30}\n".format(line[0].encode("utf-8"),str(line[1]))
    #out+=line[0].encode("utf-8")+str(line[1])
  out+=("="*59)+" "+"="*33+"\n"
  return out

def writereport():
  komponenten, bausteine, referenzmissionen=ibossxml.loadxmldata("bausteinkatalog/katalog.1.1.xml")
  
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
  komponenten, bausteine, referenzmissionen=ibossxml.loadxmldata("bausteinkatalog/katalog.1.1.xml")