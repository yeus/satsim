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

import sys
import utils.odspy
from utils.odspy import ods2table
import numpy as np
import iboss_catalogue
from iboss_catalogue import pq, loaddata
from iboss_catalogue import str2vec, rstheader
import copy
import quantities as pq
from itertools import product
import time

class intf_c: pass

vec= lambda x,y,z: np.array([x,y,z])  #create a vector
  
cat=iboss_catalogue.Catalog()
cat.loadxmldata()
sat = cat.sat["EnMAP"]
bb = cat.bb['Kernstruktur2x2x2']

interface_table ={(1,0,0) :'Xp',
                 (-1,0,0) :'Xn',
                 (0,1,0)  :'Yp',
                 (0,-1,0) :'Yn',
                 (0,0,1)  :'Zp',
                 (0,0,-1) :'Zn'}

mo_id_counter = 0
bb.variables = ""
bb.connections = ""
#build kernstruktur
for i,j,k in bb.grid:
  for indx, int_name in interface_table.items():
    if (int_name == 'Xp') and (i != 1): continue
    if (int_name == 'Xn') and (i != 0): continue
    if (int_name == 'Yp') and (j != 1): continue
    if (int_name == 'Yn') and (j != 0): continue
    if (int_name == 'Zp') and (k != 1): continue
    if (int_name == 'Zn') and (k != 0): continue
   
    intf = intf_c()
    intf.name = int_name
    intf.pos = vec(i,j,k) + 0.5 * vec(*indx)
    intf.idx='{}{}{}'.format(i,j,k)
    
    bb.variables += "\t\tModelica.Mechanics.MultiBody.Interfaces.Frame_a {intf.name}s{intf.idx};\n".format(intf=intf)
    bb.variables += "\t\tModelica.Mechanics.MultiBody.Parts.FixedTranslation r{intf.name}{intf.idx}(animation=false, r={{{intf.pos[0]},{intf.pos[1]},{intf.pos[2]}}});\n".format(intf=intf)
    #TODO: add annotations(Placement(transformation(extent={{-35,22},{-15,42}})))
    #TODO: add "buildingblocks.basic_wheel1x basic_wheel1x1(id=4);" models
  
  
    #connect structure
    bb.connections += "\t\tconnect(structure.frame_a, r{intf.name}{intf.idx}.frame_a) ;\n".format(intf=intf)
    bb.connections += "\t\tconnect(r{intf.name}{intf.idx}.frame_b, {intf.name}s{intf.idx}) ;\n".format(intf=intf)
  bb.variables+="\n"



skel="""
within iboss;
package buildingblocks
  model {model.name} \"{model.name}\"
        extends icons.basic;
        Modelica.Mechanics.MultiBody.Parts.Body structure(
                animation=false,
                r_CM={{0,0,-0.01}},
                m=15.0,
                I_11=0.0018,
                I_22=0.0017,
                I_33=0.0016,
                useQuaternions=false);
                
{model.variables}                
        equation
{model.connections}
  end {model.name};
end buildingblocks;
""".format(model=bb)

print(skel)

def main(argv=None):
  pass

if __name__ == "__main__":
  main()
  #komponenten, bausteine, referenzmissionen=iboss_xml_load.loadxmldata("bausteinkatalog/katalog.xml")
