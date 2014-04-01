# -*- coding: utf-8 -*-
"""
Created on Thu Mar  6 13:30:08 2014

@author: jens
"""
print("grap a coffee")
import numpy as np
from numpy.lib.recfunctions import append_fields
BBx = 3
BBy = 3
BBz = 3
component_Box=["port_b"]
component_TIM=["Conductance_"]
component_Panel=["thermal_connector_"]
component_Radiation=["timeTable1"]
component_heater_cooler=["tCS1"]
physical_quantity = ["T","dT","Q_flow","y","heater_on","cooler_on"]
a = np.genfromtxt('/media/Data/sim_results/sat_3x3x3/omnidirectional_radiation/generic_satellite_3x3x3_sun_res_1000sec_euler.csv', delimiter=',',names=True,dtype=float)
to_file = np.array(a['time'], dtype=[('time',float)])
# to_file = append_fields(to_file,'BB111port_bT',a['BB111port_bT'], usemask=False)

i=1
while i<=BBx:
    j=1
    while j<=BBy:
        k=1
        while k<=BBz:
            i_c=1
            print("BB"+str(i)+str(j)+str(k))
            while i_c<=len(component_Box):
                temp_t = "BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[0])
                temp_qflow = "BB"+str(i)+str(j)+str(k)+str(component_Box[i_c-1])+str(physical_quantity[2])
                to_file = append_fields(to_file,temp_t,a[temp_t], usemask=False)
                to_file = append_fields(to_file,temp_qflow,a[temp_qflow], usemask=False)
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_heater_cooler):
                temp_heat = "BB"+str(i)+str(j)+str(k)+str(component_heater_cooler[i_c-1])+str(physical_quantity[4])
                temp_cool = "BB"+str(i)+str(j)+str(k)+str(component_heater_cooler[i_c-1])+str(physical_quantity[5])
                to_file = append_fields(to_file,temp_heat,a[temp_heat], usemask=False)
                to_file = append_fields(to_file,temp_cool,a[temp_cool], usemask=False)
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_TIM):
                if i>1:
                    temp_TSS_qflow = "TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])
                    temp_MSS_qflow = "TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"MSS"+str(physical_quantity[2])
                    temp_ESS_qflow = "TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"ESS"+str(physical_quantity[2])
                    temp_rad_qflow = "TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+"Radiator"+str(physical_quantity[2])
                    temp_TSS_dT = "TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[1])
                    to_file = append_fields(to_file,temp_TSS_qflow,a[temp_TSS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_MSS_qflow,a[temp_MSS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_ESS_qflow,a[temp_ESS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_rad_qflow,a[temp_rad_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_TSS_dT,a[temp_TSS_dT], usemask=False)
                if j>1:
                    temp_TSS_qflow = "TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])
                    temp_MSS_qflow = "TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"MSS"+str(physical_quantity[2])
                    temp_ESS_qflow = "TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"ESS"+str(physical_quantity[2])
                    temp_rad_qflow = "TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+"Radiator"+str(physical_quantity[2])
                    temp_TSS_dT = "TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[1])
                    to_file = append_fields(to_file,temp_TSS_qflow,a[temp_TSS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_MSS_qflow,a[temp_MSS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_ESS_qflow,a[temp_ESS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_rad_qflow,a[temp_rad_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_TSS_dT,a[temp_TSS_dT], usemask=False)
                if k>1:
                    temp_TSS_qflow = "TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[2])
                    temp_MSS_qflow = "TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"MSS"+str(physical_quantity[2])
                    temp_ESS_qflow = "TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"ESS"+str(physical_quantity[2])
                    temp_rad_qflow = "TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+"Radiator"+str(physical_quantity[2])
                    temp_TSS_dT = "TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+str(component_TIM[i_c-1])+"TIM_TSS"+str(physical_quantity[1])
                    to_file = append_fields(to_file,temp_TSS_qflow,a[temp_TSS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_MSS_qflow,a[temp_MSS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_ESS_qflow,a[temp_ESS_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_rad_qflow,a[temp_rad_qflow], usemask=False)
                    to_file = append_fields(to_file,temp_TSS_dT,a[temp_TSS_dT], usemask=False)
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_Panel):
                temp_xn ="BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"xnRad"+str(physical_quantity[0])
                temp_xp ="BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"xpRad"+str(physical_quantity[0])
                temp_yn ="BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"ynRad"+str(physical_quantity[0])
                temp_yp ="BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"ypRad"+str(physical_quantity[0])
                temp_zn ="BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"znRad"+str(physical_quantity[0])
                temp_zp ="BB"+str(i)+str(j)+str(k)+str(component_Panel[i_c-1])+"zpRad"+str(physical_quantity[0])
                to_file = append_fields(to_file,temp_xn,a[temp_xn], usemask=False)
                to_file = append_fields(to_file,temp_xp,a[temp_xp], usemask=False)
                to_file = append_fields(to_file,temp_yn,a[temp_yn], usemask=False)
                to_file = append_fields(to_file,temp_yp,a[temp_yp], usemask=False)
                to_file = append_fields(to_file,temp_zn,a[temp_zn], usemask=False)
                to_file = append_fields(to_file,temp_zp,a[temp_zp], usemask=False)
                i_c=i_c+1
            i_c=1
            while i_c<=len(component_Radiation):
                temp_xn ="BB"+str(i)+str(j)+str(k)+"nX"+str(component_Radiation[i_c-1])+str(physical_quantity[3])
                temp_xp ="BB"+str(i)+str(j)+str(k)+"pX"+str(component_Radiation[i_c-1])+str(physical_quantity[3])
                temp_yn ="BB"+str(i)+str(j)+str(k)+"nY"+str(component_Radiation[i_c-1])+str(physical_quantity[3])
                temp_yp ="BB"+str(i)+str(j)+str(k)+"pY"+str(component_Radiation[i_c-1])+str(physical_quantity[3])
                temp_zn ="BB"+str(i)+str(j)+str(k)+"nZ"+str(component_Radiation[i_c-1])+str(physical_quantity[3])
                temp_zp ="BB"+str(i)+str(j)+str(k)+"pZ"+str(component_Radiation[i_c-1])+str(physical_quantity[3])
                to_file = append_fields(to_file,temp_xn,a[temp_xn], usemask=False)
                to_file = append_fields(to_file,temp_xp,a[temp_xp], usemask=False)
                to_file = append_fields(to_file,temp_yn,a[temp_yn], usemask=False)
                to_file = append_fields(to_file,temp_yp,a[temp_yp], usemask=False)
                to_file = append_fields(to_file,temp_zn,a[temp_zn], usemask=False)
                to_file = append_fields(to_file,temp_zp,a[temp_zp], usemask=False)
                i_c=i_c+1
            k=k+1
        j=j+1
    i=i+1
print("feddisch")

np.savetxt('/home/jens/csvwrite_test.csv',to_file,delimiter=",",fmt='%s',header=str(','.join(to_file.dtype.names)),comments='')