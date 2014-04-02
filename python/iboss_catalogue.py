#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: iboss.py
# author: - Thomas Meschede
#
# modified:
#       - 2012 11 27 - Thomas Meschede

"""defines data structures for iboss project"""

Version="1.5" #catalog version
newVersion="1.6" #next catalog version

from copy import copy
import numpy as np
import xml.etree.ElementTree as et
import xml.dom.minidom
import xml
import utils.odspy
import quantities as pq
import xml.etree.ElementTree as et
import codecs
import time
import traceback
import pickle
import copy
import re
import sys
import json

pq.krad=pq.UnitQuantity('kilorad', pq.rads*1000, symbol='krad')
pq.blocks=pq.UnitQuantity('blocks', 1, symbol='blocks')
pq.constants.E0=pq.UnitConstant('Solar constant',1367*pq.W/pq.m**2,'E0')

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

helpstring="""
Dieses Skript verwaltet den Bausteinkatalog im XML-Format
"""

#convert vector to string (python list)
def vec2str(vec):
  return "{:.8} {:.8} {:.8}".format(*vec)

#convert matrix to string
def mat2str(mat):
  return "\n\t\t\t\t\t".join(["{:.8} {:.8} {:.8}".format(*vec) for vec in mat])

#convert string to vector (numpy array)
def str2vec(stringvec):
    val = np.array([float(i) for i in stringvec.rsplit()])
    if val.size==1: val=val[0]
    elif val.size==9: val=val.reshape(3,3) 
    return val 
  
def rstheader(string,level):
  return string+"\n"+level*len(string)+"\n\n"

def prettyprintxml(xmltree):
  XML=et.tostring(xmltree,encoding="utf-8")
  try:
    XML=xml.dom.minidom.parseString(XML)
  except xml.parsers.expat.ExpatError as EE:
    traceback.print_exc()
    #print("\n{}".format(XML))
    sys.exit()
    
  #print("\n" + str(type(XML)) + "\n")  
  return XML.toprettyxml()

##different verions of "bunch" classes:
##TODO:  eine dieser Klassen hier für die XML-python benutzen, damit könnte man dann die gesamte Datenbank einfach in einem json Objekt speichern, (oder auch csv.  usw..).
##class used to wrap dictionaries
#class Bunch:
    #def __init__(self, **kwds):
        #self.__dict__.update(kwds)

#class Bunch(dict): #class which is itself also a dictionary
    #def __init__(self,**kw):
        #dict.__init__(self,kw)
        #self.__dict__ = self

##short bunch class        
#class Bunch:
    #__init__ = lambda self, **kw: setattr(self, '__dict__', kw)

#class bunch(dict):
    #__getattr__ = dict.__getitem__


