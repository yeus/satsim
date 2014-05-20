size_x = 2
size_y = 3
size_z = 2
heat_transfer_coefficient_intra=200
heat_transfer_coefficient=50

loadFile = ['loadModel(Modelica);']
loadFile.append('loadFile("/home/jens/Modelica_script/orbit_parameter.mo");')
loadFile.append('loadFile("/home/jens/iBOSS2/Simulation_Linux/ibosssim/model/MaterialDatabase.mo");')
loadFile.append('loadFile("/home/jens/iBOSS2/Simulation_Linux/ibosssim/model/iboss_thermal.mo");')

simulate = []
plot_res = []
h_intra_loop = 5
while h_intra_loop <= 5:
	h_loop = 3
	while h_loop <= 10:
	    loadFile.append('loadFile("/home/jens/Modelica_script/variable_h_TSS_h_intra/generic_satellite_'+str(size_x)+"x"+str(size_y)+"x"+str(size_z)+"_h_inter"+str(heat_transfer_coefficient*h_loop)+"_h_intra"+str(heat_transfer_coefficient_intra*h_intra_loop)+'.mo");')
	    simulate.append('simulate(generic_satellite_'+str(size_x)+"x"+str(size_y)+"x"+str(size_z)+"_h_inter"+str(heat_transfer_coefficient*h_loop)+"_h_intra"+str(heat_transfer_coefficient_intra*h_intra_loop)+', startTime=0, stopTime=61200, numberOfIntervals=500, tolerance=1e-4, method="dassl", outputFormat="csv");')
	    plot_res.append('plot({BB111.port_b.T,BB112.port_b.T,BB121.port_b.T,BB122.port_b.T,BB131.port_b.T,BB132.port_b.T,BB211.port_b.T,BB212.port_b.T,BB221.port_b.T,BB222.port_b.T,BB231.port_b.T,BB232.port_b.T},externalWindow = true,yLabel="T/K",title="h_inter='+str(heat_transfer_coefficient*h_loop)+'W/m2K          h_intra='+str(heat_transfer_coefficient_intra*h_intra_loop)+'W/m2K");')
	    h_loop=h_loop+1
	h_intra_loop=h_intra_loop+1
mos_obj = open("mos_script_var.mos","w")
i=0
while i<=len(loadFile)-1:
	print(loadFile[i])
	mos_obj.write(loadFile[i] + "\n")
	i=i+1
j=0
while j<=len(simulate)-1:
	print(simulate[j])
	mos_obj.write(simulate[j] + "\n")
	print(plot_res[j])
	j=j+1
mos_obj.close()
print("ready")
