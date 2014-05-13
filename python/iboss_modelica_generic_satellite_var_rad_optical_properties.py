size_x = 3
size_y = 3
size_z = 3
modelname = "generic_satellite_var_rad_optical_properties_"+str(size_x)+"x"+str(size_y)+"x"+str(size_z)
#modelname = "generic_satellite_optical_properties_"+str(size_x)+"x"+str(size_y)+"x"+str(size_z)
import_to_model = ["iboss.*","iboss.illumination.*"]
parameter =["illumination.LEO.Strahlungsleistung_3x3x3_LEO_EnMap_SunPointing orbit_illumination"]
BB=[]
connection_element=[]
conncet=[]
env=[]
orientation=["xn","xp","yn","yp","zn","zp"]
orientation_env=["nX","pX","nY","pY","nZ","pZ"]
filename = '"E:\\\Eigene Dateien\\\iBOSS-2\\\Gesamtsimulation_TuE\\\ibosssim\\\model\\\iboss\\\thermochrom_alpha_epsilon.txt"'
#filename = '"/home/jens/iBOSS2/Simulation_Linux/ibosssim/model/iboss/thermochrom_alpha_epsilon.txt"'
i=1
while i<=size_x:
    j=1
    while j<=size_y:
        k=1
        while k<=size_z:
            BB.append(" iboss_thermal.buildingblocks.BuildingBlock_optical_properties_var_rad BB"+str(i)+str(j)+str(k)+"(Panel_xp(combiTable1Ds1(fileName = "+ str(filename) + ")), Panel_xn(combiTable1Ds1(fileName = "+ str(filename) + ")), Panel_yp(combiTable1Ds1(fileName = "+ str(filename) + ")), Panel_yn(combiTable1Ds1(fileName = "+ str(filename) + ")), Panel_zn(combiTable1Ds1(fileName = "+ str(filename) + ")), Panel_zp(combiTable1Ds1(fileName = "+ str(filename) + ")));")
            #BB.append(" iboss_thermal.buildingblocks.BuildingBlock_optical_properties BB"+str(i)+str(j)+str(k)+";")
            l=0
            while l<=len(orientation)-1:
                env.append("    iboss_thermal.components.environment_optical_properties BB"+str(i)+str(j)+str(k)+str(orientation_env[l])+"(illumination=orbit_illumination.BB"+str(i)+str(j)+str(k)+str(orientation_env[l])+");")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+str(orientation_env[l])+".thermal_connector_env,BB"+str(i)+str(j)+str(k)+".thermal_connector_"+str(orientation[l])+");")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+str(orientation_env[l])+".panel_surface1,BB"+str(i)+str(j)+str(k)+".panel_surface_"+str(orientation[l])+");")
                l=l+1
            if i>1:
                connection_element.append(" iboss_thermal.components.thermal_TIM_optical_properties TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+";")
                conncet.append("    connect(BB"+str(i-1)+str(j)+str(k)+".thermal_connector_xp,TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+".thermal_connector2);")
                conncet.append("    connect(BB"+str(i-1)+str(j)+str(k)+".panel_surface_xp,TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+".panel_surface2);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+".thermal_connector_xn,TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+".thermal_connector1);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+".panel_surface_xn,TIM_BB"+str(i-1)+str(j)+str(k)+"_BB"+str(i)+str(j)+str(k)+".panel_surface1);")
		
            if j>1:
                connection_element.append(" iboss_thermal.components.thermal_TIM_optical_properties TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+";")
                conncet.append("    connect(BB"+str(i)+str(j-1)+str(k)+".thermal_connector_yp,TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+".thermal_connector2);")
                conncet.append("    connect(BB"+str(i)+str(j-1)+str(k)+".panel_surface_yp,TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+".panel_surface2);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+".thermal_connector_yn,TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+".thermal_connector1);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+".panel_surface_yn,TIM_BB"+str(i)+str(j-1)+str(k)+"_BB"+str(i)+str(j)+str(k)+".panel_surface1);")
            if k>1:
                connection_element.append(" iboss_thermal.components.thermal_TIM_optical_properties TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+";")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k-1)+".thermal_connector_zp,TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+".thermal_connector2);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k-1)+".panel_surface_zp,TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+".panel_surface2);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+".thermal_connector_zn,TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+".thermal_connector1);")
                conncet.append("    connect(BB"+str(i)+str(j)+str(k)+".panel_surface_zn,TIM_BB"+str(i)+str(j)+str(k-1)+"_BB"+str(i)+str(j)+str(k)+".panel_surface1);")
            k=k+1
        j=j+1
    i=i+1
modelica_obj = open(modelname+".mo","w")
print("model "+ modelname)
modelica_obj.write("model "+ modelname + "\n")
i=0
while i<=len(import_to_model)-1:
    print(" import "+ import_to_model[i] + ";")
    modelica_obj.write(" import "+ import_to_model[i] + ";" + "\n")
    i=i+1
i=0
while i<=len(parameter)-1:
    print(" parameter "+ parameter[i] + ";")
    modelica_obj.write(" parameter "+ parameter[i] + ";" + "\n")
    i=i+1
i=0
while i<=len(BB)-1:
    print(BB[i])
    modelica_obj.write(BB[i]+ "\n")
    i=i+1
i=0
while i<=len(connection_element)-1:
    print(connection_element[i])
    modelica_obj.write(connection_element[i] + "\n")
    i=i+1
i=0
while i<=len(env)-1:
    print(env[i])
    modelica_obj.write(env[i] + "\n")
    i=i+1
i=0
print(" equation")
modelica_obj.write(" equation" + "\n")
while i<=len(conncet)-1:
    print(conncet[i])
    modelica_obj.write(conncet[i] + "\n")
    i=i+1
print("end " + modelname + ";")
modelica_obj.write("end " + modelname + ";" + "\n")
modelica_obj.close()