class ibossxml(object):
  idcounter = 0  #counts individual ids
  
  def __init__(self):
    self._xmltype=self.__class__.__name__
    self._id = ibossxml.getid()
    self._refid=None

  @staticmethod
  def getid():
    ibossxml.idcounter+=1
    return "id"+str(ibossxml.idcounter)

  def defaultvariables(self):
    return {}

  @property
  def xmlmapping(self):
    return {}
  
  def xmllist(self):
    return None
  
  def addxmlprop(self,xmlprop):
    #convert to floats and vectors
    unit=1
    try:
      if 'unit' in xmlprop.attrib:
        val=str2vec(xmlprop.text)
        unit=pq.Quantity(1,xmlprop.attrib['unit'])
      else: 
        try: val=float(xmlprop.text)
        except ValueError: val=xmlprop.text
    except:
      print("hat nicht funktioniert",prettyprintxml(xmlprop))
      print(xmlprop.text.rsplit())
      raise
    
    #change name according to xmlmapping
    inv_map = {v:k for k, v in self.xmlmapping.items()}
    if xmlprop.tag in inv_map.keys(): name = inv_map[xmlprop.tag]
    else: name = xmlprop.tag
      
    vars(self)[name]=val*unit
  
  def addgenericxmlvar(self,xmlvar):
    #convert to floats and vectors
    try:
      strvalue= xmlvar.find("value").text
      try: value=str2vec(strvalue)
      except ValueError:value=strvalue
    
      try: unit = pq.Quantity(1,xmlvar.find("unit").text)
      except: unit = 1
            
      name = xmlvar.find("name").text
      vars(self)[name]=value*unit
      
      #startconsole(localvariables=locals())#import pdb; pdb.set_trace()
    except:
      print("hat nicht funktioniert",prettyprintxml(xmlvar))
      raise
      
  @staticmethod
  def property2strlist(vkey,value):
    name = vkey
    if isinstance(value,pq.Quantity):    
      unit = value.dimensionality.string
      if value.size==1:    val = str(value.magnitude)
      elif value.size<=3:  val = vec2str(value.magnitude)
      else:                val = mat2str(value.magnitude)
    else:
      unit = None
      try:
        if value.size>1:  val = vec2str(vvalue.magnitude)
        else:              val = str(value)
      except AttributeError: #in case of vvalue not beeing an array
        val = str(value)
        
    return name,val,unit
  
  @staticmethod
  def property2xml(vkey,vvalue):
    name,val,unit = ibossxml.property2strlist(vkey,vvalue)

    newelem = et.Element(name)
    if unit: newelem.set("unit",unit)
    newelem.text = val
       
    return newelem
  
  @staticmethod
  def genericvariable2xml(vkey,vvalue):
    name,val,unit = ibossxml.property2strlist(vkey,vvalue)
    
    newelem=et.Element("GenericVariable")
    et.SubElement(newelem,"VSD:name").text      = name
    if unit: et.SubElement(newelem,"unit").text = unit
    et.SubElement(newelem,"value").text         = val
    
    return newelem
  
  @property
  def xml(self):
    root=et.Element(self._xmltype)
    root.set("VSD:id",self._id)
    
    #TODO: if externversion==True
    mapping=self.xmlmapping
    variables=et.Element("genericVariables")
    for vkey,vvalue in sorted(vars(self).items(),key=lambda instance: mapping[instance[0]].lower() if instance[0] in mapping else instance[0].lower()): #sort alphabetically with mapped names
      if vkey[0]=="_": continue  #skip private variables
      if vkey in mapping:
        root.append(self.property2xml(mapping[vkey],vvalue)) #speichern sämtlicher "default" Klassenvariablen
      else:
        variables.append(self.genericvariable2xml(vkey,vvalue)) #speichern sämtlicher generischer Klassenvariablen
    
    root.append(variables)
    
    xmllist=self.xmllist()  # eigentliche Sonderbehandlung von BS-Listen
    if xmllist!=None: root.append(xmllist)  
    
    return root 

  @property
  def xmlstr(self):  return prettyprintxml(self.xml)

  #returns a string representation of the object
  def __str__(self):#__repr__
    retstr=rstheader(self.name,"'")
    
    retstr+=("="*40)+" "+"="*100+"\n"
    for key,val in sorted(vars(self).items()):
      if key[0]=="_" and key!="_bb": continue
      
      namestr= key if key!="_bb" else "Buildingblocks"
      retstr+="{:40} ".format(namestr)
      #retstr+=":{}: ".format(key)
      if isinstance(val,pq.Quantity) and val.ndim == 2:#val.shape==(3,3): #print matrices as strings
        retstr+="[{},{},{}] * {}\n".format(val[0].magnitude,val[1].magnitude,val[2].magnitude,val.dimensionality.string)
      elif isinstance(val, list):
        names=[elem.name for elem in val]
        retstr += "{:<30};\n".format(names[0])
        if len(names)>1:
          for i in names[1:]:
            retstr +=" "*40+" "+"{:<99};\n".format(i)
      else:
        retstr += "{:<30}\n".format(str(val))

    retstr+=("="*40)+" "+"="*100+"\n"
    
    return retstr
#end class ibossxml
  def update(self):
    pass
  
  #you cna use this function to batch-change variable names 
  def varchange(self,varname,val=0,delete=False):
    if delete: 
      del vars(self)[varname]
      return
    vars(self)[varname]=val

class component(ibossxml):
  def __init__(self,cotype):
    super(component, self).__init__()
    
    self.type=cotype
    self.name=cotype#
    self.mass=0
    
    self._xmltype="GenericComponent"
    
