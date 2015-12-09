from itertools import chain
#testbla
from math import cos, sin, pi, atan,sqrt
pi2=pi/2

import time
import bpy

def copyobject(original):
    #bpy.ops.object.select_all(action='TOGGLE')
    bpy.ops.object.select_pattern(pattern=original, extend = False) #select the object to-be copied
    
    bpy.ops.object.duplicate(linked = True, mode = 'TRANSLATION')
    
    ob = bpy.context.selected_objects[0]
    
    return ob

def copyobject_mesh(oldobjname):
    me=bpy.data.objects[oldobjname].data

    ob = bpy.data.objects.new(oldobjname+"_cp",me) # create a new object
    ob.data = me          # link the mesh data to the object
    scene = bpy.context.scene           # get the current scene
    scene.objects.link(ob)                      # link the object into the scene
    return ob

def genobject(objname,verts=[],faces=[],edges=[]):
    me = bpy.data.meshes.new(objname)  # create a new mesh
    me.from_pydata(verts,edges,faces)
    me.update()      # update the mesh with the new data
    ob = bpy.data.objects.new(objname,me) # create a new object
    ob.data = me          # link the mesh data to the object
    scene = bpy.context.scene           # get the current scene
    scene.objects.link(ob)                      # link the object into the scene
    return ob

def gen3dlist(size,initializer=None):
    vm=[None]*size[0]
    for i in range(size[0]):
     vm[i]=[None]*size[1]
     for j in range(size[1]):
      vm[i][j]=[initializer]*size[2]
    return vm

def getactiveobj():
    return bpy.context.scene.objects.active

def selectsingleobj(obj):
    bpy.ops.object.select_all(action="DESELECT")
    obj.select=True
    bpy.context.scene.objects.active=obj

def joinobjects(objlist):
    obj=genobject("joined")
    selectobj(obj)
    for i in objlist: i.select=True
    bpy.ops.object.join()
    return obj

def rotverts(verts,euler):
    rot=Euler(euler).to_matrix()    
    newverts=[]
    for i in verts:
        tmp=[]
        for j in i: 
            tmp.append(rot*Vector(j))
        newverts.append(tmp)
    return newverts
   
def creategeometry(verts):
    faces=[]
    faceoffset=0
    for ver in verts:
        if len(ver)==4: 
            faces.append((faceoffset+0,faceoffset+1,faceoffset+2,faceoffset+3))
            faceoffset+=4
        else:
            faces.append((faceoffset+0,faceoffset+1,faceoffset+2)) 
            faceoffset+=3
    return list(chain.from_iterable(verts)),faces

def createquadverts(size=(1,1),pos=(0,0,0),rot=(0,0,0)):
    newverts=[(0,0,0),(size[0],0,0),(size[0],size[1],0),(0,size[1],0)]
    rot=Euler(rot).to_matrix()
    verts=[]
    for i in newverts:
        verts.append(rot*Vector(i)+Vector(pos))
    return [verts]

def createcylinder(r,b1,b2,res):
    verts=[]
    for i in range(res):
       a=i*2*pi/res
       x,y=r*sin(a),r*cos(a)
       a=(i+1)*2*pi/res
       x2,y2=r*sin(a),r*cos(a)
       verts.append([(x,y,b1),(x2,y2,b1),(x2,y2,b2),(x,y,b2)])    
    return verts

def genobjandremovedoubles(verts):
    verts,faces=creategeometry(verts)
    block=genobject("block",verts,faces)
    selectobj(block)
    #bpy.ops.object.editmode_toggle()
    #bpy.ops.mesh.select_all(action='SELECT')
    #bpy.ops.mesh.remove_doubles(limit=0.01)
    #bpy.ops.object.editmode_toggle()
    return block 
