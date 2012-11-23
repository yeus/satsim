#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: saveasxml.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 11 22 - Thomas Meschede

import sys
from odspy import ods2table
import numpy as np
import tableop as top
import lxml.etree as et
#et=etree.ElementTree
#import xml.etree.ElementTree as et
#import xml.dom.minidom
import string

helpstring="""
Usage: saveasxml <Options> <filename.xml>

Options:
-h display this help
"""
bausteine, komponenten, referenzmissionen=top.tablereorder()

def dict2xml(name, table):
  name=name.replace(" ","_")
  name=name.replace(".","")
  name=name.replace("(","")
  name=name.replace(")","")
  #name=name.translate((string.maketrans(" ","_").decode("utf-8")))
  root=et.Element(name)
  if isinstance(table,dict):
   if len(table)>0:
    for subname,subtable in table.items():
      root.append(dict2xml(subname,subtable))
   else: root.text="0"
  else: root.text="0"
  return root

XML=dict2xml("komponenten",komponenten)
et.ElementTree(XML).write("test.xml",pretty_print = True,encoding="utf-8")
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