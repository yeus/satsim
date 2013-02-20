
from math import pi
import numpy as np
sin=np.sin

V_in_max=100.0
V_in_min=35.0
V_out=5.0
slope=5.0

x=[]
y=[]

for v1 in np.arange(0,60,0.01):
  if v1 < V_in_max and v1 > V_in_min:
    v2 = V_out
  elif v1 >= V_in_min - slope:
    v2 = V_out*(sin((v1-V_in_min-slope*0.5)*pi*0.5/slope*2-pi)+1)*0.5
  else:
    v2 = 0

  x+=[v1]
  y+=[v2]

x=np.array(x)
y=np.array(y)