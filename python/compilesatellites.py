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
import time

vec= lambda x,y,z: np.array([x,y,z])  #create a vector
  
cat=iboss_catalogue.Catalog()
cat.loadxmldata()
sat = cat.sat["EnMAP"]

sat.variables = ""
for bb in sat.bb:
  bb.mo_id = bb._id[2:]
  bb.mo_name = bb.name[:6]
  sat.variables += "\t\tbuildingbocks.basic basic_{bb.mo_id}(id = {bb.mo_id}) \"{bb.name}\";\n".format(bb=bb)
  #todo: add "buildingblocks.basic_wheel1x basic_wheel1x1(id=4);" models

skel="""
within iboss;
package referencemissions
  model {model.name} \"{model.name}\"
                satcomponents.AOCS.ctrl.ACS_bus aCS_bus1;
                inner Modelica.Mechanics.MultiBody.World world(
                        enableAnimation=animation,
                        gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity);
                parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
                Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
                        animation=false,
                        r_rel_a(start={{0.0,0.0,0.0}}),
                        v_rel_a(start={{0.0,0.0,0.0}}),
                        w_rel_a_fixed=true,
                        w_rel_a_start={{0.0,0.0,0.2}}[,
                        enforceStates=true);
                        
{model.variables}           
                Modelica.Blocks.Math.Gain gain1(k=10.0);
                Modelica.Blocks.Math.Add error(k2=-1);
        equation
                connect(world.frame_b,r.frame_a);
                connect(r.frame_b,basic_wheel1x1.Yps);
                connect(basic4.Xps,basic_wheel1x1.Xns);
                connect(basic_wheel1x1.Xps,basic1.Xns);
                connect(basic4.Xp,basic_wheel1x1.Xn);
                connect(basic_wheel1x1.Xp,basic1.Xn);
                connect(basic4.Xn.sat_bus.acs_bus,aCS_bus1);
                connect(const.y,error.u1);
                connect(error.y,gain1.u);
                connect(error.u2,aCS_bus1.w[2,3]);
                connect(gain1.y,aCS_bus1.w_a[4,3]);
  end {model.name};
end referencemissions;
""".format(model=sat)

print(skel)

def main(argv=None):
  pass

if __name__ == "__main__":
  main()
  #komponenten, bausteine, referenzmissionen=iboss_xml_load.loadxmldata("bausteinkatalog/katalog.xml")
