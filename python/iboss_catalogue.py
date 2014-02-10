#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: iboss.py
# author: - Thomas Meschede
#
# modified:
#       - 2012 11 27 - Thomas Meschede

"""defines data structures for iboss project"""

Version="1.4" #catalog version

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

pq.krad=pq.UnitQuantity('kilorad', pq.rads*1000, symbol='krad')
pq.blocks=pq.UnitQuantity('blocks', 1, symbol='blocks')
pq.constants.E0=pq.UnitConstant('Solar constant',1367*pq.W/pq.m**2,'E0')

#in python3:
import sys
if sys.version_info.major > 2:
    #convert numbers into text
    def unicode(something): #define a unicode function to make python2/3 scripts compatible
      #try:
        return str(something)
      #except UnicodeDecodeError:
      #  traceback.print_exc()
      #  print(something)

    def u(x):
        return x
else:
    import codecs
    def u(x):
        return codecs.unicode_escape_decode(x)[0]

#TODO: Die Speicherung als "pickle", oder json Objekt räumt die Möglichkeit ein, zwei separate Datenbasen zu erhalten.
#              -> die XML Datenbasis ist dabei eine "Untermenge" der json Datenbasis
#TODO: Kommentare in XML einbauen.
#TODO: Möglichkeit des Speicherns in json Dateien, oder pickle-Objects. -> z.B. zur Umwandlung von einem XML Format in ein anderes
#TODO: die letzte Version des odt-Katalogs in json Format abspeichern, damit man es immer direkt aufrufen kann, und keine Daten verloren gehen.
#  -> vorher noch die Daten von Cem mit einarbeiten
#TODO: bestimmte Werte, die momentan noch für die XML umgewandelt werden (z.B. bausteinposition usw..) "nativ" in die korrekte Position umwandeln
# --> Vorgehen: XML deserialisieren (in unser Katalogformat), --> XML wieder speichern, so lange, bis kein unterschied mehr zwischen beiden XML versionen mehr bemerkbar ist
#TODO: zwei separate Datenbanken lassen sich leicht unterhalten, wenn man für die Zahlwerte innerhalb der Datenbank dict.update() verwendet (einfach innerhalb ibossxml für alle Klassenvariablen und Methoden implementieren)

vec= lambda x,y,z: np.array([x,y,z])  #create a vector

helpstring="""
Dieses Skript speichert den Bausteinkatalog im XML-Format
"""

#convert vector to string (python list)
def vec2str(vec):
  return "{:.8} {:.8} {:.8}".format(*vec)

def mat2str(mat):
  return "\n\t\t\t\t\t".join(["{:.8} {:.8} {:.8}".format(*vec) for vec in mat])

#convert string to vector (numpy array)
def str2vec(stringvec):
  #try:  
    val = np.array([float(i) for i in stringvec.rsplit()])
    if val.size==1: val=val[0]
    elif val.size==9: val=val.reshape(3,3) 
    return val 
  #except ValueError:
    #raise
    #print("could not convert {} to float".format(stringvec))
  
