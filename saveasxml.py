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
#from lxml import etree as et
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

def strcomp(strconv):
  name=strconv.replace(" ","_") #todo durch "translate" function ersetzen
  name=name.replace(".","")
  name=name.replace("(","")
  name=name.replace(")","")
  name=name.replace("/","_")
  name=name.replace("+","und")
  name=name.replace("-","_")
  name=name.replace("&","_")
  name=name.replace(";","_")
  name=name.replace("*","")
  name=name.replace(",","")
  #name=name.translate((string.maketrans(" ","_").decode("utf-8")))
  return name

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
  
#"scheme" definiert das XMl Schema, scheme ist eine Liste, die dann hierarisch als "type" attribute angesetzt wird
"""def dict2xml(scheme, table, TYPE=None):
  if scheme[0]!="": root=et.Element(strcomp(scheme[0]))
  else: root=et.Element(strcomp(TYPE))
  if TYPE and scheme[0]!="": root.set("type",TYPE)
  
  if isinstance(table,dict):
   if len(table)>0:
    for subname,subtable in table.items():
      newscheme=scheme[1:]
      if len(scheme)==1: 
        newscheme=newscheme+[subname]
        TYPE=None
      else: TYPE=subname
      root.append(dict2xml(newscheme,subtable,TYPE))
   else: root.text=odspy.NULL
  else: 
    try:
      root.text=table
    except:
      print(table)
      raise
  return root

#baut die Liste der Referenzmission in eine XMl Datei um
def refmis2xml(table):
  root=et.Element("missions")
  for name,subtable in table.items():
    newelem=et.Element("mission",{"type":name})
    newelem2=et.Element("cells")
    for bausteine in subtable["Bausteine"]:
      newelem3=et.Element("cell",{"type":bausteine["type"]})
      for name,val in bausteine.items():
        newelem4=et.Element(name)
        newelem4.text=val
        if name!="type":newelem3.append(newelem4)
      newelem2.append(newelem3)
    newelem.append(newelem2)
    root.append(newelem)
  return root"""

komponenten, bausteine, referenzmissionen=top.converttable()

XML=ibosslist2xml("components",komponenten.values())
savexml("bausteinkatalog/komponenten.xml",XML)
#lxml.etree.ElementTree(XML).write("bausteinkatalog/komponenten.xml",pretty_print = True,encoding="utf-8")
#XML=dict2xml(["components","component"],komponenten)
#et.ElementTree(XML).write("bausteinkatalog/komponenten.xml",pretty_print = True,encoding="utf-8")
#XML=dict2xml(["cells","cell", "", "component"],bausteine)
#et.ElementTree(XML).write("bausteinkatalog/bausteine.xml",pretty_print = True,encoding="utf-8")
#XML=refmis2xml(referenzmissionen)
#et.ElementTree(XML).write("bausteinkatalog/referenzmissionen.xml",pretty_print = True,encoding="utf-8")
#pr=et.tostring(XML,encoding="utf-8", method="xml")
#pr = xml.dom.minidom.parseString(pr)
#pr = pr.toprettyxml()
#pr=et.tostring(XML, pretty_print = True)
#print(pr)


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