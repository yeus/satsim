// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model thermal_TIM "thermal interfacial material parameters (Conductance)"
	thermal_connector thermal_connector2 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
		transformation(
			origin={-40,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-100,0},
			extent={{-10,-10},{10,10}},
			rotation=-180)));
	thermal_connector thermal_connector1 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
		transformation(
			origin={40,0},
			extent={{-10,-10},{10,10}},
			rotation=-180),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}},
			rotation=-360)));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_TIM_TSS(G=h_TSS*A_TSS)"Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
		origin={-0,10},
		extent={{-6.1349,-6.1349},{6.1349,6.1349}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_MSS(G=h_MSS*A_MSS)"Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
		origin={-0,-10},
		extent={{-6.0931,-6.0931},{6.0931,6.0931}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_ESS(G=h_ESS*A_ESS)"Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
		origin={0,-30},
		extent={{-6.1934,-6.1934},{6.1934,6.1934}})));
	parameter Real h_TSS(unit="W/(m²·K)")=500 "Heat transfer coefficient TSS - TSS";
	parameter Real h_MSS(unit="W/(m²·K)")=370 "Heat transfer coefficient MSS - MSS";
	parameter Real h_ESS(unit="W/(m²·K)")=460 "Heat transfer coefficient ESS - ESS";
	parameter Real Gr_Rad(unit="m2")=0 "Net radiation conductance between two surfaces (see docu) tbd";
	parameter Modelica.SIunits.Emissivity eps_Rad=0.5 "Emmisivity od the radiator";
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation Radiator(Gr=Gr_Rad)"Lumped thermal element for radiation heat transfer" annotation(Placement(transformation(
		origin={0,30},
		extent={{-6.25,-6.25},{6.25,6.25}})));
	parameter Modelica.SIunits.Area A_ESS(unit="m2")=0.0002 "Querschnittsflaeche der ESS";
	parameter Modelica.SIunits.Area A_TSS(unit="m2")=0.01 "Querschnittsflaeche der TSS";
	parameter Modelica.SIunits.Area A_MSS(unit="m2")=0.005 "Querschnittsflaeche der MSS";
	parameter Modelica.SIunits.Area A_Rad(unit="m2")=0.1448 "Querschnittsflaeche der MSS";
	equation
		connect(Radiator.port_b,thermal_connector1.Rad) annotation(Line(
			points={{-13.3179,24.691},{-10.3179,24.691},{-10.3179,-18.309},{16.9769,-18.309},{16.9769,-12.7641}},
			color={191,0,0},
			visible=true,
			origin={19.5679,5.309}));
		 
		connect(thermal_connector2.Rad,Radiator.port_a) annotation(Line(
			points={{-10.0983,-15.0299},{-10.0983,7.5149},{20.1966,7.5149}},
			color={191,0,0},
			visible=true,
			origin={-26.4466,22.485}));
		 
		connect(thermal_connector2.TSS,Conductance_TIM_TSS.port_a) annotation(Line(
			points={{-21.2747,-3.7486},{6.0916,-3.7486},{6.0916,3.7486},{9.0916,3.7486}},
			color={191,0,0},
			visible=true,
			origin={-15.2265,6.2513}));
		 
		connect(Conductance_TIM_TSS.port_b,thermal_connector1.TSS) annotation(Line(
			points={{-18.0241,6.2513},{2.841,6.2513},{2.841,-6.2513},{12.3422,-6.2513}},
			color={191,0,0},
			visible=true,
			origin={24.159,3.7486}));
		 
		connect(thermal_connector2.MSS,Conductance_MSS.port_a) annotation(Line(
			points={{-21.2833,3.7327},{6.0944,3.7327},{6.0944,-3.7327},{9.0944,-3.7327}},
			color={191,0,0},
			visible=true,
			origin={-15.1875,-6.2673}));
		 
		connect(thermal_connector1.MSS,Conductance_MSS.port_b) annotation(Line(
			points={{21.2833,6.2673},{-6.0944,6.2673},{-6.0944,-6.2673},{-9.0944,-6.2673}},
			color={191,0,0},
			visible=true,
			origin={15.1875,-3.7327}));
		 
		connect(thermal_connector2.ESS,Conductance_ESS.port_a) annotation(Line(
			points={{-10.0846,14.9756},{-10.0846,-7.4878},{20.1691,-7.4878}},
			color={191,0,0},
			visible=true,
			origin={-26.3625,-22.5122}));
		 
		connect(thermal_connector1.ESS,Conductance_ESS.port_b) annotation(Line(
			points={{16.9522,12.8293},{16.9522,18.2927},{-10.3015,18.2927},{-10.3015,-24.7073},{-13.3015,-24.7073}},
			color={191,0,0},
			visible=true,
			origin={19.4949,-5.2927}));
	annotation(
		Icon(
			coordinateSystem(
				extent={{-100,-100},{100,100}},
				grid={10,10}),
			graphics={
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-20,-100},{20,100}},
									visible=true,
									origin={-80,0}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-20,-100},{20,100}},
									visible=true,
									origin={80,0}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-40,-100},{40,100}},
									visible=true),
								Text(
									textString="%name",
									textStyle={TextStyle.Bold},
									fillPattern=FillPattern.Solid,
									extent={{-100.0603,-40},{100.0603,40}},
									visible=true,
									origin={-0,0.0603},
									rotation=90)}),
		Diagram(coordinateSystem(
			extent={{-105,-74},{105,74}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end thermal_TIM;
