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
import tableop as top
import xml.etree.ElementTree as et
import xml.dom.minidom
import xml
import string
import codecs

helpstring="""
Dieses Skript speichert den Bausteinkatalog im XML-Format


Usage: saveasxml <Options> <filename.xml>

Options:
-h display this help
"""

#todo: save int,floats  etc..  as float and not as string in xml file

def ibosslist2xml(name,instancelist):
  root=et.Element(name)
  for i in instancelist:
    root.append(i.xml)
  return root
  
def prettyprintxml(xmltree):
  XML=et.tostring(xmltree,encoding="utf-8")
  XML=xml.dom.minidom.parseString(XML)
  return XML.toprettyxml()

def savexml(filename,xml):
  f=codecs.open(filename,"w",encoding="utf-8")
  f.write(prettyprintxml(xml))
  f.close()
  
komponenten, bausteine, referenzmissionen=top.converttable()

XML=ibosslist2xml("components",komponenten.values())
savexml("bausteinkatalog/komponenten.xml",XML)
XML=ibosslist2xml("bausteine",bausteine.values())
savexml("bausteinkatalog/bausteine.xml",XML)
XML=ibosslist2xml("missionen",referenzmissionen.values())
savexml("bausteinkatalog/missionen.xml",XML)

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
      return

if __name__ == "__main__":
  main()"""