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
import scipy
from scipy.integrate import ode as ode


"""import cProfile
def profileit(func):
  def wrapper(*args, **kwargs):
    datafn = func.__name__ + ".profile" # Name the data file sensibly
    prof = cProfile.Profile()
    retval = prof.runcall(func, *args, **kwargs)
    prof.dump_stats(datafn)
    return retval
  
  return wrapper"""

import pyfmi

#in "assimulo_interface.py" sind die Standard Solver integriert
#in "algorithm_drivers

solarcell=pyfmi.load_fmu("solar_power_solarcell_simple_characteristic.fmu")
#hw=pyfmi.load_fmu("hello_world.fmu")

#i,u=solarcell.get(["solarcell_simple2.resistor1.i","solarcell_simple2.resistor1.v"])

#timepoint=ss.save_time_point()

#solarcell.simulate(start_time=0.0,final_time=1.0,algorithm=myalgorithm)

# --> http://docs.scipy.org/doc/scipy/reference/generated/scipy.integrate.ode.html#scipy.integrate.ode
# --> http://en.wikipedia.org/wiki/Numerical_ordinary_differential_equations

model=solarcell

"""def f(t, y, model):
  model.time=t
  model.continuous_states=y
  y1 = model.get_derivatives()
  return y1 
  #return [1j*arg1*y[0] + y[1], -arg1*y[1]**2]


model.initialize()
t0=0
  
r = ode(f).set_integrator('vode', method='bdf', with_jacobian=False)
r.set_initial_value(y0, t0).set_f_params(model)
"""
t1 = 10
dt = 1.0

res=[]
#while r.successful() and model.t < t1:
while model.time<t1:
  res.append([model.time,model.save_time_point()])
  model.time+=dt
  

#res=np.array(res)
#newsim.run()