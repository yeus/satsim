size_x = 1
size_y = 1
size_z = 1
modelname = "propulsion_tank_"+str(size_x)+"x"+str(size_y)+"x"+str(size_z)
material =["material_Tank", "material_ESS", "Material_MSS", "Material_TSS", "Material_Panel"]
component_length = ["x_ESS","y_ESS","z_ESS","x_MSS","y_MSS","z_MSS","x_TSS","y_TSS","z_TSS","x_Panel","y_Panel","z_Panel",]
thermal_interaction = ["eps_tank","eps_Panel","h_tank_Panel","A_thermal_coupling_tank"]
BB=[]
connection_element=[]
conncet=[]
i=1
while i<=size_x:
    j=1
    while j<=size_y:
        k=1
        while k<=size_z:
            BB.append(" thermal_element tank_"+str(i)+str(j)+str(k)+";")
            l=0
            if i==1:
                BB.append(" thermal_Panel_with_Interface Panel_"+str(i)+str(j)+str(k)+"_xn;")
                BB.append(" intra_BuildingBlock_connector tank2Panel_"+str(i)+str(j)+str(k)+"_xn;")
                conncet.append("    connect(Panel_"+str(i)+str(j)+str(k)+"_xn.port_xn,tank2Panel_"+str(i)+str(j)+str(k)+".port_a);")
                conncet.append("    connect(tank2Panel_"+str(i)+str(j)+str(k)+".port_b,tank_"+str(i)+str(j)+str(k)+".port_a_xn);")
                if j>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j-1)+str(k)+"_xn.port_yp,Panel_"+str(i)+str(j)+str(k)+"_xn.port_yn);")
                if k>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j)+str(k-1)+"_xn.port_zn,Panel_"+str(i)+str(j)+str(k)+"_xn.port_zp);")
            if i==size_x:
                BB.append(" thermal_Panel_with_Interface Panel_"+str(i)+str(j)+str(k)+"_xp;")
                BB.append(" intra_BuildingBlock_connector tank2Panel_"+str(i)+str(j)+str(k)+"_xp;")
                conncet.append("    connect(Panel_"+str(i)+str(j)+str(k)+"_xn.port_xn,tank2Panel_"+str(i)+str(j)+str(k)+".port_a);")
                conncet.append("    connect(tank2Panel_"+str(i)+str(j)+str(k)+".port_b,tank_"+str(i)+str(j)+str(k)+".port_a_xp);")
                if j>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j-1)+str(k)+"_xp.port_yn,Panel_"+str(i)+str(j)+str(k)+"_xp.port_yp);")
                if k>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j)+str(k-1)+"_xp.port_zn,Panel_"+str(i)+str(j)+str(k)+"_xp.port_zp);")
            if j==1:
                BB.append(" thermal_Panel_with_Interface Panel_"+str(i)+str(j)+str(k)+"_yn;")
                BB.append(" intra_BuildingBlock_connector tank2Panel_"+str(i)+str(j)+str(k)+"_yn;")
                conncet.append("    connect(Panel_"+str(i)+str(j)+str(k)+"_xn.port_xn,tank2Panel_"+str(i)+str(j)+str(k)+".port_a);")
                conncet.append("    connect(tank2Panel_"+str(i)+str(j)+str(k)+".port_b,tank_"+str(i)+str(j)+str(k)+".port_a_yn);")
                if i>1:
                    conncet.append("    connect(Panel_"+str(i-1)+str(j)+str(k)+"_yn.port_yn,Panel_"+str(i)+str(j)+str(k)+"_yn.port_yp);")
                if k>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j)+str(k-1)+"_yn.port_zn,Panel_"+str(i)+str(j)+str(k)+"_yn.port_zp);")
            if j==size_y:
                BB.append(" thermal_Panel_with_Interface Panel_"+str(i)+str(j)+str(k)+"_yp;")
                BB.append(" intra_BuildingBlock_connector tank2Panel_"+str(i)+str(j)+str(k)+"_yp;")
                conncet.append("    connect(Panel_"+str(i)+str(j)+str(k)+"_xn.port_xn,tank2Panel_"+str(i)+str(j)+str(k)+".port_a);")
                conncet.append("    connect(tank2Panel_"+str(i)+str(j)+str(k)+".port_b,tank_"+str(i)+str(j)+str(k)+".port_a_yp);")
                if i>1:
                    conncet.append("    connect(Panel_"+str(i-1)+str(j)+str(k)+"_yp.port_yp,Panel_"+str(i)+str(j)+str(k)+"_yp.port_yn);")
                if k>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j)+str(k-1)+"_yp.port_zn,Panel_"+str(i)+str(j)+str(k)+"_yp.port_zp);")
            if k==1:
                BB.append(" thermal_Panel_with_Interface Panel_"+str(i)+str(j)+str(k)+"_zn;")
                BB.append(" intra_BuildingBlock_connector tank2Panel_"+str(i)+str(j)+str(k)+"_zn;")
                conncet.append("    connect(Panel_"+str(i)+str(j)+str(k)+"_xn.port_xn,tank2Panel_"+str(i)+str(j)+str(k)+".port_a);")
                conncet.append("    connect(tank2Panel_"+str(i)+str(j)+str(k)+".port_b,tank_"+str(i)+str(j)+str(k)+".port_a_zn);")
                if i>1:
                    conncet.append("    connect(Panel_"+str(i-1)+str(j)+str(k)+"_zn.port_zn,Panel_"+str(i)+str(j)+str(k)+"_zn.port_zp);")
                if j>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j-1)+str(k)+"_zn.port_yn,Panel_"+str(i)+str(j)+str(k)+"_zn.port_yp);")
            if k==size_z:
                BB.append(" thermal_Panel_with_Interface Panel_"+str(i)+str(j)+str(k)+"_zp;")
                BB.append(" intra_BuildingBlock_connector tank2Panel_"+str(i)+str(j)+str(k)+"_zp;")
                conncet.append("    connect(Panel_"+str(i)+str(j)+str(k)+"_xn.port_xn,tank2Panel_"+str(i)+str(j)+str(k)+".port_a);")
                conncet.append("    connect(tank2Panel_"+str(i)+str(j)+str(k)+".port_b,tank_"+str(i)+str(j)+str(k)+".port_a_zp);")
                if i>1:
                    conncet.append("    connect(Panel_"+str(i-1)+str(j)+str(k)+"_zp.port_zn,Panel_"+str(i)+str(j)+str(k)+"_zp.port_zp);") 
                if j>1:
                    conncet.append("    connect(Panel_"+str(i)+str(j-1)+str(k)+"_zp.port_yp,Panel_"+str(i)+str(j)+str(k)+"_zp.port_yn);")                         
            if i>1:
                conncet.append("    connect(tank_"+str(i-1)+str(j)+str(k)+".port_b_xp,tank_"+str(i)+str(j)+str(k)+".port_a_xn);")
            if j>1:
                conncet.append("    connect(tank_"+str(i)+str(j-1)+str(k)+".port_b_yp,tank_"+str(i)+str(j)+str(k)+".port_a_yn);")
            if k>1:
                conncet.append("    connect(tank_"+str(i)+str(j)+str(k-1)+".port_b_zp,tank_"+str(i)+str(j)+str(k)+".port_a_zn);")
            k=k+1
        j=j+1
    i=i+1
modelica_obj = open(modelname+".mo","w")
print("model "+ modelname)
modelica_obj.write("model "+ modelname + "\n")
i=0
while i<=len(component_length)-1:
    print(" parameter "+ component_length[i] + ";")
    modelica_obj.write(" parameter "+ component_length[i] + ";" + "\n")
    i=i+1
i=0
while i<=len(thermal_interaction)-1:
    print(" parameter "+ thermal_interaction[i] + ";")
    modelica_obj.write(" parameter "+ thermal_interaction[i] + ";" + "\n")
    i=i+1
i=0
while i<=len(BB)-1:
    print(BB[i])
    modelica_obj.write(BB[i]+ "\n")
    i=i+1
print(" equation")
modelica_obj.write(" equation" + "\n")
i=0
while i<=len(conncet)-1:
    print(conncet[i])
    modelica_obj.write(conncet[i] + "\n")
    i=i+1
print("end " + modelname + ";")
modelica_obj.write("end " + modelname + ";" + "\n")
modelica_obj.close()