def str2vecint(stringvec): return vec(*[int(i) for i in stringvec.split(",")])

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
    
    vars(self)[xmlprop.tag]=val*unit
  
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
      
    
  
  @classmethod
  def xml2vec(cls,xmlvec):
    vec=[]
    for i in xmlvec:
      vec.append(float(i.text))
    return vec 

  @classmethod
  def vec2xml(cls,vec):
    x,y,z=et.Element("x"),et.Element("y"),et.Element("z")
    x.text=unicode(vec[0])
    y.text=unicode(vec[1])
    z.text=unicode(vec[2])
    return (x,y,z)
  
  @classmethod
  def property2xml(cls,vkey,vvalue):
    try:
      newelem=et.Element(vkey)
      #newelem=et.Element("property")
      if isinstance(vvalue,pq.Quantity): 
        newelem.set("unit",vvalue.dimensionality.string)
        if vvalue.size==1 :newelem.text=unicode(vvalue.magnitude)
        #else: newelem.extend(cls.vec2xml(vvalue.magnitude))
        elif vvalue.size<=3: newelem.text = vec2str(vvalue.magnitude)
        else: newelem.text = mat2str(vvalue.magnitude)
      else:
        try:
          #if vvalue.size>1: newelem.extend(cls.vec2xml(vvalue.magnitude))
          if vvalue.size>1: newelem.text = vec2str(vvalue.magnitude)
          else: newelem.text = unicode(vvalue)
        except AttributeError: #in case of vvalue not beeing an array
          newelem.text = unicode(vvalue)
    except:
      print("vkey: ",vkey, "; vvalue: ",vvalue, "\n\n")
      raise
      
        
    return newelem
  
  @classmethod
  def genericvariable2xml(cls,vkey,vvalue):
    try:
      newelem=et.Element("GenericVariable")
      et.SubElement(newelem,"VSD:name").text=vkey
      if isinstance(vvalue,pq.Quantity): 
        et.SubElement(newelem,"unit").text=vvalue.dimensionality.string
        if vvalue.size==1 : value=unicode(vvalue.magnitude)
        #else: newelem.extend(cls.vec2xml(vvalue.magnitude))
        elif vvalue.size<=3: value = vec2str(vvalue.magnitude)
        else: value = mat2str(vvalue.magnitude)
      else:
        try:
          #if vvalue.size>1: newelem.extend(cls.vec2xml(vvalue.magnitude))
          if vvalue.size>1: value = vec2str(vvalue.magnitude)
          else: value = unicode(vvalue)
        except AttributeError: #in case of vvalue not beeing an array
          value = unicode(vvalue)
    except:
      print("vkey: ",vkey, "; vvalue: ",vvalue, "\n\n")
      raise
    
    et.SubElement(newelem,"value").text=value
    return newelem
  
  @property
  def xml(self):
    root=et.Element(self._xmltype)
    root.set("VSD:id",self._id)
    
    #TODO: if externversion==True
    mapping=self.xmlmapping
    variables=et.Element("genericVariables")
    for vkey,vvalue in sorted(vars(self).items(),key=lambda instance: mapping[instance[0]].lower() if instance[0] in mapping else instance[0].lower()): #sort alphabetically with mapped names
      if vkey[0]=="_" or isinstance(vvalue, list): continue #skip lists and private variables
      if vkey in mapping:
        root.append(self.property2xml(mapping[vkey],vvalue)) #speichern sämtlicher Klassenvariablen
      else:
        variables.append(self.genericvariable2xml(vkey,vvalue)) #speichern sämtlicher Klassenvariablen
    
    root.append(variables)
    
    xmllist=self.xmllist()  # eigentliche Sonderbehandlung von BS-Listen
    if xmllist!=None: root.append(xmllist)  
    
    return root 

  @property
  def xmlstr(self):  return prettyprintxml(self.xml)

  def __str__(self):#__repr__
    retstr=rstheader(self.name,"'")
    
    retstr+=("="*40)+" "+"="*100+"\n"
    for key,val in vars(self).items():
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
        retstr += "{:<30}\n".format(val)

    retstr+=("="*40)+" "+"="*100+"\n"
    
    return retstr
#end class ibossxml
  def update(self):
    pass
  
  def varchange(self,varname,val=0,delete=False):
    if delete: 
      del vars(self)[varname]
      return
    vars(self)[varname]=val

