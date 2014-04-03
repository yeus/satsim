# -*- coding: utf-8 -*-
"""
Created on Thu Mar  6 13:30:08 2014

@author: jens
"""
# Function for printing
def plotparameter( fig, title, x_label, y_label):
   "This prints a passed string into this function"
   fig.legend(bbox_to_anchor=(1.01, 1), loc=2, borderaxespad=0.)
   fig.set_title(title)
   fig.set_xlabel(x_label)
   fig.set_ylabel(y_label)
   return;

print("grap a coffee")
import numpy as np
import matplotlib.pyplot as plt
BBx = 2
BBy = 1
BBz = 1
component_Box=["port_b"]
component_TIM=["Conductance_"]
component_Panel=["thermal_connector_"]
component_Radiation=["timeTable1"]
component_heater_cooler=["tCS1"]
physical_quantity = ["T","dT","Q_flow","y","heater_on","cooler_on"]
fig, el_Box_T = plt.subplots()
fig, el_Box_qflow = plt.subplots()
fig, TIM_TSS_qflow = plt.subplots()
fig, TIM_all_qflow = plt.subplots()
fig, TIM_TSS_dT = plt.subplots()
fig, Panel_T = plt.subplots()
fig, Radiation_qflow = plt.subplots()
fig, heater_on = plt.subplots()
fig, sum_heater_cooler_on = plt.subplots()
fig, cooler_on = plt.subplots()
a = np.genfromtxt('/home/jens/generic_satellite_2x1x1_VEROSIM_res.csv', delimiter=',',names=True,dtype=float)
sum_heat = np.zeros(len(np.array(a)))
sum_cool = np.zeros(len(np.array(a)))
i=1
while i<=BBx:
    j=1
    while j<=BBy:
        k=1
        while k<=BBz:
            i_c=1
            print("BB"+str(i)+str(j)+str(k))
            while i_c<=len(component_Box):
                el_Box_T.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[0])],label="BB"+str(i)+str(j)+str(k))
                el_Box_qflow.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[2])],label="BB"+str(i)+str(j)+str(k))
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_heater_cooler):
                heater_on.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_heater_cooler[i_c-1])+str(physical_quantity[4])],label="BB"+str(i)+str(j)+str(k))
                cooler_on.plot(a['time'],a["BB"+str(i)+str(j)+str(k)+str(component_heater_cooler[i_c-1])+str(physical_quantity[5])],label="BB"+str(i)+str(j)+str(k))
                sum_heat = sum_heat + a["BB"+str(i)+str(j)+str(k)+str(component_heater_cooler[i_c-1])+str(physical_quantity[4])]
                sum_cool = sum_cool + a["BB"+str(i)+str(j)+str(k)+str(component_heater_cooler[i_c-1])+str(physical_quantity[5])]
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_TIM):
                if i>1:
                    TIM_TSS_qflow.plot(a['time'],a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])],label="TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k))
                    TIM_TSS_dT.plot(a['time'],a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[1])],label="TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k))
                    TIM_all_qflow.plot(a['time'],np.array(a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"MSS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"ESS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+"Radiator"+str(physical_quantity[2])]),label="TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k))
                if j>1:
                    TIM_TSS_qflow.plot(a['time'],a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])],label="TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k))
                    TIM_TSS_dT.plot(a['time'],a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[1])],label="TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k))
                    TIM_all_qflow.plot(a['time'],np.array(a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"MSS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"ESS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+"Radiator"+str(physical_quantity[2])]),label="TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k))
                if k>1:
                    TIM_TSS_qflow.plot(a['time'],a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])],label="TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k))
                    TIM_TSS_dT.plot(a['time'],a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[1])],label="TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k))
                    TIM_all_qflow.plot(a['time'],np.array(a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"MSS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"ESS"+str(physical_quantity[2])])+np.array(a["TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+"Radiator"+str(physical_quantity[2])]),label="TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k))
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
sum_heater_cooler_on.plot(a['time'], sum_heat,label="sum of all heaters")
sum_heater_cooler_on.plot(a['time'], sum_cool,label="sum of coolers")
plotparameter(el_Box_T, 'Temperature of the electronic Boxes','Time / sec','Temperature / K')
plotparameter(el_Box_qflow, 'Power transfer at the electronic Boxes','Time / sec','heat power transfer / W')
plotparameter(TIM_TSS_qflow, 'Power transfer at the TSS','Time / sec','heat power transfer / W')
plotparameter(TIM_all_qflow, 'Power transfer between the building blocks','Time / sec','heat power transfer / W')
plotparameter(TIM_TSS_dT, 'Temperature gradient between the building blocks','Time / sec','Temperature difference / K')
plotparameter(Panel_T, 'Temperature at the building blocks panels','Time / sec','Temperature / K')
plotparameter(Radiation_qflow, 'Power of the Radiation','Time / sec','heat power transfer / W')
plotparameter(heater_on, 'switching state of the heater','Time / sec','on/off')
plotparameter(cooler_on, 'switching state of the cooler','Time / sec','on/off')
plotparameter(sum_heater_cooler_on, 'sum of the switching states of all heaters and coolers','Time / sec','on/off')
plt.show()
print("feddisch")