class buildingblock(ibossxml):
  def __init__(self,bbtype):
    super(buildingblock, self).__init__()
     #initialize with default variables
    vars(self).update(self.defaultvariables())
    self.name=bbtype,
    self.type=bbtype,
    
    self._xmltype="BuildingBlockDef"

  def defaultvariables(self):
    gap=0.01*pq.m
    Blocksize=0.4*pq.m
    return dict(blocksize=Blocksize, #0.4m,
                size=vec(Blocksize+gap,Blocksize+gap,Blocksize+gap)*pq.m,
                name="generic",
                type="generic",
                _co=[],
                mass=0*pq.kg,
                power_max=0*pq.W,
                com=vec(0,0,0)*Blocksize,
                heatcapacity=10*pq.J/pq.K,
                inertia=((0.85,0.0,0.0),
                              (0.0,0.85,0.0),
                              (0.0,0.0,0.85),)*pq.kg*pq.m**2,
                orbit="ANY",
                geometry = "../../Models/Library/BuildingBlocks/EnMAP_Frame.mod"+"TODO, noch keine baustiene generiert...",
                grid = [(0,0,0)])
    
  @property
  def xmlmapping(self):
    props={"name":"VSD:name", "size":"size", "mass": "mass",
                   "heatcapacity":"heatCapacity",
                   "geometry":"geometry",
                   "com":"centerOfMass", #vector3d
                   "inertia":"inertiaTensor", #matrix3d
                   "orbit":"orbit",
                   "power_max":"maxPowerConsumption",
                   "pos":"position"}
    return props

  def xmllist(self):
    root=et.Element("components")
    for co in self._co:
      newelem=et.Element("GenericComponent")
      newelem.insert(0,et.Comment(co.name))
      if hasattr(co,'position'): newelem.append(self.property2xml("position",co.position))
      if hasattr(co,"pos"): newelem.append(self.property2xml("position",co.pos))
      if hasattr(co,"rot"): newelem.append(self.property2xml("orientation",co.rot)) # TODO. rotation to "oriantation"
      if hasattr(co,"th_vec"): newelem.append(self.property2xml("th_vec",co.th_vec))#in orientation "verbuddeln"
      if hasattr(co,"num"): 
        if co.num!=1: newelem.append(self.property2xml("num", co.num)) #if it is just one component number does not matter
      root.append(newelem)
      newelem2=et.Element("definition")
      newelem2.set("xlink:href","../Catalogs/catalog.xml#"+str(co._refid))
      newelem.append(newelem2)
    return root #so the list gets serialized in xml"""
    
  def add_co(self,co): #todo variable length argument list
    if "num" not in vars(co): co.num=1
    self._co.append(copy.copy(co))  #use copy of component for an update with state variables
  
  def update(self):
    self.power_max=0*pq.W
    for co in self._co:
      if "power_max" in vars(co): 
        self.power_max+=co.power_max
    self.mass=np.sum([co.mass*co.num for co in self._co])*pq.kg

class Satellite(ibossxml):
  def __init__(self,mitype):
    super(Satellite, self).__init__()
    
    self.bbgap=0.01 *pq.m#todo aus Tabelle abrufen
    self.bbsize=0.4 *pq.m
    self.name=mitype
    self.orbit="LEO"
    self.mass=0*pq.kg
    self.type=mitype
    self._bb=[]#list of building blocks
    #self.orbparam="2-line-elem"
    self._grid={}
    
  @property
  def xmlmapping(self): #maps values to xml class
    return {"name":"VSD:name","orbit":"orbit"}

  def xmllist(self):
    root=et.Element("buildingBlocks")
    for bb in self._bb:
      newelem=et.Element("BuildingBlock")
      newelem.set("VSD:id",bb._id)#"".join([str(int(i)) for i in bb.pos]))
      #newelem.set("type",bb.type)
      #TODO:  das hier alles in eine einzige Funktion
      newelem.append(self.property2xml("VSD:name",bb.name))
      if hasattr(bb,"pos"): newelem.append(self.property2xml("position",bb.pos))
      if hasattr(bb,"position"): newelem.append(self.property2xml("position",bb.position))
      newelem.append(self.property2xml("orientation",bb.orientation))
      newelem2=et.Element("definition")
      newelem2.set("xlink:href","../Catalogs/catalog.xml#"+str(bb._refid))
      newelem.append(newelem2)
      root.append(newelem)
    return root #so the list gets serialized in xml
    
  #adds a new building block to the satellite
  def add_bb(self,bb):  #todo variable length argument list
    newbs = copy.copy(bb)
    newbs.index = tuple((newbs.pos/newbs.size).magnitude.astype(int))
    for i in newbs.grid:
      #print(i, newbs.index[0]+i[0])
      self._grid[(newbs.index[0]+i[0],newbs.index[1]+i[1],newbs.index[2]+i[2])] = newbs.name
      #self.grid = newbs
    self._bb.append(newbs)
  
  def get_bb_neighbours(self,bb):
    nbb = []
    
    return nbb
    
  
  def update(self):
    self.mass=np.sum([bb.mass for bb in self._bb])*pq.kg
    self.com=np.sum([(vec(*bb.pos)*(self.bbsize+self.bbgap))*bb.mass for bb in self._bb],axis=0)*pq.kg*pq.m/self.mass

