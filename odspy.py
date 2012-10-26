#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: odspy.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

"""script loads an ods file into python arrays"""

import zipfile
import xml.etree.ElementTree as et

def ods2table(string):
  z = zipfile.ZipFile(string)

  data = z.read('content.xml')
  data = et.fromstring(data)

  tables={}

  for table in data.iter("{urn:oasis:names:tc:opendocument:xmlns:table:1.0}table"):
    #print("\n\nnewtable")
    name=table.attrib['{urn:oasis:names:tc:opendocument:xmlns:table:1.0}name']
    xmlrows=[] #list of xml-table-code
    tablearray=[] #make space for table array
    for row in table.iter("{urn:oasis:names:tc:opendocument:xmlns:table:1.0}table-row"):
      xmlrows.append(row)

    xmlrows=xmlrows[:-2]
    i=0
    maxcols=0
    for row in xmlrows:
      i+=1
      xmlcells=[]
      for cell in row.iter('{urn:oasis:names:tc:opendocument:xmlns:table:1.0}table-cell'):
        xmlcells.append(cell)
    
      rowarray=[i]    
      xmlcells=xmlcells[:-1]
      for cell in xmlcells:
        attrib=cell.attrib
        value=attrib
        if '{urn:oasis:names:tc:opendocument:xmlns:office:1.0}value' in attrib:
          value=[attrib['{urn:oasis:names:tc:opendocument:xmlns:office:1.0}value']]
        elif '{urn:oasis:names:tc:opendocument:xmlns:office:1.0}value-type'in attrib:
          string=cell.find('{urn:oasis:names:tc:opendocument:xmlns:text:1.0}p').text
          value=[string]
        if '{urn:oasis:names:tc:opendocument:xmlns:table:1.0}number-columns-repeated' in attrib:
          value=[[]]*int(attrib['{urn:oasis:names:tc:opendocument:xmlns:table:1.0}number-columns-repeated'])
        rowarray.extend(value)
        
      #find out longest row (maximum number of columns in a row)
      if len(rowarray)>maxcols: 
        maxcols=len(rowarray)
        #print(maxcols)
            
      tablearray.append(rowarray)
    
    #fill all rows to the minimum number of columns
    #print(maxcols)
    for i in range(len(tablearray)):
      tablearray[i]+=[[]]*(maxcols-len(tablearray[i]))
    
    tables[name]=(tablearray)
  
  return tables
  
#et.dump(xmltables["Bausteine"])
#import ezodf
"""
def getbausteine():
  doc=ezodf.opendoc('bausteinkatalog.ods')
  
  bausteine=doc.sheets['Bausteine']
  #komponenten=doc.sheets['Komponenten']
  return bausteine

def getkomponenten():
  doc=ezodf.opendoc('bausteinkatalog.ods')
  
  #bausteine=doc.sheets['Bausteine']
  komponenten=doc.sheets['Komponenten']
  return komponenten"""