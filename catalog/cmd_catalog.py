#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: katalogreport.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

#pypy compatibility
#import sys
#pythonpath="/usr/lib/python2.7/dist-packages" 
#if pythonpath not in sys.path: 
#    sys.path.append(pythonpath)
#import numpypy

import sys, argparse, time, logging
import iboss_catalogue
from iboss_catalogue import pq, loaddata
from iboss_catalogue import str2vec, rstheader

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

def set2str(dt):
  out=("="*59)+" "+"="*33+"\n"
  for line in dt:
    out+="{:60}{:>30.2f} {}\n".format(line[0],float(line[1].magnitude),line[1].dimensionality.string)
    #out+=line[0].encode("utf-8")+str(line[1])
  out+=("="*59)+" "+"="*33+"\n"
  return out

def writereport(cat):
  report="""
Katalogreport:
===============

:Datum: {}
:Version: {}

\u00A9TU Berlin

\n\n""".format(time.strftime("%Y/%m/%d"),iboss_catalogue.Version)
 
  def listmsmass(sats):
    ret="Referenzmissionen:\n------------------\n\n"
    
    msmasslist=list((sat.name, sat.mass) for sat in sats.values())
    return ret+set2str(sorted(msmasslist, key=lambda ms: -ms[1]))+"\n\n"
    #return 
  
  def listbsmass(bb):
    ret="Bausteinmassen:\n---------------\n\n"
    bsmasslist=list((key, value.mass) for key,value in bb.items())
    return ret+set2str(sorted(bsmasslist, key=lambda bs: -bs[1]))+"\n\n"
  
  def listbspow(bb):
    ret="Bausteine, maximaler Energieverbrauch:\n--------------------------------------\n\n"
    bspowlist=list((key, value.power_max) for key,value in bb.items())
    return ret+set2str(sorted(bspowlist, key=lambda bs: -bs[1]))+"\n\n"
  

  report+=rstheader("Catalog Info","-")
  report+=cat.info()+"\n\n"
  
  report+=listmsmass(cat.sat)
  report+=listbsmass(cat.bb)
  report+=listbspow(cat.bb)
  report+=str(cat)

  return report

def report2file(report):
  reportfile=open("./Bausteinreport.rst","w")
  reportfile.write(report)
  reportfile.close()

def main():
  logging.root.setLevel(logging.DEBUG)
  
  description='Program to start operations on the iboss catalog and generate reports'
  parser = argparse.ArgumentParser(description=description,
                                    epilog="""Example: python3 cmd_catalog.py -csvs table.csv -prop mass Bemerkungen""")
  
  group = parser.add_mutually_exclusive_group(required=False)
  group.add_argument('-csvs', action='store', nargs=1, type=argparse.FileType('w'), help='save properties in a table as csv-file', metavar='FILE')
  group.add_argument('-csvl', action='store', nargs=1, type=argparse.FileType('r'), help='load properties from a table in csv-file and update the catalog with it', metavar='FILE')
  group.add_argument('-save', action='store', help='save catalog in a new catalog with the provided version string', metavar='VERSION')
  parser.add_argument('-prop','--properties', nargs='+',action='store',help='list of properties for csv file')
  parser.add_argument('-c', '--catalog', nargs=1, action='store', help='which catalog to use', choices= ['co', 'bb', 'sat'])
  parser.add_argument('-w','--write',action='store_true',help='write catalog report to a rst-file')
  parser.add_argument('-p','--print',action='store_true',help='print content of catalog to commandline')
  parser.add_argument('-t','--test',action='store_true',help='test catalog consistency')
  parser.add_argument('-s','--shell',action='store_true',help='start catalog with ipython shell')

  print("\n\n")
  opts = parser.parse_args()

  if len(sys.argv) < 2: 
    parser.print_help(file=None)
    return
  
  print(opts)
  
  cat=iboss_catalogue.Catalog()
  cat.loadxmldata()
  cat.update()
  
  if opts.csvl:
    cat.update_with_csv(opts.csvl[0])
    cat.update()
  if opts.csvs:
    #print(opts.csvs)
    cat.save_csv(opts.csvs[0], opts.catalog[0], opts.properties)
  if opts.save:
    cat.save(opts.save)
  if opts.write: 
    report2file(writereport(cat))
  if opts.print: 
    print(writereport(cat))
  if opts.shell:
    import IPython
    IPython.embed()

if __name__ == "__main__":
  main()