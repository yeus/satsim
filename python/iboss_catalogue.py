#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: iboss.py
# author: - Thomas Meschede
#
# modified:
#       - 2012 11 27 - Thomas Meschede

"""defines data structures for iboss project"""

from copy import copy
import numpy as np
import xml.etree.ElementTree as et
import xml.dom.minidom
import xml
import utils
import quantities as pq
import xml.etree.ElementTree as et
import codecs
import time
import traceback

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
Version="1.3"

#convert vector to string (python list)
def vec2str(vec):
  return "{:.8} {:.8} {:.8}".format(*vec)

def mat2str(mat):
  return "\n\t\t\t\t\t".join(["{:.8} {:.8} {:.8}".format(*vec) for vec in mat])

#convert string to vector (python list)
def str2vec(stringvec):
  try:  
    val = vec(*[float(i) for i in stringvec.split(",")])
    return val 
  except ValueError:
    traceback.print_exc()
    print("could not convert {} to float".format(stringvec))
  
def str2vecint(stringvec): return vec(*[int(i) for i in stringvec.split(",")])

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

  @staticmethod
  def getid():
    ibossxml.idcounter+=1
    return "id"+str(ibossxml.idcounter)

  @property
  def xmlmapping(self):
    return {}
  
  def xmllist(self):
    return None
  
  #todo: XML vektoren einlesen
  def addxmlprop(self,xmlprop):
    #convert to floats and vectors
    try:
      if xmlprop.tag in ["com","pos","th_vec","size"]: 
        val=self.xml2vec(xmlprop)
      else: 
        try:
          val=float(xmlprop.text)
        except ValueError: 
          val=xmlprop.text
    except:
      raise
      print("hat nicht funktioniert",xmlprop.text)

      
    #find out unit
    unit=xmlprop.get("unit")
    if unit: 
      unit=pq.Quantity(1,unit)
    else: unit=1
    
    vars(self)[xmlprop.tag]=val*unit
  
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
        
    return newelem
  
  @property
  def xml(self):
    root=et.Element(self._xmltype)
    root.set("VSD:id",self._id)
    #root.set("type",self.type)
    #for vkey,vvalue in vars(self).items(): #check all variables in the class
    for vkey,vvalue in self.xmlmapping.items(): 
      if vkey not in ["components","_bb"]:  #sonderbehandlung (erstmal Auslassen) für BS-Listen
        if vvalue!=utils.odspy.EMPTY: root.append(self.property2xml(vkey,vvalue)) #speichern sämtlicher Klassenvariablen
    
    xmllist=self.xmllist()  # eigentliche Sonderbehandlung von BS-Listen
    if xmllist!=None: root.append(xmllist)  
    
    return root 

  @property
  def xmlstr(self):  return prettyprintxml(self.xml)
#end class ibossxml

#TODO: Kernstruktur irgendwie definieren
class component(ibossxml):
  def __init__(self,cotype):
    super(component, self).__init__()
    
    self.type=cotype
    self.name=cotype#
    self.mass=0
    
    self._xmltype="GenericComponent"
    
  @property
  def xmlmapping(self): #maps values to xml class
    variables={}
    counter=0
    for key,value in vars(self).items():
      counter+=1
      if key.startswith("_"): continue
      variables.update({key:value})
    #print(variables)
    return variables
  
  #def addxmlprop(self,xmlprop):
  #  super(FileInfo, self).addxmlprop(self,xmlprop)



