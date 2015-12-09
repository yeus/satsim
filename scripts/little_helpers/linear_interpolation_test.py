# -*- coding: utf-8 -*-
"""
Created on Tue Jun  2 11:51:02 2015

@author: tom
"""

V_in_max = 100.0
V_in_min = 6.5
V_out = 5
slope = 0.1

import numpy as np
from numpy import sin, pi

v = np.arange(6.2,6.9,0.001)

i2 = 5.0/100.0

eff = 0.85

def vout(v1):
  if v1 < V_in_max and v1 > V_in_min + slope * 0.5:
    v2 = V_out
    i1 = (-i2 * v2) / (v1 * eff)
  elif v1 >= V_in_min - slope * 0.5:
    v2 = V_out * (sin((v1 - V_in_min - slope * 0.5) * pi * 0.5 / slope * 2 + pi * 0.5) + 1) * 0.5
    i1 = (-i2 * v2) / (v1 * eff)
  else:
    v2 = 0
    i1 = 0
  
  return v2;
  
v2 = [vout(v1) for v1 in v]  
  
import matplotlib.pyplot as plt

plt.plot(v, v2)

plt.show()

