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

import iboss
import ibossxml
from ibossxml import pq
import orbitsimulation
import numpy as np
from numpy import sin
from copy import copy

class missionsim(object):
  def __init__(self,mission,maxtime,timestep):
    self.mission=mission
    self.r=0

    self.maxtime=maxtime
    self.dt=timestep
    self.t=0.0*pq.s
    
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
  
  def run(self):
    while(self.t<self.maxtime):
      self.t+=self.dt
      
      self.solar_specific_power=(sin(self.t.magnitude*0.01)+1)*0.5*pq.m**2*pq.constants.E0
      self.solar_specific_power=self.solar_specific_power.rescale(pq.W)
      
      newsample=self.gensample()
      self.data.append(newsample)
      #mission.
        
sim=missionsim(ibossxml.loadmission("bausteinkatalog/testmission.xml"),1000*pq.s,1*pq.s)
sim.sampletemplate=["solar_specific_power"]
sim.run()

#sim2=missionsim(mission)

#newsim.run()