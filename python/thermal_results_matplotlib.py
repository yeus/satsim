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
component_Panel=["thermal_connector_"]
component_Radiation=["timeTable1"]
physical_quantity = ["T","dT","Q_flow","y"]
fig, el_Box_T = plt.subplots()
fig, el_Box_qflow = plt.subplots()
fig, TIM_qflow = plt.subplots()
fig, TIM_dT = plt.subplots()
fig, Panel_T = plt.subplots()
fig, Radiation_qflow = plt.subplots()
a = np.genfromtxt('/media/Data/sim_results/3x3x3/omnidirectional_radiation/generic_satellite_3x3x3_sun_res.csv', delimiter=',',names=True)
i=1
while i<=BBx:
    j=1
    while j<=BBy:
        k=1
        while k<=BBz:
            i_c=1
            while i_c<=len(component_Box):
                el_Box_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k))
                el_Box_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[2])],label="BB"+str(i)+str(j)+str(k))
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
            i_c=1
            while i_c<=len(component_Panel):
                if i==1:
                    Panel_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"xnRad"+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k)+"xnRad")
                if i==BBx:
                    Panel_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"xpRad"+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k)+"xpRad")
                if j==1:
                    Panel_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"ynRad"+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k)+"ynRad")
                if j==BBy:
                    Panel_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"ypRad"+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k)+"ypRad")
                if k==1:
                    Panel_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"znRad"+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k)+"znRad")
                if k==BBz:
                    Panel_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"zpRad"+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k)+"zpRad")
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_Radiation):
                if i==1:
                    Radiation_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+"nX"+str(component_Radiation[i_c-1])+str(physical_quantity[3])],label="BB"+str(i)+str(j)+str(k)+"xnRad")
                if i==BBx:
                    Radiation_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+"pX"+str(component_Radiation[i_c-1])+str(physical_quantity[3])],label="BB"+str(i)+str(j)+str(k)+"xpRad")
                if j==1:
                    Radiation_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+"nY"+str(component_Radiation[i_c-1])+str(physical_quantity[3])],label="BB"+str(i)+str(j)+str(k)+"ynRad")
                if j==BBy:
                    Radiation_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+"pY"+str(component_Radiation[i_c-1])+str(physical_quantity[3])],label="BB"+str(i)+str(j)+str(k)+"ypRad")
                if k==1:
                    Radiation_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+"nZ"+str(component_Radiation[i_c-1])+str(physical_quantity[3])],label="BB"+str(i)+str(j)+str(k)+"znRad")
                if k==BBz:
                    Radiation_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+"pZ"+str(component_Radiation[i_c-1])+str(physical_quantity[3])],label="BB"+str(i)+str(j)+str(k)+"zpRad")
                i_c=i_c+1
            k=k+1
        j=j+1
    i=i+1


#summe=np.array(a['BB222port_bT'])+np.array(a['BB222port_bT'])
#ax.plot(a['t'],summe)
legend = el_Box_T.legend(loc='upper right', shadow=True)
legend = el_Box_qflow.legend(loc='upper right', shadow=True)
legend = TIM_qflow.legend(loc='upper right', shadow=True)
legend = TIM_dT.legend(loc='upper right', shadow=True)
legend = Panel_T.legend(loc='upper right', shadow=True)
legend = Radiation_qflow.legend(loc='upper right', shadow=True)
#ax2.plot(a['t'],a['BB121port_bT'],'r',label='BB121port_bT')
#ax2.plot(a['t'],a['BB122port_bT'],'b',label='BB122port_bT')
#legend = ax2.legend(loc='upper right', shadow=True)
#plt.show()
