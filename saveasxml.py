#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: saveasxml.py
# author: - Thomas Meschede
#
# Speichert den Bausteinkatalog im XML-Format
#
#
#
#
# modified:
#	- 2012 11 22 - Thomas Meschede

import sys
import odspy
from odspy import ods2table
import numpy as np
import xml.etree.ElementTree as et
import xml.dom.minidom
import xml
import string
import codecs
import iboss
from iboss import prettyprintxml

import operator

helpstring="""
Dieses Skript speichert den Bausteinkatalog im XML-Format


Usage: saveasxml <Options> <filename.xml>

Options:
-h display this help
"""

#todo: save int,floats  etc..  as float and not as string in xml file

def ibosslist2xml(name,instancelist):
  root=et.Element(name)
  for i in sorted(instancelist,key=lambda instance: instance.type.lower()): #alphabetically sorted list #operator.attrgetter('type').lower()): 
    root.append(i.xml)
  return root
  
#def savelistxml(filename,listname,xmllist):
#  ibosslist2xml(listname,xmllist)  
  
def savexml(filename,xml):
  f=codecs.open(filename,"w",encoding="utf-8")
  f.write(prettyprintxml(xml))
  f.close()

def saveibosslists(komponenten, bausteine, referenzmissionen):
  katalog=et.Element("catalogue",version="1.2")
  katalog.append(ibosslist2xml("components",komponenten.values()))
  katalog.append(ibosslist2xml("buildingblocks",bausteine.values()))
  savexml("bausteinkatalog/katalog.xml",katalog)
  missionen=ibosslist2xml("missions",referenzmissionen.values())
  savexml("bausteinkatalog/missionen.xml",missionen)

"""def main(argv=None):
  if argv is None:
    argv = sys.argv
    try:
      if argv[1]=="-h": print(helpstring)
      else: print(helpstring)
    except IndexError:
      print(helpstring)    
    except:
      raise
      return"""

def genexamples():
  pass

if __name__ == "__main__":
  #main()
  #import tableop as top
  #komponenten, bausteine, referenzmissionen=top.converttable()
  #data=top.converttable() #todo: this is the odl table !!!
  #co=komponenten.values()[1]
  #print(prettyprintxml(co.xml))
  #saveibosslists(*data)#"""
  pass
