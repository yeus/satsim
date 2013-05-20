// CP: 65001
// SimulationX Version: 3.5.705.14 x64
model thermalModel_ElectronicBox "Zentraler Knoten des Bausteinmodells mit Schnittstelle zur Elektroniksimulation. Gibt die Elektrisch erzeugte Waermeenergie wieder"
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xn annotation(Placement(
		transformation(
			origin={-60,-0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-100,-0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xp annotation(Placement(
		transformation(
			origin={60,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_yp annotation(Placement(
		transformation(
			origin={0,80},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={0,100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_yn annotation(Placement(
		transformation(
			origin={0,-80},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={0,-100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zp annotation(Placement(
		transformation(
			origin={-54,-60},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={-60,60},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zn annotation(Placement(
		transformation(
			origin={56,60},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={60,-60},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C=C) annotation(Placement(transformation(
		origin={0,10},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b dissipationPower annotation(Placement(
		transformation(
			origin={-39,35},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={0,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zp(G=G/2) annotation(Placement(transformation(
		origin={-29,-35},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp(G=G/2) annotation(Placement(transformation(
		origin={0,48.2665},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G=G/2) annotation(Placement(transformation(
		origin={30,0},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G=G/2) annotation(Placement(transformation(
		origin={-30,0},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn(G=G/2) annotation(Placement(transformation(
		origin={0,-50},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zn(G=G/2) annotation(Placement(transformation(
		origin={31,35},
		extent={{-10,-10},{10,10}})));
	replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
	parameter Modelica.SIunits.Area A "Querschnittstflaeche des Materials/Kontaktes";
	parameter Modelica.SIunits.Length x "Laenge des Materials in Richtung der Waermeausbreitung";
	protected
		parameter Modelica.SIunits.HeatCapacity C=A*x*material.d*material.c "Heat capacity of element (= cp*m)";
		parameter Modelica.SIunits.ThermalConductance G=A*material.k/x "Constant thermal conductance of material";
	equation
		connect(thermalConductor_xp.port_b,EB_xp) annotation(Line(
			points={{-10,0},{10,-0}},
			color={191,0,0},
			visible=true,
			origin={50,0}));
		connect(thermalConductor_yp.port_a,EB_yp) annotation(Line(
			points={{0,-10.8667},{0,10.8668}},
			color={191,0,0},
			visible=true,
			origin={0,69.1332}));
		connect(thermalConductor_yn.port_b,EB_yn) annotation(Line(
			points={{0,10},{-0,-10}},
			color={191,0,0},
			visible=true,
			origin={0,-70}));
		connect(thermalConductor_xn.port_a,EB_xn) annotation(Line(
			points={{10,0},{-10,-0}},
			color={191,0,0},
			visible=true,
			origin={-50,0}));
		connect(thermalConductor_zp.port_a,EB_zp) annotation(Line(
			points={{-39,-35},{-44,-35},{-48,-35},{-48,-60},{-53,-60}},
			color={191,0,0},
			visible=true,
			origin={-43.3333,43.3333}));
		connect(thermalConductor_zn.port_b,EB_zn) annotation(Line(
			points={{41,35},{46,35},{52,35},{52,60},{57,60}},
			color={191,0,0},
			visible=true,
			origin={43.3333,-43.3333}));
		connect(thermalConductor_zp.port_b,heatCapacitor1.port) annotation(Line(
			points={{-19,-35},{-14,-35},{0,-35},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-10.8,10.8}));
		connect(thermalConductor_zn.port_a,heatCapacitor1.port) annotation(Line(
			points={{21,35},{16,35},{16,-5},{0,-5},{0,0}},
			color={191,0,0},
			visible=true,
			origin={6.6667,-20}));
		connect(thermalConductor_yn.port_a,heatCapacitor1.port) annotation(Line(
			points={{0,-20},{-0,20}},
			color={191,0,0},
			visible=true,
			origin={0,-20}));
		connect(heatCapacitor1.port,thermalConductor_xp.port_a) annotation(Line(
			points={{-10.8,1.2},{-10.8,-1.8},{6.2,-1.8},{6.2,1.2},{9.199999999999999,1.2}},
			color={191,0,0},
			visible=true,
			origin={10.8,-1.2}));
		connect(thermalConductor_xn.port_b,heatCapacitor1.port) annotation(Line(
			points={{-9.199999999999999,1.2},{-6.2,1.2},{-6.2,-1.8},{10.8,-1.8},{10.8,1.2}},
			color={191,0,0},
			visible=true,
			origin={-10.8,-1.2}));
		connect(heatCapacitor1.port,thermalConductor_yp.port_b) annotation(Line(
			points={{4.3333,-17.1332},{4.3333,-20.1332},{-8.666700000000001,-20.1332},{-8.666700000000001,18.1332},{4.3333,18.1332},{4.3333,
			21.1332}},
			color={191,0,0},
			visible=true,
			origin={-4.3333,17.1332}));
		connect(dissipationPower,heatCapacitor1.port) annotation(Line(
			points={{-38,35},{-33,35},{-33,-5},{0,-5},{0,0}},
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
				textString="yp",
				fillPattern=FillPattern.Solid,
				extent={{-11.0499,-8.5595},{11.0499,8.5595}},
				visible=true,
				origin={0,76.95229999999999}),
			Text(
				textString="yn",
				fillPattern=FillPattern.Solid,
				extent={{-11.0499,-8.5595},{11.0499,8.5595}},
				visible=true,
				origin={0,-80}),
			Text(
				textString="zn",
				fillPattern=FillPattern.Solid,
				extent={{-11.0499,-8.5595},{11.0499,8.5595}},
				visible=true,
				origin={38.9501,-41.4405}),
			Text(
				textString="zp",
				fillPattern=FillPattern.Solid,
				extent={{-11.0499,-8.5595},{11.0499,8.5595}},
				visible=true,
				origin={-38.9501,40}),
			Text(
				textString="electrical power",
				fillPattern=FillPattern.Solid,
				extent={{-50,-12.4068},{50,12.4068}},
				visible=true,
				origin={0,22.4068})}),
		Diagram(coordinateSystem(
			extent={{-148.5,-105},{148.5,105}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end thermalModel_ElectronicBox;
