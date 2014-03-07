# -*- coding: utf-8 -*-
"""
Created on Thu Mar  6 13:30:08 2014

@author: jens
"""

import numpy as np
import matplotlib.pyplot as plt
BBx = 1
BBy = 1
BBz = 2
component_Box=["port_b"]
component_TIM=["Conductance_TIM_TSS"]
physical_quantity = ["T","dT","Q_flow","y"]
fig, el_Box_T = plt.subplots()
fig, TIM_qflow = plt.subplots()
fig, TIM_dT = plt.subplots()
a = np.genfromtxt('/home/jens/ownCloud/clientsync/iBOSS-2/Simulation/generic_satellite_2x3x2_expo011_h_inter200_h_intra1000_res_sunpointing.csv', delimiter=',',names=True)
i=1
while i<=BBx:
    j=1
    while j<=BBy:
        k=1
        while k<=BBz:
            i_c=1
            while i_c<=len(component_Box):
                el_Box_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k))
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_TIM):
                if i>1:
                    TIM_qflow.plot(a['time'],a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+str(physical_quantity[2])],label="TIM-BB"+str(i-1)+str(j)+str(k)+"-BB"+str(i)+str(j)+str(k))
                    TIM_dT.plot(a['time'],a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+str(physical_quantity[1])],label="TIM-BB"+str(i-1)+str(j)+str(k)+"-BB"+str(i)+str(j)+str(k))
                if j>1:
                    TIM_qflow.plot(a['time'],a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+str(physical_quantity[2])],label="TIM-BB"+str(i-1)+str(j)+str(k)+"-BB"+str(i)+str(j)+str(k))
                    TIM_dT.plot(a['time'],a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+str(physical_quantity[1])],label="TIM-BB"+str(i-1)+str(j)+str(k)+"-BB"+str(i)+str(j)+str(k))
                if k>1:
                    TIM_qflow.plot(a['time'],a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+str(physical_quantity[2])],label="TIM-BB"+str(i-1)+str(j)+str(k)+"-BB"+str(i)+str(j)+str(k))
                    TIM_dT.plot(a['time'],a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+str(physical_quantity[1])],label="TIM-BB"+str(i-1)+str(j)+str(k)+"-BB"+str(i)+str(j)+str(k))
                i_c=i_c+1
            k=k+1
        j=j+1
    i=i+1

#ax.plot(a['t'],a['BB222port_bT'])
#ax.plot(a['t'],a['BB111port_bT'])

#summe=np.array(a['BB222port_bT'])+np.array(a['BB222port_bT'])
#ax.plot(a['t'],summe)
legend = el_Box_T.legend(loc='upper right', shadow=True)
legend = TIM_qflow.legend(loc='upper right', shadow=True)
legend = TIM_dT.legend(loc='upper right', shadow=True)
#ax2.plot(a['t'],a['BB121port_bT'],'r',label='BB121port_bT')
#ax2.plot(a['t'],a['BB122port_bT'],'b',label='BB122port_bT')
#legend = ax2.legend(loc='upper right', shadow=True)
#plt.show()