#TODO: Kernstruktur irgendwie definieren
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
    
    #self.blocksize=0.4*pq.m #0.4m
    #gap=0.01*pq.m
    #self.size=vec(self.blocksize+gap,self.blocksize+gap,self.blocksize+gap)*pq.m
    #self.name=bbtype
    #self.type=bbtype
    #self.components=[]
    #self.mass=0*pq.kg
    #self.power_max=0*pq.W
    #self.com=vec(0,0,0)*self.blocksize
    #self.heatcapacity=10*pq.J/pq.K
    #self.inertia=((0.85,0.0,0.0),
                  #(0.0,0.85,0.0),
                  #(0.0,0.0,0.85),)*pq.kg*pq.m**2
    #self.orbit="ANY"
    #self.geometry="../../Models/Library/BuildingBlocks/EnMAP_Frame.mod"+"TODO: lieber so, als mit \"geometry xlink:href=\""
    
    #initialize with default variables
    vars(self).update(self.defaultvariables())
    name=bbtype,
    type=bbtype,
    
    self._xmltype="BuildingBlockDef"

  def defaultvariables(self):
    gap=0.01*pq.m
    Blocksize=0.4*pq.m
    return dict(blocksize=Blocksize, #0.4m,
                size=vec(Blocksize+gap,Blocksize+gap,Blocksize+gap)*pq.m,
                name="generic",
                type="generic",
                components=[],
                mass=0*pq.kg,
                power_max=0*pq.W,
                com=vec(0,0,0)*Blocksize,
                heatcapacity=10*pq.J/pq.K,
                inertia=((0.85,0.0,0.0),
                              (0.0,0.85,0.0),
                              (0.0,0.0,0.85),)*pq.kg*pq.m**2,
                orbit="ANY",
                geometry="../../Models/Library/BuildingBlocks/EnMAP_Frame.mod"+"TODO: lieber so, als mit \"geometry xlink:href=\"")
    
  @property
  def xmlmapping(self):
    props={"name":"VSD:name", "size":"size", "mass": "mass",
                   "heatcapacity":"heatCapacity",
                   "geometry":"geometry",
                   "com":"centerOfMass", #vector3d
                   "inertia":"inertiaTensor", #matrix3d
                   "orbit":"orbit",
                   "power_max":"maxPowerConsumption"}
    return props

  def xmllist(self):
    root=et.Element("components")
    for co in self.components:
      newelem=et.Element("GenericComponent")
      newelem.insert(0,et.Comment(co.name))
      if hasattr(co,"pos"): newelem.append(self.property2xml("position",co.pos))
      if hasattr(co,"rot"): newelem.append(self.property2xml("orientation",co.rot)) # TODO. rotation to "oriantation"
      if hasattr(co,"th_vec"): newelem.append(self.property2xml("th_vec",co.th_vec))#.set("th_vec", vec2str(co.th_vec))
      if hasattr(co,"num"): 
        if co.num!=1: newelem.append(self.property2xml("num", co.num)) #if it is just one component number does not matter
      root.append(newelem)
      newelem2=et.Element("definition")
      newelem2.set("xlink:href","../Catalogs/catalog.xml#"+str(co._refid))
      newelem.append(newelem2)
    return root #so the list gets serialized in xml"""
    
  def add_co(self,co): #todo variable length argument list
    self.components.append(copy.copy(co))  #use copy of component for an update with state variables
    #self.components.append(co)
    if "num" not in vars(co): co.num=1
  
  def update(self):
    #print("update buildingblock: {}".format(self.name))
    self.updatecomponents()
    #self.power=0*pq.W #only as state variable
    self.power_max=0*pq.W
    for co in self.components:
      if "power_max" in vars(co): 
        self.power_max+=co.power_max
        #print("adding {} to power from {}".format(co.power_max,co.name))
    self.updatemass()
    #print("\n")
  
  def updatecomponents(self):
    colist={}
    #del self.components[1::2]  #corrected a temporary error in the catalogue
    #for co in self.components:
      #if co.name=="testdüse": continue
      #print(co.name)
    
      #if co.name in colist:
          #colist[co.name] += 1
      #    print(colist[co.name].num==co.num)
      #colist[co.name]=co
  
      #else: colist[co.name] = 1
      #if colist[co.name]>=3:
      #  print(co.name,colist[co.name])
     
      #if "pos" in vars(co): print("pos",co.pos)
      #if "rot" in vars(co): print("rot",co.rot)
      #if "num" in vars(co): print("num",co.num)
      #if "th_vec" in vars(co): print("th_vec",co.th_vec)
    #print("\n")
  #TODO: also update with state variables
  
  def updatemass(self):
    self.mass=0*pq.kg
    for co in self.components:
      if "num" in vars(co): num=co.num
      else: num=1
      self.mass+=co.mass*num
    return self.mass

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
    
  @property
  def xmlmapping(self): #maps values to xml class
    return {"name":"VSD:name","orbit":"orbit"}

  def xmllist(self):
    root=et.Element("buildingBlocks")
    for bb in self.bb:
      newelem=et.Element("BuildingBlock")
      newelem.set("VSD:id",bb._id)#"".join([str(int(i)) for i in bb.pos]))
      #newelem.set("type",bb.type)
      newelem.append(self.property2xml("VSD:name",bb.name))
      newelem.append(self.property2xml("position",bb.pos))
      newelem.append(self.property2xml("orientation",bb.orientation))
      newelem2=et.Element("definition")
      newelem2.set("xlink:href","../Catalogs/catalog.xml#"+str(bb._refid))
      newelem.append(newelem2)
      root.append(newelem)
    return root #so the list gets serialized in xml
    
  #adds a new building block to the satellite
  def add_bb(self,bb,pos,orientation):  #todo variable length argument list
    newbs=copy(bb)
    newbs=bb
    newbs.pos=pos
    newbs.orientation=orientation
    newbs.name=newbs.type
    self.bb.append(newbs)
   
  def update(self):
    self.mass=self.massgen
    
    #check buildingblock ids for consistency
    #for bb in in self.bb:
      
    
  @property
  def massgen(self):
    return np.sum([bb.mass for bb in self.bb])*pq.kg
    
  @property
  def bb(self):
    return self._bb
  @bb.setter
  def bb(self,value): #TODO: remove this function and make a "normal" list variable out of it
    self._bb=value
  @bb.deleter
  def bb(self):
    del self._bb
    
  #calculate Center of Gravity for a satellite
  @property
  def com(self):
    self.__com=np.sum([(vec(*bb.pos)*(self.bbsize+self.bbgap))*bb.mass for bb in self.bb],axis=0)*pq.kg*pq.m/self.massgen  #2nd method
    return self.__com

