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

def compile_bb():
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

def compile_sat():
  mo_id_counter = 0
  sat.variables = ""
  sat.connections = ""
  for bb in sat._bb:
    mo_id_counter += 1
    bb.mo_id = mo_id_counter
    bb.mo_pos = "".join(str(int(i)) for i in list((bb.pos/bb.size).magnitude))  #baue einen string aus der Position
    bb.mo_type = 'basic'
    if bb.type == 'Kernstruktur2x2x2':
      bb.mo_type = 'kern222'
    bb.mo_name = "{bb.mo_type}_{bb.mo_pos}_{bb.mo_id}".format(bb=bb)
    
    sat.variables += "\t\tbuildingbocks.{bb.mo_type} {bb.mo_name}(id = {bb.mo_id}) \"{bb.name}\";\n".format(bb=bb)
    #TODO: add "buildingblocks.basic_wheel1x basic_wheel1x1(id=4);" models
    #TODO: add annotations(Placement(transformation(extent={{-35,22},{-15,42}})))
    
    if bb.type != 'Kernstruktur2x2x2':   #connect buildingblocks to central structure
      nb_list = sat.get_bb_neighbours(bb) #get list of neighbouring buildingblocks and their vectors
      conn_bb, conn_vec = next(x for x in nb_list  if 'Kernstruktur' in x[0].name) #get Kernstruktur from this list
      
      int1 = interface_table[tuple(conn_vec)] #find out interface direction of this buildingblock
      int2 = interface_table[tuple(vec(*conn_vec)*-1)] #find out direction of connected interface
      
      rel_indx = vec(*bb.index) - vec(*conn_bb.index) #relativ buildingblock position to connected bb
      int2_idx = rel_indx + vec(*conn_vec) #find out corresponding interface index
      
      #connect structure
      sat.connections += "\t\tconnect( {}.{int2}s{idx[0]}{idx[1]}{idx[2]}, {bb.mo_name}.{int1}s ) \"{cv}, {bb.name}\";\n".format('kern222', int1=int1, int2=int2, idx=int2_idx, cv=conn_vec, bb=bb)



  skel="""
  within iboss;
  package referencemissions
    model {model.name} \"{model.name}\"
                  satcomponents.AOCS.ctrl.ACS_bus aCS_bus;
                  inner Modelica.Mechanics.MultiBody.World world(
                          enableAnimation=animation,
                          gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity);
                  parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
                  Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
                          animation=false,
                          r_rel_a(start={{0.0,0.0,0.0}}),
                          v_rel_a(start={{0.0,0.0,0.0}}),
                          w_rel_a_fixed=true,
                          w_rel_a_start={{0.0,0.0,0.2}},
                          enforceStates=true);
                  Modelica.Blocks.Math.Gain gain1(k=10.0);
                  Modelica.Blocks.Math.Add error(k2=-1);
                          
                  //generic buildingblocks        
  {model.variables}           

          equation
                  connect(world.frame_b,r.frame_a);
                  connect(r.frame_b,basic_wheel1x1.Yps);
                  
                  //generic connections
  {model.connections}            

                  //connect(basic4.Xn.sat_bus.acs_bus,aCS_bus);
                  //connect(const.y,error.u1);
                  //connect(error.y,gain1.u);
                  //connect(error.u2,aCS_bus1.w[2,3]);
                  //connect(gain1.y,aCS_bus1.w_a[4,3]);
    end {model.name};
  end referencemissions;
  """.format(model=sat)

  print(skel)

def main(argv=None):
  compile_bb()

if __name__ == "__main__":
  main()
  #komponenten, bausteine, referenzmissionen=iboss_xml_load.loadxmldata("bausteinkatalog/katalog.xml")
