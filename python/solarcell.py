#!/usr/local/bin/python
# -*- coding: utf-8 -*-

# iboss-2
# filename: solarcell.py
# author: - Thomas Meschede
# 
# usage: script calculates solarcell characteristics
#
# modified:
#       - created: 2013 01 20 - Thomas Meschede

#####notes
#wikipedia Gleichungen für Solarzelle sind nur Implizit vorhanden deswegen : TRW Modell aus Handbuch für Raumfahrttechnik

from math import exp,log
import numpy as np

#parameter, TJ-GaAs cell:
V_oc=2.565      #[V]open circuit voltage
I_sc=0.0168     #[A/cm²] Short Circuit Current
V_mp=2.277      #[V] Maxium Powerpoint Voltage
I_mp=0.016      #[A/cm²]  Maximum Powerpoint Current


A_cell=26.0 #[cm²] Active area of the solar cell in cm²
N_p=100.0 #Numper of parallel solar cells per string
N_s=25.0 #Number of series-connected solar cells per string
phi=0.0 #Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation.

C_a=(V_mp/V_oc-1)/log(1-I_mp/I_sc)
C_b=(1-I_mp/I_sc)*np.exp(-(V_mp/(C_a*V_oc)))

#Das "TRW" Solar Cell Curve Model
#calculate characteristic following equations of H.S.Rauschenbach
def I_op(V_op):
  I_op=I_sc*A_cell*N_p * (1-C_b*(np.exp((V_op/(C_a*V_oc*N_s)))-1))
  #print(I_op)
  return I_op

#def I_op_reg():
#  return I_0*(1-C*(exp(-a*V_op)-1))

#def I_op_wik():
#  return I

v=np.linspace(-20,V_oc*N_s,1000)
v=np.linspace(-20,V_oc*N_s*1.1,1000) #um über V_oc hinauszugehen
i=I_op(v)

"""import matplotlib.pyplot as plt

plt.plot(v,i)

plt.grid(True)
plt.show()"""