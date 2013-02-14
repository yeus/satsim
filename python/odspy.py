#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: odspy.py
# author: - Thomas Meschede
# 
# usage: file loads ods file and puts data into a python array
#
# modified:
#	- 2012 10 25 - Thomas Meschede

"""script loads an ods file into python arrays"""

import zipfile
import sys
import xml.etree.ElementTree as et

NULL="N.A."

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
      if '{urn:oasis:names:tc:opendocument:xmlns:table:1.0}number-rows-repeated' in row.attrib:
        num=int(row.attrib['{urn:oasis:names:tc:opendocument:xmlns:table:1.0}number-rows-repeated'])
        if num>1000: break #break loop, because we reached the end of the table
        value=[row]*num
        xmlrows.extend(value)
      else: xmlrows.append(row)

    i=0
    maxcols=0
    for row in xmlrows:
      i+=1
      xmlcells=[]
      for cell in row.iter('{urn:oasis:names:tc:opendocument:xmlns:table:1.0}table-cell'):
        xmlcells.append(cell)
    
      rowarray=[]    
      for cell in xmlcells:
        attrib=cell.attrib
        value=attrib
        if '{urn:oasis:names:tc:opendocument:xmlns:office:1.0}value' in attrib:
          value=[attrib['{urn:oasis:names:tc:opendocument:xmlns:office:1.0}value']]
        elif '{urn:oasis:names:tc:opendocument:xmlns:office:1.0}value-type'in attrib:
          string=cell.find('{urn:oasis:names:tc:opendocument:xmlns:text:1.0}p').text
          value=[string]
        else:
          value=[NULL]
        if '{urn:oasis:names:tc:opendocument:xmlns:table:1.0}number-columns-repeated' in attrib:
          num=int(attrib['{urn:oasis:names:tc:opendocument:xmlns:table:1.0}number-columns-repeated'])
          if num>1000: break #break loop, because we reached the end of the table
          value=value*num
        rowarray.extend(value)
        
      #find out longest row (maximum number of columns in a row)
      if len(rowarray)>maxcols: 
        maxcols=len(rowarray)
        #print(maxcols)
            
      tablearray.append(rowarray)
    
    #fill all rows to the minimum number of columns
    #print(maxcols)
    for i in range(len(tablearray)):
      tablearray[i]+=[NULL]*(maxcols-len(tablearray[i]))
    
    tables[name]=(tablearray)
  
  return tables

def main(args):
  try:
    print("loading ods file ...")
    table=ods2table(args[1])
    print("success!, printing tables:")
    for name,table in table.items():
      print("\n\nname: " + name)
      for row in table:
        print(row)
  except:
    print("Unexpected error:", sys.exc_info()[0])
    raise
    return 1  # exit on error
  else:
    return 0  # exit errorlessly
       
if __name__ == '__main__':
  sys.exit(main(sys.argv))