class Catalog(object):
  def __init__(self):
      self.co={}
      self.idco={}
      self.bb={}
      self.idbb={}
      self.sat={}
      self.idsat={}

  def info(self):
    infostring ="Number of components in catalog: " + str(len(self.co)) +"\n"
    infostring+="Number of buildingblocks in catalog: " + str(len(self.bb)) +"\n"
    infostring+="Number of satellites in catalog: " + str(len(self.sat)) +"\n"
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
      for co in sorted(bb.components,key=lambda instance: instance.name.lower()):
        co._id = ibossxml.getid()
        co._refid = self.co[co.name]._id
    
    for sat in sorted(self.sat.values(),key=lambda instance: instance.name.lower()):
      sat._id=ibossxml.getid()
      for bb in sorted(sat.bb,key=lambda instance: instance.name.lower()):
        bb._id = ibossxml.getid()
        bb._refid = self.bb[bb.name]._id
    
    #check if all default variables are there:
    for bb in self.bb.values():
      for def_key,def_val in bb.defaultvariables().items():
        if def_key not in vars(bb):
          vars(bb)[def_key]=def_val
          print("added: {} with \"{}\" to {}".format(def_key,def_val, bb.name))
          
    print("done with consistency check\n")
        
  def __str__(self):
    returnstring=rstheader("Katalog:","-")
  
    for i,name in [(self.sat.values(),"Satelliten"),
                    (self.bb.values(),"Bausteine"),
                    (self.co.values(),"Komponenten")]:
      returnstring+=rstheader(name,"^")
      for j in i:
        returnstring+=str(j)+"\n\n"
        
    return returnstring
  
    #TODO: check if new Version string is required
    #TODO: check for reference consitency between block catalog and blocklist of satellite

  #todo: save int,floats  etc..  as float and not as string in xml file
  #converts a list of "ibossxml" objects to xml
  def ibosslist2xml(self,name,instancelist):
    root=et.Element(name)
    for i in sorted(instancelist,key=lambda instance: instance.name.lower()): #alphabetically sorted list #operator.attrgetter('type').lower()): 
      root.append(i.xml)
    return root
  
  def savexml(self,filename,xml):
    initstr=u("""
        * Developer : Thomas Meschede (Thomas.Meschede@ilr.tu-berlin.de)
        * Date : {}
        * Version: {}
        * All code (c)2013 Technische Universität Berlin, ILR, Fachgebiet Raumfahrttechnik, all rights reserved""")

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

  def save(self, version=Version):
    self.update()
    katalog=et.Element("Catalog",version=Version)
    katalog.append(self.ibosslist2xml("componentDefs",self.co.values()))#TODO: componentDefs und buildingBlockDefs 
    katalog.append(self.ibosslist2xml("buildingBlockDefs",self.bb.values()))
    
    print("saving buildingblock catalog")
    self.savexml("bausteinkatalog/catalog.{}.xml".format(version),katalog)
    
    print("saving satellite configurations")
    for vkeys,vvalues in self.sat.items():
      #missionen=ibosslist2xml("Satellites",referenzmissionen.values())
      self.savexml("bausteinkatalog/tub satellites/{}.{}.xml".format(vkeys,version),vvalues.xml)

  #loads data from an XML file into catalog
  def loadxmldata(self,filename='bausteinkatalog/catalog.{}.xml'.format(Version)):
    import re
    with open(filename) as xmlfile:
      strdata = xmlfile.read()
      strdata = re.sub(' xmlns="[^"]+"', '', strdata) #strip xml from namespaces to make parsing easier
      strdata = re.sub('VSD:', '', strdata) #strip xml from namespaces to make parsing easier
      data = et.fromstring(strdata)
      #data=et.parse(strdata)
      #data = data.getroot()

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

    #startconsole(localvariables=locals())#import pdb; pdb.set_trace()
    
    #add building blocks
    for i in bs_list:
      new_bs=buildingblock("generic")
      new_bs._id=i.attrib['id']
      for xmlprop in i: #add xml properties
        if xmlprop.tag=="components":
          for co in xmlprop:
            co_id=list(co.find('definition').attrib.values())[0]
            co_id=re.search('#(id.*)',co_id).group(1)

            new_co=copy.copy(self.idco[co_id])
            #if "num" in co.attrib: new_co.num=int(co.attrib["num"])
            #for co_prop in co:
              #new_co.addxmlprop(co_prop) #Hier immer Ergänzungen aus dem laden einer alten katalogdatei hinzufügen
              #if co_prop.tag=="pos": new_co.pos=iboss_catalogue.ibossxml.xml2vec(co_prop)*pq.Quantity(1,"blocks")
              #if co_prop.tag=="th_vec": new_co.th_vec=iboss_catalogue.ibossxml.xml2vec(co_prop)*pq.dimensionless
            new_bs.add_co(new_co)
            #startconsole(localvariables=locals())#import pdb; pdb.set_trace()
        elif xmlprop.tag == "genericVariables":
           for var in xmlprop:  new_bs.addgenericxmlvar(var) #add generic properties
        else: new_bs.addxmlprop(xmlprop)
      self.bb[new_bs.name]=new_bs
      self.idbb[new_bs._id]=new_bs

    #mission=dict()

  def loadmission(filename):  
    co,bb,mn=loadxmldata()
    data = et.parse(filename)
    xmlmission = data.getroot()

    mission=iboss_catalogue.mission(data.find("type").text)
    for xmlprop in xmlmission:
      if xmlprop.tag=="buildingblocks":
        for xmlbb in xmlprop:
          newbb=copy.copy(bb[xmlbb.attrib["type"]])
          mission.add_bb(bb=newbb,pos=iboss_catalogue.str2vecint(xmlbb.attrib["pos"]),rot=iboss_catalogue.str2vec(xmlbb.attrib["rot"])*pq.deg)
      else: mission.addxmlprop(xmlprop)
      
    return mission

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

def startconsole(localvariables):
  from code import InteractiveConsole
  #ppxml=prettyprintxml

  cons=InteractiveConsole(locals=localvariables)
  
  bannerhelp="""
  savedata(data, filename): save catalog
  loaddata(filename): load catalog
  """
  
  cons.runsource("import readline, rlcompleter")
  cons.runsource("readline.set_completer(rlcompleter.Completer(globals()).complete)")
  cons.runsource("readline.parse_and_bind('tab:complete')")
  cons.runsource("a=123")
  cons.interact(bannerhelp)
  #1. readline.parse_and_bind('tab:complete')
  #2.local = dict(globals(),**local) if local else globals()
  #  code.interact(banner,local=local)
  #readline.set_completer(rlcompleter.Completer(globals()).complete)
  
  #code.interact(local=locals(), banner=bannerhelp)
  
def main():
  cat=loaddata()
  #cat.bbvarchange("power",delete=True)
  #cat.update()
  #savedata(cat)
  #print(cat)
  #cat.make_consistent()
  
  #startconsole(localvariables=locals())
 
  #saveibosslists(cat)
  #print("byebye")
  
if __name__ == "__main__":
  main()