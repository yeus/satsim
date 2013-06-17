// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model Doublethermal_Panel_with_2Interfaces "Seitenpanel mit 2 Schnittstellen"
	Schnittstelle schnittstelle1(
		x_ESS=x_ESS,
		x_MSS=x_MSS,
		x_TSS=x_TSS,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS) annotation(
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		ESS(material(choicesAllMatching=true)),
		MSS(material(choicesAllMatching=true)),
		TSS(material(choicesAllMatching=true)),
		Placement(transformation(
			origin={-10,0},
			extent={{-10,-10},{10,10}})));
	thermal_element BuildingBlock_Panel(
		material=material_Panel,
		x=x_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-41.5072,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
		transformation(
			origin={-113,-45},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-30,0},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector2 annotation(Placement(
		transformation(
			origin={70,0},
			extent={{-10,-10},{10,10}},
			rotation=-180),
		iconTransformation(
			origin={30,50},
			extent={{-10,-10},{10,10}})));
	parameter Modelica.SIunits.Area A_ESS "Surface Area of ESS in m2";
	parameter Modelica.SIunits.Area A_MSS "Surface Area of MSS in m2";
	parameter Modelica.SIunits.Area A_TSS "Surface Area of TSS in m2";
	parameter Modelica.SIunits.Area A_Panel "Surface Area of Panel in m2";
	parameter Modelica.SIunits.Length x_ESS "length of ESS in m";
	parameter Modelica.SIunits.Length x_MSS "length of MSS in m";
	parameter Modelica.SIunits.Length x_TSS "length of TSS in m";
	parameter Modelica.SIunits.Length x_Panel "length of Panel in m";
	replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
	parameter Modelica.SIunits.ThermalConductance G_p=130 "Constant thermal conductance of panel material parallel to main surface (near ro infinity if connected to main surface)" annotation(Placement(transformation(
		origin={78,63},
		extent={{-12,-12},{12,12}})));
	thermal_element BuildingBlock_PanelDouble(
		material=material_Panel,
		x=x_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-41.8,-72},
			extent={{-10,-10},{10,10}})));
	Schnittstelle schnittstelle2(
		x_ESS=x_ESS,
		x_MSS=x_MSS,
		x_TSS=x_TSS,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS) annotation(
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		ESS(material(choicesAllMatching=true)),
		MSS(material(choicesAllMatching=true)),
		TSS(material(choicesAllMatching=true)),
		Placement(transformation(
			origin={-12.5793,-73.9367},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector1 annotation(Placement(
		transformation(
			origin={67,-70},
			extent={{-10,-10},{10,10}},
			rotation=-180),
		iconTransformation(
			origin={30,-50},
			extent={{-10,-10},{10,10}})));
	equation
		connect(schnittstelle1.TSS_IF,thermal_connector2.TSS) annotation(Line(
			points={{0,-5},{5,-5},{65,-5},{65,0},{70,0}},
			color={191,0,0},
			visible=true,
			origin={45.1253,-3.7514}));
		 
		connect(schnittstelle1.MSS_IF,thermal_connector2.MSS) annotation(Line(
			points={{0,0},{5,0},{65,0},{70,0}},
			color={191,0,0},
			visible=true,
			origin={45.0846,1.2362}));
		 
		connect(schnittstelle1.ESS_IF,thermal_connector2.ESS) annotation(Line(
			points={{0,5},{5,5},{65,5},{65,0},{70,0}},
			color={191,0,0},
			visible=true,
			origin={27.7788,8.7073}));
		 
		 
		 
		 
		connect(schnittstelle2.ESS_IF,thermal_connector1.ESS) annotation(Line(
			points={{-2,-69},{3,-69},{62,-69},{62,-70},{67,-70}},
			color={191,0,0},
			visible=true,
			origin={25.6419,-67.06740000000001}));
		 
		connect(thermal_connector1.MSS,schnittstelle2.MSS_IF) annotation(Line(
			points={{67,-70},{62,-70},{2,-70},{2,-74},{-3,-74}},
			color={191,0,0},
			visible=true,
			origin={15.7817,-74.23220000000001}));
		 
		connect(schnittstelle2.TSS_IF,thermal_connector1.TSS) annotation(Line(
			points={{-2,-79},{3,-79},{62,-79},{62,-70},{67,-70}},
			color={191,0,0},
			visible=true,
			origin={43.3755,-79.2197}));
		 
		 
		 
		 
		connect(BuildingBlock_Panel.port_a_xn,port_a) annotation(Line(
			points={{-52,0},{-57,0},{-108,0},{-108,-45},{-113,-45}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_PanelDouble.port_a_xn,port_a) annotation(Line(
			points={{-52,-72},{-57,-72},{-108,-72},{-108,-45},{-113,-45}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_PanelDouble.port_b_yp,BuildingBlock_Panel.port_a_yn) annotation(Line(
			points={{-42,-63},{-42,-58},{-42,-11},{-41,-11},{-41,-6}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_PanelDouble.port_b_xp,schnittstelle2.port_a) annotation(Line(
			points={{-32,-72},{-27,-72},{-20,-72},{-20,-74},{-15,-74}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_b_xp,schnittstelle1.port_a) annotation(Line(
			points={{-31,0},{-26,0},{-18,0},{-13,0}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		Icon(
			coordinateSystem(
				extent={{-100,-100},{100,100}},
				grid={10,10}),
			graphics={
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.VerticalCylinder,
									extent={{-10,-100},{10,100}},
									visible=true,
									origin={-10,0}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-10,-80},{10,80}},
									visible=true,
									origin={10,0}),
								Text(
									textString="%name",
									textStyle={TextStyle.Bold},
									fillColor={255,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-100,-20},{100,20}},
									visible=true,
									origin={-10,135.6661})}),
		Diagram(coordinateSystem(
			extent={{-148.5,-105},{148.5,105}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end Doublethermal_Panel_with_2Interfaces;
