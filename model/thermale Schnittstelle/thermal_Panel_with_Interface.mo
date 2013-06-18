// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model thermal_Panel_with_Interface "Seitenpanel mit Schnittstelle"
	Schnittstelle schnittstelle1(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
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
			origin={20,0},
			extent={{-10,-10},{10,10}})));
	thermal_element BuildingBlock_Panel(
		material=material_Panel,
		x=x_Panel,
		y=y_Panel,
		z=z_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-20,-0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_xn annotation(Placement(
		transformation(
			origin={-55,-1},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-30,0},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector1 annotation(Placement(
		transformation(
			origin={50,-1},
			extent={{-10,-10},{10,10}},
			rotation=-180),
		iconTransformation(
			origin={30,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_zp annotation(Placement(transformation(extent={{-65,-46},{-45,-26}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_yn annotation(Placement(transformation(extent={{-30,-46},{-10,-26}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_yp annotation(Placement(transformation(extent={{-35,24},{-15,44}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_zn annotation(Placement(transformation(extent={{5,24},{25,44}})));
	parameter Modelica.SIunits.Length x_ESS "length x of ESS in m";
	parameter Modelica.SIunits.Length y_ESS "length y of ESS in m";
	parameter Modelica.SIunits.Length z_ESS "length z of ESS in m";
	parameter Modelica.SIunits.Length x_MSS "length x of MSS in m";
	parameter Modelica.SIunits.Length y_MSS "length y of MSS in m";
	parameter Modelica.SIunits.Length z_MSS "length z of MSS in m";
	parameter Modelica.SIunits.Length x_TSS "length x of TSS in m";
	parameter Modelica.SIunits.Length y_TSS "length y of TSS in m";
	parameter Modelica.SIunits.Length z_TSS "length y of TSS in m";
	parameter Modelica.SIunits.Length x_Panel "length x of Panel in m";
	parameter Modelica.SIunits.Length y_Panel "length y of Panel in m";
	parameter Modelica.SIunits.Length z_Panel "length z of Panel in m";
	replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
	equation
		connect(BuildingBlock_Panel.port_b_xp,schnittstelle1.port_a) annotation(Line(
			points={{-10,0},{-5,0},{12,0},{17,0}},
			color={191,0,0},
			thickness=0.0625));
		
		
		
		
		
		connect(schnittstelle1.ESS_IF,thermal_connector1.ESS) annotation(Line(
			points={{30,5},{35,5},{45,5},{45,-1},{50,-1}},
			color={191,0,0},
			thickness=0.0625));
		connect(schnittstelle1.TSS_IF,thermal_connector1.TSS) annotation(Line(
			points={{30,-5},{35,-5},{45,-5},{45,-1},{50,-1}},
			color={191,0,0},
			thickness=0.0625));
		connect(schnittstelle1.MSS_IF,thermal_connector1.MSS) annotation(Line(
			points={{30,0},{35,0},{45,0},{45,-1},{50,-1}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_b_xp,thermal_connector1.Rad) annotation(Line(
			points={{-10,0},{-5,0},{45,0},{45,-1},{50,-1}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_b_yp,port_yp) annotation(Line(
			points={{-20,9},{-20,14},{-20,34},{-25,34}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_a_zn,port_zn) annotation(Line(
			points={{-15,7},{-15,12},{-15,34},{10,34},{15,34}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_a_xn,port_xn) annotation(Line(
			points={{-30,0},{-35,0},{-50,0},{-50,-1},{-55,-1}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_b_zp,port_zp) annotation(Line(
			points={{-25,-5},{-30,-5},{-50,-5},{-50,-36},{-55,-36}},
			color={191,0,0},
			thickness=0.0625));
		connect(BuildingBlock_Panel.port_a_yn,port_yn) annotation(Line(
			points={{-20,-6},{-20,-11},{-15,-11},{-15,-36},{-20,-36}},
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
									extent={{-10,-50},{10,50}},
									visible=true,
									origin={10,0}),
								Text(
									textString="%name",
									textStyle={TextStyle.Bold},
									fillPattern=FillPattern.Solid,
									extent={{-100,-20},{100,20}},
									visible=true,
									rotation=90)}),
		Diagram(coordinateSystem(
			extent={{-105,-74},{105,74}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end thermal_Panel_with_Interface;