class Catalog(object):
  def __init__(self):
      self.co={}
      self.idco={}
      self.bb={}
      self.idbb={}
      self.sat={}
      self.idsat={}

  def info(self):
    infostring ="- Number of components in catalog: " + str(len(self.co)) +"\n"
    infostring+="- Number of buildingblocks in catalog: " + str(len(self.bb)) +"\n"
    infostring+="- Number of satellites in catalog: " + str(len(self.sat)) +"\n"
    return infostring

  def bbvarchange(self,varname,val=0.0,delete=False):
    for i in self.bb.values():
      print("changing {} to \"{}\" from \"{}\" in bb: {}".format(varname,"delete" if delete else var,vars(i)[varname],i.name))
      i.varchange(varname,val,delete)
    
      
  def update(self):
    self.make_consistent()
    
    for i in [self.co.values(),self.bb.values(),self.sat.values()]:
      for j in i:
        j.update()
        
      
  def make_consistent(self):
    ibossxml.idcounter=0

    #give parts new ids:
    for co in sorted(self.co.values(),key=lambda instance: instance.name.lower()):
      co._id=ibossxml.getid()
      
    for bb in sorted(self.bb.values(),key=lambda instance: instance.name.lower()):
      bb._id=ibossxml.getid()
      for co in sorted(bb._co,key=lambda instance: instance.name.lower()):
        co._id = ibossxml.getid()
        co._refid = self.co[co.name]._id
    
    for sat in sorted(self.sat.values(),key=lambda instance: instance.name.lower()):
      sat._id=ibossxml.getid()
      for bb in sorted(sat._bb,key=lambda instance: instance.name.lower()):
        bb._id = ibossxml.getid()
        bb._refid = self.bb[bb.name]._id
    
    #check if all default variables are there:
    for bb in self.bb.values():
      for def_key,def_val in bb.defaultvariables().items():
        if def_key not in vars(bb):
          vars(bb)[def_key]=def_val
          print("added: {} with \"{}\" to {}".format(def_key,def_val, bb.name))
          
    print("done with consistency check\n")
        
  #gives bakc a string representation of the object      
  def __str__(self):
    returnstring=rstheader("Katalog:","-")
  
    for i,name in [(self.sat.values(),"Satelliten"),
                    (self.bb.values(),"Bausteine"),
                    (self.co.values(),"Komponenten")]:
      returnstring+=rstheader(name,"^")
      for j in i:
        returnstring+=str(j)+"\n\n"
        
    return returnstring
  
  #converts a list of "ibossxml" objects to xml
  def ibosslist2xml(self,name,instancelist):
    root=et.Element(name)
    for i in sorted(instancelist,key=lambda instance: instance.name.lower()): #alphabetically sorted list #operator.attrgetter('type').lower()): 
      root.append(i.xml)
    return root
  
  def savexml(self,filename,xml):
    initstr="""
        * Developer : Thomas Meschede (Thomas.Meschede@ilr.tu-berlin.de)
        * Date : {}
        * Version: {}
        * All code (c)2013 Technische Universität Berlin, ILR, Fachgebiet Raumfahrttechnik, all rights reserved"""

    #print(type(initstr))
    f=codecs.open(filename,"w",encoding="utf-8")
    xml.set("xmlns:VSD","http://www.VEROSIM.de/namespaces/VSD") #muss möglicherweise für andere Klassen geändert werden.
    xml.set("xmlns:xlink","http://www.w3.org/1999/xlink")
    xml.set("xmlns:xsi","http://www.w3.org/2001/XMLSchema-instance")
    xml.set("xmlns","http://www.VEROSIM.de/namespaces/IBOSS")
    xml.set("xsi:schemaLocation","http://www.VEROSIM.de/namespaces/IBOSS ../XSD/iboss.xsd")
    xml.insert(0,et.Comment(initstr.format(time.strftime("%Y/%m/%d"), Version)))
    f.write(prettyprintxml(xml))
    f.close()

  def save(self, version=newVersion):
    self.update()
    katalog=et.Element("Catalog",version=Version)
    katalog.append(self.ibosslist2xml("componentDefs",self.co.values()))#TODO: componentDefs und buildingBlockDefs 
    katalog.append(self.ibosslist2xml("buildingBlockDefs",self.bb.values()))
    
    print("saving buildingblock catalog")
    self.savexml("bausteinkatalog/catalog.{}.xml".format(version),katalog)
    
    print("saving satellite configurations")
    for vkeys,vvalues in self.sat.items():
      #missionen=ibosslist2xml("Satellites",referenzmissionen.values())
      self.savexml("bausteinkatalog/tub_sats/{}.{}.xml".format(vkeys,version),vvalues.xml)

  #load xml file and strips it from namespaces
  def loadxmlfile(self,filename):
    import re
    with open(filename) as xmlfile:
      strdata = xmlfile.read()
      strdata = re.sub(' xmlns="[^"]+"', '', strdata) #strip xml from namespaces to make parsing easier
      strdata = re.sub('VSD:', '', strdata) #strip xml from namespaces to make parsing easier
      data = et.fromstring(strdata)
      #data=et.parse(strdata)
      #data = data.getroot()
    return data

  #loads data from an XML file into catalog
  def loadxmldata(self,filename='bausteinkatalog/catalog.{}.xml'.format(Version)): 
    data=self.loadxmlfile(filename)

    #get list of componenents and buildingblocks
    co_list=data.findall("componentDefs/GenericComponent") #tree.find('foo:bar', namespaces={'foo': 'http://url.of.namespace'})
    bs_list=data.findall("buildingBlockDefs/BuildingBlockDef")
    
    #todo XML load routinen in iboss Klassen verschieben?
    #add componenents
    for i in co_list:
      new_co=component('generic')
      new_co._id=i.attrib['id']
      genvars=i.findall('genericVariables/GenericVariable')
      for var in genvars:  new_co.addgenericxmlvar(var) #add properties
      self.co[new_co.name]=new_co  #catalog with component names
      self.idco[new_co._id]=new_co

    #add building blocks
    for i in bs_list:
      new_bs=buildingblock("generic")
      new_bs._id=i.attrib['id']
      for xmlprop in i: #add xml properties
        if xmlprop.tag=="components":
          for co in xmlprop:
            co_id=re.search('#(id.*)',list(co.find('definition').attrib.values())[0]).group(1) #get component name from link
            new_co=copy.copy(self.idco[co_id]) #add copy of component to list in buildingblock
            for i in co: #add rest of variables
              if i.tag=='definition': continue
              else: new_co.addxmlprop(i)
            
            new_bs.add_co(new_co)
        elif xmlprop.tag == "genericVariables":
           for var in xmlprop:  new_bs.addgenericxmlvar(var) #add generic properties
        else: new_bs.addxmlprop(xmlprop)
      self.bb[new_bs.name]=new_bs
      self.idbb[new_bs._id]=new_bs
      
    #add missions
    import glob
    for i in glob.glob('bausteinkatalog/tub_sats/*.{}.xml'.format(Version)):  #get a file list of satxml files
      data = self.loadxmlfile(i)#TODO: check if it is a valid Satellite XML
      
      new_sat = Satellite('generic')
      new_sat._id=data.attrib['id']
      for xmlprop in data:
        if xmlprop.tag == 'buildingBlocks':
          for bb in xmlprop:
            bb_id=re.search('#(id.*)',list(bb.find('definition').attrib.values())[0]).group(1) #get component name from link
            new_bb=copy.copy(self.idbb[bb_id]) #add copy of buildingblock to list in buildingblock
            for i in bb:
              if i.tag=='definition': continue
              else: new_bb.addxmlprop(i)
            new_sat.add_bb(new_bb)
        elif xmlprop.tag == 'genericVariables':
           for var in xmlprop:  new_sat.addgenericxmlvar(var) #add generic properties
        else: new_sat.addxmlprop(xmlprop)
       
      #IPython.embed()

      self.sat[new_sat.name] = new_sat
      self.idsat[new_sat._id] = new_sat

  def test():
    import saveasxml
    saveasxml.Version="test"
    saveasxml.saveibosslists(co,bb,ms) #todo: implement as unittest

    #calculate power demands for buildingblocks
    for BB in bb.values():
      BB.update()
      #print(u"{}: {}".format(BB.name,BB.power))  #python2.7 Version
      print("{}: {}".format(BB.name,BB.power))

# Bei Abhängigkeiten zwischen Objekten (normalerweise müsste aber alles funktionieren)
#http://stackoverflow.com/questions/6376081/pickle-linked-objects
##### bei der Erstellung der Objekte wird das copy.copy()-Konstrukt benutzt!!!
def loaddata(filename="./bausteinkatalog/katalogdata.iboss"):
  datafile = open(filename,"rb")
  cat = pickle.load(datafile)
  datafile.close()
  return cat

def savedata(data, filename = "./bausteinkatalog/katalogdata_new.iboss"):
  datafile = open(filename,"wb")
  pickle.dump(data, datafile)  
  datafile.close()

def main():
  cat=Catalog()
  cat.loadxmldata()
  cat.update()
  #for bb in cat.bb.values():
  #  if 'Kernstruktur' in bb.name:
  #    bb.grid
  
  sat=cat.sat["EnMAP"]
  bb=sat._bb[0]
  import IPython
  IPython.embed()
  #cat.bbvarchange("power",delete=True)
  
if __name__ == "__main__":
  main()