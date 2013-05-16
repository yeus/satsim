// CP: 65001
// SimulationX Version: 3.5.705.14 x64
model thermal_element
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
		transformation(
			origin={-60,-0},
			extent={{-12,-12},{12,12}}),
		iconTransformation(
			origin={-102,-0},
			extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
		transformation(
			origin={60,0},
			extent={{-12,-12},{12,12}}),
		iconTransformation(
			origin={100,0},
			extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductorrechts(G=G/2) annotation(Placement(transformation(
		origin={20,0},
		extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C=C) annotation(Placement(transformation(
		origin={0,30},
		extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorlinks(G=G/2) annotation(Placement(transformation(
		origin={-20,0},
		extent={{-10,-10},{10,10}})));
	replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
	parameter Modelica.SIunits.Area A "Querschnittstflaeche des Materials/Kontaktes";
	parameter Modelica.SIunits.Length x "Laenge des Materials in Richtung der Waermeausbreitung";
	protected
		parameter Modelica.SIunits.ThermalConductance G=A*material.k/x "Constant thermal conductance of material";
		parameter Modelica.SIunits.HeatCapacity C=A*x*material.d*material.c "Heat capacity of element (= cp*m)";
	equation
		connect(thermalConductorlinks.port_a,port_a) annotation(Line(
			points={{-30,0},{-35,0},{-55,0},{-60,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(heatcapacitor1.port,thermalConductorlinks.port_b) annotation(Line(
			points={{0,18},{0,13},{0,0},{-5,0},{-10,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(heatcapacitor1.port,thermalconductorrechts.port_a) annotation(Line(
			points={{0,18},{0,13},{0,0},{3,0},{8,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(port_b,thermalconductorrechts.port_b) annotation(Line(
			points={{60,0},{55,0},{37,0},{32,0}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		viewSettings(clrRaster=8421504),
		Icon(
			coordinateSystem(
				extent={{-100,-100},{100,100}},
				grid={10,10}),
			graphics={
			Rectangle(
				lineColor={255,0,0},
				fillColor={255,255,255},
				fillPattern=FillPattern.HorizontalCylinder,
				extent={{-94.63549999999999,-59.4223},{96.011,61.8982}},
				visible=true,
				origin={-0.6878,-1.238}),
			Text(
				textString="%name",
				textStyle={TextStyle.Bold},
				fillPattern=FillPattern.Solid,
				extent={{-101.2507,52.8171},{98.74930000000001,112.8171}},
				visible=true,
				origin={82.8171,1.2507},
				rotation=90),
			Text(
				textString="thermal element",
				fontSize=16,
				fillColor={0,0,255},
				extent={{-3,-2},{0,9}},
				visible=true)}),
		Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
		experiment(
			StopTime=1,
			StartTime=0));
end thermal_element;
