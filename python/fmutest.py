#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: fmutest.py
# author: - Thomas Meschede
# 
# usage: test of fmu models from modelica
#
# modified:
#       - created: 2013 02 26 - Thomas Meschede

#use the following command for profiling: 
#python -m cProfile -s time ibosssim.py | head -30
#python -m cProfile -s cum ibosssim.py | head -30
#python -m pstats  um Statistiken über Funktionen zu sehen

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

import pyfmi

solarcell=pyfmi.load_fmu("solar_power_solarcell_simple_characteristic.fmu")

#i,u=solarcell.get(["solarcell_simple2.resistor1.i","solarcell_simple2.resistor1.v"])

#timepoint=ss.save_time_point()

solarcell.simulate()

#sim2=missionsim(mission)

#newsim.run()