class buildingblock(ibossxml):
  def __init__(self,bbtype):
    super(buildingblock, self).__init__()
    
    self.blocksize=0.4*pq.m #0.4m
    gap=0.01*pq.m
    self.size=vec(self.blocksize+gap,self.blocksize+gap,self.blocksize+gap)*pq.m
    self.name=bbtype
    self.type=bbtype
    self.components=[]
    self.mass=0*pq.kg
    self.power_max=0*pq.W
    self.com=vec(0,0,0)*self.blocksize
    self.heatcapacity=10*pq.J/pq.K
    self.inertia=((0.85,0.0,0.0),
                  (0.0,0.85,0.0),
                  (0.0,0.0,0.85),)*pq.kg*pq.m**2
    self.geometry="../../Models/Library/BuildingBlocks/EnMAP_Frame.mod"+"TODO: lieber so, als mit \"geometry xlink:href=\""
    
    self._xmltype="BuildingBlockDef"

  @property
  def xmlmapping(self):
    props={"VSD:name":self.name, "size":self.size, "mass": self.mass,
                   "heatCapacity":self.heatcapacity,
                   "geometry":self.geometry,
                   "centerOfMass":self.com, #vector3d
                   "inertiaTensor":self.inertia, #matrix3d
                   "orbit":"ANY",
                   "maxPowerConsumption":self.power_max}
    return props

  def xmllist(self):
    root=et.Element("components")
    for co in self.components:
      newelem=et.Element("GenericComponent")
      if hasattr(co,"pos"): newelem.append(self.property2xml("position",co.pos))
      if hasattr(co,"rot"): newelem.append(self.property2xml("orientation",co.rot)) # TODO. rotation to "oriantation"
      if hasattr(co,"th_vec"): newelem.append(self.property2xml("th_vec",co.th_vec))#.set("th_vec", vec2str(co.th_vec))
      if hasattr(co,"num"): 
        if co.num!=1: newelem.append(self.property2xml("num", co.num)) #if it is just one component number does not matter
      root.append(newelem)
      newelem2=et.Element("definition")
      newelem2.set("xlink:href","../Catalogs/catalog.xml#"+str(co._id))
      newelem.append(newelem2)
    return root #so the list gets serialized in xml"""
    
  def add_co(self,co): #todo variable length argument list
    self.components.append(copy(co))
    self.components.append(co)
    if "num" not in vars(co): co.num=1
    if "mass" in vars(co): self.mass+=co.mass*co.num
  
  def update(self):
    self.power=0*pq.W
    for CO in self.components:
      if "power_max" in vars(CO): self.power_max+=CO.power_max
    self.power_max+=(5*pq.W)
    self.updatemass()
  
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
    return {"VSD:name":self.name,"orbit":self.orbit}

  def xmllist(self):
    root=et.Element("buildingBlocks")
    for bb in self.bb:
      newelem=et.Element("BuildingBlock")
      newelem.set("VSD:id",ibossxml.getid())#"".join([str(int(i)) for i in bb.pos]))
      #newelem.set("type",bb.type)
      newelem.append(self.property2xml("VSD:name",bb.name))
      newelem.append(self.property2xml("position",bb.pos*(self.bbsize+self.bbgap)))
      newelem.append(self.property2xml("orientation",bb.orientation))
      newelem2=et.Element("definition")
      newelem2.set("xlink:href","../Catalogs/catalog.xml#"+str(bb._id))
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
    
  @property
  def massgen(self):
    return np.sum([bb.mass for bb in self.bb])*pq.kg
    
  @property
  def bb(self):
    return self._bb
  @bb.setter
  def bb(self,value): #todo remove this function
    self._bb=value
  @bb.deleter
  def bb(self):
    del self._bb
    
  #calculate Center of Gravity for a satellite
  @property
  def com(self):
    self.__com=np.sum([(vec(*bb.pos)*(self.bbsize+self.bbgap))*bb.mass for bb in self.bb],axis=0)*pq.kg*pq.m/self.massgen  #2nd method
    return self.__com

#todo: save int,floats  etc..  as float and not as string in xml file
#converts a list of "ibossxml" objects to xml
def ibosslist2xml(name,instancelist):
  root=et.Element(name)
  for i in sorted(instancelist,key=lambda instance: instance.name.lower()): #alphabetically sorted list #operator.attrgetter('type').lower()): 
    root.append(i.xml)
  return root
 
def savexml(filename,xml):
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

def saveibosslists(komponenten, bausteine, referenzmissionen):
  katalog=et.Element("Catalog",version=Version)
  katalog.append(ibosslist2xml("componentDefs",komponenten.values()))
  katalog.append(ibosslist2xml("buildingBlockDefs",bausteine.values()))
  
  print("saving buildingblock catalog")
  savexml("bausteinkatalog/catalog.{}.xml".format(Version),katalog)
  
  print("saving satellite configurations")
  for vkeys,vvalues in referenzmissionen.items():
    #missionen=ibosslist2xml("Satellites",referenzmissionen.values())
    savexml("bausteinkatalog/"+vkeys,vvalues.xml)

def savedata(data, filename = "./bausteinkatalog/katalogdata.iboss"):
  import pickle
  datafile = open(filename,"wb",2)
  pickle.dump(data, datafile)  
  datafile.close()

#Probleme mit der Objektserialisierung
#die Referenzen zwischen den Objekten müssen geklärt werden.
#warscheinlich müssen die drei listen hierarchisch geladen werden. also erst co, dann bb, dann sats
#unter zurhilfenahme des pickle Objekts
#http://stackoverflow.com/questions/6376081/pickle-linked-objects
##### !!!!! warschinlich ist das durch das copy.copy-Konstrukt verursacht worden!!!
def loaddata(filename="./bausteinkatalog/katalogdata.iboss"):
  import pickle
  datafile = open(filename,"rb")
  data = pickle.load(datafile)
  datafile.close()
  return data
  
  
  
def main():
  loaddata()
  pass
  
if __name__ == "__main__":
  main()