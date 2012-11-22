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
import xml.etree.ElementTree as et

helpstring="""
Usage: saveasxml <Options> <filename.xml>

Options:
-h display this help
"""
bausteine, komponenten, referenzmissionen=top.tablereorder()

def dict2xml(name, table):
  root=et.Element(name)
  for subname,subtable in table.items():
    if isinstance(subtable,dict):
      root.append(dict2xml(subname.encode("utf-8"),subtable))  
  return root

xml=dict2xml("komponenten",komponenten)
pr=et.tostring(xml)#.decode("utf-8")

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