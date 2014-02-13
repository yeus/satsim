import bpy
import bpy.props
from bpy.props import FloatVectorProperty
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

import iboss_catalogue
import imp
imp.reload(iboss_catalogue)
  
cat=iboss_catalogue.Catalog()
cat.loadxmldata()
mission = cat.sat["EnMAP"]

print(mission.name)


def pq2bq():
  fvp = FloatVectorProperty("")
  return fvp

#select layer to put the satellite into:
bpy.data.scenes['Scene'].layers=[False]*19+[True]

#TODO:  mit dieser Seite hier:
#http://www.blender.org/documentation/blender_python_api_2_69_release/info_tips_and_tricks.html
#ein GUI entwickeln

#render satellit with forces
mode=""#".transparent"  #transparent render
for bs in mission.bb:
    if bs.name   == "test Lageregelungsbaustein": newobj=cpobj("düsenbaustein"+mode)
    elif bs.name == "Kernstruktur2x2x2": newobj=cpobj("2x2x2"+mode)
    else: newobj=cpobj("baustein"+mode)
    newobj.location=Vector(bs.pos)
    newobj.rotation_mode="XYZ"
    newobj.rotation_euler=bs.orientation*pi/180
    newobj["blocktype"]=bs.name
    newobj["mission"]=mission.name
    newobj["test"]={"test2":1.0,"y":2.0}
    newobj.name=bs.name
    #TODO: hier python drivers hinzufügen, um die Position von Objekten zu bestimmen
    #http://blenderartists.org/forum/archive/index.php/t-209910.html?s=078384d8fb1235542564a869f33b6ab0
        
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