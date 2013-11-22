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

import xml.etree.ElementTree as et
import codecs
from iboss_catalogue import prettyprintxml
import time

helpstring="""
Dieses Skript speichert den Bausteinkatalog im XML-Format


Usage: saveasxml <Options> <filename.xml>

Options:
-h display this help
"""
Version="1.2"

#todo: save int,floats  etc..  as float and not as string in xml file

def ibosslist2xml(name,instancelist):
  root=et.Element(name)
  for i in sorted(instancelist,key=lambda instance: instance.type.lower()): #alphabetically sorted list #operator.attrgetter('type').lower()): 
    root.append(i.xml)
  return root
  
#def savelistxml(filename,listname,xmllist):
#  ibosslist2xml(listname,xmllist)  
  
initstr=u"""
* Developer : Thomas Meschede (Thomas.Meschede@ilr.tu-berlin.de)
* Date : {}
* All code (c)2013 Technische Universität Berlin, ILR, Fachgebiet Raumfahrttechnik, all rights reserved
""".format(time.strftime("%Y/%m/%d"))
  
def savexml(filename,xml):
  f=codecs.open(filename,"w",encoding="utf-8")
  xml.insert(0,et.Comment(initstr))
  f.write(prettyprintxml(xml))
  f.close()

def saveibosslists(komponenten, bausteine, referenzmissionen):
  katalog=et.Element("catalogue",version=Version)
  katalog.append(ibosslist2xml("components",komponenten.values()))
  katalog.append(ibosslist2xml("buildingblocks",bausteine.values()))
  savexml("bausteinkatalog/katalog.xml".format(Version),katalog)
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
