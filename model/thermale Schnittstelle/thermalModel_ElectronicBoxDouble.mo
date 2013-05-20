// CP: 65001
// SimulationX Version: 3.5.705.14 x64
model thermalModel_ElectronicBoxDouble "Zentraler Knoten des Doppelbausteinmodells mit Schnittstelle zur Elektroniksimulation. Gibt die Elektrisch erzeugte Waermeenergie wieder"
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xn annotation(Placement(
		transformation(
			origin={-80,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-100,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xp annotation(Placement(
		transformation(
			origin={80,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ypxn annotation(Placement(
		transformation(
			origin={-20,80},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-27.5027,100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ynxn annotation(Placement(
		transformation(
			origin={-20,-60},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-20,-100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zpxn annotation(Placement(
		transformation(
			origin={-80,80},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-80,50},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_znxp annotation(Placement(
		transformation(
			origin={85,-60},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={77.75490000000001,-57.9112},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C=C) annotation(Placement(transformation(
		origin={0,10},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b dissipationPower annotation(Placement(
		transformation(
			origin={-55,-35},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={0,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zp(G=G/2) annotation(Placement(transformation(
		origin={-50,51.9599},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ypxn(G=G/2) annotation(Placement(transformation(
		origin={-20,50},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G=G/2) annotation(Placement(transformation(
		origin={40,-0},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G=G/2) annotation(Placement(transformation(
		origin={-40,0},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ynxn(G=G/2) annotation(Placement(transformation(
		origin={-20,-30},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_znxp(G=G/2) annotation(Placement(transformation(
		origin={60,-30},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ypxp annotation(Placement(
		transformation(
			origin={20,80},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={21.9667,100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ypxp(G=G/2) annotation(Placement(transformation(
		origin={20,50},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ynxp annotation(Placement(
		transformation(
			origin={20,-60},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={27.435,-100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ynxp(G=G/2) annotation(Placement(transformation(
		origin={20,-30},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zpxp annotation(Placement(
		transformation(
			origin={82.38679999999999,75},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-58.4156,71.99290000000001},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zpxp(G=G/2) annotation(Placement(transformation(
		origin={55,35},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_znxn annotation(Placement(
		transformation(
			origin={-78.4414,-62.7392},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={56.7003,-80},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorznxn(G=G/2) annotation(Placement(transformation(
		origin={-65,-17.6646},
		extent={{-10,-10},{10,10}})));
	replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
	parameter Modelica.SIunits.Area A "QuerschnittstflÃƒÂ¤che des Materials/Kontaktes";
	parameter Modelica.SIunits.Length x "LÃƒÂ¤nge des Materials in Richtung der WÃƒÂ¤rmeausbreitung";
	protected
		parameter Modelica.SIunits.HeatCapacity C=A*x*material.d*material.c "Heat capacity of element (= cp*m)" annotation(Placement(transformation(
			origin={-26.5971,-26.5971},
			extent={{-12,-12},{12,12}})));
		parameter Modelica.SIunits.ThermalConductance G=A*material.k/x "Constant thermal conductance of material" annotation(Placement(transformation(
			origin={24.4842,-27.2352},
			extent={{-12,-12},{12,12}})));
	equation
		connect(thermalConductor_zpxp.port_b,EB_zpxp) annotation(Line(
			points={{65,35},{70,35},{78,35},{78,75},{83,75}},
			color={191,0,0},
			visible=true,
			origin={76.5912,48.3333}));
		connect(thermalConductor_zp.port_a,EB_zpxn) annotation(Line(
			points={{-60,52},{-65,52},{-75,52},{-75,80},{-80,80}},
			color={191,0,0},
			visible=true,
			origin={-73.33329999999999,61.3066}));
		connect(thermalConductor_ynxn.port_b,EB_ynxn) annotation(Line(
			points={{-20,-40},{-20,-45},{-25,-45},{-25,-60},{-20,-60}},
			color={191,0,0},
			visible=true,
			origin={-20,-50}));
		connect(thermalConductor_znxp.port_b,EB_znxp) annotation(Line(
			points={{70,-30},{75,-30},{80,-30},{80,-60},{85,-60}},
			color={191,0,0},
			visible=true,
			origin={80,-40}));
		connect(thermalConductorznxn.port_a,EB_znxn) annotation(Line(
			points={{-75,-18},{-80,-18},{-80,-40},{-73,-40},{-73,-63},{-78,
			-63}},
			color={191,0,0},
			visible=true,
			origin={-77.2942,-32.6895}));
		connect(thermalConductor_ynxp.port_b,EB_ynxp) annotation(Line(
			points={{20,-40},{20,-45},{15,-45},{15,-60},{20,-60}},
			color={191,0,0},
			visible=true,
			origin={20,-50}));
		connect(thermalConductor_ypxp.port_a,EB_ypxp) annotation(Line(
			points={{20,60},{20,65},{25,65},{25,80},{20,80}},
			color={191,0,0},
			visible=true,
			origin={20,70}));
		connect(thermalConductor_ypxn.port_a,EB_ypxn) annotation(Line(
			points={{-20,60},{-20,65},{-15,65},{-15,80},{-20,80}},
			color={191,0,0},
			visible=true,
			origin={-20,70}));
		connect(thermalConductorznxn.port_b,heatCapacitor1.port) annotation(Line(
			points={{-55,-18},{-50,-18},{0,-18},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-18.3333,-11.7764}));
		connect(heatCapacitor1.port,thermalConductor_zpxp.port_a) annotation(Line(
			points={{0,0},{0,-5},{20,-5},{20,35},{40,35},{45,
			35}},
			color={191,0,0},
			visible=true,
			origin={25.8,12.8}));
		connect(thermalConductor_znxp.port_a,heatCapacitor1.port) annotation(Line(
			points={{50,-30},{45,-30},{0,-30},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={16.6667,-20}));
		connect(heatCapacitor1.port,thermalConductor_ynxp.port_a) annotation(Line(
			points={{0,0},{0,-5},{0,-15},{20,-15},{20,-20}},
			color={191,0,0},
			visible=true,
			origin={10,-13.5}));
		connect(thermalConductor_ynxn.port_a,heatCapacitor1.port) annotation(Line(
			points={{-20,-20},{-20,-15},{-20,-5},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-10,-6.5}));
		connect(heatCapacitor1.port,thermalConductor_ypxn.port_b) annotation(Line(
			points={{0,0},{0,-5},{-20,-5},{-20,35},{-20,40}},
			color={191,0,0},
			visible=true,
			origin={-10,8.5}));
		connect(thermalConductor_ypxp.port_b,heatCapacitor1.port) annotation(Line(
			points={{20,40},{20,35},{20,-5},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={10,8.5}));
		connect(thermalConductor_xp.port_b,EB_xp) annotation(Line(
			points={{50,0},{55,0},{75,0},{80,0}},
			color={191,0,0},
			visible=true,
			origin={65,0}));
		connect(heatCapacitor1.port,thermalConductor_xp.port_a) annotation(Line(
			points={{0,0},{0,-5},{13,-5},{13,0},{25,0},{30,
			0}},
			color={191,0,0},
			visible=true,
			origin={16.8,-1.2}));
		connect(thermalConductor_xn.port_a,EB_xn) annotation(Line(
			points={{-50,0},{-55,0},{-75,0},{-80,0}},
			color={191,0,0},
			visible=true,
			origin={-65,0}));
		connect(thermalConductor_xn.port_b,heatCapacitor1.port) annotation(Line(
			points={{-30,0},{-25,0},{-25,-5},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-16.8,-1.2}));
		connect(thermalConductor_zp.port_b,heatCapacitor1.port) annotation(Line(
			points={{-40,52},{-35,52},{-35,-5},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-22.8,19.584}));
		connect(dissipationPower,heatCapacitor1.port) annotation(Line(
			points={{-55,-35},{-50,-35},{0,-35},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-26.6667,-17.3285}));
	annotation(
		viewSettings(clrRaster=8421504),
		Icon(
			coordinateSystem(
				extent={{-100,-100},{100,100}},
				grid={10,10}),
			graphics={
			Rectangle(
				pattern=LinePattern.Dot,
				lineColor={255,0,0},
				fillColor={255,255,255},
				fillPattern=FillPattern.Sphere,
				extent={{-100,-100},{100,100}},
				visible=true),
			Text(
				textString="xp",
				fillPattern=FillPattern.Solid,
				extent={{-11.0499,-8.5595},{11.0499,8.5595}},
				visible=true,
				origin={77.023,0}),
			Text(
				textString="xn",
				fillPattern=FillPattern.Solid,
				extent={{-11.0499,-8.5595},{11.0499,8.5595}},
				visible=true,
				origin={-75.1195,0}),
			Text(
				textString="ypxn",
				fillPattern=FillPattern.Solid,
				extent={{-15,-8.5595},{15,8.5595}},
				visible=true,
				origin={-25,78.5595}),
			Text(
				textString="zpxn",
				fillPattern=FillPattern.Solid,
				extent={{-13.9556,-8.5595},{13.9556,8.5595}},
				visible=true,
				origin={-60,34.8863}),
			Text(
				textString="electrical power",
				fillPattern=FillPattern.Solid,
				extent={{-50,-12.4068},{50,12.4068}},
				visible=true,
				origin={0,22.4068}),
			Text(
				textString="zpxp",
				fillPattern=FillPattern.Solid,
				extent={{-13.9556,-8.5595},{13.9556,8.5595}},
				visible=true,
				origin={-36.0444,56.6625}),
			Text(
				textString="ypxp",
				fillPattern=FillPattern.Solid,
				extent={{-15,-8.5595},{15,8.5595}},
				visible=true,
				origin={21.9912,78.5595}),
			Text(
				textString="znxn",
				fillPattern=FillPattern.Solid,
				extent={{-13.9556,-8.5595},{13.9556,8.5595}},
				visible=true,
				origin={31.8969,-61.4405}),
			Text(
				textString="znxp",
				fillPattern=FillPattern.Solid,
				extent={{-13.9556,-8.5595},{13.9556,8.5595}},
				visible=true,
				origin={53.9556,-40}),
			Text(
				textString="ynxp",
				fillPattern=FillPattern.Solid,
				extent={{-15,-8.5595},{15,8.5595}},
				visible=true,
				origin={27.2061,-81.4405}),
			Text(
				textString="ynxn",
				fillPattern=FillPattern.Solid,
				extent={{-15,-8.5595},{15,8.5595}},
				visible=true,
				origin={-20,-81.4405})}),
		Diagram(coordinateSystem(
			extent={{-148.5,-105},{148.5,105}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end thermalModel_ElectronicBoxDouble;
