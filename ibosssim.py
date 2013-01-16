#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: missionsim.py
# author: - Thomas Meschede
# 
# usage: script simulates a satellite and spits out various simulation data
#
# modified:
#       - created: 2012 11 26 - Thomas Meschede

#use the following command for profiling: 
#python -m cProfile -s time ibosssim.py | head -30
#python -m cProfile -s cum ibosssim.py | head -30
#python -m pstats  um Statistiken über Funktionen zu sehen

#derzeitiger Stand bei 1000 Runden: 0.299s

import iboss
import ibossxml
from ibossxml import pq
import orbitsimulation
import numpy as np
from numpy import sin
from copy import copy

import cProfile
def profileit(func):
  def wrapper(*args, **kwargs):
    datafn = func.__name__ + ".profile" # Name the data file sensibly
    prof = cProfile.Profile()
    retval = prof.runcall(func, *args, **kwargs)
    prof.dump_stats(datafn)
    return retval
  
  return wrapper

#represents the model of a single iBoss buildingblock
#todo: conductance matrix für Bausteine berechnen
class bbmodel(object):
  def __init__(self,bs):
    #todo Implement 6 interfaces for every BB
    self.EVS_V
    
  def update(self):
    pass

#todo: Bausteine sollen einzeln simuliert werden (als C++ Modell?)
# "globale" Variablen könnten von Python gehandhabt werden, während das Modell eines einzelnen Bausteins in C++ geschrieben wird.
class missionsim(object):
  def __init__(self,mission,maxtime,timestep):
    self.mission=mission
    self.r=0

    self.maxtime=maxtime
    self.dt=timestep
    self.t=0.0
    
    self.data=[]
    
    self.sampletemplate=[]
  
  @property
  def npdata(self):
    return np.array(self.data)
  
  def gensample(self):
    sample=[]
    sample.append(np.copy(self.t))
    sample.extend([vars(self)[value] for value in self.sampletemplate])
    return sample
  
  #!wichtig!: innerhalb der Schleife der run-Routine dürfen keine python quantities auftreten, da ansonsten Simulation viel zu langsam
  #@profileit #falls Funktion geprofiled werden soll
  def run(self):
    E0=pq.constants.E0.rescale(pq.W/pq.m**2)
    while(self.t<self.maxtime):
      self.t+=self.dt
      
      self.solar_specific_power=(sin(self.t*0.01)+1)*0.5*E0
      
      newsample=self.gensample()
      self.data.append(newsample)
      #mission.
        
sim=missionsim(ibossxml.loadmission("bausteinkatalog/testmission.xml"),1000.0,1.0)
sim.sampletemplate=["solar_specific_power"]
sim.run()

#sim2=missionsim(mission)

#newsim.run()