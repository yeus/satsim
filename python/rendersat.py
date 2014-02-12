import bpy
from genutils import copyobject as cpobj
import sys
import os
from math import pi

pythonpath="/usr/local/lib/python3.3/dist-packages" 
if pythonpath not in sys.path: 
    sys.path.append(pythonpath)

blend_dir = os.path.dirname(bpy.data.filepath)
if blend_dir not in sys.path:
    sys.path.append(blend_dir)
    
print(blend_dir)



from mathutils import *

from arrows import arrow

import iboss_optsat as optsat
import imp
imp.reload(optsat)
  
mission=optsat.getmission()

#select layer to put the satellite into:
bpy.data.scenes['Scene'].layers=[False]*19+[True]

#render satellit with forces
mode=""#".transparent"  #transparent render
for bs in mission.bb:
    if bs.name=="test Lageregelungsbaustein": newobj=cpobj("düsenbaustein"+mode)
    else: newobj=cpobj("baustein"+mode)
    newobj.location=Vector(bs.pos)*0.41
    newobj.rotation_mode="XYZ"
    newobj.rotation_euler=bs.rot*pi/180
    newobj["buildingblock"]=1
        
    #render forces
    if bs.name=="test Lageregelungsbaustein": 
        for co in bs.components:
            if co.type=="testdüse": 
                #newar=arrow(newobj.location-Vector((0.2,0.2,0.2))+Vector(co["pos"])*0.4,Vector(co["th_vec"])*0.1,0.1)
                newar=arrow(-Vector((0.2,0.2,0.2))+Vector(co.pos)*0.4,Vector(co.th_vec).normalized()*0.3,0.1)
                newar.name="force: {}{}".format(co.pos,co.th_vec)
                newar.parent=newobj

#render center of gravity:
newobj=cpobj("cross")
newobj.location=mission.com
#print(mission.com)
            
 #render the result
bpy.context.scene.render.use_edge_enhance=True
bpy.ops.render.render()
bpy.data.images['Render Result'].save_render("satellite.png")
    
#todo: render the COG together with a "forcemap"  and a "space of forces"/moments