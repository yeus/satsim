// CP: 65001
// SimulationX Version: 3.6.4.31847 x64
within iboss;
package iboss_thermal "iboss_thermal"
	import MaterialDatabase.*;
	extends Modelica.Icons.Package;
	package components "components"
		connector thermal_connector "Verbindungselement fuer mehr als eine Schnittstelle"
			import Modelica.Thermal.HeatTransfer.Interfaces;
			Interfaces.HeatPort_a TSS annotation(Placement(
				transformation(
					origin={34.9878,25.027},
					extent={{-29.3849,-29.3849},{29.3849,29.3849}}),
				iconTransformation(
					origin={47.5754,49.0995},
					extent={{-20.9005,-20.9005},{20.9005,20.9005}})));
			Interfaces.HeatPort_a MSS annotation(Placement(
				transformation(
					origin={35.2917,-25.3457},
					extent={{-29.3775,-29.3775},{29.3775,29.3775}}),
				iconTransformation(
					origin={-44.5202,-48.8898},
					extent={{-21.1102,-21.1102},{21.1102,21.1102}})));
			Interfaces.HeatPort_a ESS annotation(Placement(
				transformation(
					origin={35.5288,-75.36579999999999},
					extent={{-29.6146,-29.6146},{29.6146,29.6146}}),
				iconTransformation(
					origin={47.071,-48.8363},
					extent={{-21.1637,-21.1637},{21.1637,21.1637}})));
			Interfaces.HeatPort_a Rad annotation(Placement(
				transformation(
					origin={34.5515,74.5515},
					extent={{-28.326,-28.326},{28.326,28.326}}),
				iconTransformation(
					origin={-44.8506,49.0995},
					extent={{-20.9005,-20.9005},{20.9005,20.9005}})));
			annotation(
				defaultComponentName="thermal_connector",
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={
																																																																																																																																																																																																																																																																																																			Rectangle(
																																																																																																																																																																																																																																																																																																	fillPattern=FillPattern.CrossDiag,
																																																																																																																																																																																																																																																																																														lineThickness=1,
																																																																																																																																																																																																																																																																																											extent={{-100,-100},{100,100}},
																																																																																																																																																																																																																																																																																								visible=true),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="Rad",
																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-30,-15.1439},{30,15.1439}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={-44.0817,85.1439}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="TSS",
																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-30,-15.1439},{30,15.1439}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={46.7747,84.8561}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="MSS",
																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-30,-15.1439},{30,15.1439}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={-44.0959,-85.1439}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="ESS",
																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-30,-15.1439},{30,15.1439}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={47.1086,-85.1439})}),
				Diagram(
					coordinateSystem(grid={10,10}),
					graphics={
																																																																																																																																																																																																																																																																																							Rectangle(
																																																																																																																																																																																																																																																																																								lineColor={255,0,0},
																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.CrossDiag,
																																																																																																																																																																																																																																																																																								lineThickness=1,
																																																																																																																																																																																																																																																																																								extent={{-30.7109,-23.1268},{27.2635,33.4688}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={-28.2763,-5.171}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="TSS",
																																																																																																																																																																																																																																																																																								fillColor={255,0,0},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-17.1201,-5.9154},{17.1201,5.9154}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={70,24.0846}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="MSS",
																																																																																																																																																																																																																																																																																								fillColor={255,0,0},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-12.9755,-6.8676},{12.9755,6.8676}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={70,-25.2132}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="ESS",
																																																																																																																																																																																																																																																																																								fillColor={255,0,0},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-13.598,-6.3627},{13.598,6.3627}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={70,-76.3627}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="Rad",
																																																																																																																																																																																																																																																																																								fillColor={255,0,0},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-17.1201,-5.9154},{17.1201,5.9154}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={70,74.0846}),
																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																								textString="%name",
																																																																																																																																																																																																																																																																																								textStyle={TextStyle.Bold},
																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																								extent={{-102.764,-162.343},{97.23560000000001,-102.343}},
																																																																																																																																																																																																																																																																																								visible=true,
																																																																																																																																																																																																																																																																																								origin={-142.343,2.7644},
																																																																																																																																																																																																																																																																																								rotation=90)}));
		end thermal_connector;
		model thermal_element
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a_xn annotation(Placement(
				transformation(
					origin={-73,13},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={-102,-0},
					extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b_xp annotation(Placement(
				transformation(
					origin={77,13},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={100,0},
					extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductorrechts_x(G=Gx / 2) annotation(Placement(transformation(
				origin={47,20},
				extent={{-12,-12},{0,0}})));
			Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C=C) annotation(Placement(transformation(
				origin={0,30},
				extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorlinks_x(G=Gx / 2) annotation(Placement(transformation(
				origin={-30,15},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a_yn annotation(Placement(transformation(extent={{-10,-70},{10,-50}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b_yp annotation(Placement(transformation(extent={{-10,80},{10,100}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a_zn annotation(Placement(transformation(extent={{40,55},{60,75}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b_zp annotation(Placement(transformation(extent={{-60,-55},{-40,-35}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorunten_y(G=Gy / 2) annotation(Placement(transformation(
				origin={-3,-22},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductoroben_y(G=Gy / 2) annotation(Placement(transformation(
				origin={-5,65},
				extent={{-10,-10},{5,5}},
				rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorhinten_z(G=Gz / 2) annotation(Placement(transformation(
				origin={25,36},
				extent={{-10,-10},{10,10}},
				rotation=-135)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorvorne_z(G=Gz / 2) annotation(Placement(transformation(
				origin={-30,-15},
				extent={{-10,-10},{10,10}},
				rotation=-135)));
			parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Modelica.SIunits.Length x "Laenge des Materials in x Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length y "Laenge des Materials in y Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length z "Laenge des Materials in z Richtung der Waermeausbreitung";
			protected
				parameter Modelica.SIunits.ThermalConductance Gx=y * z * material.k / x "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gy=x * z * material.k / y "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gz=y * x * material.k / z "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.HeatCapacity C=x * y * z * material.d * material.c "Heat capacity of element (= cp*m)";
			equation
				connect(thermalConductorlinks_x.port_a,port_a_xn) annotation(Line(
					points={{-40,15},{-45,15},{-68,15},{-68,13},{-73,13}},
					color={191,0,0},
					thickness=0.0625));
				connect(heatcapacitor1.port,thermalConductorlinks_x.port_b) annotation(Line(
					points={{0,18},{0,13},{-7.3,13},{-7.3,15},{-15,15},{-20,
					15}},
					color={191,0,0},
					thickness=0.0625));
				connect(port_b_xp,thermalconductorrechts_x.port_b) annotation(Line(
					points={{77,13},{72,13},{52,13},{52,14},{47,14}},
					color={191,0,0},
					thickness=0.0625));
				connect(heatcapacitor1.port,thermalconductorrechts_x.port_a) annotation(Line(
					points={{0,18},{0,13},{15,13},{15,14},{30,14},{35,
					14}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorunten_y.port_b,heatcapacitor1.port) annotation(Line(
					points={{-3,-14.3},{-3,-9.300000000000001},{-3,13},{0,13},{0,18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorunten_y.port_a,port_a_yn) annotation(Line(
					points={{-3,-29.7},{-3,-34.7},{-5,-34.7},{-5,-60},{0,-60}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductoroben_y.port_a,heatcapacitor1.port) annotation(Line(
					points={{-2.7,55},{-2.7,50},{-1.3,50},{-1.3,13},{0,13},{0,
					18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductoroben_y.port_b,port_b_yp) annotation(Line(
					points={{-2.7,70},{-2.7,75},{-5,75},{-5,90},{0,90}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorvorne_z.port_b,port_b_zp) annotation(Line(
					points={{-37,-22},{-42,-22},{-45,-22},{-45,-45},{-50,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorvorne_z.port_a,heatcapacitor1.port) annotation(Line(
					points={{-23,-8},{-18,-8},{0,-8},{0,13},{0,18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorhinten_z.port_b,heatcapacitor1.port) annotation(Line(
					points={{18,29},{13,29},{13,13},{0,13},{0,18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorhinten_z.port_a,port_a_zn) annotation(Line(
					points={{32,43},{37,43},{45,43},{45,65},{50,65}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
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
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_element;
		model Schnittstelle
			parameter Modelica.SIunits.Length x_ESS "length x of ESS in m";
			parameter Modelica.SIunits.Length y_ESS "length y of ESS in m";
			parameter Modelica.SIunits.Length z_ESS "length z of ESS in m";
			parameter Modelica.SIunits.Length x_MSS "length x of MSS in m";
			parameter Modelica.SIunits.Length y_MSS "length y of MSS in m";
			parameter Modelica.SIunits.Length z_MSS "length z of MSS in m";
			parameter Modelica.SIunits.Length x_TSS "length x of TSS in m";
			parameter Modelica.SIunits.Length y_TSS "length y of TSS in m";
			parameter Modelica.SIunits.Length z_TSS "length z of TSS in m";
			parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
				transformation(
					origin={-43,-2},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={-28,0},
					extent={{-12,-12},{12,12}})));
			thermal_element ESS(
				material=material_ESS,
				x=x_ESS,
				y=y_ESS,
				z=z_ESS) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={-0,40},
					extent={{-12,-12},{12,12}})));
			thermal_element MSS(
				material=material_MSS,
				x=x_MSS,
				y=y_MSS,
				z=z_MSS) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={0,0},
					extent={{-12,-12},{12,12}})));
			thermal_element TSS(
				material=material_TSS,
				x=x_TSS,
				y=y_TSS,
				z=z_TSS) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={-0,-40},
					extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a ESS_IF annotation(Placement(
				transformation(
					origin={40,40},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,50},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a MSS_IF annotation(Placement(
				transformation(
					origin={40,0},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={98.67400000000001,-0.6225000000000001},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a TSS_IF annotation(Placement(
				transformation(
					origin={40,-40},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,-50},
					extent={{-10,-10},{10,10}})));
			equation
				connect(MSS.port_a_xn,port_a) annotation(Line(points = {{-12,0},{-17,0},{-38,0},{-38,-2},{-43,-2}}, color = {191,0,0}, thickness = 0.0625));
				connect(MSS.port_b_xp,MSS_IF) annotation(Line(points = {{12,0},{17,0},{35,0},{40,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(ESS.port_a_xn,port_a) annotation(Line(points = {{-12,40},{-17,40},{-38,40},{-38,-2},{-43,-2}}, color = {191,0,0}, thickness = 0.0625));
				connect(ESS.port_b_xp,ESS_IF) annotation(Line(points = {{12,40},{17,40},{35,40},{40,40}}, color = {191,0,0}, thickness = 0.0625));
				connect(TSS.port_a_xn,port_a) annotation(Line(points = {{-12,-40},{-17,-40},{-38,-40},{-38,-2},{-43,-2}}, color = {191,0,0}, thickness = 0.0625));
				connect(TSS.port_b_xp,TSS_IF) annotation(Line(points = {{12,-40},{17,-40},{35,-40},{40,-40}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-30,-100},{30,100}}, visible = true),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100,-30},{100,30}}, visible = true, origin = {60,-0}, rotation = 90)}),
				experiment(
					StopTime=1,
					StartTime=0));
		end Schnittstelle;
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
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zp(G=Gz / 2) annotation(Placement(transformation(
				origin={-29,-35},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G=Gx / 2) annotation(Placement(transformation(
				origin={30,0},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G=Gx / 2) annotation(Placement(transformation(
				origin={-30,0},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zn(G=Gz / 2) annotation(Placement(transformation(
				origin={31,35},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Modelica.SIunits.Length x "Laenge des Materials in x Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length y "Laenge des Materials in y Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length z "Laenge des Materials in z Richtung der Waermeausbreitung";
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp(G=Gy / 2) annotation(Placement(transformation(
				origin={0,48.2665},
				extent={{-10,10},{10,-10}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn(G=Gy / 2) annotation(Placement(transformation(
				origin={0,-50},
				extent={{-10,10},{10,-10}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zp annotation(Placement(
				transformation(
					origin={-90.14700000000001,-89.96210000000001},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={-90.14700000000001,-89.96210000000001},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zn annotation(Placement(
				transformation(
					origin={90.14700000000001,89.96210000000001},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={90.14700000000001,89.96210000000001},
					extent={{-10,-10},{10,10}})));
			protected
				parameter Modelica.SIunits.ThermalConductance Gx=y * z * material.k / x "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gy=x * z * material.k / y "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gz=y * y * material.k / z "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.HeatCapacity C=x * y * z * material.d * material.c "Heat capacity of element (= cp*m)";
			equation
				connect(thermalConductor_zn.port_b,EB_zn) annotation(Line(points = {{41,35},{46,35},{51,35},{51,89.96210000000001},{90.14700000000001,89.96210000000001}}));
				connect(thermalConductor_zp.port_a,EB_zp) annotation(Line(points = {{-39,-35},{-44,-35},{-49,-35},{-49,-89.96210000000001},{-90.14700000000001,-89.96210000000001}}));
				connect(thermalConductor_yp.port_a,EB_yp) annotation(Line(points = {{0,58},{0,63},{5,63},{5,80},{0,80}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,thermalConductor_yn.port_a) annotation(Line(points = {{0,0},{0,-5},{0,-35},{0,-40}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,thermalConductor_yp.port_b) annotation(Line(points = {{0,0},{0,-5},{-10,-5},{-10,33},{0,33},{0,38}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,thermalConductor_xn.port_b) annotation(Line(points = {{0,0},{0,-5},{-7,-5},{-7,0},{-15,0},{-20,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,thermalConductor_xp.port_a) annotation(Line(points = {{0,0},{0,-5},{8,-5},{8,0},{15,0},{20,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,thermalConductor_zp.port_b) annotation(Line(points = {{0,0},{0,-5},{0,-35},{-14,-35},{-19,-35}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,thermalConductor_zn.port_a) annotation(Line(points = {{0,0},{0,-5},{8,-5},{8,35},{16,35},{21,35}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatCapacitor1.port,dissipationPower) annotation(Line(points = {{0,0},{0,-5},{-17,-5},{-17,35},{-34,35},{-39,35}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductor_xp.port_b,EB_xp) annotation(Line(points = {{40,0},{45,0},{55,0},{60,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductor_xn.port_a,EB_xn) annotation(Line(points = {{-40,0},{-45,0},{-55,0},{-60,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductor_yn.port_b,EB_yn) annotation(Line(points = {{0,-60},{0,-65},{-5,-65},{-5,-80},{0,-80}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				Icon(graphics={Rectangle(pattern = LinePattern.Dot, lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.Sphere, extent = {{-99.83629999999999,-100.111},{100.164,99.8886}}),Text(textString = "xp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{67.7961,-9.3325},{89.8959,7.7865}}),Text(textString = "xn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-89.1229,-9.3325},{-67.0231,7.7865}}),Text(textString = "yp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-11.0499,71.446},{11.0499,88.565}}),Text(textString = "yn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-11.4955,-90.0356},{10.6043,-72.9166}}),Text(textString = "zn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{58.2761,65.9935},{80.3759,83.1125}}),Text(textString = "zp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-83.90860000000001,-81.0027},{-61.8088,-63.8837}}),Text(textString = "electrical power", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-44.773,20.8807},{55.227,45.6943}})}),
				experiment(
					StopTime=1,
					StartTime=0));
		end thermalModel_ElectronicBox;
		model intra_BuildingBlock_connector "intra_BuildingBlock_connector"
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConnector_contact(G=G_c) annotation(Placement(transformation(
				origin={2,-2},
				extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr=Gr) annotation(Placement(transformation(
				origin={0,30},
				extent={{-10,-10},{10,10}})));
			parameter Real Gr(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)" annotation(Placement(transformation(
				origin={-11.8294,-26.4099},
				extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
				transformation(
					origin={-60,0},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={-100,-0},
					extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
				transformation(
					origin={60,-0},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={100,0},
					extent={{-12,-12},{12,12}})));
			parameter Modelica.SIunits.Area A_cross_Panel=0.004 "Querschnittsflaeche des Aussenpanels" annotation(Placement(transformation(
				origin={5.22696,-68.50069999999999},
				extent={{-12,-12},{12,12}})));
			parameter Real h_c(unit="W/(mÂ²Â·K)")=3000 "Heat transfer coefficient between surfaces in contact";
			protected
				parameter Modelica.SIunits.ThermalConductance G_c=A_cross_Panel * h_c "Constant thermal conductance of the contact surfaces" annotation(Placement(transformation(
					origin={42.0908,-32.1871},
					extent={{-12,-12},{12,12}})));
			equation
				connect(thermalConnector_contact.port_a,port_a) annotation(Line(points = {{-10,-2},{-15,-2},{-55,-2},{-55,0},{-60,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(bodyradiation1.port_a,port_a) annotation(Line(points = {{-10,30},{-15,30},{-55,30},{-55,0},{-60,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(bodyradiation1.port_b,port_b) annotation(Line(points = {{10,30},{15,30},{55,30},{55,0},{60,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConnector_contact.port_b,port_b) annotation(Line(points = {{14,-2},{19,-2},{55,-2},{55,0},{60,0}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(pattern = LinePattern.Dash, lineColor = {255,0,0}, fillColor = {255,255,255}, extent = {{-94.63549999999999,-39.1837},{96.011,40.8163}}, visible = true, origin = {0,-0.8163}),Text(textString = "T", fontSize = 24, fillColor = {0,0,255}, extent = {{-3.0261,-1.9257},{0,8.2531}}, visible = true),Text(textString = "%name", fillPattern = FillPattern.Solid, extent = {{-101.2507,52.8171},{98.74930000000001,112.817}}, visible = true, origin = {82.81699999999999,1.2507}, rotation = 90)}),
				experiment(
					StopTime=1,
					StartTime=0));
		end intra_BuildingBlock_connector;
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
			parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			equation
				connect(BuildingBlock_Panel.port_b_xp,schnittstelle1.port_a) annotation(Line(points = {{-10,0},{-5,0},{12,0},{17,0}}, color = {191,0,0}, thickness = 0.0625));
				connect(schnittstelle1.ESS_IF,thermal_connector1.ESS) annotation(Line(points = {{30,5},{35,5},{45,5},{45,-1},{50,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(schnittstelle1.TSS_IF,thermal_connector1.TSS) annotation(Line(points = {{30,-5},{35,-5},{45,-5},{45,-1},{50,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(schnittstelle1.MSS_IF,thermal_connector1.MSS) annotation(Line(points = {{30,0},{35,0},{45,0},{45,-1},{50,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(BuildingBlock_Panel.port_b_xp,thermal_connector1.Rad) annotation(Line(points = {{-10,0},{-5,0},{45,0},{45,-1},{50,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(BuildingBlock_Panel.port_b_yp,port_yp) annotation(Line(points = {{-20,9},{-20,14},{-20,34},{-25,34}}, color = {191,0,0}, thickness = 0.0625));
				connect(BuildingBlock_Panel.port_a_zn,port_zn) annotation(Line(points = {{-15,7},{-15,12},{-15,34},{10,34},{15,34}}, color = {191,0,0}, thickness = 0.0625));
				connect(BuildingBlock_Panel.port_a_xn,port_xn) annotation(Line(points = {{-30,0},{-35,0},{-50,0},{-50,-1},{-55,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(BuildingBlock_Panel.port_b_zp,port_zp) annotation(Line(points = {{-25,-5},{-30,-5},{-50,-5},{-50,-36},{-55,-36}}, color = {191,0,0}, thickness = 0.0625));
				connect(BuildingBlock_Panel.port_a_yn,port_yn) annotation(Line(points = {{-20,-6},{-20,-11},{-15,-11},{-15,-36},{-20,-36}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-10,-100},{10,100}}, visible = true, origin = {-10,0}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10,-50},{10,50}}, visible = true, origin = {10,0}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100,-20},{100,20}}, visible = true, rotation = 90)}),
				Diagram(coordinateSystem(
					extent={{-105,-74},{105,74}},
					grid={5,5})),
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_Panel_with_Interface;
		model thermal_Panel_with_Interface_with_optical_properties "Seitenpanel mit Schnittstelle mit alpha - epsilon"
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
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
			panel_surface panel_surface1 annotation(Placement(transformation(
				extent={{20,20},{40,40}},
				rotation=-90)));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Aluminiumlegierungen_1060_Legierung() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			Modelica.Blocks.Sources.Constant alphaRad(k=alpha_Rad) annotation(Placement(transformation(extent={{-115,-91},{-95,-71}})));
			Modelica.Blocks.Sources.Constant A_Rad(k=y_Panel*z_Panel-(y_TSS*z_TSS+y_MSS*z_MSS+y_ESS*z_ESS)) annotation(Placement(transformation(extent={{105,34},{125,54}})));
			Modelica.Blocks.Sources.Constant A_TSS(k=y_TSS*z_TSS) annotation(Placement(transformation(extent={{105,4},{125,24}})));
			Modelica.Blocks.Sources.Constant A_MSS(k=y_MSS*z_MSS) annotation(Placement(transformation(extent={{105,-26},{125,-6}})));
			Modelica.Blocks.Sources.Constant A_ESS(k=y_ESS*z_ESS) annotation(Placement(transformation(extent={{105,-56},{125,-36}})));
			Modelica.Blocks.Sources.Constant epsilonRad(k=epsilon_Rad) annotation(Placement(transformation(extent={{-115,-126},{-95,-106}})));
			Modelica.Blocks.Sources.Constant alphaTSS(k=alpha_TSS) annotation(Placement(transformation(extent={{-85,-91},{-65,-71}})));
			Modelica.Blocks.Sources.Constant alphaMSS(k=alpha_MSS) annotation(Placement(transformation(extent={{-55,-91},{-35,-71}})));
			Modelica.Blocks.Sources.Constant alphaESS(k=alpha_ESS) annotation(Placement(transformation(extent={{-25,-91},{-5,-71}})));
			Modelica.Blocks.Sources.Constant epsilonTSS(k=epsilon_TSS) annotation(Placement(transformation(extent={{-85,-126},{-65,-106}})));
			Modelica.Blocks.Sources.Constant epsilonMSS(k=epsilon_MSS) annotation(Placement(transformation(extent={{-55,-126},{-35,-106}})));
			Modelica.Blocks.Sources.Constant epsilonESS(k=epsilon_ESS) annotation(Placement(transformation(extent={{-25,-126},{-5,-106}})));
			equation
				connect(BuildingBlock_Panel.port_b_xp,schnittstelle1.port_a) annotation(Line(
					points={{-10,0},{-5,0},{12.3,0},{17.3,0}},
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
					points={{-15,6.7},{-15,11.7},{-15,34},{10,34},{15,34}},
					color={191,0,0},
					thickness=0.0625));
				connect(BuildingBlock_Panel.port_a_xn,port_xn) annotation(Line(
					points={{-30.3,0},{-35.3,0},{-50,0},{-50,-1},{-55,-1}},
					color={191,0,0},
					thickness=0.0625));
				connect(BuildingBlock_Panel.port_b_zp,port_zp) annotation(Line(
					points={{-25,-4.7},{-30,-4.7},{-50,-4.7},{-50,-36},{-55,-36}},
					color={191,0,0},
					thickness=0.0625));
				connect(BuildingBlock_Panel.port_a_yn,port_yn) annotation(Line(
					points={{-20,-6},{-20,-11},{-15,-11},{-15,-36},{-20,-36}},
					color={191,0,0},
					thickness=0.0625));
				connect(A_Rad.y,panel_surface1.A_Rad) annotation(Line(
					points={{126,44},{131,44},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_TSS.y,panel_surface1.A_TSS) annotation(Line(
					points={{126,14},{131,14},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_MSS.y,panel_surface1.A_MSS) annotation(Line(
					points={{126,-16},{131,-16},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_ESS.y,panel_surface1.A_ESS) annotation(Line(
					points={{126,-46},{131,-46},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaESS.y,panel_surface1.alpha_ESS) annotation(Line(
					points={{-4,-81},{1,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaMSS.y,panel_surface1.alpha_MSS) annotation(Line(
					points={{-34,-81},{-29,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaTSS.y,panel_surface1.alpha_TSS) annotation(Line(
					points={{-64,-81},{-59,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaRad.y,panel_surface1.alpha_Rad) annotation(Line(
					points={{-94,-81},{-89,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonESS.y,panel_surface1.epsilon_ESS) annotation(Line(
					points={{-4,-116},{1,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonMSS.y,panel_surface1.epsilon_MSS) annotation(Line(
					points={{-34,-116},{-29,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonTSS.y,panel_surface1.epsilon_TSS) annotation(Line(
					points={{-64,-116},{-59,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonRad.y,panel_surface1.epsilon_Rad) annotation(Line(
					points={{-94,-116},{-89,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
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
		end thermal_Panel_with_Interface_with_optical_properties;
		model thermal_Panel_with_Interface_with_optical_properties_var_rad "Seitenpanel mit Schnittstelle mit alpha - epsilon"
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
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
			panel_surface panel_surface1 annotation(Placement(transformation(
				extent={{20,20},{40,40}},
				rotation=-90)));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Aluminiumlegierungen_1060_Legierung() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			Modelica.Blocks.Sources.Constant A_Rad(k=y_Panel*z_Panel-(y_TSS*z_TSS+y_MSS*z_MSS+y_ESS*z_ESS)) annotation(Placement(transformation(extent={{105,34},{125,54}})));
			Modelica.Blocks.Sources.Constant A_TSS(k=y_TSS*z_TSS) annotation(Placement(transformation(extent={{105,4},{125,24}})));
			Modelica.Blocks.Sources.Constant A_MSS(k=y_MSS*z_MSS) annotation(Placement(transformation(extent={{105,-26},{125,-6}})));
			Modelica.Blocks.Sources.Constant A_ESS(k=y_ESS*z_ESS) annotation(Placement(transformation(extent={{105,-56},{125,-36}})));
			Modelica.Blocks.Sources.Constant alphaTSS(k=alpha_TSS) annotation(Placement(transformation(extent={{-85,-91},{-65,-71}})));
			Modelica.Blocks.Sources.Constant alphaMSS(k=alpha_MSS) annotation(Placement(transformation(extent={{-55,-91},{-35,-71}})));
			Modelica.Blocks.Sources.Constant alphaESS(k=alpha_ESS) annotation(Placement(transformation(extent={{-25,-91},{-5,-71}})));
			Modelica.Blocks.Sources.Constant epsilonTSS(k=epsilon_TSS) annotation(Placement(transformation(extent={{-85,-126},{-65,-106}})));
			Modelica.Blocks.Sources.Constant epsilonMSS(k=epsilon_MSS) annotation(Placement(transformation(extent={{-55,-126},{-35,-106}})));
			Modelica.Blocks.Sources.Constant epsilonESS(k=epsilon_ESS) annotation(Placement(transformation(extent={{-25,-126},{-5,-106}})));
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor1 annotation(Placement(transformation(extent={{5,59},{25,79}})));
			Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds1(
				tableOnFile=true,
				table=[250,0.5,0.9;290,0.7,0.7],
				tableName="thermochromLaCaMnO3",
				fileName="/home/jens/iBOSS2/Simulation_Linux/ibosssim/model/iboss/thermochrom_alpha_epsilon.txt",
				smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(transformation(extent={{50,59},{70,79}})));
			equation
				connect(BuildingBlock_Panel.port_b_xp,schnittstelle1.port_a) annotation(Line(
					points={{-10,0},{-5,0},{12.3,0},{17.3,0}},
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
					points={{-15,6.7},{-15,11.7},{-15,34},{10,34},{15,34}},
					color={191,0,0},
					thickness=0.0625));
				connect(BuildingBlock_Panel.port_a_xn,port_xn) annotation(Line(
					points={{-30.3,0},{-35.3,0},{-50,0},{-50,-1},{-55,-1}},
					color={191,0,0},
					thickness=0.0625));
				connect(BuildingBlock_Panel.port_b_zp,port_zp) annotation(Line(
					points={{-25,-4.7},{-30,-4.7},{-50,-4.7},{-50,-36},{-55,-36}},
					color={191,0,0},
					thickness=0.0625));
				connect(BuildingBlock_Panel.port_a_yn,port_yn) annotation(Line(
					points={{-20,-6},{-20,-11},{-15,-11},{-15,-36},{-20,-36}},
					color={191,0,0},
					thickness=0.0625));
				connect(A_Rad.y,panel_surface1.A_Rad) annotation(Line(
					points={{126,44},{131,44},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_TSS.y,panel_surface1.A_TSS) annotation(Line(
					points={{126,14},{131,14},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_MSS.y,panel_surface1.A_MSS) annotation(Line(
					points={{126,-16},{131,-16},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_ESS.y,panel_surface1.A_ESS) annotation(Line(
					points={{126,-46},{131,-46},{131,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaESS.y,panel_surface1.alpha_ESS) annotation(Line(
					points={{-4,-81},{1,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaMSS.y,panel_surface1.alpha_MSS) annotation(Line(
					points={{-34,-81},{-29,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(alphaTSS.y,panel_surface1.alpha_TSS) annotation(Line(
					points={{-64,-81},{-59,-81},{25,-81},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonESS.y,panel_surface1.epsilon_ESS) annotation(Line(
					points={{-4,-116},{1,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonMSS.y,panel_surface1.epsilon_MSS) annotation(Line(
					points={{-34,-116},{-29,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilonTSS.y,panel_surface1.epsilon_TSS) annotation(Line(
					points={{-64,-116},{-59,-116},{25,-116},{25,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(temperatureSensor1.port,BuildingBlock_Panel.port_b_xp) annotation(Line(
					points={{5,69},{0,69},{-5,69},{-5,0},{-10,0}},
					color={191,0,0},
					thickness=0.0625));
				connect(temperatureSensor1.T,combiTable1Ds1.u) annotation(Line(
					points={{25,69},{30,69},{43,69},{48,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(combiTable1Ds1.y[1],panel_surface1.epsilon_Rad) annotation(Line(
					points={{71,69},{76,69},{76,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(combiTable1Ds1.y[2],panel_surface1.alpha_Rad) annotation(Line(
					points={{71,69},{76,69},{76,-30},{35,-30},{30,-30}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				combiTable1Ds1(y(flags=2)),
				Icon(
					coordinateSystem(grid={10,10}),
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
		end thermal_Panel_with_Interface_with_optical_properties_var_rad;
		model BB_cooler "BB_cooler.mo"
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a cooler "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(
				transformation(extent={{80,-90},{100,-70}}),
				iconTransformation(extent={{90,-10},{110,10}})));
			parameter Modelica.SIunits.ActivePower cooling_power=-100 "cooling Power of the heater";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "hottest allowed temperatur in the Box";
			parameter Real bandwidth_cooler=5 "Bandwidth of the controller / K";
			Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth=bandwidth_cooler) annotation(Placement(transformation(extent={{-50,-65},{-30,-45}})));
			Modelica.Blocks.Sources.Constant upper_Temp(k=upper_Temp_boundary) annotation(Placement(transformation(extent={{-105,-75},{-85,-55}})));
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
				origin={-70,-85},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Gain gain1(k=cooling_power) annotation(Placement(transformation(extent={{20,-65},{40,-45}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent={{50,-65},{70,-45}})));
			Modelica.Blocks.Math.BooleanToReal booleanToReal1 annotation(Placement(transformation(extent={{-15,-65},{5,-45}})));
			equation
				connect(gain1.y,heater_power.Q_flow) annotation(Line(points = {{41,-55},{46,-55},{45,-55},{50,-55}}, color = {0,0,127}, thickness = 0.0625));
				connect(upper_Temp.y,onOffController1.u) annotation(Line(points = {{-84,-65},{-79,-65},{-57,-65},{-57,-61},{-52,-61}}, color = {0,0,127}, thickness = 0.0625));
				connect(heater_power.port,cooler) annotation(Line(points = {{70,-55},{75,-55},{85,-55},{85,-80},{90,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(temperature_EB.port,cooler) annotation(Line(points = {{-60,-85},{-55,-85},{85,-85},{85,-80},{90,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(temperature_EB.T,onOffController1.reference) annotation(Line(points = {{-80,-85},{-115,-85},{-115,-49},{-57,-49},{-52,-49}}, color = {0,0,127}, thickness = 0.0625), AutoRoute = false);
				connect(booleanToReal1.u,onOffController1.y) annotation(Line(points = {{-17,-55},{-22,-55},{-24,-55},{-29,-55}}, color = {255,0,255}, thickness = 0.0625));
				connect(booleanToReal1.y,gain1.u) annotation(Line(points = {{6,-55},{11,-55},{13,-55},{18,-55}}, color = {0,0,127}, thickness = 0.0625));
			annotation(
				upper_Temp(y(flags=2)),
				temperature_EB(
					T(flags=2),
					port(T(flags=2))),
				gain1(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				Icon(graphics={Ellipse(lineColor = {0,0,0}, fillColor = {0,0,255}, fillPattern = FillPattern.CrossDiag, extent = {{100,-100},{-100,100}}),Text(textString = "cooler", textStyle = {TextStyle.Bold}, lineColor = {255,255,255}, fillColor = {255,0,0}, extent = {{-99,37},{100,-35}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=100,
					StartTime=0,
					Interval=0.001));
		end BB_cooler;
		model BB_heater "BB_heater.mo"
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a Heater "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(
				transformation(extent={{45,-90},{65,-70}}),
				iconTransformation(extent={{90,-10},{110,10}})));
			parameter Modelica.SIunits.ActivePower heating_power=100 "heating Power of the heater";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			parameter Real bandwidth_heater=5 "Bandwidth of the controller / K";
			Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth=bandwidth_heater) annotation(Placement(transformation(extent={{-85,-65},{-65,-45}})));
			Modelica.Blocks.Sources.Constant lower_Temp(k=lower_Temp_boundary) annotation(Placement(transformation(extent={{-115,-50},{-95,-30}})));
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
				origin={-105,-85},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Gain gain1(k=heating_power) annotation(Placement(transformation(extent={{-15,-65},{5,-45}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent={{15,-65},{35,-45}})));
			Modelica.Blocks.Math.BooleanToReal booleanToReal1 annotation(Placement(transformation(extent={{-50,-65},{-30,-45}})));
			equation
				connect(temperature_EB.T,onOffController1.u) annotation(Line(points = {{-115,-85},{-120,-85},{-120,-61},{-92,-61},{-87,-61}}, color = {0,0,127}, thickness = 0.0625));
				connect(gain1.y,heater_power.Q_flow) annotation(Line(points = {{6,-55},{11,-55},{10,-55},{15,-55}}, color = {0,0,127}, thickness = 0.0625));
				connect(lower_Temp.y,onOffController1.reference) annotation(Line(points = {{-94,-40},{-89,-40},{-89,-44},{-92,-44},{-92,-49},{-87,-49}}, color = {0,0,127}, thickness = 0.0625));
				connect(temperature_EB.port,Heater) annotation(Line(points = {{-95,-85},{-90,-85},{50,-85},{50,-80},{55,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(heater_power.port,Heater) annotation(Line(points = {{35,-55},{40,-55},{50,-55},{50,-80},{55,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(booleanToReal1.u,onOffController1.y) annotation(Line(points = {{-52,-55},{-57,-55},{-59,-55},{-64,-55}}, color = {255,0,255}, thickness = 0.0625));
				connect(booleanToReal1.y,gain1.u) annotation(Line(points = {{-29,-55},{-24,-55},{-22,-55},{-17,-55}}, color = {0,0,127}, thickness = 0.0625));
			annotation(
				lower_Temp(y(flags=2)),
				temperature_EB(
					T(flags=2),
					port(T(flags=2))),
				gain1(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				Icon(graphics={Ellipse(lineColor = {255,255,255}, fillColor = {255,0,0}, fillPattern = FillPattern.CrossDiag, extent = {{100,-100},{-100,100}}),Text(textString = "heater", textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, fillColor = {255,0,0}, extent = {{-99,37},{100,-35}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=100,
					StartTime=0,
					Interval=0.001));
		end BB_heater;
		model TCS "TCS.mo"
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a Temp "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(
				transformation(extent={{-35,20},{-15,40}}),
				iconTransformation(
					origin={-100,0},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			input Modelica.Blocks.Interfaces.RealInput Tmax "'input Real' as connector" annotation(Placement(
				transformation(extent={{30,-5},{70,35}}),
				iconTransformation(
					origin={50,100},
					extent={{-20,-20},{20,20}},
					rotation=270)));
			input Modelica.Blocks.Interfaces.RealInput Tmin "'input Real' as connector" annotation(Placement(
				transformation(extent={{30,30},{70,70}}),
				iconTransformation(
					origin={-50,100},
					extent={{-20,-20},{20,20}},
					rotation=270)));
			output Modelica.Blocks.Interfaces.BooleanOutput heater_on "'output Boolean' as connector" annotation(Placement(
				transformation(extent={{165,55},{185,75}}),
				iconTransformation(
					origin={-50,-100},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			output Modelica.Blocks.Interfaces.BooleanOutput cooler_on "'output Boolean' as connector" annotation(Placement(
				transformation(extent={{165,-10},{185,10}}),
				iconTransformation(
					origin={50,-100},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			parameter Real hysteresis_cooler=5 "Bandwidth of the bang-bang controller (cool) / K";
			parameter Real hysteresis_heater=5 "Bandwidth of the bang-bang controller (heat) / K";
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
				origin={15,30},
				extent={{-10,-10},{10,10}})));
			Modelica.Blocks.Logical.OnOffController onOffController_heat(bandwidth=hysteresis_heater) annotation(Placement(transformation(extent={{120,55},{140,75}})));
			Modelica.Blocks.Logical.OnOffController onOffController_cool(bandwidth=hysteresis_cooler) annotation(Placement(transformation(extent={{120,-10},{140,10}})));
			Modelica.Blocks.Sources.Constant comp_hys_cool(k=-(hysteresis_heater/2)) annotation(Placement(transformation(extent={{50,-25},{70,-5}})));
			Modelica.Blocks.Sources.Constant comp_hys_heat(k=(hysteresis_heater/2)) annotation(Placement(transformation(extent={{50,70},{70,90}})));
			Modelica.Blocks.Math.Add add1 annotation(Placement(transformation(extent={{85,60},{105,80}})));
			Modelica.Blocks.Math.Add add2 annotation(Placement(transformation(extent={{85,-15},{105,5}})));
			equation
				connect(Temp,temperature_EB.port) annotation(Line(
					points={{-25,30},{-20,30},{0,30},{5,30}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				connect(onOffController_heat.y,heater_on) annotation(Line(
					points={{141,65},{146,65},{170,65},{175,65}},
					color={0,0,127},
					thickness=0.0625));
				connect(onOffController_cool.y,cooler_on) annotation(Line(
					points={{141,0},{146,0},{170,0},{175,0}},
					color={0,0,127},
					thickness=0.0625));
				connect(comp_hys_heat.y,add1.u1) annotation(Line(
					points={{71,80},{76,80},{78,80},{78,76},{83,76}},
					color={0,0,127},
					thickness=0.0625));
				connect(add1.u2,Tmin) annotation(Line(
					points={{83,64},{78,64},{55,64},{55,50},{50,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(add2.u1,Tmax) annotation(Line(
					points={{83,1},{78,1},{55,1},{55,15},{50,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(comp_hys_cool.y,add2.u2) annotation(Line(
					points={{71,-15},{76,-15},{78,-15},{78,-11},{83,-11}},
					color={0,0,127},
					thickness=0.0625));
				connect(temperature_EB.T,onOffController_cool.reference) annotation(Line(
					points={{25,30},{30,30},{113,30},{113,6},{118,6}},
					color={0,0,127},
					thickness=0.0625));
				connect(add2.y,onOffController_cool.u) annotation(Line(
					points={{106,-5},{111,-5},{113,-5},{113,-6},{118,-6}},
					color={0,0,127},
					thickness=0.0625));
				connect(add1.y,onOffController_heat.reference) annotation(Line(
					points={{106,70},{111,70},{113,70},{113,71},{118,71}},
					color={0,0,127},
					thickness=0.0625));
				connect(temperature_EB.T,onOffController_heat.u) annotation(Line(
					points={{25,30},{30,30},{113,30},{113,59},{118,59}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(graphics={
																																																																																																																																																																																																																																																																		Rectangle(
																																																																																																																																																																																																																																																																radius=4,
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																fillColor={255,0,0},
																																																																																																																																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																extent={{-100,100},{100,-100}}),
																																																																																																																																																																																																																																																															Text(
																																																																																																																																																																																																																																																																textString="TCS",
																																																																																																																																																																																																																																																																textStyle={TextStyle.Bold},
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																extent={{-40,10},{-43,10}}),
																																																																																																																																																																																																																																																															Text(
																																																																																																																																																																																																																																																																textString="TCS",
																																																																																																																																																																																																																																																																fontSize=16,
																																																																																																																																																																																																																																																																textStyle={TextStyle.Bold},
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																extent={{-99,99},{101,-98}}),
																																																																																																																																																																																																																																																															Text(
																																																																																																																																																																																																																																																																textString="Tmin",
																																																																																																																																																																																																																																																																fontSize=8,
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																extent={{-108,86},{-3,51}}),
																																																																																																																																																																																																																																																															Text(
																																																																																																																																																																																																																																																																textString="Tmax",
																																																																																																																																																																																																																																																																fontSize=8,
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																extent={{-4,84},{107,52}}),
																																																																																																																																																																																																																																																															Text(
																																																																																																																																																																																																																																																																textString="heat",
																																																																																																																																																																																																																																																																fontSize=8,
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																extent={{-95,-61},{-4,-87}}),
																																																																																																																																																																																																																																																															Text(
																																																																																																																																																																																																																																																																textString="cool",
																																																																																																																																																																																																																																																																fontSize=8,
																																																																																																																																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																																																																																																																																extent={{8,-62},{94,-86}})}),
				experiment(
					StopTime=1,
					StartTime=0));
		end TCS;
		model heater_cooler_EPS "heater_cooler_EPS.mo"
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Power_heating_cooling "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)" annotation(Placement(
				transformation(extent={{75,-30},{95,-10}}),
				iconTransformation(extent={{-10,90},{10,110}})));
			input Modelica.Blocks.Interfaces.BooleanInput heater_on "'input Boolean' as connector" annotation(Placement(
				transformation(extent={{-125,-20},{-85,20}}),
				iconTransformation(extent={{-120,30},{-80,70}})));
			input Modelica.Blocks.Interfaces.BooleanInput cooler_on "'input Boolean' as connector" annotation(Placement(
				transformation(extent={{-125,-60},{-85,-20}}),
				iconTransformation(extent={{-120,-70},{-80,-30}})));
			output Modelica.Blocks.Interfaces.RealOutput Tmin "'output Real' as connector" annotation(Placement(
				transformation(extent={{-105,25},{-85,45}}),
				iconTransformation(extent={{90,40},{110,60}})));
			output Modelica.Blocks.Interfaces.RealOutput Tmax "'output Real' as connector" annotation(Placement(
				transformation(extent={{-105,-85},{-85,-65}}),
				iconTransformation(extent={{90,-60},{110,-40}})));
			parameter Modelica.SIunits.ActivePower power_cooler=-100 "cooling Power of the heater";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "hottest allowed temperatur in the Box";
			parameter Modelica.SIunits.ActivePower power_heater=100 "heating Power of the heater";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			Modelica.Blocks.Math.Gain heating_power(k=power_heater) annotation(Placement(transformation(extent={{-5,-10},{15,10}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent={{25,-10},{45,10}})));
			Modelica.Blocks.Math.Gain cooling_power(k=power_cooler) annotation(Placement(transformation(extent={{-5,-50},{15,-30}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow cooler_power annotation(Placement(transformation(extent={{25,-50},{45,-30}})));
			Modelica.Blocks.Sources.Constant lower_Temp(k=lower_Temp_boundary) annotation(Placement(transformation(
				origin={-30,35},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Sources.Constant upper_Temp(k=upper_Temp_boundary) annotation(Placement(transformation(
				origin={-30,-75},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.BooleanToReal booleanToReal_heat annotation(Placement(transformation(extent={{-60,-10},{-40,10}})));
			Modelica.Blocks.Math.BooleanToReal booleanToReal_cool annotation(Placement(transformation(extent={{-60,-50},{-40,-30}})));
			equation
				connect(heating_power.y,heater_power.Q_flow) annotation(Line(
					points={{16,0},{21,0},{20,0},{25,0}},
					color={0,0,127},
					thickness=0.0625));
				connect(heater_power.port,Power_heating_cooling) annotation(Line(
					points={{45,0},{50,0},{80,0},{80,-20},{85,-20}},
					color={191,0,0},
					thickness=0.0625));
				connect(lower_Temp.y,Tmin) annotation(Line(
					points={{-41,35},{-46,35},{-90,35},{-95,35}},
					color={0,0,127},
					thickness=0.0625));
				connect(upper_Temp.y,Tmax) annotation(Line(
					points={{-41,-75},{-46,-75},{-90,-75},{-95,-75}},
					color={0,0,127},
					thickness=0.0625));
				connect(cooler_power.port,Power_heating_cooling) annotation(Line(
					points={{45,-40},{50,-40},{80,-40},{80,-20},{85,-20}},
					color={191,0,0},
					thickness=0.0625));
				connect(cooling_power.y,cooler_power.Q_flow) annotation(Line(
					points={{16,-40},{21,-40},{20,-40},{25,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(booleanToReal_cool.y,cooling_power.u) annotation(Line(
					points={{-39,-40},{-34,-40},{-12,-40},{-7,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(booleanToReal_cool.u,cooler_on) annotation(Line(
					points={{-62,-40},{-67,-40},{-100,-40},{-105,-40}},
					color={255,0,255},
					thickness=0.0625));
				connect(booleanToReal_heat.y,heating_power.u) annotation(Line(
					points={{-39,0},{-34,0},{-12,0},{-7,0}},
					color={0,0,127},
					thickness=0.0625));
				connect(booleanToReal_heat.u,heater_on) annotation(Line(
					points={{-62,0},{-67,0},{-100,0},{-105,0}},
					color={255,0,255},
					thickness=0.0625));
			annotation(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)),
				Icon(graphics={
																																																																																																																																																																																																																																																																						Rectangle(
																																																																																																																																																																																																																																																																				lineColor={255,255,255},
																																																																																																																																																																																																																																																																				fillColor={255,0,0},
																																																																																																																																																																																																																																																																				fillPattern=FillPattern.CrossDiag,
																																																																																																																																																																																																																																																																				extent={{-100,100},{100,0}}),
																																																																																																																																																																																																																																																																			Rectangle(
																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																				fillColor={0,0,255},
																																																																																																																																																																																																																																																																				fillPattern=FillPattern.CrossDiag,
																																																																																																																																																																																																																																																																				extent={{-100,1},{100,-99}}),
																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																				textString="heater",
																																																																																																																																																																																																																																																																				fontSize=12,
																																																																																																																																																																																																																																																																				textStyle={TextStyle.Bold},
																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																				extent={{-97,54},{100,0}}),
																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																				textString="cooler",
																																																																																																																																																																																																																																																																				fontSize=12,
																																																																																																																																																																																																																																																																				textStyle={TextStyle.Bold},
																																																																																																																																																																																																																																																																				lineColor={255,255,255},
																																																																																																																																																																																																																																																																				extent={{-98,-2},{100,-57}}),
																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																				textString="heat",
																																																																																																																																																																																																																																																																				fontSize=8,
																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																				extent={{-100,96},{-13,66}}),
																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																				textString="cool",
																																																																																																																																																																																																																																																																				fontSize=8,
																																																																																																																																																																																																																																																																				lineColor={255,255,255},
																																																																																																																																																																																																																																																																				extent={{-102,-70},{-15,-100}}),
																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																				textString="Tmin",
																																																																																																																																																																																																																																																																				fontSize=8,
																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																				extent={{0,97},{99,64}}),
																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																				textString="Tmax",
																																																																																																																																																																																																																																																																				fontSize=8,
																																																																																																																																																																																																																																																																				lineColor={255,255,255},
																																																																																																																																																																																																																																																																				extent={{-9,-69},{99,-102}})}),
				Documentation(info="<HTML>
		<P>
		A constant voltage of 10 V is applied to a
		temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
		whose losses v**2/r are dissipated via a
		thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
		The resistor is assumed to have a thermal capacity of 1 J/K,
		having ambient temparature at the beginning of the experiment.
		The temperature of this heating resistor is held by an OnOff-controller
		at reference temperature within a given bandwith +/- 1 K
		by switching on and off the voltage source.
		The reference temperature starts at 25 degree C
		and rises between t = 2 and 8 seconds linear to 50 degree C.
		An approppriate simulating time would be 10 seconds.
		</P>
		</HTML>
		"),
				experiment(
					StopTime=1,
					StartTime=0,
					Interval=0.001));
		end heater_cooler_EPS;
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
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_TIM_TSS(G=h_TSS * A_TSS) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,10},
				extent={{-6.1349,-6.1349},{6.1349,6.1349}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_MSS(G=h_MSS * A_MSS) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,-10},
				extent={{-6.0931,-6.0931},{6.0931,6.0931}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_ESS(G=h_ESS * A_ESS) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={0,-30},
				extent={{-6.1934,-6.1934},{6.1934,6.1934}})));
			parameter Real h_TSS(unit="W/(m³·K)")=300 "Heat transfer coefficient TSS - TSS";
			parameter Real h_MSS(unit="W/(m³·K)")=190 "Heat transfer coefficient MSS - MSS";
			parameter Real h_ESS(unit="W/(m³·K)")=240 "Heat transfer coefficient ESS - ESS";
			parameter Modelica.SIunits.Emissivity eps_Rad=0.5 "Emmisivity of the radiator";
			parameter Real ViewFactor_Rad=0.2 "Viewfactor of Radiator";
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation Radiator(Gr=ViewFactor_Rad * A_Rad * 1 / (2 / eps_Rad - 1)) "Lumped thermal element for radiation heat transfer" annotation(Placement(transformation(
				origin={0,30},
				extent={{-6.25,-6.25},{6.25,6.25}})));
			parameter Modelica.SIunits.Area A_ESS(unit="m2")=0.0002 "Querschnittsflaeche der ESS";
			parameter Modelica.SIunits.Area A_TSS(unit="m2")=0.05 "Querschnittsflaeche der TSS";
			parameter Modelica.SIunits.Area A_MSS(unit="m2")=0.005 "Querschnittsflaeche der MSS";
			parameter Modelica.SIunits.Area A_Rad(unit="m2")=0.1048 "Querschnittsflaeche des Panels";
			equation
				connect(Radiator.port_b,thermal_connector1.Rad) annotation(Line(points = {{6.3,30},{11.3,30},{35,30},{35,0},{40,0}}, color = {191,0,0}, visible = true, origin = {19.5679,5.309}));
				connect(thermal_connector2.Rad,Radiator.port_a) annotation(Line(points = {{-40,0},{-35,0},{-11.3,0},{-11.3,30},{-6.3,30}}, color = {191,0,0}, visible = true, origin = {-26.4466,22.485}));
				connect(thermal_connector2.TSS,Conductance_TIM_TSS.port_a) annotation(Line(points = {{-40,0},{-35,0},{-11,0},{-11,10},{-6,10}}, color = {191,0,0}, visible = true, origin = {-15.2265,6.2513}));
				connect(Conductance_TIM_TSS.port_b,thermal_connector1.TSS) annotation(Line(points = {{6,10},{11,10},{35,10},{35,0},{40,0}}, color = {191,0,0}, visible = true, origin = {24.159,3.7486}));
				connect(thermal_connector2.MSS,Conductance_MSS.port_a) annotation(Line(points = {{-40,0},{-35,0},{-11,0},{-11,-10},{-6,-10}}, color = {191,0,0}, visible = true, origin = {-15.1875,-6.2673}));
				connect(thermal_connector1.MSS,Conductance_MSS.port_b) annotation(Line(points = {{40,0},{35,0},{11,0},{11,-10},{6,-10}}, color = {191,0,0}, visible = true, origin = {15.1875,-3.7327}));
				connect(thermal_connector2.ESS,Conductance_ESS.port_a) annotation(Line(points = {{-40,0},{-35,0},{-11.3,0},{-11.3,-30},{-6.3,-30}}, color = {191,0,0}, visible = true, origin = {-26.3625,-22.5122}));
				connect(thermal_connector1.ESS,Conductance_ESS.port_b) annotation(Line(points = {{40,0},{35,0},{11.3,0},{11.3,-30},{6.3,-30}}, color = {191,0,0}, visible = true, origin = {19.4949,-5.2927}));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-20,-100},{20,100}}, visible = true, origin = {-80,0}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-20,-100},{20,100}}, visible = true, origin = {80,0}),Rectangle(lineColor = {255,0,0}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-40,-100},{40,100}}, visible = true),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100.0603,-40},{100.0603,40}}, visible = true, origin = {-0,0.0603}, rotation = 90)}),
				Diagram(coordinateSystem(
					extent={{-105,-74},{105,74}},
					grid={5,5})),
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_TIM;
		model thermal_TIM_optical_properties "thermal interfacial material parameters (Conductance)"
			thermal_connector thermal_connector2 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={-50,-1},
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
			panel_surface panel_surface1 annotation(Placement(transformation(
				origin={35,69},
				extent={{-10,-10},{10,10}},
				rotation=-90)));
			panel_surface panel_surface2 annotation(Placement(transformation(
				origin={-35,69},
				extent={{-10,-10},{10,10}},
				rotation=90)));
			variable_ThermalConductor_input Conductance_TIM_TSS "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,10},
				extent={{-6.1349,-6.1349},{6.1349,6.1349}})));
			variable_ThermalConductor_input Conductance_MSS "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,-10},
				extent={{-6.0931,-6.0931},{6.0931,6.0931}})));
			variable_ThermalConductor_input Conductance_ESS "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={0,-30},
				extent={{-6.1934,-6.1934},{6.1934,6.1934}})));
			parameter Real h_TSS(unit="W/(m³·K)")=300 "Heat transfer coefficient TSS - TSS";
			parameter Real h_MSS(unit="W/(m³·K)")=190 "Heat transfer coefficient MSS - MSS";
			parameter Real h_ESS(unit="W/(m³·K)")=240 "Heat transfer coefficient ESS - ESS";
			parameter Real ViewFactor_Rad=0.2 "Viewfactor of Radiator";
			VariableRad_for_TIM Radiator "Lumped thermal element for radiation heat transfer" annotation(Placement(transformation(
				origin={0,30},
				extent={{-6.25,-6.25},{6.25,6.25}})));
			Modelica.Blocks.Math.Gain gain_view_factor(k=ViewFactor_Rad) annotation(Placement(transformation(
				origin={-70,59},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Gain gain_h_TSS(k=h_TSS) annotation(Placement(transformation(
				origin={75,29},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Gain gain_h_MSS(k=h_MSS) annotation(Placement(transformation(
				origin={75,-1},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Gain gain_h_ESS(k=h_ESS) annotation(Placement(transformation(
				origin={75,-31},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			equation
				connect(Radiator.port_b,thermal_connector1.Rad) annotation(Line(
					points={{6.3,30},{11.3,30},{35,30},{35,0},{40,0}},
					color={191,0,0},
					visible=true,
					origin={19.5679,5.309}));
				connect(thermal_connector2.Rad,Radiator.port_a) annotation(Line(
					points={{-50,-1},{-45,-1},{-11.3,-1},{-11.3,30},{-6.3,30}},
					color={191,0,0},
					visible=true,
					origin={-26.4466,22.485}));
				connect(thermal_connector2.TSS,Conductance_TIM_TSS.port_a) annotation(Line(
					points={{-50,-1},{-45,-1},{-11,-1},{-11,10},{-6,10}},
					color={191,0,0},
					visible=true,
					origin={-15.2265,6.2513}));
				connect(Conductance_TIM_TSS.port_b,thermal_connector1.TSS) annotation(Line(
					points={{6,10},{11,10},{35,10},{35,0},{40,0}},
					color={191,0,0},
					visible=true,
					origin={24.159,3.7486}));
				connect(thermal_connector2.MSS,Conductance_MSS.port_a) annotation(Line(
					points={{-50,-1},{-45,-1},{-11,-1},{-11,-10},{-6,-10}},
					color={191,0,0},
					visible=true,
					origin={-15.1875,-6.2673}));
				connect(thermal_connector1.MSS,Conductance_MSS.port_b) annotation(Line(
					points={{40,0},{35,0},{11,0},{11,-10},{6,-10}},
					color={191,0,0},
					visible=true,
					origin={15.1875,-3.7327}));
				connect(thermal_connector2.ESS,Conductance_ESS.port_a) annotation(Line(
					points={{-50,-1},{-45,-1},{-11.3,-1},{-11.3,-30},{-6.3,-30}},
					color={191,0,0},
					visible=true,
					origin={-26.3625,-22.5122}));
				connect(thermal_connector1.ESS,Conductance_ESS.port_b) annotation(Line(
					points={{40,0},{35,0},{11.3,0},{11.3,-30},{6.3,-30}},
					color={191,0,0},
					visible=true,
					origin={19.4949,-5.2927}));
				
				
				
				
				
				
				
				connect(Radiator.alpha_l,panel_surface2.alpha_Rad) annotation(Line(
					points={{-5.3,35.7},{-5.3,40.7},{-5.3,69},{-30,69},{-35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(Radiator.alpha_r,panel_surface1.alpha_Rad) annotation(Line(
					points={{5.3,35.7},{5.3,40.7},{5.3,69},{30,69},{35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(Radiator.epsilon_r,panel_surface1.epsilon_Rad) annotation(Line(
					points={{2.7,35.7},{2.7,40.7},{2.7,69},{30,69},{35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(Radiator.epsilon_l,panel_surface2.epsilon_Rad) annotation(Line(
					points={{-2.7,35.7},{-2.7,40.7},{-2.7,69},{-30,69},{-35,69}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(gain_view_factor.y,Radiator.A_View) annotation(Line(
					points={{-81,59},{-86,59},{-86,50},{-0.3,50},{-0.3,40.7},{-0.3,
					35.7}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_view_factor.u,panel_surface1.A_Rad) annotation(Line(
					points={{-58,59},{-53,59},{30,59},{30,69},{35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_h_TSS.u,panel_surface1.A_TSS) annotation(Line(
					points={{87,29},{92,29},{92,69},{40,69},{35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_h_TSS.y,Conductance_TIM_TSS.G) annotation(Line(
					points={{64,29},{59,29},{0,29},{0,21},{0,16}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_h_MSS.u,panel_surface1.A_MSS) annotation(Line(
					points={{87,-1},{92,-1},{92,69},{40,69},{35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_h_MSS.y,Conductance_MSS.G) annotation(Line(
					points={{64,-1},{59,-1},{59,1},{0,1},{0,-4}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_h_ESS.u,panel_surface1.A_ESS) annotation(Line(
					points={{87,-31},{92,-31},{92,69},{40,69},{35,69}},
					color={0,0,127},
					thickness=0.0625));
				connect(gain_h_ESS.y,Conductance_ESS.G) annotation(Line(
					points={{64,-31},{59,-31},{59,-18.7},{0,-18.7},{0,-23.7}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
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
		end thermal_TIM_optical_properties;
		model solar_radiance "Einwirkende Sonnenstrahlung auf Flaeche A mit Absorptionsfaktor alpha"
			parameter Real solar_constant=1372 "Solarkonstate in W/mÂ²";
			parameter Modelica.SIunits.Time orbit_Period(
				final min=Modelica.Constants.small,
				start=1)=5400 "Time for one period";
			parameter Real percent_sun(
				final min=Modelica.Constants.small,
				final max=100)=66 "Width of pulse in % of period";
			parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Flaeche des Radiators";
			parameter Modelica.SIunits.Area effective_area_TSS=0.01 "Flaeche der thermalen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_Rad annotation(Placement(transformation(
				origin={-40,-50},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_TSS annotation(Placement(transformation(
				origin={-40,-20},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_MSS annotation(Placement(transformation(
				origin={-40,20},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_ESS annotation(Placement(transformation(
				origin={-40,50},
				extent={{-10,-10},{10,10}})));
			Modelica.Blocks.Sources.Pulse Orbit_Rad(
				amplitude=solar_constant * effective_area_Rad * alpha_Rad,
				width=percent_sun,
				period=orbit_Period) annotation(Placement(transformation(
				origin={-110,-50},
				extent={{-10,-10},{10,10}})));
			Modelica.Blocks.Sources.Pulse Orbit_TSS(
				amplitude=solar_constant * effective_area_TSS * alpha_TSS,
				width=percent_sun,
				period=orbit_Period) annotation(Placement(transformation(
				origin={-110,-20},
				extent={{-10,-10},{10,10}})));
			Modelica.Blocks.Sources.Pulse Orbit_MSS(
				amplitude=solar_constant * effective_area_MSS * alpha_MSS,
				width=percent_sun,
				period=orbit_Period) annotation(Placement(transformation(
				origin={-110,20},
				extent={{-10,-10},{10,10}})));
			Modelica.Blocks.Sources.Pulse Orbit_ESS(
				amplitude=solar_constant * effective_area_ESS * alpha_ESS,
				width=percent_sun,
				period=orbit_Period) annotation(Placement(transformation(
				origin={-110,50},
				extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector1 annotation(Placement(
				transformation(
					origin={90,0},
					extent={{-42.5,-42.5},{42.5,42.5}},
					rotation=-180),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			equation
				connect(thermal_connector1.Rad,Solar_Power_Rad.port) annotation(Line(points = {{90,0},{85,0},{-25,0},{-25,-50},{-30,-50}}, color = {191,0,0}, visible = true, origin = {40.2104,-43.8948}));
				connect(Solar_Power_TSS.port,thermal_connector1.TSS) annotation(Line(points = {{-30,-20},{-25,-20},{85,-20},{85,0},{90,0}}, color = {191,0,0}, visible = true, origin = {33.5325,-15.3182}));
				connect(Solar_Power_MSS.port,thermal_connector1.MSS) annotation(Line(points = {{-30,20},{-25,20},{85,20},{85,0},{90,0}}, color = {191,0,0}, visible = true, origin = {33.5003,15.386}));
				connect(Solar_Power_ESS.port,thermal_connector1.ESS) annotation(Line(points = {{-30,50},{-25,50},{85,50},{85,0},{90,0}}, color = {191,0,0}, visible = true, origin = {39.9335,44.0102}));
				connect(Solar_Power_ESS.Q_flow,Orbit_ESS.y) annotation(Line(points = {{-50,50},{-55,50},{-94,50},{-99,50}}, color = {0,0,127}, visible = true, origin = {-74.5,50}));
				connect(Solar_Power_MSS.Q_flow,Orbit_MSS.y) annotation(Line(points = {{-50,20},{-55,20},{-94,20},{-99,20}}, color = {0,0,127}, visible = true, origin = {-74.5,20}));
				connect(Orbit_TSS.y,Solar_Power_TSS.Q_flow) annotation(Line(points = {{-99,-20},{-94,-20},{-55,-20},{-50,-20}}, color = {0,0,127}, visible = true, origin = {-74.5,-20}));
				connect(Solar_Power_Rad.Q_flow,Orbit_Rad.y) annotation(Line(points = {{-50,-50},{-55,-50},{-94,-50},{-99,-50}}, color = {0,0,127}, visible = true, origin = {-74.5,-50}));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Ellipse(fillColor = {255,255,0}, fillPattern = FillPattern.Solid, extent = {{-99.82210000000001,-100},{99.82210000000001,100}}, visible = true, origin = {0.1779,0}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100,-19.1444},{100,19.1444}}, visible = true, origin = {-0,119.1444}),Text(textString = "Period=%orbit_Period", fillPattern = FillPattern.Solid, extent = {{-90,-14.5134},{90,14.5134}}, visible = true, origin = {0,25.4866}),Text(textString = "percent_sun=%percent_sun", fillPattern = FillPattern.Solid, extent = {{-90,-14.5134},{90,14.5134}}, visible = true, origin = {0,-24.5134})}),
				Diagram(coordinateSystem(
					extent={{-148.5,-105},{148.5,105}},
					grid={5,5})),
				experiment(
					StopTime=1,
					StartTime=0));
		end solar_radiance;
		model space_radiator
			parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Flaeche des Radiators tbd";
			parameter Modelica.SIunits.Area effective_area_TSS=0.005 "Flaeche der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			Modelica.Thermal.HeatTransfer.Sources.FixedTemperature BlackSky(T=3) annotation(Placement(transformation(
				origin={-149,0},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad(Gr=epsilon_Rad * effective_area_Rad) annotation(Placement(transformation(
				origin={0,-60},
				extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector1 annotation(Placement(
				transformation(
					origin={81.25,0},
					extent={{-48.75,-48.75},{48.75,48.75}},
					rotation=-180),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS(Gr=epsilon_TSS * effective_area_TSS) annotation(Placement(transformation(
				origin={0,-20},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS(Gr=epsilon_MSS * effective_area_MSS) annotation(Placement(transformation(
				origin={-0,20},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_ESS(Gr=epsilon_ESS * effective_area_ESS) annotation(Placement(transformation(
				origin={0,60},
				extent={{-10,-10},{10,10}})));
			equation
				connect(bodyRadiation_MSS.port_b,thermal_connector1.MSS) annotation(Line(points = {{10,20},{15,20},{76,20},{76,0},{81,0}}, color = {191,0,0}, visible = true, origin = {33.2613,16.178}));
				connect(bodyRadiation_TSS.port_b,thermal_connector1.TSS) annotation(Line(points = {{10,-20},{15,-20},{76,-20},{76,0},{81,0}}, color = {191,0,0}, visible = true, origin = {33.2984,-16.1003}));
				connect(bodyRadiation_Rad.port_b,thermal_connector1.Rad) annotation(Line(points = {{10,-60},{15,-60},{76,-60},{76,0},{81,0}}, color = {191,0,0}, visible = true, origin = {46.2708,-52.1146}));
				connect(bodyRadiation_ESS.port_b,thermal_connector1.ESS) annotation(Line(points = {{10,60},{15,60},{76,60},{76,0},{81,0}}, color = {191,0,0}, visible = true, origin = {45.9531,52.2469}));
				connect(BlackSky.port,bodyRadiation_ESS.port_a) annotation(Line(points = {{-139,0},{-134,0},{-15,0},{-15,60},{-10,60}}, color = {191,0,0}, thickness = 0.0625));
				connect(BlackSky.port,bodyRadiation_MSS.port_a) annotation(Line(points = {{-139,0},{-134,0},{-15,0},{-15,20},{-10,20}}, color = {191,0,0}, thickness = 0.0625));
				connect(BlackSky.port,bodyRadiation_TSS.port_a) annotation(Line(points = {{-139,0},{-134,0},{-15,0},{-15,-20},{-10,-20}}, color = {191,0,0}, thickness = 0.0625));
				connect(BlackSky.port,bodyRadiation_Rad.port_a) annotation(Line(points = {{-139,0},{-134,0},{-15,0},{-15,-60},{-10,-60}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(fillPattern = FillPattern.Solid, extent = {{-100,-100},{100,100}}, visible = true),Text(textString = "Radiator", textStyle = {TextStyle.Bold}, fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-100,-24.3695},{100,24.3695}}, visible = true, origin = {0,75.6305})}),
				Diagram(coordinateSystem(
					extent={{-148.5,-105},{148.5,105}},
					grid={5,5})),
				experiment(
					StopTime=1,
					StartTime=0));
		end space_radiator;
		model environment
			parameter Modelica.SIunits.Area effective_area_total=0.16 "Flaeche des Seitenpaneels";
			parameter Modelica.SIunits.Area effective_area_Rad=0.1048 "Flaeche des Radiators";
			parameter Modelica.SIunits.Area effective_area_TSS=0.05 "Flaeche der thermalen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			parameter Real illumination[:,2]=[0,0;1,1];
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{10,40},{30,60}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{10,10},{30,30}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{10,-20},{30,0}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{10,-50},{30,-30}})));
			Modelica.Blocks.Math.Gain factor_Rad(k=effective_area_Rad * alpha_Rad / effective_area_total) annotation(Placement(transformation(extent={{-35,-50},{-15,-30}})));
			Modelica.Blocks.Sources.CombiTimeTable timeTable1(
				table=illumination,
				smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(transformation(extent={{-95,-5},{-75,15}})));
			Modelica.Blocks.Math.Gain factor_TSS(k=effective_area_TSS * alpha_TSS / effective_area_total) annotation(Placement(transformation(extent={{-35,40},{-15,60}})));
			Modelica.Blocks.Math.Gain factor_MSS(k=effective_area_MSS * alpha_MSS / effective_area_total) annotation(Placement(transformation(extent={{-35,10},{-15,30}})));
			Modelica.Blocks.Math.Gain factor_ESS(k=effective_area_ESS * alpha_ESS / effective_area_total) annotation(Placement(transformation(extent={{-35,-20},{-15,0}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad(Gr=epsilon_Rad * effective_area_Rad) annotation(Placement(transformation(
				origin={130,-40},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS(Gr=epsilon_TSS * effective_area_TSS) annotation(Placement(transformation(
				origin={130,50},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS(Gr=epsilon_MSS * effective_area_MSS) annotation(Placement(transformation(
				origin={130,20},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_ESS(Gr=epsilon_ESS * effective_area_ESS) annotation(Placement(transformation(
				origin={130,-10},
				extent={{-10,-10},{10,10}})));
			iboss_thermal.components.thermal_connector thermal_connector_env "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={90,10},
					extent={{10,10},{-10,-10}},
					rotation=180),
				iconTransformation(
					origin={100,0},
					extent={{-20,20},{20,-20}},
					rotation=270)));
			Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
				origin={175,5},
				extent={{10,10},{-10,-10}},
				rotation=180)));
			equation
				connect(factor_Rad.y,HeatFlow_Rad.Q_flow) annotation(Line(
					points={{-14,-40},{-9,-40},{5,-40},{10,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.y,HeatFlow_ESS.Q_flow) annotation(Line(
					points={{-14,-10},{-9,-10},{5,-10},{10,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.y,HeatFlow_MSS.Q_flow) annotation(Line(
					points={{-14,20},{-9,20},{5,20},{10,20}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_TSS.y,HeatFlow_TSS.Q_flow) annotation(Line(
					points={{-14,50},{-9,50},{5,50},{10,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_TSS.port_b) annotation(Line(
					points={{185,5},{190,5},{190,50},{145,50},{140,50}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_MSS.port_b) annotation(Line(
					points={{185,5},{190,5},{190,20},{145,20},{140,20}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_ESS.port_b) annotation(Line(
					points={{185,5},{190,5},{190,-10},{145,-10},{140,-10}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_Rad.port_b) annotation(Line(
					points={{185,5},{190,5},{190,-40},{145,-40},{140,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_ESS.port_a,thermal_connector_env.ESS) annotation(Line(points={{120,-10},{115,-10},{95,-10},{95,10},{90,10}}));
				connect(bodyRadiation_MSS.port_a,thermal_connector_env.MSS) annotation(Line(points={{120,20},{115,20},{95,20},{95,10},{90,10}}));
				connect(bodyRadiation_TSS.port_a,thermal_connector_env.TSS) annotation(Line(points={{120,50},{115,50},{95,50},{95,10},{90,10}}));
				connect(bodyRadiation_Rad.port_a,thermal_connector_env.Rad) annotation(Line(points={{120,-40},{115,-40},{95,-40},{95,10},{90,10}}));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points={{30,-10},{35,-10},{85,-10},{85,10},{90,10}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points={{30,20},{35,20},{85,20},{85,10},{90,10}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points={{30,50},{35,50},{85,50},{85,10},{90,10}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points={{30,-40},{35,-40},{85,-40},{85,10},{90,10}}));
				connect(timeTable1.y[1],factor_Rad.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-40},{-37,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_ESS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-10},{-37,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_MSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,20},{-37,20}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_TSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,50},{-37,50}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(graphics={
																																																																																																																																																										Rectangle(
																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																								extent={{-100,100},{100,-100}}),
																																																																																																																																																							Ellipse(
																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																								fillColor={255,255,0},
																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																								extent={{98,-96},{-96,98}})}),
				experiment(
					StopTime=10,
					StartTime=0));
		end environment;
		model environment_optical_properties_external_Verosim "environment_optical_properties_external_Verosim"
			parameter Real illumination[:,2]=[0,0;1,1];
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{30,5},{50,25}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{30,-25},{50,-5}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{30,-55},{50,-35}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{30,-85},{50,-65}})));
			iboss.iboss_thermal.components.var_Gain factor_Rad annotation(Placement(transformation(extent={{-15,-85},{5,-65}})));
			iboss.iboss_thermal.components.var_Gain factor_TSS annotation(Placement(transformation(extent={{-15,5},{5,25}})));
			iboss.iboss_thermal.components.var_Gain factor_MSS annotation(Placement(transformation(extent={{-15,-25},{5,-5}})));
			iboss.iboss_thermal.components.var_Gain factor_ESS annotation(Placement(transformation(extent={{-15,-55},{5,-35}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_Rad annotation(Placement(transformation(
				origin={150,-75},
				extent={{-10,-10},{10,10}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_TSS annotation(Placement(transformation(
				origin={150,15},
				extent={{-10,-10},{10,10}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_MSS annotation(Placement(transformation(
				origin={150,-15},
				extent={{-10,-10},{10,10}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_ESS annotation(Placement(transformation(
				origin={150,-45},
				extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector_env "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={110,-25},
					extent={{10,10},{-10,-10}},
					rotation=180),
				iconTransformation(
					origin={100,0},
					extent={{-20,20},{20,-20}},
					rotation=270)));
			panel_surface panel_surface1 annotation(Placement(
				transformation(extent={{95,40},{115,60}}),
				iconTransformation(extent={{95,40},{115,60}})));
			Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
				origin={195,-30},
				extent={{10,10},{-10,-10}},
				rotation=180)));
			Modelica.Blocks.Math.Product Gr_ESS annotation(Placement(transformation(
				origin={75,50},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product Gr_MSS annotation(Placement(transformation(extent={{125,40},{145,60}})));
			Modelica.Blocks.Math.Product Gr_Rad annotation(Placement(transformation(
				origin={75,80},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product Gr_TSS annotation(Placement(transformation(extent={{125,70},{145,90}})));
			Modelica.Blocks.Math.Sum A_total(nin=4) annotation(Placement(transformation(
				origin={35,55},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_Rad annotation(Placement(transformation(
				origin={-60,80},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_TSS annotation(Placement(transformation(
				origin={-60,45},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_MSS annotation(Placement(transformation(
				origin={10,80},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_ESS annotation(Placement(transformation(
				origin={10,45},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_ESS annotation(Placement(transformation(
				origin={-20,50},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_TSS annotation(Placement(transformation(
				origin={-95,50},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_MSS annotation(Placement(transformation(
				origin={-20,85},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_Rad annotation(Placement(transformation(
				origin={-90,85},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(
				transformation(extent={{-85,-50},{-45,-10}}),
				iconTransformation(extent={{-120,-20},{-80,20}})));
			equation
				connect(factor_Rad.y,HeatFlow_Rad.Q_flow) annotation(Line(
					points={{6,-75},{11,-75},{25,-75},{30,-75}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.y,HeatFlow_ESS.Q_flow) annotation(Line(
					points={{6,-45},{11,-45},{25,-45},{30,-45}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.y,HeatFlow_MSS.Q_flow) annotation(Line(
					points={{6,-15},{11,-15},{25,-15},{30,-15}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_TSS.y,HeatFlow_TSS.Q_flow) annotation(Line(
					points={{6,15},{11,15},{25,15},{30,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_TSS.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,15},{165,15},{160,15}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_MSS.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,-15},{165,-15},{160,-15}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_ESS.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,-45},{165,-45},{160,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_Rad.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,-75},{165,-75},{160,-75}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_ESS.port_a,thermal_connector_env.ESS) annotation(Line(points={{140,-45},{135,-45},{115,-45},{115,-25},{110,-25}}));
				connect(bodyRadiation_MSS.port_a,thermal_connector_env.MSS) annotation(Line(points={{140,-15},{135,-15},{115,-15},{115,-25},{110,-25}}));
				connect(bodyRadiation_TSS.port_a,thermal_connector_env.TSS) annotation(Line(points={{140,15},{135,15},{115,15},{115,-25},{110,-25}}));
				connect(bodyRadiation_Rad.port_a,thermal_connector_env.Rad) annotation(Line(points={{140,-75},{135,-75},{115,-75},{115,-25},{110,-25}}));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points={{50,-45},{55,-45},{105,-45},{105,-25},{110,-25}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points={{50,-15},{55,-15},{105,-15},{105,-25},{110,-25}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points={{50,15},{55,15},{105,15},{105,-25},{110,-25}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points={{50,-75},{55,-75},{105,-75},{105,-25},{110,-25}}));
				
				
				
				
				connect(Gr_ESS.u1,panel_surface1.A_ESS) annotation(Line(
					points={{87,44},{92,44},{100,44},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_ESS.u2,panel_surface1.epsilon_ESS) annotation(Line(
					points={{87,56},{92,56},{100,56},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(Gr_MSS.u2,panel_surface1.epsilon_MSS) annotation(Line(
					points={{123,44},{118,44},{110,44},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_MSS.u1,panel_surface1.A_MSS) annotation(Line(
					points={{123,56},{118,56},{110,56},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				
				
				
				connect(Gr_TSS.u2,panel_surface1.epsilon_TSS) annotation(Line(
					points={{123,74},{118,74},{110,74},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_TSS.u1,panel_surface1.A_TSS) annotation(Line(
					points={{123,86},{118,86},{110,86},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(Gr_Rad.u2,panel_surface1.epsilon_Rad) annotation(Line(
					points={{87,86},{92,86},{100,86},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_Rad.u1,panel_surface1.A_Rad) annotation(Line(
					points={{87,74},{92,74},{100,74},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				
				
				connect(A_total.u[4],panel_surface1.A_TSS) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.u[3],panel_surface1.A_Rad) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.u[2],panel_surface1.A_MSS) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.u[1],panel_surface1.A_ESS) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_Rad.u2,panel_surface1.alpha_Rad) annotation(Line(
					points={{-48,86},{-43,86},{100,86},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_Rad.u1,panel_surface1.A_Rad) annotation(Line(
					points={{-48,74},{-43,74},{100,74},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_TSS.u2,panel_surface1.alpha_TSS) annotation(Line(
					points={{-48,51},{-43,51},{100,51},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_TSS.u1,panel_surface1.A_TSS) annotation(Line(
					points={{-48,39},{-43,39},{100,39},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_MSS.u2,panel_surface1.A_MSS) annotation(Line(
					points={{22,86},{27,86},{100,86},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_MSS.u1,panel_surface1.alpha_MSS) annotation(Line(
					points={{22,74},{27,74},{100,74},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_ESS.u2,panel_surface1.A_ESS) annotation(Line(
					points={{22,51},{27,51},{100,51},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_ESS.u1,panel_surface1.alpha_ESS) annotation(Line(
					points={{22,39},{27,39},{100,39},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(A_total.y,power_ESS.u2) annotation(Line(
					points={{24,55},{19,55},{-3,55},{-3,56},{-8,56}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_ESS.u1,alpha_A_ESS.y) annotation(Line(
					points={{-8,44},{-3,44},{-3,44.3},{-6,44.3},{-6,45},{-1,
					45}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_ESS.y,factor_ESS.k_gain) annotation(Line(
					points={{-31,50},{-36,50},{-36,9.699999999999999},{-5,9.699999999999999},{-5,-31},{-5,
					-36}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_TSS.y,power_TSS.u1) annotation(Line(
					points={{-71,45},{-76,45},{-78,45},{-78,44},{-83,44}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.y,power_TSS.u2) annotation(Line(
					points={{24,55},{19,55},{-78,55},{-78,56},{-83,56}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_TSS.y,factor_TSS.k_gain) annotation(Line(
					points={{-106,50},{-111,50},{-111,39.7},{-5,39.7},{-5,29},{-5,
					24}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_MSS.u1,alpha_A_MSS.y) annotation(Line(
					points={{-8,79},{-3,79},{-3,79.3},{-6,79.3},{-6,80},{-1,
					80}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_MSS.u2,A_total.y) annotation(Line(
					points={{-8,91},{-3,91},{19,91},{19,55},{24,55}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_MSS.y,factor_MSS.k_gain) annotation(Line(
					points={{-31,85},{-36,85},{-36,42},{-5,42},{-5,-1},{-5,
					-6}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(power_Rad.u2,A_total.y) annotation(Line(
					points={{-78,91},{-73,91},{19,91},{19,55},{24,55}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_Rad.u1,alpha_A_Rad.y) annotation(Line(
					points={{-78,79},{-73,79},{-73,79.3},{-76,79.3},{-76,80},{-71,
					80}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_Rad.y,factor_Rad.k_gain) annotation(Line(
					points={{-101,85},{-106,85},{-106,12},{-5,12},{-5,-61},{-5,
					-66}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_TSS.y,bodyRadiation_TSS.Gr) annotation(Line(
					points={{146,80},{151,80},{151,54.7},{150,54.7},{150,29},{150,
					24}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_MSS.y,bodyRadiation_MSS.Gr) annotation(Line(
					points={{146,50},{151,50},{151,24.7},{150,24.7},{150,-1},{150,
					-6}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_ESS.y,bodyRadiation_ESS.Gr) annotation(Line(
					points={{64,50},{59,50},{59,9.699999999999999},{150,9.699999999999999},{150,-31},{150,
					-36}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_Rad.y,bodyRadiation_Rad.Gr) annotation(Line(
					points={{64,80},{59,80},{59,9.699999999999999},{150,9.699999999999999},{150,-61},{150,
					-66}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_TSS.u,u) annotation(Line(
					points={{-17,15},{-22,15},{-60,15},{-60,-30},{-65,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.u,u) annotation(Line(
					points={{-17,-15},{-22,-15},{-60,-15},{-60,-30},{-65,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.u,u) annotation(Line(
					points={{-17,-45},{-22,-45},{-60,-45},{-60,-30},{-65,-30}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_Rad.u,u) annotation(Line(
					points={{-17,-75},{-22,-75},{-60,-75},{-60,-30},{-65,-30}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(graphics={
																																																																																																																						Rectangle(
																																																																																																																						lineColor={0,0,0},
																																																																																																																						fillPattern=FillPattern.Solid,
																																																																																																																						extent={{-100,100},{100,-100}}),
																																																																																																																					Ellipse(
																																																																																																																						lineColor={0,0,0},
																																																																																																																						fillColor={255,255,0},
																																																																																																																						fillPattern=FillPattern.Solid,
																																																																																																																						extent={{98,-96},{-96,98}})}),
				experiment(
					StopTime=10,
					StartTime=0));
		end environment_optical_properties_external_Verosim;
		model environment_optical_properties
			parameter Real illumination[:,2]=[0,0;1,1];
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{30,5},{50,25}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{30,-25},{50,-5}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{30,-55},{50,-35}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{30,-85},{50,-65}})));
			iboss.iboss_thermal.components.var_Gain factor_Rad annotation(Placement(transformation(extent={{-15,-85},{5,-65}})));
			Modelica.Blocks.Sources.CombiTimeTable timeTable1(
				table=illumination,
				smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(transformation(extent={{-75,-40},{-55,-20}})));
			iboss.iboss_thermal.components.var_Gain factor_TSS annotation(Placement(transformation(extent={{-15,5},{5,25}})));
			iboss.iboss_thermal.components.var_Gain factor_MSS annotation(Placement(transformation(extent={{-15,-25},{5,-5}})));
			iboss.iboss_thermal.components.var_Gain factor_ESS annotation(Placement(transformation(extent={{-15,-55},{5,-35}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_Rad annotation(Placement(transformation(
				origin={150,-75},
				extent={{-10,-10},{10,10}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_TSS annotation(Placement(transformation(
				origin={150,15},
				extent={{-10,-10},{10,10}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_MSS annotation(Placement(transformation(
				origin={150,-15},
				extent={{-10,-10},{10,10}})));
			iboss.iboss_thermal.components.VariableRad bodyRadiation_ESS annotation(Placement(transformation(
				origin={150,-45},
				extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector_env "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={110,-25},
					extent={{10,10},{-10,-10}},
					rotation=180),
				iconTransformation(
					origin={100,0},
					extent={{-20,20},{20,-20}},
					rotation=270)));
			panel_surface panel_surface1 annotation(Placement(transformation(extent={{95,40},{115,60}})));
			Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
				origin={195,-30},
				extent={{10,10},{-10,-10}},
				rotation=180)));
			Modelica.Blocks.Math.Product Gr_ESS annotation(Placement(transformation(
				origin={75,50},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product Gr_MSS annotation(Placement(transformation(extent={{125,40},{145,60}})));
			Modelica.Blocks.Math.Product Gr_Rad annotation(Placement(transformation(
				origin={75,80},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product Gr_TSS annotation(Placement(transformation(extent={{125,70},{145,90}})));
			Modelica.Blocks.Math.Sum A_total(nin=4) annotation(Placement(transformation(
				origin={35,55},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_Rad annotation(Placement(transformation(
				origin={-60,80},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_TSS annotation(Placement(transformation(
				origin={-60,45},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_MSS annotation(Placement(transformation(
				origin={10,80},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Product alpha_A_ESS annotation(Placement(transformation(
				origin={10,45},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_ESS annotation(Placement(transformation(
				origin={-20,50},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_TSS annotation(Placement(transformation(
				origin={-95,50},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_MSS annotation(Placement(transformation(
				origin={-20,85},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Math.Division power_Rad annotation(Placement(transformation(
				origin={-90,85},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			equation
				connect(factor_Rad.y,HeatFlow_Rad.Q_flow) annotation(Line(
					points={{6,-75},{11,-75},{25,-75},{30,-75}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.y,HeatFlow_ESS.Q_flow) annotation(Line(
					points={{6,-45},{11,-45},{25,-45},{30,-45}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.y,HeatFlow_MSS.Q_flow) annotation(Line(
					points={{6,-15},{11,-15},{25,-15},{30,-15}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_TSS.y,HeatFlow_TSS.Q_flow) annotation(Line(
					points={{6,15},{11,15},{25,15},{30,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_TSS.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,15},{165,15},{160,15}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_MSS.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,-15},{165,-15},{160,-15}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_ESS.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,-45},{165,-45},{160,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_Rad.port_b) annotation(Line(
					points={{205,-30},{210,-30},{210,-75},{165,-75},{160,-75}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_ESS.port_a,thermal_connector_env.ESS) annotation(Line(points={{140,-45},{135,-45},{115,-45},{115,-25},{110,-25}}));
				connect(bodyRadiation_MSS.port_a,thermal_connector_env.MSS) annotation(Line(points={{140,-15},{135,-15},{115,-15},{115,-25},{110,-25}}));
				connect(bodyRadiation_TSS.port_a,thermal_connector_env.TSS) annotation(Line(points={{140,15},{135,15},{115,15},{115,-25},{110,-25}}));
				connect(bodyRadiation_Rad.port_a,thermal_connector_env.Rad) annotation(Line(points={{140,-75},{135,-75},{115,-75},{115,-25},{110,-25}}));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points={{50,-45},{55,-45},{105,-45},{105,-25},{110,-25}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points={{50,-15},{55,-15},{105,-15},{105,-25},{110,-25}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points={{50,15},{55,15},{105,15},{105,-25},{110,-25}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points={{50,-75},{55,-75},{105,-75},{105,-25},{110,-25}}));
				connect(timeTable1.y[1],factor_TSS.u) annotation(Line(
					points={{-54,-30},{-49,-30},{-22,-30},{-22,15},{-17,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_MSS.u) annotation(Line(
					points={{-54,-30},{-49,-30},{-22,-30},{-22,-15},{-17,-15}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_ESS.u) annotation(Line(
					points={{-54,-30},{-49,-30},{-22,-30},{-22,-45},{-17,-45}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_Rad.u) annotation(Line(
					points={{-54,-30},{-49,-30},{-22,-30},{-22,-75},{-17,-75}},
					color={0,0,127},
					thickness=0.0625));
				
				
				
				
				connect(Gr_ESS.u1,panel_surface1.A_ESS) annotation(Line(
					points={{87,44},{92,44},{100,44},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_ESS.u2,panel_surface1.epsilon_ESS) annotation(Line(
					points={{87,56},{92,56},{100,56},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(Gr_MSS.u2,panel_surface1.epsilon_MSS) annotation(Line(
					points={{123,44},{118,44},{110,44},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_MSS.u1,panel_surface1.A_MSS) annotation(Line(
					points={{123,56},{118,56},{110,56},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				
				
				
				connect(Gr_TSS.u2,panel_surface1.epsilon_TSS) annotation(Line(
					points={{123,74},{118,74},{110,74},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_TSS.u1,panel_surface1.A_TSS) annotation(Line(
					points={{123,86},{118,86},{110,86},{110,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(Gr_Rad.u2,panel_surface1.epsilon_Rad) annotation(Line(
					points={{87,86},{92,86},{100,86},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_Rad.u1,panel_surface1.A_Rad) annotation(Line(
					points={{87,74},{92,74},{100,74},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				
				
				connect(A_total.u[4],panel_surface1.A_TSS) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.u[3],panel_surface1.A_Rad) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.u[2],panel_surface1.A_MSS) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.u[1],panel_surface1.A_ESS) annotation(Line(
					points={{47,55},{52,55},{100,55},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_Rad.u2,panel_surface1.alpha_Rad) annotation(Line(
					points={{-48,86},{-43,86},{100,86},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_Rad.u1,panel_surface1.A_Rad) annotation(Line(
					points={{-48,74},{-43,74},{100,74},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_TSS.u2,panel_surface1.alpha_TSS) annotation(Line(
					points={{-48,51},{-43,51},{100,51},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_TSS.u1,panel_surface1.A_TSS) annotation(Line(
					points={{-48,39},{-43,39},{100,39},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_MSS.u2,panel_surface1.A_MSS) annotation(Line(
					points={{22,86},{27,86},{100,86},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_MSS.u1,panel_surface1.alpha_MSS) annotation(Line(
					points={{22,74},{27,74},{100,74},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_ESS.u2,panel_surface1.A_ESS) annotation(Line(
					points={{22,51},{27,51},{100,51},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_ESS.u1,panel_surface1.alpha_ESS) annotation(Line(
					points={{22,39},{27,39},{100,39},{100,50},{105,50}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(A_total.y,power_ESS.u2) annotation(Line(
					points={{24,55},{19,55},{-3,55},{-3,56},{-8,56}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_ESS.u1,alpha_A_ESS.y) annotation(Line(
					points={{-8,44},{-3,44},{-3,44.3},{-6,44.3},{-6,45},{-1,
					45}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_ESS.y,factor_ESS.k_gain) annotation(Line(
					points={{-31,50},{-36,50},{-36,9.699999999999999},{-5,9.699999999999999},{-5,-31},{-5,
					-36}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_A_TSS.y,power_TSS.u1) annotation(Line(
					points={{-71,45},{-76,45},{-78,45},{-78,44},{-83,44}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_total.y,power_TSS.u2) annotation(Line(
					points={{24,55},{19,55},{-78,55},{-78,56},{-83,56}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_TSS.y,factor_TSS.k_gain) annotation(Line(
					points={{-106,50},{-111,50},{-111,39.7},{-5,39.7},{-5,29},{-5,
					24}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_MSS.u1,alpha_A_MSS.y) annotation(Line(
					points={{-8,79},{-3,79},{-3,79.3},{-6,79.3},{-6,80},{-1,
					80}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_MSS.u2,A_total.y) annotation(Line(
					points={{-8,91},{-3,91},{19,91},{19,55},{24,55}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_MSS.y,factor_MSS.k_gain) annotation(Line(
					points={{-31,85},{-36,85},{-36,42},{-5,42},{-5,-1},{-5,
					-6}},
					color={0,0,127},
					thickness=0.0625));
				
				
				connect(power_Rad.u2,A_total.y) annotation(Line(
					points={{-78,91},{-73,91},{19,91},{19,55},{24,55}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_Rad.u1,alpha_A_Rad.y) annotation(Line(
					points={{-78,79},{-73,79},{-73,79.3},{-76,79.3},{-76,80},{-71,
					80}},
					color={0,0,127},
					thickness=0.0625));
				connect(power_Rad.y,factor_Rad.k_gain) annotation(Line(
					points={{-101,85},{-106,85},{-106,12},{-5,12},{-5,-61},{-5,
					-66}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_TSS.y,bodyRadiation_TSS.Gr) annotation(Line(
					points={{146,80},{151,80},{151,54.7},{150,54.7},{150,29},{150,
					24}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_MSS.y,bodyRadiation_MSS.Gr) annotation(Line(
					points={{146,50},{151,50},{151,24.7},{150,24.7},{150,-1},{150,
					-6}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_ESS.y,bodyRadiation_ESS.Gr) annotation(Line(
					points={{64,50},{59,50},{59,9.699999999999999},{150,9.699999999999999},{150,-31},{150,
					-36}},
					color={0,0,127},
					thickness=0.0625));
				connect(Gr_Rad.y,bodyRadiation_Rad.Gr) annotation(Line(
					points={{64,80},{59,80},{59,9.699999999999999},{150,9.699999999999999},{150,-61},{150,
					-66}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(graphics={
																																																																																																																											Rectangle(
																																																																																																																										lineColor={0,0,0},
																																																																																																																										fillPattern=FillPattern.Solid,
																																																																																																																										extent={{-100,100},{100,-100}}),
																																																																																																																									Ellipse(
																																																																																																																										lineColor={0,0,0},
																																																																																																																										fillColor={255,255,0},
																																																																																																																										fillPattern=FillPattern.Solid,
																																																																																																																										extent={{98,-96},{-96,98}})}),
				experiment(
					StopTime=10,
					StartTime=0));
		end environment_optical_properties;
		model environment_var_rad
			parameter Modelica.SIunits.Area effective_area_total=0.16 "Flaeche des Seitenpaneels";
			parameter Modelica.SIunits.Area effective_area_Rad=0.1048 "Flaeche des Radiators";
			parameter Modelica.SIunits.Area effective_area_TSS=0.05 "Flaeche der thermalen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			parameter Real illumination[:,2]=[0,0;1,1];
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{10,40},{30,60}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{10,10},{30,30}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{10,-20},{30,0}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{10,-50},{30,-30}})));
			var_Gain factor_Rad annotation(Placement(transformation(extent={{-35,-50},{-15,-30}})));
			Modelica.Blocks.Sources.CombiTimeTable timeTable1(
				table=illumination,
				smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(transformation(extent={{-95,-5},{-75,15}})));
			Modelica.Blocks.Math.Gain factor_TSS(k=effective_area_TSS * alpha_TSS / effective_area_total) annotation(Placement(transformation(extent={{-35,40},{-15,60}})));
			Modelica.Blocks.Math.Gain factor_MSS(k=effective_area_MSS * alpha_MSS / effective_area_total) annotation(Placement(transformation(extent={{-35,10},{-15,30}})));
			Modelica.Blocks.Math.Gain factor_ESS(k=effective_area_ESS * alpha_ESS / effective_area_total) annotation(Placement(transformation(extent={{-35,-20},{-15,0}})));
			VariableRad bodyRadiation_Rad annotation(Placement(transformation(
				origin={130,-40},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS(Gr=epsilon_TSS * effective_area_TSS) annotation(Placement(transformation(
				origin={130,50},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS(Gr=epsilon_MSS * effective_area_MSS) annotation(Placement(transformation(
				origin={130,20},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_ESS(Gr=epsilon_ESS * effective_area_ESS) annotation(Placement(transformation(
				origin={130,-10},
				extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector_env "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={90,10},
					extent={{10,10},{-10,-10}},
					rotation=180),
				iconTransformation(
					origin={100,0},
					extent={{-20,20},{20,-20}},
					rotation=270)));
			Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
				origin={175,5},
				extent={{10,10},{-10,-10}},
				rotation=180)));
			Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds1(
				tableOnFile=true,
				table=[250,0.5,0.9;290,0.7,0.7],
				tableName="thermochromLaCaMnO3",
				fileName="/home/jens/iBOSS2/Simulation_Linux/ibosssim/model/iboss/thermochrom_alpha_epsilon.txt",
				smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(transformation(extent={{135,-80},{155,-60}})));
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor_Radiator annotation(Placement(transformation(extent={{100,-80},{120,-60}})));
			Modelica.Blocks.Math.Gain factor_Area_Rad(k=effective_area_Rad) annotation(Placement(transformation(extent={{180,-80},{200,-60}})));
			Modelica.Blocks.Math.Gain factor_effective_Area_Rad(k=effective_area_Rad  / effective_area_total) annotation(Placement(transformation(
				origin={60,-95},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			equation
				connect(factor_Rad.y,HeatFlow_Rad.Q_flow) annotation(Line(
					points={{-14,-40},{-9,-40},{5,-40},{10,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.y,HeatFlow_ESS.Q_flow) annotation(Line(
					points={{-14,-10},{-9,-10},{5,-10},{10,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.y,HeatFlow_MSS.Q_flow) annotation(Line(
					points={{-14,20},{-9,20},{5,20},{10,20}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_TSS.y,HeatFlow_TSS.Q_flow) annotation(Line(
					points={{-14,50},{-9,50},{5,50},{10,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_TSS.port_b) annotation(Line(
					points={{185,5},{190,5},{190,50},{145,50},{140,50}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_MSS.port_b) annotation(Line(
					points={{185,5},{190,5},{190,20},{145,20},{140,20}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_ESS.port_b) annotation(Line(
					points={{185,5},{190,5},{190,-10},{145,-10},{140,-10}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_Rad.port_b) annotation(Line(
					points={{185,5},{190,5},{190,-40},{145,-40},{140,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_ESS.port_a,thermal_connector_env.ESS) annotation(Line(points={{120,-10},{115,-10},{95,-10},{95,10},{90,10}}));
				connect(bodyRadiation_MSS.port_a,thermal_connector_env.MSS) annotation(Line(points={{120,20},{115,20},{95,20},{95,10},{90,10}}));
				connect(bodyRadiation_TSS.port_a,thermal_connector_env.TSS) annotation(Line(points={{120,50},{115,50},{95,50},{95,10},{90,10}}));
				connect(bodyRadiation_Rad.port_a,thermal_connector_env.Rad) annotation(Line(points={{120,-40},{115,-40},{95,-40},{95,10},{90,10}}));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points={{30,-10},{35,-10},{85,-10},{85,10},{90,10}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points={{30,20},{35,20},{85,20},{85,10},{90,10}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points={{30,50},{35,50},{85,50},{85,10},{90,10}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points={{30,-40},{35,-40},{85,-40},{85,10},{90,10}}));
				connect(temperatureSensor_Radiator.T,combiTable1Ds1.u) annotation(Line(
					points={{120,-70},{125,-70},{128,-70},{133,-70}},
					color={0,0,127},
					thickness=0.0625));
				connect(temperatureSensor_Radiator.port,bodyRadiation_Rad.port_a) annotation(Line(
					points={{100,-70},{95,-70},{95,-40},{115,-40},{120,-40}},
					color={191,0,0},
					thickness=0.0625));
				
				connect(combiTable1Ds1.y[1],factor_Area_Rad.u) annotation(Line(
					points={{156,-70},{161,-70},{173,-70},{178,-70}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_Rad.k_gain,factor_effective_Area_Rad.y) annotation(Line(
					points={{-25,-31},{-25,-26},{9.300000000000001,-26},{9.300000000000001,-95},{44,-95},{49,
					-95}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_effective_Area_Rad.u,combiTable1Ds1.y[2]) annotation(Line(
					points={{72,-95},{77,-95},{161,-95},{161,-70},{156,-70}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_TSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,50},{-37,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_MSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,20},{-37,20}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_ESS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-10},{-37,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y[1],factor_Rad.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-40},{-37,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_Area_Rad.y,bodyRadiation_Rad.Gr) annotation(Line(
					points={{201,-70},{206,-70},{206,-26},{130,-26},{130,-31}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				combiTable1Ds1(y(flags=2)),
				Icon(graphics={
																																																																																																								Rectangle(
																																																																																																								lineColor={0,0,0},
																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																								extent={{-100,100},{100,-100}}),
																																																																																																							Ellipse(
																																																																																																								lineColor={0,0,0},
																																																																																																								fillColor={255,255,0},
																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																								extent={{98,-96},{-96,98}})}),
				experiment(
					StopTime=10,
					StartTime=0));
		end environment_var_rad;
		model var_Gain "Output the product of a variable gain value with the input signal"
			input Modelica.Blocks.Interfaces.RealInput k_gain annotation(Placement(transformation(
				origin={0,90},
				extent={{-20,-20},{20,20}},
				rotation=-90)));
			input Modelica.Blocks.Interfaces.RealInput u "Input signal connector" annotation(Placement(transformation(extent={{-140,-20},{-100,20}})));
			output Modelica.Blocks.Interfaces.RealOutput y "Output signal connector" annotation(Placement(transformation(extent={{100,-10},{120,10}})));
			equation
				y = noEvent(k_gain*u);
			annotation(
				Icon(graphics={
																																																																																																																																		Polygon(
																																																																																																																																points={{-100,-100},{-100,100},{100,0},{-100,-100}},
																																																																																																																																lineColor={0,0,127},
																																																																																																																																fillColor={255,255,255},
																																																																																																																																fillPattern=FillPattern.Solid),
																																																																																																																															Text(
																																																																																																																																textString="k=%k",
																																																																																																																																lineColor={0,0,0},
																																																																																																																																extent={{-150,-140},{150,-100}}),
																																																																																																																															Text(
																																																																																																																																textString="%name",
																																																																																																																																extent={{-150,140},{150,100}})}),
				Diagram(graphics={
																																																																																																																															Polygon(
																																																																																																																																points={{-100,-100},{-100,100},{100,0},{-100,-100}},
																																																																																																																																lineColor={0,0,127},
																																																																																																																																fillColor={255,255,255},
																																																																																																																																fillPattern=FillPattern.Solid),
																																																																																																																															Text(
																																																																																																																																textString="k",
																																																																																																																																extent={{-76,38},{0,-34}})}),
				Documentation(info="<html>
		<p>
		This block computes output <i>y</i> as
		<i>product</i> of gain <i>k</i> with the
		input <i>u</i>:
		</p>
		<pre>
			y = k * u;
		</pre>

		</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end var_Gain;
		model VariableRad_for_TIM "the same like the BodyRadiation class from Modelica, but with Gr as discrete"
			extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
			input Modelica.Blocks.Interfaces.RealInput A_View annotation(Placement(transformation(
				origin={-5,90},
				extent={{-20,-20},{20,20}},
				rotation=-90)));
			input Modelica.Blocks.Interfaces.RealInput alpha_l annotation(Placement(transformation(
				origin={-85,90},
				extent={{-20,-20},{20,20}},
				rotation=-90)));
			input Modelica.Blocks.Interfaces.RealInput epsilon_l annotation(Placement(transformation(
				origin={-45,90},
				extent={{-20,-20},{20,20}},
				rotation=270)));
			input Modelica.Blocks.Interfaces.RealInput epsilon_r annotation(Placement(transformation(
				origin={40,90},
				extent={{-20,-20},{20,20}},
				rotation=270)));
			input Modelica.Blocks.Interfaces.RealInput alpha_r annotation(Placement(transformation(
				origin={85,90},
				extent={{-20,-20},{20,20}},
				rotation=-90)));
			equation
				Q_flow = A_View * Modelica.Constants.sigma * (alpha_r * epsilon_l * port_a.T ^ 4 - alpha_l * epsilon_r *port_b.T ^ 4)/(alpha_l+alpha_r - (alpha_l * alpha_r));
			annotation(
				Icon(graphics={
																																																																																																																Rectangle(
																																																																																																																lineColor={0,0,0},
																																																																																																																fillColor={192,192,192},
																																																																																																																fillPattern=FillPattern.Backward,
																																																																																																																extent={{50,80},{90,-80}}),
																																																																																																															Rectangle(
																																																																																																																lineColor={0,0,0},
																																																																																																																fillColor={192,192,192},
																																																																																																																fillPattern=FillPattern.Backward,
																																																																																																																extent={{-90,80},{-50,-80}}),
																																																																																																															Line(
																																																																																																																points={{-36,10},{36,10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,10},{-26,16}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,10},{-26,4}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,-10},{36,-10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{26,-16},{36,-10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{26,-4},{36,-10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,-30},{36,-30}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,-30},{-26,-24}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,-30},{-26,-36}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-36,30},{36,30}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{26,24},{36,30}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{26,36},{36,30}},
																																																																																																																color={191,0,0}),
																																																																																																															Text(
																																																																																																																textString="%name",
																																																																																																																extent={{-150,125},{150,85}}),
																																																																																																															Text(
																																																																																																																textString="Gr=%Gr",
																																																																																																																lineColor={0,0,0},
																																																																																																																extent={{-150,-90},{150,-120}}),
																																																																																																															Rectangle(
																																																																																																																lineColor={191,0,0},
																																																																																																																fillColor={191,0,0},
																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																extent={{-50,80},{-44,-80}}),
																																																																																																															Rectangle(
																																																																																																																lineColor={191,0,0},
																																																																																																																fillColor={191,0,0},
																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																extent={{45,80},{50,-80}})}),
				Diagram(graphics={
																																																																																																															Rectangle(
																																																																																																																lineColor={0,0,0},
																																																																																																																fillColor={192,192,192},
																																																																																																																fillPattern=FillPattern.Backward,
																																																																																																																extent={{-90,80},{-56,-80}}),
																																																																																																															Line(
																																																																																																																points={{-56,80},{-56,-80}},
																																																																																																																color={0,0,0},
																																																																																																																thickness=1),
																																																																																																															Line(
																																																																																																																points={{50,80},{50,-80}},
																																																																																																																color={0,0,0},
																																																																																																																thickness=1),
																																																																																																															Rectangle(
																																																																																																																lineColor={0,0,0},
																																																																																																																fillColor={192,192,192},
																																																																																																																fillPattern=FillPattern.Backward,
																																																																																																																extent={{50,80},{90,-80}}),
																																																																																																															Line(
																																																																																																																points={{-40,10},{40,10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,10},{-30,16}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,10},{-30,4}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,-10},{40,-10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{30,-16},{40,-10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{30,-4},{40,-10}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,-30},{40,-30}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,-30},{-30,-24}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,-30},{-30,-36}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{-40,30},{40,30}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{30,24},{40,30}},
																																																																																																																color={191,0,0}),
																																																																																																															Line(
																																																																																																																points={{30,36},{40,30}},
																																																																																																																color={191,0,0})}),
				Documentation(info="<HTML>
	<p>
	This is a model describing the thermal radiation, i.e., electromagnetic
	radiation emitted between two bodies as a result of their temperatures.
	The following constitutive equation is used:
	</p>
	<pre>
		Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
	</pre>
	<p>
	where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
	constant (= Modelica.Constants.sigma). Gr may be determined by
	measurements and is assumed to be constant over the range of operations.
	</p>
	<p>
	For simple cases, Gr may be analytically computed. The analytical
	equations use epsilon, the emission value of a body which is in the
	range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
	Epsilon=0, if the body reflects all radiation and does not absorb any.
	</p>
	<pre>
	   Typical values for epsilon:
	   aluminium, polished    0.04
	   copper, polished       0.04
	   gold, polished         0.02
	   paper                  0.09
	   rubber                 0.95
	   silver, polished       0.02
	   wood                   0.85..0.9
	</pre>
	<p><b>Analytical Equations for Gr</b></p>
	<p>
	<b>Small convex object in large enclosure</b>
	(e.g., a hot machine in a room):
	</p>
	<pre>
		Gr = e*A
		where
		   e: Emission value of object (0..1)
		   A: Surface area of object where radiation
			  heat transfer takes place
	</pre>
	<p><b>Two parallel plates</b>:</p>
	<pre>
		Gr = A/(1/e1 + 1/e2 - 1)
		where
		   e1: Emission value of plate1 (0..1)
		   e2: Emission value of plate2 (0..1)
		   A : Area of plate1 (= area of plate2)
	</pre>
	<p><b>Two long cylinders in each other</b>, where radiation takes
	place from the inner to the outer cylinder):
	</p>
	<pre>
		Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
		where
		   pi: = Modelica.Constants.pi
		   r1: Radius of inner cylinder
		   r2: Radius of outer cylinder
		   L : Length of the two cylinders
		   e1: Emission value of inner cylinder (0..1)
		   e2: Emission value of outer cylinder (0..1)
	</pre>
	</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end VariableRad_for_TIM;
		model VariableRad "the same like the BodyRadiation class from Modelica, but with Gr as discrete"
			extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
			input Modelica.Blocks.Interfaces.RealInput Gr annotation(Placement(transformation(
				origin={0,90},
				extent={{-20,-20},{20,20}},
				rotation=-90)));
			equation
				Q_flow = Gr * Modelica.Constants.sigma * (port_a.T ^ 4 - port_b.T ^ 4);
			annotation(
				Icon(graphics={
																																																																																																																														Rectangle(
																																																																																																																												lineColor={0,0,0},
																																																																																																																												fillColor={192,192,192},
																																																																																																																												fillPattern=FillPattern.Backward,
																																																																																																																												extent={{50,80},{90,-80}}),
																																																																																																																											Rectangle(
																																																																																																																												lineColor={0,0,0},
																																																																																																																												fillColor={192,192,192},
																																																																																																																												fillPattern=FillPattern.Backward,
																																																																																																																												extent={{-90,80},{-50,-80}}),
																																																																																																																											Line(
																																																																																																																												points={{-36,10},{36,10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,10},{-26,16}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,10},{-26,4}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,-10},{36,-10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{26,-16},{36,-10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{26,-4},{36,-10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,-30},{36,-30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,-30},{-26,-24}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,-30},{-26,-36}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-36,30},{36,30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{26,24},{36,30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{26,36},{36,30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Text(
																																																																																																																												textString="%name",
																																																																																																																												extent={{-150,125},{150,85}}),
																																																																																																																											Text(
																																																																																																																												textString="Gr=%Gr",
																																																																																																																												lineColor={0,0,0},
																																																																																																																												extent={{-150,-90},{150,-120}}),
																																																																																																																											Rectangle(
																																																																																																																												lineColor={191,0,0},
																																																																																																																												fillColor={191,0,0},
																																																																																																																												fillPattern=FillPattern.Solid,
																																																																																																																												extent={{-50,80},{-44,-80}}),
																																																																																																																											Rectangle(
																																																																																																																												lineColor={191,0,0},
																																																																																																																												fillColor={191,0,0},
																																																																																																																												fillPattern=FillPattern.Solid,
																																																																																																																												extent={{45,80},{50,-80}})}),
				Diagram(graphics={
																																																																																																																											Rectangle(
																																																																																																																												lineColor={0,0,0},
																																																																																																																												fillColor={192,192,192},
																																																																																																																												fillPattern=FillPattern.Backward,
																																																																																																																												extent={{-90,80},{-56,-80}}),
																																																																																																																											Line(
																																																																																																																												points={{-56,80},{-56,-80}},
																																																																																																																												color={0,0,0},
																																																																																																																												thickness=1),
																																																																																																																											Line(
																																																																																																																												points={{50,80},{50,-80}},
																																																																																																																												color={0,0,0},
																																																																																																																												thickness=1),
																																																																																																																											Rectangle(
																																																																																																																												lineColor={0,0,0},
																																																																																																																												fillColor={192,192,192},
																																																																																																																												fillPattern=FillPattern.Backward,
																																																																																																																												extent={{50,80},{90,-80}}),
																																																																																																																											Line(
																																																																																																																												points={{-40,10},{40,10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,10},{-30,16}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,10},{-30,4}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,-10},{40,-10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{30,-16},{40,-10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{30,-4},{40,-10}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,-30},{40,-30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,-30},{-30,-24}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,-30},{-30,-36}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{-40,30},{40,30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{30,24},{40,30}},
																																																																																																																												color={191,0,0}),
																																																																																																																											Line(
																																																																																																																												points={{30,36},{40,30}},
																																																																																																																												color={191,0,0})}),
				Documentation(info="<HTML>
	<p>
	This is a model describing the thermal radiation, i.e., electromagnetic
	radiation emitted between two bodies as a result of their temperatures.
	The following constitutive equation is used:
	</p>
	<pre>
		Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
	</pre>
	<p>
	where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
	constant (= Modelica.Constants.sigma). Gr may be determined by
	measurements and is assumed to be constant over the range of operations.
	</p>
	<p>
	For simple cases, Gr may be analytically computed. The analytical
	equations use epsilon, the emission value of a body which is in the
	range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
	Epsilon=0, if the body reflects all radiation and does not absorb any.
	</p>
	<pre>
	   Typical values for epsilon:
	   aluminium, polished    0.04
	   copper, polished       0.04
	   gold, polished         0.02
	   paper                  0.09
	   rubber                 0.95
	   silver, polished       0.02
	   wood                   0.85..0.9
	</pre>
	<p><b>Analytical Equations for Gr</b></p>
	<p>
	<b>Small convex object in large enclosure</b>
	(e.g., a hot machine in a room):
	</p>
	<pre>
		Gr = e*A
		where
		   e: Emission value of object (0..1)
		   A: Surface area of object where radiation
			  heat transfer takes place
	</pre>
	<p><b>Two parallel plates</b>:</p>
	<pre>
		Gr = A/(1/e1 + 1/e2 - 1)
		where
		   e1: Emission value of plate1 (0..1)
		   e2: Emission value of plate2 (0..1)
		   A : Area of plate1 (= area of plate2)
	</pre>
	<p><b>Two long cylinders in each other</b>, where radiation takes
	place from the inner to the outer cylinder):
	</p>
	<pre>
		Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
		where
		   pi: = Modelica.Constants.pi
		   r1: Radius of inner cylinder
		   r2: Radius of outer cylinder
		   L : Length of the two cylinders
		   e1: Emission value of inner cylinder (0..1)
		   e2: Emission value of outer cylinder (0..1)
	</pre>
	</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end VariableRad;
		model VariableRad_no_Input "the same like the BodyRadiation class from Modelica, but with Gr as discrete"
			extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
			discrete Real Gr(unit="m2") "Net radiation conductance between two surfaces (see docu)";
			equation
				Q_flow = Gr * Modelica.Constants.sigma * (port_a.T ^ 4 - port_b.T ^ 4);
			annotation(
				Icon(graphics={
																																																																																																																																																																																										Rectangle(
																																																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																																																								fillColor={192,192,192},
																																																																																																																																																																																								fillPattern=FillPattern.Backward,
																																																																																																																																																																																								extent={{50,80},{90,-80}}),
																																																																																																																																																																																							Rectangle(
																																																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																																																								fillColor={192,192,192},
																																																																																																																																																																																								fillPattern=FillPattern.Backward,
																																																																																																																																																																																								extent={{-90,80},{-50,-80}}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,10},{36,10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,10},{-26,16}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,10},{-26,4}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,-10},{36,-10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{26,-16},{36,-10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{26,-4},{36,-10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,-30},{36,-30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,-30},{-26,-24}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,-30},{-26,-36}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-36,30},{36,30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{26,24},{36,30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{26,36},{36,30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Text(
																																																																																																																																																																																								textString="%name",
																																																																																																																																																																																								extent={{-150,125},{150,85}}),
																																																																																																																																																																																							Text(
																																																																																																																																																																																								textString="Gr=%Gr",
																																																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																																																								extent={{-150,-90},{150,-120}}),
																																																																																																																																																																																							Rectangle(
																																																																																																																																																																																								lineColor={191,0,0},
																																																																																																																																																																																								fillColor={191,0,0},
																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																								extent={{-50,80},{-44,-80}}),
																																																																																																																																																																																							Rectangle(
																																																																																																																																																																																								lineColor={191,0,0},
																																																																																																																																																																																								fillColor={191,0,0},
																																																																																																																																																																																								fillPattern=FillPattern.Solid,
																																																																																																																																																																																								extent={{45,80},{50,-80}})}),
				Diagram(graphics={
																																																																																																																																																																																							Rectangle(
																																																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																																																								fillColor={192,192,192},
																																																																																																																																																																																								fillPattern=FillPattern.Backward,
																																																																																																																																																																																								extent={{-90,80},{-56,-80}}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-56,80},{-56,-80}},
																																																																																																																																																																																								color={0,0,0},
																																																																																																																																																																																								thickness=1),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{50,80},{50,-80}},
																																																																																																																																																																																								color={0,0,0},
																																																																																																																																																																																								thickness=1),
																																																																																																																																																																																							Rectangle(
																																																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																																																								fillColor={192,192,192},
																																																																																																																																																																																								fillPattern=FillPattern.Backward,
																																																																																																																																																																																								extent={{50,80},{90,-80}}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,10},{40,10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,10},{-30,16}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,10},{-30,4}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,-10},{40,-10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{30,-16},{40,-10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{30,-4},{40,-10}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,-30},{40,-30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,-30},{-30,-24}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,-30},{-30,-36}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{-40,30},{40,30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{30,24},{40,30}},
																																																																																																																																																																																								color={191,0,0}),
																																																																																																																																																																																							Line(
																																																																																																																																																																																								points={{30,36},{40,30}},
																																																																																																																																																																																								color={191,0,0})}),
				Documentation(info="<HTML>
	<p>
	This is a model describing the thermal radiation, i.e., electromagnetic
	radiation emitted between two bodies as a result of their temperatures.
	The following constitutive equation is used:
	</p>
	<pre>
		Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
	</pre>
	<p>
	where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
	constant (= Modelica.Constants.sigma). Gr may be determined by
	measurements and is assumed to be constant over the range of operations.
	</p>
	<p>
	For simple cases, Gr may be analytically computed. The analytical
	equations use epsilon, the emission value of a body which is in the
	range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
	Epsilon=0, if the body reflects all radiation and does not absorb any.
	</p>
	<pre>
	   Typical values for epsilon:
	   aluminium, polished    0.04
	   copper, polished       0.04
	   gold, polished         0.02
	   paper                  0.09
	   rubber                 0.95
	   silver, polished       0.02
	   wood                   0.85..0.9
	</pre>
	<p><b>Analytical Equations for Gr</b></p>
	<p>
	<b>Small convex object in large enclosure</b>
	(e.g., a hot machine in a room):
	</p>
	<pre>
		Gr = e*A
		where
		   e: Emission value of object (0..1)
		   A: Surface area of object where radiation
			  heat transfer takes place
	</pre>
	<p><b>Two parallel plates</b>:</p>
	<pre>
		Gr = A/(1/e1 + 1/e2 - 1)
		where
		   e1: Emission value of plate1 (0..1)
		   e2: Emission value of plate2 (0..1)
		   A : Area of plate1 (= area of plate2)
	</pre>
	<p><b>Two long cylinders in each other</b>, where radiation takes
	place from the inner to the outer cylinder):
	</p>
	<pre>
		Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
		where
		   pi: = Modelica.Constants.pi
		   r1: Radius of inner cylinder
		   r2: Radius of outer cylinder
		   L : Length of the two cylinders
		   e1: Emission value of inner cylinder (0..1)
		   e2: Emission value of outer cylinder (0..1)
	</pre>
	</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end VariableRad_no_Input;
		model variable_ThermalConductor "Lumped thermal element transporting heat without storing it"
			extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
			discrete Modelica.SIunits.ThermalConductance G "Constant thermal conductance of material";
			equation
				Q_flow = G*dT;
			annotation(
				Icon(graphics={
																																																																																																																																																																																																																																																																																																																																																											Rectangle(
																																																																																																																																																																																																																																																																																																																																																				pattern=LinePattern.None,
																																																																																																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																																																																																																				fillColor={192,192,192},
																																																																																																																																																																																																																																																																																																																																																				fillPattern=FillPattern.Backward,
																																																																																																																																																																																																																																																																																																																																																				extent={{-90,70},{90,-70}}),
																																																																																																																																																																																																																																																																																																																																																			Line(
																																																																																																																																																																																																																																																																																																																																																				points={{-90,70},{-90,-70}},
																																																																																																																																																																																																																																																																																																																																																				color={0,0,0},
																																																																																																																																																																																																																																																																																																																																																				thickness=0.5),
																																																																																																																																																																																																																																																																																																																																																			Line(
																																																																																																																																																																																																																																																																																																																																																				points={{90,70},{90,-70}},
																																																																																																																																																																																																																																																																																																																																																				color={0,0,0},
																																																																																																																																																																																																																																																																																																																																																				thickness=0.5),
																																																																																																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																																																																																																				textString="%name",
																																																																																																																																																																																																																																																																																																																																																				extent={{-150,115},{150,75}}),
																																																																																																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																																																																																																				textString="G=%G",
																																																																																																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																																																																																																				extent={{-150,-75},{150,-105}})}),
				Diagram(graphics={
																																																																																																																																																																																																																																																																																																																																																			Line(
																																																																																																																																																																																																																																																																																																																																																				points={{-80,0},{80,0}},
																																																																																																																																																																																																																																																																																																																																																				color={255,0,0},
																																																																																																																																																																																																																																																																																																																																																				arrow={Arrow.None,Arrow.Filled},
																																																																																																																																																																																																																																																																																																																																																				thickness=0.5),
																																																																																																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																																																																																																				textString="Q_flow",
																																																																																																																																																																																																																																																																																																																																																				lineColor={255,0,0},
																																																																																																																																																																																																																																																																																																																																																				extent={{-100,-20},{100,-40}}),
																																																																																																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																																																																																																				textString="dT = port_a.T - port_b.T",
																																																																																																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																																																																																																				extent={{-100,40},{100,20}})}),
				Documentation(info="<HTML>
		<p>
		This is a model for transport of heat without storing it; see also:
		<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ThermalResistor\">ThermalResistor</a>.
		It may be used for complicated geometries where
		the thermal conductance G (= inverse of thermal resistance)
		is determined by measurements and is assumed to be constant
		over the range of operations. If the component consists mainly of
		one type of material and a regular geometry, it may be calculated,
		e.g., with one of the following equations:
		</p>
		<ul>
		<li><p>
			Conductance for a <b>box</b> geometry under the assumption
			that heat flows along the box length:</p>
			<pre>
			G = k*A/L
			k: Thermal conductivity (material constant)
			A: Area of box
			L: Length of box
			</pre>
			</li>
		<li><p>
			Conductance for a <b>cylindrical</b> geometry under the assumption
			that heat flows from the inside to the outside radius
			of the cylinder:</p>
			<pre>
			G = 2*pi*k*L/log(r_out/r_in)
			pi   : Modelica.Constants.pi
			k    : Thermal conductivity (material constant)
			L    : Length of cylinder
			log  : Modelica.Math.log;
			r_out: Outer radius of cylinder
			r_in : Inner radius of cylinder
			</pre>
			</li>
		</ul>
		<pre>
			Typical values for k at 20 degC in W/(m.K):
			  aluminium   220
			  concrete      1
			  copper      384
			  iron         74
			  silver      407
			  steel        45 .. 15 (V2A)
			  wood         0.1 ... 0.2
		</pre>
		</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end variable_ThermalConductor;
		model variable_ThermalConductor_input "Lumped thermal element transporting heat without storing it"
			input Modelica.Blocks.Interfaces.RealInput G "Constant thermal conductance of material" annotation(Placement(
				transformation(
					origin={0,90},
					extent={{-20,-20},{20,20}},
					rotation=-90),
				iconTransformation(
					origin={0,100},
					extent={{-20,-20},{20,20}},
					rotation=-90)));
			extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
			equation
				Q_flow = G*dT;
			annotation(
				Icon(graphics={
																																																																																																				Rectangle(
																																																																																																				pattern=LinePattern.None,
																																																																																																				lineColor={0,0,0},
																																																																																																				fillColor={192,192,192},
																																																																																																				fillPattern=FillPattern.Backward,
																																																																																																				extent={{-90,70},{90,-70}}),
																																																																																																			Line(
																																																																																																				points={{-90,70},{-90,-70}},
																																																																																																				color={0,0,0},
																																																																																																				thickness=0.5),
																																																																																																			Line(
																																																																																																				points={{90,70},{90,-70}},
																																																																																																				color={0,0,0},
																																																																																																				thickness=0.5),
																																																																																																			Text(
																																																																																																				textString="%name",
																																																																																																				extent={{-150,115},{150,75}}),
																																																																																																			Text(
																																																																																																				textString="G=%G",
																																																																																																				lineColor={0,0,0},
																																																																																																				extent={{-150,-75},{150,-105}})}),
				Diagram(graphics={
																																																																																																			Line(
																																																																																																				points={{-80,0},{80,0}},
																																																																																																				color={255,0,0},
																																																																																																				arrow={Arrow.None,Arrow.Filled},
																																																																																																				thickness=0.5),
																																																																																																			Text(
																																																																																																				textString="Q_flow",
																																																																																																				lineColor={255,0,0},
																																																																																																				extent={{-100,-20},{100,-40}}),
																																																																																																			Text(
																																																																																																				textString="dT = port_a.T - port_b.T",
																																																																																																				lineColor={0,0,0},
																																																																																																				extent={{-100,40},{100,20}})}),
				Documentation(info="<HTML>
		<p>
		This is a model for transport of heat without storing it; see also:
		<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ThermalResistor\">ThermalResistor</a>.
		It may be used for complicated geometries where
		the thermal conductance G (= inverse of thermal resistance)
		is determined by measurements and is assumed to be constant
		over the range of operations. If the component consists mainly of
		one type of material and a regular geometry, it may be calculated,
		e.g., with one of the following equations:
		</p>
		<ul>
		<li><p>
			Conductance for a <b>box</b> geometry under the assumption
			that heat flows along the box length:</p>
			<pre>
			G = k*A/L
			k: Thermal conductivity (material constant)
			A: Area of box
			L: Length of box
			</pre>
			</li>
		<li><p>
			Conductance for a <b>cylindrical</b> geometry under the assumption
			that heat flows from the inside to the outside radius
			of the cylinder:</p>
			<pre>
			G = 2*pi*k*L/log(r_out/r_in)
			pi   : Modelica.Constants.pi
			k    : Thermal conductivity (material constant)
			L    : Length of cylinder
			log  : Modelica.Math.log;
			r_out: Outer radius of cylinder
			r_in : Inner radius of cylinder
			</pre>
			</li>
		</ul>
		<pre>
			Typical values for k at 20 degC in W/(m.K):
			  aluminium   220
			  concrete      1
			  copper      384
			  iron         74
			  silver      407
			  steel        45 .. 15 (V2A)
			  wood         0.1 ... 0.2
		</pre>
		</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end variable_ThermalConductor_input;
		model aborption "figures in the absorption of the radiation"
			thermal_connector thermal_connector_env "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={105,-5},
					extent={{10,10},{-10,-10}},
					rotation=180),
				iconTransformation(
					origin={100,0},
					extent={{-20,20},{20,-20}},
					rotation=270)));
			input Modelica.Blocks.Interfaces.RealInput u "'input Real' as connector" annotation(Placement(
				transformation(extent={{-95,-30},{-55,10}}),
				iconTransformation(extent={{-120,-20},{-80,20}})));
			parameter Modelica.SIunits.Area effective_area_total=0.16 "Flaeche des Seitenpaneels";
			parameter Modelica.SIunits.Area effective_area_Rad=0.1048 "Flaeche des Radiators";
			parameter Modelica.SIunits.Area effective_area_TSS=0.05 "Flaeche der thermalen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{25,25},{45,45}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{25,-5},{45,15}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{25,-35},{45,-15}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{25,-65},{45,-45}})));
			Modelica.Blocks.Math.Gain factor_Rad(k=effective_area_Rad * alpha_Rad / effective_area_total) annotation(Placement(transformation(extent={{-20,-65},{0,-45}})));
			Modelica.Blocks.Math.Gain factor_TSS(k=effective_area_TSS * alpha_TSS / effective_area_total) annotation(Placement(transformation(extent={{-20,25},{0,45}})));
			Modelica.Blocks.Math.Gain factor_MSS(k=effective_area_MSS * alpha_MSS / effective_area_total) annotation(Placement(transformation(extent={{-20,-5},{0,15}})));
			Modelica.Blocks.Math.Gain factor_ESS(k=effective_area_ESS * alpha_ESS / effective_area_total) annotation(Placement(transformation(extent={{-20,-35},{0,-15}})));
			equation
				connect(factor_Rad.y,HeatFlow_Rad.Q_flow) annotation(Line(
					points={{1,-55},{6,-55},{20,-55},{25,-55}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.y,HeatFlow_ESS.Q_flow) annotation(Line(
					points={{1,-25},{6,-25},{20,-25},{25,-25}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.y,HeatFlow_MSS.Q_flow) annotation(Line(
					points={{1,5},{6,5},{20,5},{25,5}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_TSS.y,HeatFlow_TSS.Q_flow) annotation(Line(
					points={{1,35},{6,35},{20,35},{25,35}},
					color={0,0,127},
					thickness=0.0625));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points={{45,-25},{50,-25},{100,-25},{100,-5},{105,-5}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points={{45,5},{50,5},{100,5},{100,-5},{105,-5}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points={{45,35},{50,35},{100,35},{100,-5},{105,-5}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points={{45,-55},{50,-55},{100,-55},{100,-5},{105,-5}}));
				connect(factor_TSS.u,u) annotation(Line(
					points={{-22,35},{-27,35},{-70,35},{-70,-10},{-75,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_MSS.u,u) annotation(Line(
					points={{-22,5},{-27,5},{-70,5},{-70,-10},{-75,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_ESS.u,u) annotation(Line(
					points={{-22,-25},{-27,-25},{-70,-25},{-70,-10},{-75,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(factor_Rad.u,u) annotation(Line(
					points={{-22,-55},{-27,-55},{-70,-55},{-70,-10},{-75,-10}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				Icon(graphics={
																																																																																																																																																																																																																																																																																																																																																																																																											Rectangle(
																																																																																																																																																																																																																																																																																																																																																																																																				lineColor={0,0,0},
																																																																																																																																																																																																																																																																																																																																																																																																				fillColor={255,255,0},
																																																																																																																																																																																																																																																																																																																																																																																																				fillPattern=FillPattern.Solid,
																																																																																																																																																																																																																																																																																																																																																																																																				extent={{-100,100},{100,-100}}),
																																																																																																																																																																																																																																																																																																																																																																																																			Text(
																																																																																																																																																																																																																																																																																																																																																																																																				textString="VEROSIM",
																																																																																																																																																																																																																																																																																																																																																																																																				lineColor={255,0,0},
																																																																																																																																																																																																																																																																																																																																																																																																				extent={{-100,100},{100,-100}})}),
				experiment(
					StopTime=10,
					StartTime=0));
		end aborption;
		block variable_Gain "Output the product of a variable gain value with the input signal"
			discrete Real k(
				start=1,
				unit="1") "Gain value multiplied with input signal";
			input Modelica.Blocks.Interfaces.RealInput u "Input signal connector" annotation(Placement(transformation(extent={{-140,-20},{-100,20}})));
			output Modelica.Blocks.Interfaces.RealOutput y "Output signal connector" annotation(Placement(transformation(extent={{100,-10},{120,10}})));
			equation
				y = k * u;
			annotation(
				Icon(graphics={
																																																																																																																																																																																																																																																																																																																																																																															Polygon(
																																																																																																																																																																																																																																																																																																																																																																								points={{-100,-100},{-100,100},{100,0},{-100,-100}},
																																																																																																																																																																																																																																																																																																																																																																								lineColor={0,0,127},
																																																																																																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid),
																																																																																																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																																																																																																								textString="k=%k",
																																																																																																																																																																																																																																																																																																																																																																								lineColor={0,0,0},
																																																																																																																																																																																																																																																																																																																																																																								extent={{-150,-140},{150,-100}}),
																																																																																																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																																																																																																								textString="%name",
																																																																																																																																																																																																																																																																																																																																																																								extent={{-150,140},{150,100}})}),
				Diagram(graphics={
																																																																																																																																																																																																																																																																																																																																																																							Polygon(
																																																																																																																																																																																																																																																																																																																																																																								points={{-100,-100},{-100,100},{100,0},{-100,-100}},
																																																																																																																																																																																																																																																																																																																																																																								lineColor={0,0,127},
																																																																																																																																																																																																																																																																																																																																																																								fillColor={255,255,255},
																																																																																																																																																																																																																																																																																																																																																																								fillPattern=FillPattern.Solid),
																																																																																																																																																																																																																																																																																																																																																																							Text(
																																																																																																																																																																																																																																																																																																																																																																								textString="k",
																																																																																																																																																																																																																																																																																																																																																																								extent={{-76,38},{0,-34}})}),
				Documentation(info="<html>
 <p>
 This block computes output <i>y</i> as
 <i>product</i> of gain <i>k</i> with the
 input <i>u</i>:
 </p>
 <pre>
     y = k * u;
 </pre>

 </html>"));
		end variable_Gain;
		model heater_OnOff_noEvent "On-off controller for heater"
			parameter Real hysteresis=5 "hysteresis of the heater";
			input Modelica.Blocks.Interfaces.RealInput reference_low "Connector of Real input signal used as reference signal" annotation(Placement(
				transformation(extent={{-140,80},{-100,40}}),
				iconTransformation(extent={{-140,80},{-100,40}})));
			input Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal used as measurement signal" annotation(Placement(
				transformation(extent={{-140,-40},{-100,-80}}),
				iconTransformation(extent={{-140,-40},{-100,-80}})));
			output Modelica.Blocks.Interfaces.RealOutput y(start=0) "Connector of Real output signal used as actuator signal" annotation(Placement(
				transformation(extent={{100,-10},{120,10}}),
				iconTransformation(extent={{100,-10},{120,10}})));
			extends Modelica.Blocks.Icons.PartialBooleanBlock;
			function bangbang_heat
				input Real ref_low;
				input Real hys;
				input Real value;
				input Real actual_state;
				output Real state_out;
				algorithm
					if value < ref_low then
					  state_out := 1;
					elseif value > ref_low + hys then
					  state_out := 0;
					else
					  state_out := actual_state;
					end if;
			end bangbang_heat;
			equation
				y = noEvent(bangbang_heat(reference_low, hysteresis, u, y));
			annotation(
				Icon(graphics={
																																																																																																																																																																																																																																																																														Text(
																																																																																																																																																																																																																																																																												textString="low",
																																																																																																																																																																																																																																																																												lineThickness=0.5,
																																																																																																																																																																																																																																																																												extent={{-108.5,14.5},{27.5,-15.5}}),
																																																																																																																																																																																																																																																																											Text(
																																																																																																																																																																																																																																																																												textString="u",
																																																																																																																																																																																																																																																																												extent={{-94,-52},{-34,-74}}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-76,-32},{-68,-6},{-50,26},{-24,40},{-2,42},{16,
																																																																																																																																																																																																																																																																												36},{32,28},{48,12},{58,-6},{68,-28}},
																																																																																																																																																																																																																																																																												color={255,0,0}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-78,-2},{-6,18},{82,-12}},
																																																																																																																																																																																																																																																																												color={255,0,0}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-78,12},{-6,30},{82,0}}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-78,-16},{-6,4},{82,-26}}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-82,-18},{-56,-18},{-56,-40},{64,-40},{64,-20},{90,
																																																																																																																																																																																																																																																																												-20}},
																																																																																																																																																																																																																																																																												color={255,0,255}),
																																																																																																																																																																																																																																																																											Text(
																																																																																																																																																																																																																																																																												textString="high",
																																																																																																																																																																																																																																																																												lineThickness=0.5,
																																																																																																																																																																																																																																																																												extent={{-105.5,66.7},{30.5,36.7}})}),
				Documentation(info="<html>
<p>The block OnOffController sets the output signal <b>y</b> to <b>true</b> when
the input signal <b>u</b> falls below the <b>reference</b> signal minus half of
the bandwidth and sets the output signal <b>y</b> to <b>false</b> when the input
signal <b>u</b> exceeds the <b>reference</b> signal plus half of the bandwidth.</p>
</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end heater_OnOff_noEvent;
		model cooler_OnOff_noEvent "On-off controller for heater"
			input Modelica.Blocks.Interfaces.RealInput reference_high "Connector of Real input signal used as reference signal" annotation(Placement(
				transformation(extent={{-140,80},{-100,40}}),
				iconTransformation(extent={{-120,20},{-80,-20}})));
			parameter Real hysteresis=5 "hysteresis of the cooler";
			input Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal used as measurement signal" annotation(Placement(
				transformation(extent={{-140,-40},{-100,-80}}),
				iconTransformation(extent={{-140,-40},{-100,-80}})));
			output Modelica.Blocks.Interfaces.IntegerOutput y(start=0) "Connector of Real output signal used as actuator signal" annotation(Placement(
				transformation(extent={{100,-10},{120,10}}),
				iconTransformation(extent={{100,-10},{120,10}})));
			extends Modelica.Blocks.Icons.PartialBooleanBlock;
			function bangbang_cool
				input Real ref_high;
				input Real hys;
				input Real value;
				input Integer actual_state;
				input Integer pre_state;
				output Integer state_out;
				algorithm
					if ((value > ref_high) and (actual_state == 0) and (pre_state == 0)) then
					  state_out := 1;
					elseif ((value < ref_high - hys) and (actual_state == 1) and (pre_state == 1)) then
					  state_out := 0;
					else
					  state_out := actual_state;
					end if;
			end bangbang_cool;
			equation
				y = bangbang_cool(reference_high,hysteresis,u,y,pre(y));
			annotation(
				Icon(graphics={
																																																																																																																																																																																																																																																																														Text(
																																																																																																																																																																																																																																																																												textString="low",
																																																																																																																																																																																																																																																																												lineThickness=0.5,
																																																																																																																																																																																																																																																																												extent={{-108.5,14.5},{27.5,-15.5}}),
																																																																																																																																																																																																																																																																											Text(
																																																																																																																																																																																																																																																																												textString="u",
																																																																																																																																																																																																																																																																												extent={{-94,-52},{-34,-74}}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-76,-32},{-68,-6},{-50,26},{-24,40},{-2,42},{16,
																																																																																																																																																																																																																																																																												36},{32,28},{48,12},{58,-6},{68,-28}},
																																																																																																																																																																																																																																																																												color={255,0,0}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-78,-2},{-6,18},{82,-12}},
																																																																																																																																																																																																																																																																												color={255,0,0}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-78,12},{-6,30},{82,0}}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-78,-16},{-6,4},{82,-26}}),
																																																																																																																																																																																																																																																																											Line(
																																																																																																																																																																																																																																																																												points={{-82,-18},{-56,-18},{-56,-40},{64,-40},{64,-20},{90,
																																																																																																																																																																																																																																																																												-20}},
																																																																																																																																																																																																																																																																												color={255,0,255}),
																																																																																																																																																																																																																																																																											Text(
																																																																																																																																																																																																																																																																												textString="high",
																																																																																																																																																																																																																																																																												lineThickness=0.5,
																																																																																																																																																																																																																																																																												extent={{-105.5,66.7},{30.5,36.7}})}),
				Documentation(info="<html>
<p>The block OnOffController sets the output signal <b>y</b> to <b>true</b> when
the input signal <b>u</b> falls below the <b>reference</b> signal minus half of
the bandwidth and sets the output signal <b>y</b> to <b>false</b> when the input
signal <b>u</b> exceeds the <b>reference</b> signal plus half of the bandwidth.</p>
</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end cooler_OnOff_noEvent;
		expandable connector panel_surface "optical properties of the outer surface of the side panel"
			Modelica.SIunits.Emissivity alpha_TSS "absorption coefficent of the thermal interface";
			Modelica.SIunits.Emissivity alpha_MSS "absorption coefficent of the mechanical interface";
			Modelica.SIunits.Emissivity alpha_ESS "absorption coefficent of the electrical interface";
			Modelica.SIunits.Emissivity alpha_Rad "absorption coefficent of the radiator";
			Modelica.SIunits.Emissivity epsilon_TSS "emission coefficent of the thermal interface";
			Modelica.SIunits.Emissivity epsilon_MSS "emission coefficent of the mechanical interface";
			Modelica.SIunits.Emissivity epsilon_ESS "emission coefficent of the electrical interface";
			Modelica.SIunits.Emissivity epsilon_Rad "emission coefficent of the radiator";
			Modelica.SIunits.Area A_TSS(unit="m2") "Querschnittsflaeche der TSS";
			Modelica.SIunits.Area A_MSS(unit="m2") "Querschnittsflaeche der MSS";
			Modelica.SIunits.Area A_ESS(unit="m2") "Querschnittsflaeche der ESS";
			Modelica.SIunits.Area A_Rad(unit="m2") "Querschnittsflaeche des Panels";
			annotation(Icon(graphics={
																																																																																																																																																								Rectangle(
																																																																																																																																																									lineColor={255,0,0},
																																																																																																																																																									fillColor={255,255,0},
																																																																																																																																																									fillPattern=FillPattern.Solid,
																																																																																																																																																									extent={{-100,0},{100,-100}}),
																																																																																																																																																								Line(
																																																																																																																																																									points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
																																																																																																																																																									20},{21.7,26.7},{11.7,40}},
																																																																																																																																																									color={255,0,0},
																																																																																																																																																									smooth=Smooth.Bezier,
																																																																																																																																																									origin={-48.7,42.3},
																																																																																																																																																									rotation=-13),
																																																																																																																																																								Line(
																																																																																																																																																									points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
																																																																																																																																																									20},{21.7,26.7},{11.7,40}},
																																																																																																																																																									color={255,0,0},
																																																																																																																																																									smooth=Smooth.Bezier,
																																																																																																																																																									origin={-12.2,42.1},
																																																																																																																																																									rotation=-13),
																																																																																																																																																								Line(
																																																																																																																																																									points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
																																																																																																																																																									20},{21.7,26.7},{11.7,40}},
																																																																																																																																																									color={255,0,0},
																																																																																																																																																									smooth=Smooth.Bezier,
																																																																																																																																																									origin={27.6,42.1},
																																																																																																																																																									rotation=-13),
																																																																																																																																																								Line(
																																																																																																																																																									points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
																																																																																																																																																									20},{21.7,26.7},{11.7,40}},
																																																																																																																																																									color={255,0,0},
																																																																																																																																																									smooth=Smooth.Bezier,
																																																																																																																																																									origin={64.59999999999999,42.1},
																																																																																																																																																									rotation=-13)}));
		end panel_surface;
		connector thermal_connector_with_optical_properties "thermal connector between the BB with switchable optical properties of the surface"
			parameter Boolean use_optical_properties=true;
			thermal_connector thermal_connector1 annotation(Placement(
				transformation(
					origin={50,-1},
					extent={{-10,-10},{10,10}},
					rotation=-180),
				iconTransformation(
					origin={30,0},
					extent={{-10,-10},{10,10}})));
			panel_surface optical_properties if use_optical_properties annotation(Placement(
				transformation(extent={{-10,-110},{10,-90}}),
				iconTransformation(extent={{-10,-110},{10,-90}})));
			annotation(Icon(graphics={
																																																																																																																																																														Rectangle(
																																																																																																																																																															lineColor={255,255,255},
																																																																																																																																																															fillPattern=FillPattern.CrossDiag,
																																																																																																																																																															extent={{-100,0},{100,-50}}),
																																																																																																																																																														Line(
																																																																																																																																																															points={{-12.8,-57.8},{8.9,-38.5},{-16.1,-7.8},{14.3,15.1},{2.8,43},{2.8,
																																																																																																																																																															43}},
																																																																																																																																																															color={255,0,0},
																																																																																																																																																															smooth=Smooth.Bezier,
																																																																																																																																																															origin={-56.9,51.8},
																																																																																																																																																															rotation=-16),
																																																																																																																																																														Line(
																																																																																																																																																															points={{-12.8,-57.8},{8.9,-38.5},{-16.1,-7.8},{14.3,15.1},{2.8,43},{2.8,
																																																																																																																																																															43}},
																																																																																																																																																															color={255,0,0},
																																																																																																																																																															smooth=Smooth.Bezier,
																																																																																																																																																															origin={-27.2,51.1},
																																																																																																																																																															rotation=-16),
																																																																																																																																																														Line(
																																																																																																																																																															points={{-12.8,-57.8},{8.9,-38.5},{-16.1,-7.8},{14.3,15.1},{2.8,43},{2.8,
																																																																																																																																																															43}},
																																																																																																																																																															color={255,0,0},
																																																																																																																																																															smooth=Smooth.Bezier,
																																																																																																																																																															origin={5.8,51.1},
																																																																																																																																																															rotation=-16),
																																																																																																																																																														Line(
																																																																																																																																																															points={{-12.8,-57.8},{8.9,-38.5},{-16.1,-7.8},{14.3,15.1},{2.8,43},{2.8,
																																																																																																																																																															43}},
																																																																																																																																																															color={255,0,0},
																																																																																																																																																															smooth=Smooth.Bezier,
																																																																																																																																																															origin={39.8,51.1},
																																																																																																																																																															rotation=-16),
																																																																																																																																																														Line(
																																																																																																																																																															points={{-12.8,-57.8},{8.9,-38.5},{-16.1,-7.8},{14.3,15.1},{2.8,43},{2.8,
																																																																																																																																																															43}},
																																																																																																																																																															color={255,0,0},
																																																																																																																																																															smooth=Smooth.Bezier,
																																																																																																																																																															origin={68.8,51.1},
																																																																																																																																																															rotation=-16)}));
		end thermal_connector_with_optical_properties;
		block CombiTable1Ds_noEvent "Table look-up in one dimension (matrix/file) with one input and n outputs"
			extends Modelica.Blocks.Interfaces.SIMO(final nout=size(columns, 1));
			parameter Boolean tableOnFile=false "= true, if table is defined on file or in function usertab" annotation(Dialog(group="Table data definition"));
			parameter Real table[:,:]=fill(0.0, 0, 2) "Table matrix (grid = first column; e.g., table=[0,2])" annotation(Dialog(
				group="Table data definition",
				enable=not tableOnFile));
			parameter String tableName="NoName" "Table name on file or in function usertab (see docu)" annotation(Dialog(
				group="Table data definition",
				enable=tableOnFile));
			parameter String fileName="NoName" "File where matrix is stored" annotation(Dialog(
				group="Table data definition",
				enable=tableOnFile));
			parameter Boolean verboseRead=true "= true, if info message that file is loading is to be printed" annotation(Dialog(
				group="Table data definition",
				enable=tableOnFile));
			parameter Integer columns[:]=2:size(table, 2) "Columns of table to be interpolated" annotation(Dialog(group="Table data interpretation"));
			parameter Modelica.Blocks.Types.Smoothness smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments "Smoothness of table interpolation" annotation(Dialog(group="Table data interpretation"));
			protected
				Modelica.Blocks.Types.ExternalCombiTable1D tableID=Modelica.Blocks.Types.ExternalCombiTable1D(if tableOnFile then tableName else "NoName", if tableOnFile and fileName <> "NoName" and not Modelica.Utilities.Strings.isEmpty(fileName) then fileName else "NoName", table, columns, smoothness) "External table object";
				parameter Real tableOnFileRead(fixed=false) "= 1, if table was successfully read from file";
				function readTableData "Read table data from ASCII text or MATLAB MAT-file"
					extends Modelica.Icons.Function;
					input Modelica.Blocks.Types.ExternalCombiTable1D tableID;
					input Boolean forceRead=false "= true: Force reading of table data; = false: Only read, if not yet read.";
					input Boolean verboseRead "= true: Print info message; = false: No info message";
					output Real readSuccess "Table read success";
					external "C" readSuccess=ModelicaStandardTables_CombiTable1D_read(tableID,forceRead,verboseRead)
						annotation(Library="ModelicaStandardTables");
				end readTableData;
				function getTableValue "Interpolate 1-dim. table defined by matrix"
					extends Modelica.Icons.Function;
					input Modelica.Blocks.Types.ExternalCombiTable1D tableID;
					input Integer icol;
					input Real u;
					input Real tableAvailable "Dummy input to ensure correct sorting of function calls" annotation(__OpenModelica_UnusedVariable=true);
					output Real y;
					external "C" y=ModelicaStandardTables_CombiTable1D_getValue(tableID,icol,u)
						annotation(Library="ModelicaStandardTables");
					annotation(derivative(noDerivative=tableAvailable)=getDerTableValue);
				end getTableValue;
				function getTableValueNoDer "Interpolate 1-dim. table defined by matrix (but do not provide a derivative function)"
					extends Modelica.Icons.Function;
					input Modelica.Blocks.Types.ExternalCombiTable1D tableID;
					input Integer icol;
					input Real u;
					input Real tableAvailable "Dummy input to ensure correct sorting of function calls" annotation(__OpenModelica_UnusedVariable=true);
					output Real y;
					external "C" y=ModelicaStandardTables_CombiTable1D_getValue(tableID,icol,u)
						annotation(Library="ModelicaStandardTables");
				end getTableValueNoDer;
				function getDerTableValue "Derivative of interpolated 1-dim. table defined by matrix"
					extends Modelica.Icons.Function;
					input Modelica.Blocks.Types.ExternalCombiTable1D tableID;
					input Integer icol;
					input Real u;
					input Real tableAvailable "Dummy input to ensure correct sorting of function calls" annotation(__OpenModelica_UnusedVariable=true);
					input Real der_u;
					output Real der_y;
					external "C" der_y=ModelicaStandardTables_CombiTable1D_getDerValue(tableID,icol,u,der_u)
						annotation(Library="ModelicaStandardTables");
				end getDerTableValue;
			initial algorithm
						  if tableOnFile then
				tableOnFileRead := readTableData(tableID, false, verboseRead);
						  else
				tableOnFileRead := 1.0;
						  end if;
			equation
						  if tableOnFile then
				assert(tableName <> "NoName", "tableOnFile = true and no table name given");
						  else
				assert(size(table, 1) > 0 and size(table, 2) > 0, "tableOnFile = false and parameter table is an empty matrix");
						  end if;
						  if smoothness == Modelica.Blocks.Types.Smoothness.ConstantSegments then
				for i in 1:nout loop
				  y[i] = noEvent(getTableValueNoDer(tableID, i, u, tableOnFileRead));
				end for;
						  else
				for i in 1:nout loop
				  y[i] = noEvent(getTableValue(tableID, i, u, tableOnFileRead));
				end for;
						  end if;
			annotation(
				Icon(graphics={
																																																																																																																																																		Line(
																																																																																																																																																points={{-60,40},{-60,-40},{60,-40},{60,40},{30,40},{30,
																																																																																																																																																-40},{-30,-40},{-30,40},{-60,40},{-60,20},{60,20},{60,
																																																																																																																																																0},{-60,0},{-60,-20},{60,-20},{60,-40},{-60,-40},{-60,
																																																																																																																																																40},{60,40},{60,-40}}),
																																																																																																																																															Line(
																																																																																																																																																points={{0,40},{0,-40}}),
																																																																																																																																															Rectangle(
																																																																																																																																																fillColor={255,215,136},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-60,20},{-30,40}}),
																																																																																																																																															Rectangle(
																																																																																																																																																fillColor={255,215,136},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-60,0},{-30,20}}),
																																																																																																																																															Rectangle(
																																																																																																																																																fillColor={255,215,136},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-60,-20},{-30,0}}),
																																																																																																																																															Rectangle(
																																																																																																																																																fillColor={255,215,136},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-60,-40},{-30,-20}})}),
				Diagram(graphics={
																																																																																																																																															Rectangle(
																																																																																																																																																fillColor={235,235,235},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-60,60},{60,-60}}),
																																																																																																																																															Line(
																																																																																																																																																points={{-100,0},{-58,0}}),
																																																																																																																																															Line(
																																																																																																																																																points={{60,0},{100,0}}),
																																																																																																																																															Text(
																																																																																																																																																textString="1 dimensional linear table interpolation",
																																																																																																																																																extent={{-100,100},{100,64}}),
																																																																																																																																															Line(
																																																																																																																																																points={{-54,40},{-54,-40},{54,-40},{54,40},{28,40},{28,
																																																																																																																																																-40},{-28,-40},{-28,40},{-54,40},{-54,20},{54,20},{54,
																																																																																																																																																0},{-54,0},{-54,-20},{54,-20},{54,-40},{-54,-40},{-54,
																																																																																																																																																40},{54,40},{54,-40}},
																																																																																																																																																color={0,0,0}),
																																																																																																																																															Line(
																																																																																																																																																points={{0,40},{0,-40}},
																																																																																																																																																color={0,0,0}),
																																																																																																																																															Rectangle(
																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																fillColor={255,255,0},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-54,40},{-28,20}}),
																																																																																																																																															Rectangle(
																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																fillColor={255,255,0},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-54,20},{-28,0}}),
																																																																																																																																															Rectangle(
																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																fillColor={255,255,0},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-54,0},{-28,-20}}),
																																																																																																																																															Rectangle(
																																																																																																																																																lineColor={0,0,0},
																																																																																																																																																fillColor={255,255,0},
																																																																																																																																																fillPattern=FillPattern.Solid,
																																																																																																																																																extent={{-54,-20},{-28,-40}}),
																																																																																																																																															Text(
																																																																																																																																																textString="u",
																																																																																																																																																extent={{-52,56},{-34,44}}),
																																																																																																																																															Text(
																																																																																																																																																textString="y[1]",
																																																																																																																																																extent={{-22,54},{2,42}}),
																																																																																																																																															Text(
																																																																																																																																																textString="y[2]",
																																																																																																																																																extent={{4,54},{28,42}}),
																																																																																																																																															Text(
																																																																																																																																																textString="columns",
																																																																																																																																																extent={{0,-40},{32,-54}})}),
				Documentation(info="<html>
		 <p>
		 <b>Linear interpolation</b> in <b>one</b> dimension of a <b>table</b>.
		 Via parameter <b>columns</b> it can be defined how many columns of the
		 table are interpolated. If, e.g., icol={2,4}, it is assumed that one input
		 and 2 output signals are present and that the first output interpolates
		 via column 2 and the second output interpolates via column 4 of the
		 table matrix.
		 </p>
		 <p>
		 The grid points and function values are stored in a matrix \"table[i,j]\",
		 where the first column \"table[:,1]\" contains the grid points and the
		 other columns contain the data to be interpolated. Example:
		 </p>
		 <pre>
			table = [0,  0;
					 1,  1;
					 2,  4;
					 4, 16]
			If, e.g., the input u = 1.0, the output y =  1.0,
				e.g., the input u = 1.5, the output y =  2.5,
				e.g., the input u = 2.0, the output y =  4.0,
				e.g., the input u =-1.0, the output y = -1.0 (i.e., extrapolation).
		 </pre>
		 <ul>
		 <li> The interpolation is <b>efficient</b>, because a search for a new interpolation
			  starts at the interval used in the last call.</li>
		 <li> If the table has only <b>one row</b>, the table value is returned,
			  independent of the value of the input signal.</li>
		 <li> If the input signal <b>u</b> is <b>outside</b> of the defined <b>interval</b>, i.e.,
			  u &gt; table[size(table,1),1] or u &lt; table[1,1], the corresponding
			  value is also determined by linear
			  interpolation through the last or first two points of the table.</li>
		 <li> The grid values (first column) have to be strictly increasing.</li>
		 </ul>
		 <p>
		 The table matrix can be defined in the following ways:
		 </p>
		 <ol>
		 <li> Explicitly supplied as <b>parameter matrix</b> \"table\",
			  and the other parameters have the following values:
		 <pre>
			tableName is \"NoName\" or has only blanks,
			fileName  is \"NoName\" or has only blanks.
		 </pre></li>
		 <li> <b>Read</b> from a <b>file</b> \"fileName\" where the matrix is stored as
			   \"tableName\". Both ASCII and MAT-file format is possible.
			   (The ASCII format is described below).
			   The MAT-file format comes in four different versions: v4, v6, v7 and v7.3.
			   The library supports at least v4, v6 and v7 whereas v7.3 is optional.
			   It is most convenient to generate the MAT-file from FreeMat or MATLAB&reg;
			   by command
		 <pre>
			save tables.mat tab1 tab2 tab3
		 </pre>
			   or Scilab by command
		 <pre>
			savematfile tables.mat tab1 tab2 tab3
		 </pre>
			   when the three tables tab1, tab2, tab3 should be used from the model.<br>
			   Note, a fileName can be defined as URI by using the helper function
			   <a href=\"modelica://Modelica.Utilities.Files.loadResource\">loadResource</a>.</li>
		 <li>  Statically stored in function \"usertab\" in file \"usertab.c\".
			   The matrix is identified by \"tableName\". Parameter
			   fileName = \"NoName\" or has only blanks. Row-wise storage is always to be
			   preferred as otherwise the table is reallocated and transposed.
			   See the <a href=\"modelica://Modelica.Blocks.Tables\">Tables</a> package
			   documentation for more details.</li>
		 </ol>
		 <p>
		 When the constant \"NO_FILE_SYSTEM\" is defined, all file I/O related parts of the
		 source code are removed by the C-preprocessor, such that no access to files takes place.
		 </p>
		 <p>
		 If tables are read from an ASCII-file, the file needs to have the
		 following structure (\"-----\" is not part of the file content):
		 </p>
		 <pre>
		 -----------------------------------------------------
		 #1
		 double tab1(5,2)   # comment line
		   0   0
		   1   1
		   2   4
		   3   9
		   4  16
		 double tab2(5,2)   # another comment line
		   0   0
		   2   2
		   4   8
		   6  18
		   8  32
		 -----------------------------------------------------
		 </pre>
		 <p>
		 Note, that the first two characters in the file need to be
		 \"#1\" (a line comment defining the version number of the file format).
		 Afterwards, the corresponding matrix has to be declared
		 with type (= \"double\" or \"float\"), name and actual dimensions.
		 Finally, in successive rows of the file, the elements of the matrix
		 have to be given. The elements have to be provided as a sequence of
		 numbers in row-wise order (therefore a matrix row can span several
		 lines in the file and need not start at the beginning of a line).
		 Numbers have to be given according to C syntax (such as 2.3, -2, +2.e4).
		 Number separators are spaces, tab (	), comma (,), or semicolon (;).
		 Several matrices may be defined one after another. Line comments start
		 with the hash symbol (#) and can appear everywhere.
		 Other characters, like trailing non comments, are not allowed in the file.
		 </p>
		 <p>
		 MATLAB is a registered trademark of The MathWorks, Inc.
		 </p>
		 </html>"));
		end CombiTable1Ds_noEvent;
		model TempCollector "Collects m heat flows"
			parameter Integer m(min=1)=3 "Number of collected heat flows";
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a[m] annotation(Placement(transformation(extent={{-10,110},{10,90}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(extent={{-10,-110},{10,-90}})));
			equation
				port_b.T - (sum(port_a.T)/m) = 0;
				-port_a.Q_flow = (fill(port_b.Q_flow, m)/m);
			annotation(
				Icon(graphics={
																																																																																			Text(
																																																																																				textString="%name",
																																																																																				extent={{-150,-30},{150,-70}}),
																																																																																			Text(
																																																																																				textString="m=%m",
																																																																																				lineColor={0,0,0},
																																																																																				extent={{-150,80},{150,50}}),
																																																																																			Line(
																																																																																				points={{0,90},{0,40}},
																																																																																				color={181,0,0}),
																																																																																			Rectangle(
																																																																																				lineColor={181,0,0},
																																																																																				fillColor={181,0,0},
																																																																																				fillPattern=FillPattern.Solid,
																																																																																				extent={{-60,40},{60,30}}),
																																																																																			Line(
																																																																																				points={{-60,30},{0,-30},{0,-90}},
																																																																																				color={181,0,0}),
																																																																																			Line(
																																																																																				points={{0,-30},{-20,30}},
																																																																																				color={181,0,0}),
																																																																																			Line(
																																																																																				points={{0,-30},{20,30}},
																																																																																				color={181,0,0}),
																																																																																			Line(
																																																																																				points={{0,-30},{60,30}},
																																																																																				color={181,0,0})}),
				Documentation(info="<html>
		<p>
		This is a model to collect the heat flows from <i>m</i> heatports to one single heatport.
		</p>
		</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end TempCollector;
		connector surface_properties_out "optical properties of the outer surface of the side panel"
			import Modelica.Thermal.HeatTransfer.Interfaces;
			Interfaces.HeatPort_a thermal_port;
			output Modelica.Blocks.Interfaces.RealOutput alpha "absorption coefficent of the surface";
			output Modelica.Blocks.Interfaces.RealOutput epsilon "emission coefficent of the surface";
			output Modelica.Blocks.Interfaces.RealOutput A "Querschnittsflaeche";
			annotation(Icon(graphics={
						Rectangle(
							lineColor={0,0,0},
							fillPattern=FillPattern.Solid,
							extent={{-100,99.59999999999999},{100,-0.4}}),
						Rectangle(
							lineColor={255,255,0},
							fillColor={255,0,0},
							fillPattern=FillPattern.Solid,
							extent={{-100,0},{100,-100}}),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,255,0},
							smooth=Smooth.Bezier,
							origin={-48.7,42.3},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,255,0},
							smooth=Smooth.Bezier,
							origin={-12.2,42.1},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,255,0},
							smooth=Smooth.Bezier,
							origin={27.6,42.1},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,255,0},
							smooth=Smooth.Bezier,
							origin={64.59999999999999,42.1},
							rotation=-13)}));
		end surface_properties_out;
		expandable connector surface_properties "optical properties of the outer surface of the side panel"
			import Modelica.Thermal.HeatTransfer.Interfaces;
			Interfaces.HeatPort_a thermal_port;
			Modelica.SIunits.Emissivity alpha "absorption coefficent of the surface";
			Modelica.SIunits.Emissivity epsilon "emission coefficent of the surface";
			Modelica.SIunits.Area A(unit="m2") "Querschnittsflaeche";
			annotation(Icon(graphics={
						Rectangle(
							lineColor={0,0,0},
							fillPattern=FillPattern.Solid,
							extent={{-99.8,100},{100.2,0}}),
						Rectangle(
							lineColor={255,0,0},
							fillColor={255,255,0},
							fillPattern=FillPattern.Solid,
							extent={{-100,0},{100,-100}}),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={-48.7,42.3},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={-12.2,42.1},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={27.6,42.1},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={64.59999999999999,42.1},
							rotation=-13)}));
		end surface_properties;
		connector surface_properties_in "optical properties of the outer surface of the side panel"
			import Modelica.Thermal.HeatTransfer.Interfaces;
			Interfaces.HeatPort_a thermal_port;
			input Modelica.Blocks.Interfaces.RealInput alpha "absorption coefficent of the surface";
			input Modelica.Blocks.Interfaces.RealInput epsilon "emission coefficent of the surface";
			input Modelica.Blocks.Interfaces.RealInput A(unit="m2") "Querschnittsflaeche";
			annotation(Icon(graphics={
						Rectangle(
							lineColor={255,0,0},
							fillColor={255,255,0},
							fillPattern=FillPattern.Solid,
							extent={{-100,0},{100,-100}}),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={-48.7,42.3},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={-12.2,42.1},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={27.6,42.1},
							rotation=-13),
						Line(
							points={{-8.300000000000001,-43.3},{-28.3,-26.6},{-1.6,-16.6},{8.4,-10},{-11.6,10},{8.4,
							20},{21.7,26.7},{11.7,40}},
							color={255,0,0},
							smooth=Smooth.Bezier,
							origin={64.59999999999999,42.1},
							rotation=-13)}));
		end surface_properties_in;
		model thermal_conductor_A "thermal_conductor_A.mo"
			surface_properties_in surface_properties1 "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{-95,-10},{-75,10}}),
				iconTransformation(
					origin={-100,0},
					extent={{-10,-10},{10,10}},
					rotation=90)));
			surface_properties_in surface_properties2 "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{25,-5},{45,15}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			parameter Boolean contact=true "true for connection of two surfaces, false for one block";
			parameter Real h_contact(unit="W/(m³·K)")=300 if contact "Heat transfer coefficient";
			Modelica.Thermal.HeatTransfer.Components.ThermalResistor thermalResistor1(R=(if contact then R_T else 0)) annotation(Placement(transformation(extent={{-30,20},{-10,40}})));
			protected
				parameter Real R_T=(if surface_properties1.A<surface_properties2.A then 1/(h_contact*surface_properties1.A) else 1/(h_contact*surface_properties2.A))if contact;
			equation
				connect(thermalResistor1.port_a,surface_properties1.thermal_port) annotation(Line(
					points={{-30,30},{-35,30},{-80,30},{-80,0},{-85,0}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalResistor1.port_b,surface_properties2.thermal_port) annotation(Line(
					points={{-10,30},{-5,30},{30,30},{30,5},{35,5}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				Icon(graphics={
									Rectangle(
										pattern=LinePattern.None,
										lineColor={0,0,0},
										fillColor={192,192,192},
										fillPattern=FillPattern.Forward,
										extent={{-90,70},{90,-70}}),
									Line(
										points={{-90,70},{-90,-70}},
										color={0,0,0},
										thickness=0.5),
									Line(
										points={{90,70},{90,-70}},
										color={0,0,0},
										thickness=0.5),
									Text(
										textString="%name",
										extent={{-150,115},{150,75}}),
									Text(
										textString="R=%R",
										lineColor={0,0,0},
										extent={{-150,-75},{150,-105}})}),
				Diagram(graphics={
									Line(
										points={{-80,0},{80,0}},
										color={255,0,0},
										arrow={Arrow.None,Arrow.Filled},
										thickness=0.5),
									Text(
										textString="Q_flow",
										lineColor={255,0,0},
										extent={{-100,-20},{100,-40}}),
									Text(
										textString="dT = port_a.T - port_b.T",
										lineColor={0,0,0},
										extent={{-100,40},{100,20}})}),
				Documentation(info="<HTML>
<p>
This is a model for transport of heat without storing it, same as the
<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ThermalConductor\">ThermalConductor</a>
but using the thermal resistance instead of the thermal conductance as a parameter.
This is advantageous for series connections of ThermalResistors,
especially if it shall be allowed that a ThermalResistance is defined to be zero (i.e. no temperature difference).
</p>
</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_conductor_A;
		model thermal_radiation_A "thermal_radiation_A.mo"
			surface_properties_in surface_properties1 "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{-95,-10},{-75,10}}),
				iconTransformation(
					origin={-100,0},
					extent={{-10,-10},{10,10}},
					rotation=90)));
			surface_properties_in surface_properties2 "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{25,-5},{45,15}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			parameter Real Viewfactor=0.2 "Viewfactor between the surfaces";
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr=Gr_T) annotation(Placement(transformation(extent={{-30,-30},{-10,-10}})));
			protected
				parameter Real Gr_T=if surface_properties1.A < surface_properties2.A then Viewfactor * surface_properties1.A * surface_properties1.epsilon * surface_properties2.epsilon / (surface_properties1.epsilon + surface_properties2.epsilon - surface_properties1.epsilon * surface_properties2.epsilon) else Viewfactor * surface_properties2.A * surface_properties1.epsilon * surface_properties2.epsilon / (surface_properties1.epsilon + surface_properties2.epsilon - surface_properties1.epsilon * surface_properties2.epsilon);
			equation
				connect(bodyRadiation1.port_a,surface_properties1.thermal_port) annotation(Line(
					points={{-30,-20},{-35,-20},{-80,-20},{-80,0},{-85,0}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation1.port_b,surface_properties2.thermal_port) annotation(Line(
					points={{-10,-20},{-5,-20},{30,-20},{30,5},{35,5}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				viewinfo[0](
					viewSettings(clrRaster=12632256),
					typename="ModelInfo"),
				Icon(graphics={
									Rectangle(
										lineColor={0,0,0},
										fillColor={192,192,192},
										fillPattern=FillPattern.Backward,
										extent={{50,80},{90,-80}}),
									Rectangle(
										lineColor={0,0,0},
										fillColor={192,192,192},
										fillPattern=FillPattern.Backward,
										extent={{-90,80},{-50,-80}}),
									Line(
										points={{-36,10},{36,10}},
										color={191,0,0}),
									Line(
										points={{-36,10},{-26,16}},
										color={191,0,0}),
									Line(
										points={{-36,10},{-26,4}},
										color={191,0,0}),
									Line(
										points={{-36,-10},{36,-10}},
										color={191,0,0}),
									Line(
										points={{26,-16},{36,-10}},
										color={191,0,0}),
									Line(
										points={{26,-4},{36,-10}},
										color={191,0,0}),
									Line(
										points={{-36,-30},{36,-30}},
										color={191,0,0}),
									Line(
										points={{-36,-30},{-26,-24}},
										color={191,0,0}),
									Line(
										points={{-36,-30},{-26,-36}},
										color={191,0,0}),
									Line(
										points={{-36,30},{36,30}},
										color={191,0,0}),
									Line(
										points={{26,24},{36,30}},
										color={191,0,0}),
									Line(
										points={{26,36},{36,30}},
										color={191,0,0}),
									Text(
										textString="%name",
										extent={{-150,125},{150,85}}),
									Text(
										textString="Gr=%Gr",
										lineColor={0,0,0},
										extent={{-150,-90},{150,-120}}),
									Rectangle(
										lineColor={191,0,0},
										fillColor={191,0,0},
										fillPattern=FillPattern.Solid,
										extent={{-50,80},{-44,-80}}),
									Rectangle(
										lineColor={191,0,0},
										fillColor={191,0,0},
										fillPattern=FillPattern.Solid,
										extent={{45,80},{50,-80}})}),
				Diagram(graphics={
									Rectangle(
										lineColor={0,0,0},
										fillColor={192,192,192},
										fillPattern=FillPattern.Backward,
										extent={{-90,80},{-56,-80}}),
									Line(
										points={{-56,80},{-56,-80}},
										color={0,0,0},
										thickness=1),
									Line(
										points={{50,80},{50,-80}},
										color={0,0,0},
										thickness=1),
									Rectangle(
										lineColor={0,0,0},
										fillColor={192,192,192},
										fillPattern=FillPattern.Backward,
										extent={{50,80},{90,-80}}),
									Line(
										points={{-40,10},{40,10}},
										color={191,0,0}),
									Line(
										points={{-40,10},{-30,16}},
										color={191,0,0}),
									Line(
										points={{-40,10},{-30,4}},
										color={191,0,0}),
									Line(
										points={{-40,-10},{40,-10}},
										color={191,0,0}),
									Line(
										points={{30,-16},{40,-10}},
										color={191,0,0}),
									Line(
										points={{30,-4},{40,-10}},
										color={191,0,0}),
									Line(
										points={{-40,-30},{40,-30}},
										color={191,0,0}),
									Line(
										points={{-40,-30},{-30,-24}},
										color={191,0,0}),
									Line(
										points={{-40,-30},{-30,-36}},
										color={191,0,0}),
									Line(
										points={{-40,30},{40,30}},
										color={191,0,0}),
									Line(
										points={{30,24},{40,30}},
										color={191,0,0}),
									Line(
										points={{30,36},{40,30}},
										color={191,0,0})}),
				Documentation(info="<HTML>
<p>
This is a model describing the thermal radiation, i.e., electromagnetic
radiation emitted between two bodies as a result of their temperatures.
The following constitutive equation is used:
</p>
<pre>
    Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
</pre>
<p>
where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
constant (= Modelica.Constants.sigma). Gr may be determined by
measurements and is assumed to be constant over the range of operations.
</p>
<p>
For simple cases, Gr may be analytically computed. The analytical
equations use epsilon, the emission value of a body which is in the
range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
Epsilon=0, if the body reflects all radiation and does not absorb any.
</p>
<pre>
   Typical values for epsilon:
   aluminium, polished    0.04
   copper, polished       0.04
   gold, polished         0.02
   paper                  0.09
   rubber                 0.95
   silver, polished       0.02
   wood                   0.85..0.9
</pre>
<p><b>Analytical Equations for Gr</b></p>
<p>
<b>Small convex object in large enclosure</b>
(e.g., a hot machine in a room):
</p>
<pre>
    Gr = e*A
    where
       e: Emission value of object (0..1)
       A: Surface area of object where radiation
          heat transfer takes place
</pre>
<p><b>Two parallel plates</b>:</p>
<pre>
    Gr = A/(1/e1 + 1/e2 - 1)
    where
       e1: Emission value of plate1 (0..1)
       e2: Emission value of plate2 (0..1)
       A : Area of plate1 (= area of plate2)
</pre>
<p><b>Two long cylinders in each other</b>, where radiation takes
place from the inner to the outer cylinder):
</p>
<pre>
    Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
    where
       pi: = Modelica.Constants.pi
       r1: Radius of inner cylinder
       r2: Radius of outer cylinder
       L : Length of the two cylinders
       e1: Emission value of inner cylinder (0..1)
       e2: Emission value of outer cylinder (0..1)
</pre>
</html>"),
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_radiation_A;
		model thermal_element_opt_prop "thermal_element_opt_prop.mo"
			import iboss.*;
			surface_properties_out xp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{105,0},{125,20}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			surface_properties_out xn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{-115,5},{-95,25}}),
				iconTransformation(
					origin={-100,0},
					extent={{-10,-10},{10,10}},
					rotation=90)));
			surface_properties_out yp annotation(Placement(
				transformation(extent={{-35,80},{-15,100}}),
				iconTransformation(
					origin={0,-25},
					extent={{-10,90},{10,110}})));
			surface_properties_out zp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{-85,-50},{-65,-30}}),
				iconTransformation(
					origin={0,50},
					extent={{-60,-110},{-40,-90}})));
			surface_properties_out zn annotation(Placement(
				transformation(extent={{50,30},{70,50}}),
				iconTransformation(
					origin={0,-50},
					extent={{40,90},{60,110}})));
			surface_properties_out yn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{-10,-90},{10,-70}}),
				iconTransformation(
					origin={0,-75},
					extent={{-10,-10},{10,10}},
					rotation=-180)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductorrechts_x(G=Gx / 2) annotation(Placement(transformation(
				origin={47,20},
				extent={{-12,-12},{0,0}})));
			Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C=C) annotation(Placement(transformation(
				origin={0,30},
				extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorlinks_x(G=Gx / 2) annotation(Placement(transformation(
				origin={-30,15},
				extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorunten_y(G=Gy / 2) annotation(Placement(transformation(
				origin={-3,-22},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductoroben_y(G=Gy / 2) annotation(Placement(transformation(
				origin={-5,65},
				extent={{-10,-10},{5,5}},
				rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorhinten_z(G=Gz / 2) annotation(Placement(transformation(
				origin={25,36},
				extent={{-10,-10},{10,10}},
				rotation=-135)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorvorne_z(G=Gz / 2) annotation(Placement(transformation(
				origin={-35,-9},
				extent={{-10,-10},{10,10}},
				rotation=-135)));
			parameter MaterialDatabase.Material material=MaterialDatabase.Aluminiumlegierungen_6061_Legierung() "Material from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Modelica.SIunits.Length x=1 "Laenge des Materials in x Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length y=1 "Laenge des Materials in y Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length z=1 "Laenge des Materials in z Richtung der Waermeausbreitung";
			parameter OpticalPropertiesDatabase.OpticalProperties opticalProperties_xn=OpticalPropertiesDatabase.Schwarze_Beschichtungen_IMAGECURE_XV501T_4() annotation(
				Placement(transformation(extent={{125,-50},{145,-30}})),
				choicesAllMatching=true);
			parameter OpticalPropertiesDatabase.OpticalProperties opticalProperties_xp=OpticalPropertiesDatabase.Schwarze_Beschichtungen_Deep_Sky_Black() annotation(
				Placement(transformation(extent={{125,-50},{145,-30}})),
				choicesAllMatching=true);
			parameter OpticalPropertiesDatabase.OpticalProperties opticalProperties_yn=OpticalPropertiesDatabase.Schwarze_Beschichtungen_C_black_Anfang() annotation(
				Placement(transformation(extent={{125,-50},{145,-30}})),
				choicesAllMatching=true);
			parameter OpticalPropertiesDatabase.OpticalProperties opticalProperties_yp=OpticalPropertiesDatabase.Schwarze_Beschichtungen_Z306_Ende() annotation(
				Placement(transformation(extent={{125,-50},{145,-30}})),
				choicesAllMatching=true);
			parameter OpticalPropertiesDatabase.OpticalProperties opticalProperties_zn=OpticalPropertiesDatabase.Schwarze_Beschichtungen_N_150_1() annotation(
				Placement(transformation(extent={{125,-50},{145,-30}})),
				choicesAllMatching=true);
			parameter OpticalPropertiesDatabase.OpticalProperties opticalProperties_zp=OpticalPropertiesDatabase.Schwarze_Beschichtungen_Pyromark_1200() annotation(
				Placement(transformation(extent={{125,-50},{145,-30}})),
				choicesAllMatching=true);
			protected
				parameter Modelica.SIunits.ThermalConductance Gx=y * z * material.k / x "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gy=x * z * material.k / y "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gz=y * x * material.k / z "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.HeatCapacity C=x * y * z * material.d * material.c "Heat capacity of element (= cp*m)";
				parameter Modelica.SIunits.Area A_x=y*z "surface area in x direction";
				parameter Modelica.SIunits.Area A_y=x*z "surface area in x direction";
				parameter Modelica.SIunits.Area A_z=x*y "surface area in x direction";
			public
				Modelica.Blocks.Sources.Constant epsilon_xp(k=opticalProperties_xp.epsilon) annotation(Placement(transformation(extent={{55,-50},{75,-30}})));
				Modelica.Blocks.Sources.Constant alpha_xp(k=opticalProperties_xp.alpha) annotation(Placement(transformation(extent={{55,-20},{75,0}})));
				Modelica.Blocks.Sources.Constant epsilon_xn(k=opticalProperties_xn.epsilon) annotation(Placement(transformation(extent={{-70,25},{-50,45}})));
				Modelica.Blocks.Sources.Constant alpha_xn(k=opticalProperties_xn.alpha) annotation(Placement(transformation(extent={{-70,55},{-50,75}})));
				Modelica.Blocks.Sources.Constant epsilon_yp(k=opticalProperties_yp.epsilon) annotation(Placement(transformation(extent={{15,55},{35,75}})));
				Modelica.Blocks.Sources.Constant alpha_yp(k=opticalProperties_yp.alpha) annotation(Placement(transformation(extent={{15,85},{35,105}})));
				Modelica.Blocks.Sources.Constant epsilon_yn(k=opticalProperties_yn.epsilon) annotation(Placement(transformation(extent={{15,-40},{35,-20}})));
				Modelica.Blocks.Sources.Constant alpha_yn(k=opticalProperties_yn.alpha) annotation(Placement(transformation(extent={{15,-70},{35,-50}})));
				Modelica.Blocks.Sources.Constant epsilon_zp(k=opticalProperties_zp.epsilon) annotation(Placement(transformation(extent={{-40,-95},{-20,-75}})));
				Modelica.Blocks.Sources.Constant alpha_zp(k=opticalProperties_zp.alpha) annotation(Placement(transformation(extent={{-40,-65},{-20,-45}})));
				Modelica.Blocks.Sources.Constant epsilon_zn(k=opticalProperties_zn.epsilon) annotation(Placement(transformation(extent={{75,45},{95,65}})));
				Modelica.Blocks.Sources.Constant alpha_zn(k=opticalProperties_zn.alpha) annotation(Placement(transformation(extent={{75,75},{95,95}})));
				Modelica.Blocks.Sources.Constant Area_xp(k=A_x) annotation(Placement(transformation(extent={{60,-80},{80,-60}})));
				Modelica.Blocks.Sources.Constant Area_xn(k=A_x) annotation(Placement(transformation(extent={{-70,85},{-50,105}})));
				Modelica.Blocks.Sources.Constant Area_yn(k=A_y) annotation(Placement(transformation(extent={{15,-100},{35,-80}})));
				Modelica.Blocks.Sources.Constant Area_yp(k=A_y) annotation(Placement(transformation(extent={{45,85},{65,105}})));
				Modelica.Blocks.Sources.Constant Area_zn(k=A_z) annotation(Placement(transformation(extent={{110,45},{130,65}})));
				Modelica.Blocks.Sources.Constant Area_zp(k=A_z) annotation(Placement(transformation(extent={{-70,-95},{-50,-75}})));
			equation
				connect(heatcapacitor1.port,thermalConductorlinks_x.port_b) annotation(Line(
					points={{0,18},{0,13},{-7.3,13},{-7.3,15},{-15,15},{-20,
					15}},
					color={191,0,0},
					thickness=0.0625));
				connect(heatcapacitor1.port,thermalconductorrechts_x.port_a) annotation(Line(
					points={{0,18},{0,13},{15,13},{15,14},{30,14},{35,
					14}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorunten_y.port_b,heatcapacitor1.port) annotation(Line(
					points={{-3,-14.3},{-3,-9.300000000000001},{-3,13},{0,13},{0,18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductoroben_y.port_a,heatcapacitor1.port) annotation(Line(
					points={{-2.7,55},{-2.7,50},{-1.3,50},{-1.3,13},{0,13},{0,
					18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorvorne_z.port_a,heatcapacitor1.port) annotation(Line(
					points={{-28,-2},{-23,-2},{0,-2},{0,13},{0,18}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorhinten_z.port_b,heatcapacitor1.port) annotation(Line(
					points={{18,29},{13,29},{13,13},{0,13},{0,18}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				connect(epsilon_xp.y,xp.epsilon) annotation(Line(
					points={{76,-40},{81,-40},{110,-40},{110,10},{115,10}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_xp.y,xp.alpha) annotation(Line(
					points={{76,-10},{81,-10},{110,-10},{110,10},{115,10}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_xn.y,xn.epsilon) annotation(Line(
					points={{-49,35},{-44,35},{-44,15},{-100,15},{-105,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_xn.y,xn.alpha) annotation(Line(
					points={{-49,65},{-44,65},{-44,15},{-100,15},{-105,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(thermalconductorrechts_x.port_b,xp.thermal_port) annotation(Line(
					points={{47,14},{52,14},{110,14},{110,10},{115,10}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorlinks_x.port_a,xn.thermal_port) annotation(Line(
					points={{-40,15},{-45,15},{-100,15},{-105,15}},
					color={191,0,0},
					thickness=0.0625));
				connect(Area_xp.y,xp.A) annotation(Line(
					points={{81,-70},{86,-70},{110,-70},{110,10},{115,10}},
					color={0,0,127},
					thickness=0.0625));
				connect(Area_xn.y,xn.A) annotation(Line(
					points={{-49,95},{-44,95},{-44,15},{-100,15},{-105,15}},
					color={0,0,127},
					thickness=0.0625));
				connect(Area_zp.y,zp.A) annotation(Line(
					points={{-49,-85},{-44,-85},{-44,-40},{-70,-40},{-75,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_zp.y,zp.epsilon) annotation(Line(
					points={{-19,-85},{-14,-85},{-14,-40},{-70,-40},{-75,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_zp.y,zp.alpha) annotation(Line(
					points={{-19,-55},{-14,-55},{-14,-40},{-70,-40},{-75,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(thermalConductorvorne_z.port_b,zp.thermal_port) annotation(Line(
					points={{-42,-16},{-47,-16},{-70,-16},{-70,-40},{-75,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductorunten_y.port_a,yn.thermal_port) annotation(Line(
					points={{-3,-29.7},{-3,-34.7},{-5,-34.7},{-5,-80},{0,-80}},
					color={191,0,0},
					thickness=0.0625));
				connect(Area_yn.y,yn.A) annotation(Line(
					points={{36,-90},{41,-90},{41,-80},{5,-80},{0,-80}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_yn.y,yn.alpha) annotation(Line(
					points={{36,-60},{41,-60},{41,-80},{5,-80},{0,-80}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_yn.y,yn.epsilon) annotation(Line(
					points={{36,-30},{41,-30},{41,-80},{5,-80},{0,-80}},
					color={0,0,127},
					thickness=0.0625));
				connect(thermalConductorhinten_z.port_a,zn.thermal_port) annotation(Line(
					points={{32,43},{37,43},{55,43},{55,40},{60,40}},
					color={191,0,0},
					thickness=0.0625));
				connect(epsilon_zn.y,zn.epsilon) annotation(Line(
					points={{96,55},{101,55},{101,40},{65,40},{60,40}},
					color={0,0,127},
					thickness=0.0625));
				connect(Area_zn.y,zn.A) annotation(Line(
					points={{131,55},{136,55},{136,40},{65,40},{60,40}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_zn.y,zn.alpha) annotation(Line(
					points={{96,85},{101,85},{101,40},{65,40},{60,40}},
					color={0,0,127},
					thickness=0.0625));
				connect(thermalConductoroben_y.port_b,yp.thermal_port) annotation(Line(
					points={{-2.7,70},{-2.7,75},{-2.7,90},{-20,90},{-25,90}},
					color={191,0,0},
					thickness=0.0625));
				connect(epsilon_yp.y,yp.epsilon) annotation(Line(
					points={{36,65},{41,65},{41,90},{-20,90},{-25,90}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_yp.y,yp.alpha) annotation(Line(
					points={{36,95},{41,95},{41,85},{-20,85},{-20,90},{-25,
					90}},
					color={0,0,127},
					thickness=0.0625));
				connect(Area_yp.y,yp.A) annotation(Line(
					points={{66,95},{71,95},{71,85},{-20,85},{-20,90},{-25,
					90}},
					color={0,0,127},
					thickness=0.0625));
			annotation(
				viewinfo[0](
					viewSettings(clrRaster=12632256),
					typename="ModelInfo"),
				Icon(
					coordinateSystem(grid={10,10}),
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
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_element_opt_prop;
	end components;
	package Panel_5x5 "Elemente für einen Baustein mit 25 Knoten pro Seitenwand"
		package multi_connector "n-fache Thermalverbindungen"
			connector thermal_connector_Panel_2x2 "Verbindungselement fuer mehr als eine Schnittstelle"
				import Modelica.Thermal.HeatTransfer.Interfaces;
				Interfaces.HeatPort_a port_00;
				Interfaces.HeatPort_a port_01;
				Interfaces.HeatPort_a port_10;
				Interfaces.HeatPort_a port_11;
				annotation(Icon(graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,0,0},
																															fillPattern=FillPattern.Solid,
																															extent={{-100,100},{100,-100}}),
																														Text(
																															textString="2x2",
																															lineColor={255,255,255},
																															extent={{-100,96.7},{96.7,-100}})}));
			end thermal_connector_Panel_2x2;
			connector thermal_connector_Panel_3x3 "Verbindungselement fuer mehr als eine Schnittstelle"
				import Modelica.Thermal.HeatTransfer.Interfaces;
				Interfaces.HeatPort_a port_00;
				Interfaces.HeatPort_a port_01;
				Interfaces.HeatPort_a port_02;
				Interfaces.HeatPort_a port_10;
				Interfaces.HeatPort_a port_11;
				Interfaces.HeatPort_a port_12;
				Interfaces.HeatPort_a port_20;
				Interfaces.HeatPort_a port_21;
				Interfaces.HeatPort_a port_22;
				annotation(Icon(graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,0,0},
																															fillPattern=FillPattern.Solid,
																															extent={{-100,100},{100,-100}}),
																														Text(
																															textString="3x3",
																															lineColor={255,255,255},
																															extent={{-100,96.7},{96.7,-100}})}));
			end thermal_connector_Panel_3x3;
			connector thermal_connector_Panel_5x5 "Verbindungselement fuer mehr als eine Schnittstelle"
				import Modelica.Thermal.HeatTransfer.Interfaces;
				Interfaces.HeatPort_a port_00;
				Interfaces.HeatPort_a port_01;
				Interfaces.HeatPort_a port_02;
				Interfaces.HeatPort_a port_03;
				Interfaces.HeatPort_a port_04;
				Interfaces.HeatPort_a port_10;
				Interfaces.HeatPort_a port_11;
				Interfaces.HeatPort_a port_12;
				Interfaces.HeatPort_a port_13;
				Interfaces.HeatPort_a port_14;
				Interfaces.HeatPort_a port_20;
				Interfaces.HeatPort_a port_21;
				Interfaces.HeatPort_a port_22;
				Interfaces.HeatPort_a port_23;
				Interfaces.HeatPort_a port_24;
				Interfaces.HeatPort_a port_30;
				Interfaces.HeatPort_a port_31;
				Interfaces.HeatPort_a port_32;
				Interfaces.HeatPort_a port_33;
				Interfaces.HeatPort_a port_34;
				Interfaces.HeatPort_a port_40;
				Interfaces.HeatPort_a port_41;
				Interfaces.HeatPort_a port_42;
				Interfaces.HeatPort_a port_43;
				Interfaces.HeatPort_a port_44;
				annotation(Icon(graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,0,0},
																															fillPattern=FillPattern.Solid,
																															extent={{-100,100},{100,-100}}),
																														Text(
																															textString="5x5",
																															lineColor={255,255,255},
																															extent={{-100,96.7},{96.7,-100}})}));
			end thermal_connector_Panel_5x5;
			connector thermal_connector_side_2 "Verbindungselement fuer mehr als eine Schnittstelle"
				import Modelica.Thermal.HeatTransfer.Interfaces;
				Interfaces.HeatPort_a port_0;
				Interfaces.HeatPort_a port_1;
				annotation(Icon(graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,0,0},
																															fillPattern=FillPattern.Solid,
																															extent={{-100,100},{100,-100}}),
																														Text(
																															textString="2",
																															lineColor={0,0,0},
																															extent={{-99,96.7},{97.7,-100}})}));
			end thermal_connector_side_2;
			connector thermal_connector_side_3 "Verbindungselement fuer mehr als eine Schnittstelle"
				import Modelica.Thermal.HeatTransfer.Interfaces;
				Interfaces.HeatPort_a port_0;
				Interfaces.HeatPort_a port_1;
				Interfaces.HeatPort_a port_2;
				annotation(Icon(graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,0,0},
																															fillPattern=FillPattern.Solid,
																															extent={{-100,100},{100,-100}}),
																														Text(
																															textString="3",
																															lineColor={0,0,0},
																															extent={{-99,96.7},{97.7,-100}})}));
			end thermal_connector_side_3;
			connector thermal_connector_side_5 "Verbindungselement fuer mehr als eine Schnittstelle"
				import Modelica.Thermal.HeatTransfer.Interfaces;
				Interfaces.HeatPort_a port_0;
				Interfaces.HeatPort_a port_1;
				Interfaces.HeatPort_a port_2;
				Interfaces.HeatPort_a port_3;
				Interfaces.HeatPort_a port_4;
				annotation(Icon(graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,0,0},
																															fillPattern=FillPattern.Solid,
																															extent={{-100,100},{100,-100}}),
																														Text(
																															textString="5",
																															lineColor={0,0,0},
																															extent={{-99,96.7},{97.7,-100}})}));
			end thermal_connector_side_5;
		end multi_connector;
		package components
			import iboss.*;
			model Radiator_5x5 "Radiator_5x5"
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_l annotation(Placement(
					transformation(extent={{-115,30},{-95,50}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_r annotation(Placement(
					transformation(extent={{50,30},{70,50}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_5x5(Gr=ViewFactor*A_Panel/((1/eps_Panel_inside)+(1/eps_Panel_inside)-1)) annotation(Placement(transformation(extent={{-30,30},{-10,50}})));
				iboss.iboss_thermal.components.TempCollector tempCollector_l(m=25) annotation(Placement(transformation(
					origin={-60,40},
					extent={{-10,-10},{10,10}},
					rotation=-270)));
				iboss.iboss_thermal.components.TempCollector tempCollector_r(m=25) annotation(Placement(transformation(
					origin={20,40},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				parameter Real ViewFactor=0.2;
				parameter Modelica.SIunits.Area A_Panel=0.4*0.4;
				parameter Modelica.SIunits.Emissivity eps_Panel_inside=0.93 "Emmisivity of the inner side of the panel";
				equation
					connect(tempCollector_l.port_a[1],thermal_connector_Panel_5x5_l.port_00) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[2],thermal_connector_Panel_5x5_l.port_01) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[3],thermal_connector_Panel_5x5_l.port_02) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[4],thermal_connector_Panel_5x5_l.port_03) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[5],thermal_connector_Panel_5x5_l.port_04) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[6],thermal_connector_Panel_5x5_l.port_10) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[7],thermal_connector_Panel_5x5_l.port_11) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[8],thermal_connector_Panel_5x5_l.port_12) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[9],thermal_connector_Panel_5x5_l.port_13) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[10],thermal_connector_Panel_5x5_l.port_14) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[11],thermal_connector_Panel_5x5_l.port_20) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[12],thermal_connector_Panel_5x5_l.port_21) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[13],thermal_connector_Panel_5x5_l.port_22) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[14],thermal_connector_Panel_5x5_l.port_23) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[15],thermal_connector_Panel_5x5_l.port_24) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[16],thermal_connector_Panel_5x5_l.port_30) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[17],thermal_connector_Panel_5x5_l.port_31) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[18],thermal_connector_Panel_5x5_l.port_32) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[19],thermal_connector_Panel_5x5_l.port_33) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[20],thermal_connector_Panel_5x5_l.port_34) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[21],thermal_connector_Panel_5x5_l.port_40) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[22],thermal_connector_Panel_5x5_l.port_41) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[23],thermal_connector_Panel_5x5_l.port_42) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[24],thermal_connector_Panel_5x5_l.port_43) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_a[25],thermal_connector_Panel_5x5_l.port_44) annotation(Line(
						points={{-70,40},{-75,40},{-100,40},{-105,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[1],thermal_connector_Panel_5x5_r.port_00) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[2],thermal_connector_Panel_5x5_r.port_01) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[3],thermal_connector_Panel_5x5_r.port_02) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[4],thermal_connector_Panel_5x5_r.port_03) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[5],thermal_connector_Panel_5x5_r.port_04) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[6],thermal_connector_Panel_5x5_r.port_10) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[7],thermal_connector_Panel_5x5_r.port_11) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[8],thermal_connector_Panel_5x5_r.port_12) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[9],thermal_connector_Panel_5x5_r.port_13) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[10],thermal_connector_Panel_5x5_r.port_14) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[11],thermal_connector_Panel_5x5_r.port_20) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[12],thermal_connector_Panel_5x5_r.port_21) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[13],thermal_connector_Panel_5x5_r.port_22) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[14],thermal_connector_Panel_5x5_r.port_23) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[15],thermal_connector_Panel_5x5_r.port_24) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[16],thermal_connector_Panel_5x5_r.port_30) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[17],thermal_connector_Panel_5x5_r.port_31) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[18],thermal_connector_Panel_5x5_r.port_32) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[19],thermal_connector_Panel_5x5_r.port_33) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[20],thermal_connector_Panel_5x5_r.port_34) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[21],thermal_connector_Panel_5x5_r.port_40) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[22],thermal_connector_Panel_5x5_r.port_41) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[23],thermal_connector_Panel_5x5_r.port_42) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[24],thermal_connector_Panel_5x5_r.port_43) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_a[25],thermal_connector_Panel_5x5_r.port_44) annotation(Line(
						points={{30,40},{35,40},{55,40},{60,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_r.port_b,bodyRadiation_5x5.port_b) annotation(Line(
						points={{10,40},{5,40},{-5,40},{-10,40}},
						color={191,0,0},
						thickness=0.0625));
					connect(tempCollector_l.port_b,bodyRadiation_5x5.port_a) annotation(Line(
						points={{-50,40},{-45,40},{-35,40},{-30,40}},
						color={191,0,0},
						thickness=0.0625));
				annotation(
					Icon(graphics={
																																																																				Rectangle(
																																																																					lineColor={0,0,0},
																																																																					fillColor={192,192,192},
																																																																					fillPattern=FillPattern.Backward,
																																																																					extent={{50,80},{90,-80}}),
																																																																				Rectangle(
																																																																					lineColor={0,0,0},
																																																																					fillColor={192,192,192},
																																																																					fillPattern=FillPattern.Backward,
																																																																					extent={{-90,80},{-50,-80}}),
																																																																				Line(
																																																																					points={{-36,10},{36,10}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,10},{-26,16}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,10},{-26,4}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,-10},{36,-10}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{26,-16},{36,-10}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{26,-4},{36,-10}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,-30},{36,-30}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,-30},{-26,-24}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,-30},{-26,-36}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{-36,30},{36,30}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{26,24},{36,30}},
																																																																					color={191,0,0}),
																																																																				Line(
																																																																					points={{26,36},{36,30}},
																																																																					color={191,0,0}),
																																																																				Text(
																																																																					textString="%name",
																																																																					extent={{-150,125},{150,85}}),
																																																																				Text(
																																																																					textString="Gr=%Gr",
																																																																					lineColor={0,0,0},
																																																																					extent={{-150,-90},{150,-120}}),
																																																																				Rectangle(
																																																																					lineColor={191,0,0},
																																																																					fillColor={191,0,0},
																																																																					fillPattern=FillPattern.Solid,
																																																																					extent={{-50,80},{-44,-80}}),
																																																																				Rectangle(
																																																																					lineColor={191,0,0},
																																																																					fillColor={191,0,0},
																																																																					fillPattern=FillPattern.Solid,
																																																																					extent={{45,80},{50,-80}})}),
					Documentation(info="<HTML>
							<p>
							This is a model describing the thermal radiation, i.e., electromagnetic
							radiation emitted between two bodies as a result of their temperatures.
							The following constitutive equation is used:
							</p>
							<pre>
								Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
							</pre>
							<p>
							where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
							constant (= Modelica.Constants.sigma). Gr may be determined by
							measurements and is assumed to be constant over the range of operations.
							</p>
							<p>
							For simple cases, Gr may be analytically computed. The analytical
							equations use epsilon, the emission value of a body which is in the
							range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
							Epsilon=0, if the body reflects all radiation and does not absorb any.
							</p>
							<pre>
							   Typical values for epsilon:
							   aluminium, polished    0.04
							   copper, polished       0.04
							   gold, polished         0.02
							   paper                  0.09
							   rubber                 0.95
							   silver, polished       0.02
							   wood                   0.85..0.9
							</pre>
							<p><b>Analytical Equations for Gr</b></p>
							<p>
							<b>Small convex object in large enclosure</b>
							(e.g., a hot machine in a room):
							</p>
							<pre>
								Gr = e*A
								where
								   e: Emission value of object (0..1)
								   A: Surface area of object where radiation
									  heat transfer takes place
							</pre>
							<p><b>Two parallel plates</b>:</p>
							<pre>
								Gr = A/(1/e1 + 1/e2 - 1)
								where
								   e1: Emission value of plate1 (0..1)
								   e2: Emission value of plate2 (0..1)
								   A : Area of plate1 (= area of plate2)
							</pre>
							<p><b>Two long cylinders in each other</b>, where radiation takes
							place from the inner to the outer cylinder):
							</p>
							<pre>
								Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
								where
								   pi: = Modelica.Constants.pi
								   r1: Radius of inner cylinder
								   r2: Radius of outer cylinder
								   L : Length of the two cylinders
								   e1: Emission value of inner cylinder (0..1)
								   e2: Emission value of outer cylinder (0..1)
							</pre>
							</html>"),
					experiment(
						StopTime=1,
						StartTime=0));
			end Radiator_5x5;
			model combined_IF_3x3 "combined_IF_3x3.mo"
				parameter Modelica.SIunits.Height x_Panel=0.4 "width of Panel in m";
				parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
				parameter Modelica.SIunits.Height z_TSS=0.01 "thickness of Panel in m";
				parameter Real h_MSS_TSS(unit="W/(m³·K)")=1000 "Heat transfer coefficient TSS - MSS";
				parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Aluminiumlegierungen_1060_Legierung() "Material of MSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				iboss.iboss_thermal.components.thermal_element TSS_02(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{-30,55},{-10,75}})));
				iboss.iboss_thermal.components.thermal_element TSS_12(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{30,55},{50,75}})));
				iboss.iboss_thermal.components.thermal_element TSS_22(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{90,55},{110,75}})));
				iboss.iboss_thermal.components.thermal_element TSS_01(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{-30,5},{-10,25}})));
				iboss.iboss_thermal.components.thermal_element MSS_11(
					material=material_MSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{30,5},{50,25}})));
				iboss.iboss_thermal.components.thermal_element TSS_21(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{90,5},{110,25}})));
				iboss.iboss_thermal.components.thermal_element TSS_00(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{-30,-45},{-10,-25}})));
				iboss.iboss_thermal.components.thermal_element TSS_10(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{30,-45},{50,-25}})));
				iboss.iboss_thermal.components.thermal_element TSS_20(
					material=material_TSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_TSS/5) annotation(Placement(transformation(extent={{90,-45},{110,-25}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G=(y_Panel/5)*z_TSS*h_MSS_TSS) annotation(Placement(transformation(extent={{60,5},{80,25}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G=(y_Panel/5)*z_TSS*h_MSS_TSS) annotation(Placement(transformation(extent={{0,5},{20,25}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp(G=(x_Panel/5)*z_TSS*h_MSS_TSS) annotation(Placement(transformation(
					origin={40,40},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn(G=(x_Panel/5)*z_TSS*h_MSS_TSS) annotation(Placement(transformation(
					origin={40,-10},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_3x3 thermal_connector_Panel_3x3_zp annotation(Placement(
					transformation(extent={{-65,-75},{-45,-55}}),
					iconTransformation(extent={{-60,-110},{-40,-90}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_3x3 thermal_connector_Panel_3x3_zn annotation(Placement(
					transformation(extent={{125,85},{145,105}}),
					iconTransformation(extent={{40,90},{60,110}})));
				equation
					connect(TSS_00.port_b_yp,TSS_01.port_a_yn) annotation(Line(
						points={{-20,-26},{-20,-21},{-20,4},{-20,9}},
						color={191,0,0},
						thickness=0.0625));
					
					connect(TSS_02.port_a_yn,TSS_01.port_b_yp) annotation(Line(
						points={{-20,59},{-20,54},{-20,29},{-20,24}},
						color={191,0,0},
						thickness=0.0625));
					
					
					connect(TSS_10.port_a_xn,TSS_00.port_b_xp) annotation(Line(
						points={{29.7,-35},{24.7,-35},{-5,-35},{-10,-35}},
						color={191,0,0},
						thickness=0.0625));
					
					
					
					
					
					
					connect(TSS_02.port_b_xp,TSS_12.port_a_xn) annotation(Line(
						points={{-10,65},{-5,65},{24.7,65},{29.7,65}},
						color={191,0,0},
						thickness=0.0625));
					
					
					
					
					
					connect(TSS_20.port_a_xn,TSS_10.port_b_xp) annotation(Line(
						points={{89.7,-35},{84.7,-35},{55,-35},{50,-35}},
						color={191,0,0},
						thickness=0.0625));
					
					
					connect(TSS_21.port_a_yn,TSS_20.port_b_yp) annotation(Line(
						points={{100,9},{100,4},{100,-21},{100,-26}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_12.port_b_xp,TSS_22.port_a_xn) annotation(Line(
						points={{50,65},{55,65},{84.7,65},{89.7,65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_22.port_a_yn,TSS_21.port_b_yp) annotation(Line(
						points={{100,59},{100,54},{100,29},{100,24}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_00.port_b_zp,thermal_connector_Panel_3x3_zp.port_00) annotation(Line(
						points={{-25,-39.7},{-30,-39.7},{-50,-39.7},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_01.port_b_zp,thermal_connector_Panel_3x3_zp.port_01) annotation(Line(
						points={{-25,10.3},{-30,10.3},{-50,10.3},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_02.port_b_zp,thermal_connector_Panel_3x3_zp.port_02) annotation(Line(
						points={{-25,60.3},{-30,60.3},{-50,60.3},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_10.port_b_zp,thermal_connector_Panel_3x3_zp.port_10) annotation(Line(
						points={{35,-39.7},{30,-39.7},{-50,-39.7},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_11.port_b_zp,thermal_connector_Panel_3x3_zp.port_11) annotation(Line(
						points={{35,10.3},{30,10.3},{-50,10.3},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_12.port_b_zp,thermal_connector_Panel_3x3_zp.port_12) annotation(Line(
						points={{35,60.3},{30,60.3},{-50,60.3},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_20.port_b_zp,thermal_connector_Panel_3x3_zp.port_20) annotation(Line(
						points={{95,-39.7},{90,-39.7},{-50,-39.7},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_21.port_b_zp,thermal_connector_Panel_3x3_zp.port_21) annotation(Line(
						points={{95,10.3},{90,10.3},{-50,10.3},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_22.port_b_zp,thermal_connector_Panel_3x3_zp.port_22) annotation(Line(
						points={{95,60.3},{90,60.3},{-50,60.3},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_22.port_a_zn,thermal_connector_Panel_3x3_zn.port_22) annotation(Line(
						points={{105,71.7},{105,76.7},{105,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_21.port_a_zn,thermal_connector_Panel_3x3_zn.port_21) annotation(Line(
						points={{105,21.7},{105,26.7},{105,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_20.port_a_zn,thermal_connector_Panel_3x3_zn.port_20) annotation(Line(
						points={{105,-28.3},{105,-23.3},{105,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_12.port_a_zn,thermal_connector_Panel_3x3_zn.port_12) annotation(Line(
						points={{45,71.7},{45,76.7},{45,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_11.port_a_zn,thermal_connector_Panel_3x3_zn.port_11) annotation(Line(
						points={{45,21.7},{45,26.7},{45,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_10.port_a_zn,thermal_connector_Panel_3x3_zn.port_10) annotation(Line(
						points={{45,-28.3},{45,-23.3},{45,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_02.port_a_zn,thermal_connector_Panel_3x3_zn.port_02) annotation(Line(
						points={{-15,71.7},{-15,76.7},{-15,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_01.port_a_zn,thermal_connector_Panel_3x3_zn.port_01) annotation(Line(
						points={{-15,21.7},{-15,26.7},{-15,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_00.port_a_zn,thermal_connector_Panel_3x3_zn.port_00) annotation(Line(
						points={{-15,-28.3},{-15,-23.3},{-15,95},{130,95},{135,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_xn.port_b,MSS_11.port_a_xn) annotation(Line(
						points={{20,15},{25,15},{24.7,15},{29.7,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(TSS_01.port_b_xp,thermalConductor_xn.port_a) annotation(Line(
						points={{-10,15},{-5,15},{0,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_xp.port_b,TSS_21.port_a_xn) annotation(Line(
						points={{80,15},{85,15},{84.7,15},{89.7,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_11.port_b_xp,thermalConductor_xp.port_a) annotation(Line(
						points={{50,15},{55,15},{60,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_yp.port_a,TSS_12.port_a_yn) annotation(Line(
						points={{40,50},{40,55},{40,54},{40,59}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_yp.port_b,MSS_11.port_b_yp) annotation(Line(
						points={{40,30},{40,25},{40,29},{40,24}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_11.port_a_yn,thermalConductor_yn.port_a) annotation(Line(
						points={{40,9},{40,4},{40,5},{40,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_yn.port_b,TSS_10.port_b_yp) annotation(Line(
						points={{40,-20},{40,-25},{40,-21},{40,-26}},
						color={191,0,0},
						thickness=0.0625));
				annotation(
					Icon(graphics={
																																																																																																																			Ellipse(
																																																																																																																			lineColor={0,0,0},
																																																																																																																		fillColor={210,180,140},
																																																																																																																		fillPattern=FillPattern.Solid,
																																																																																																																		extent={{100,-100},{-100,100}}),
																																																																																																																	Ellipse(
																																																																																																																		lineColor={0,0,0},
																																																																																																																		fillColor={192,192,192},
																																																																																																																		fillPattern=FillPattern.Solid,
																																																																																																																		extent={{31.3,-32.3},{-32,31}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end combined_IF_3x3;
			model Panel_5x5 "Panel_5x5.mo"
				parameter Modelica.SIunits.Height x_Panel=0.4 "width of Panel in m";
				parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
				parameter Modelica.SIunits.Height z_Panel=0.03 "thickness of Panel in m";
				parameter Modelica.SIunits.Height z_MSS=0.06 "thickness of Panel in m";
				parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Aluminiumlegierungen_1060_Legierung() "Material of MSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of TSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				parameter Real h_MSS_Panel(unit="W/(m³·K)")=1000 "Heat transfer coefficient Panel - MSS";
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_xn annotation(Placement(
					transformation(extent={{-110,-25},{-90,-5}}),
					iconTransformation(extent={{-111.7,-8.300000000000001},{-91.7,11.7}})));
				iboss.iboss_thermal.components.thermal_element Panel_04(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-75,60},{-55,80}})));
				iboss.iboss_thermal.components.thermal_element Panel_14(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-30,60},{-10,80}})));
				iboss.iboss_thermal.components.thermal_element Panel_24(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{30,60},{50,80}})));
				iboss.iboss_thermal.components.thermal_element Panel_34(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{90,60},{110,80}})));
				iboss.iboss_thermal.components.thermal_element Panel_44(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{135,60},{155,80}})));
				iboss.iboss_thermal.components.thermal_element Panel_03(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-75,25},{-55,45}})));
				iboss.iboss_thermal.components.thermal_element Panel_13(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-30,25},{-10,45}})));
				iboss.iboss_thermal.components.thermal_element Panel_23(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{30,25},{50,45}})));
				iboss.iboss_thermal.components.thermal_element Panel_33(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{90,25},{110,45}})));
				iboss.iboss_thermal.components.thermal_element Panel_43(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{135,25},{155,45}})));
				iboss.iboss_thermal.components.thermal_element Panel_02(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-75,-25},{-55,-5}})));
				iboss.iboss_thermal.components.thermal_element Panel_12(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-30,-25},{-10,-5}})));
				iboss.iboss_thermal.components.thermal_element MSS_22(
					material=material_MSS,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_MSS/5) annotation(Placement(transformation(extent={{30,-25},{50,-5}})));
				iboss.iboss_thermal.components.thermal_element Panel_32(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{90,-25},{110,-5}})));
				iboss.iboss_thermal.components.thermal_element Panel_42(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{135,-25},{155,-5}})));
				iboss.iboss_thermal.components.thermal_element Panel_01(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-75,-75},{-55,-55}})));
				iboss.iboss_thermal.components.thermal_element Panel_11(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-30,-75},{-10,-55}})));
				iboss.iboss_thermal.components.thermal_element Panel_21(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{30,-75},{50,-55}})));
				iboss.iboss_thermal.components.thermal_element Panel_31(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{90,-75},{110,-55}})));
				iboss.iboss_thermal.components.thermal_element Panel_41(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{135,-75},{155,-55}})));
				iboss.iboss_thermal.components.thermal_element Panel_00(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-75,-110},{-55,-90}})));
				iboss.iboss_thermal.components.thermal_element Panel_10(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{-30,-110},{-10,-90}})));
				iboss.iboss_thermal.components.thermal_element Panel_20(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{30,-110},{50,-90}})));
				iboss.iboss_thermal.components.thermal_element Panel_30(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{90,-110},{110,-90}})));
				iboss.iboss_thermal.components.thermal_element Panel_40(
					material=material_Panel,
					x=x_Panel/5,
					y=y_Panel/5,
					z=z_Panel/5) annotation(Placement(transformation(extent={{135,-110},{155,-90}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G=(y_Panel/5)*z_Panel*h_MSS_Panel) annotation(Placement(transformation(extent={{60,-25},{80,-5}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G=(y_Panel/5)*z_Panel*h_MSS_Panel) annotation(Placement(transformation(extent={{0,-25},{20,-5}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp(G=(x_Panel/5)*z_Panel*h_MSS_Panel) annotation(Placement(transformation(
					origin={40,10},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn(G=(x_Panel/5)*z_Panel*h_MSS_Panel) annotation(Placement(transformation(
					origin={40,-40},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_yp annotation(Placement(
					transformation(extent={{30,90},{50,110}}),
					iconTransformation(extent={{-10,90},{10,110}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_xp annotation(Placement(
					transformation(extent={{170,-25},{190,-5}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_yn annotation(Placement(
					transformation(extent={{30,-140},{50,-120}}),
					iconTransformation(extent={{-10,-110},{10,-90}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_zp annotation(Placement(
					transformation(extent={{-125,-130},{-105,-110}}),
					iconTransformation(extent={{-60,-110},{-40,-90}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_zn annotation(Placement(
					transformation(extent={{180,85},{200,105}}),
					iconTransformation(extent={{40,90},{60,110}})));
				equation
					connect(Panel_01.port_a_yn,Panel_00.port_b_yp) annotation(Line(
						points={{-65,-71},{-65,-76},{-65,-86},{-65,-91}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_02.port_a_yn,Panel_01.port_b_yp) annotation(Line(
						points={{-65,-21},{-65,-26},{-65,-51},{-65,-56}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_03.port_a_yn,Panel_02.port_b_yp) annotation(Line(
						points={{-65,29},{-65,24},{-65,-1},{-65,-6}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_00.port_b_xp,Panel_10.port_a_xn) annotation(Line(
						points={{-55,-100},{-50,-100},{-35.3,-100},{-30.3,-100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_10.port_b_yp,Panel_11.port_a_yn) annotation(Line(
						points={{-20,-91},{-20,-86},{-20,-76},{-20,-71}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_11.port_a_xn,Panel_01.port_b_xp) annotation(Line(
						points={{-30.3,-65},{-35.3,-65},{-50,-65},{-55,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_12.port_a_xn,Panel_02.port_b_xp) annotation(Line(
						points={{-30.3,-15},{-35.3,-15},{-50,-15},{-55,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_11.port_b_yp,Panel_12.port_a_yn) annotation(Line(
						points={{-20,-56},{-20,-51},{-20,-26},{-20,-21}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_03.port_b_xp,Panel_13.port_a_xn) annotation(Line(
						points={{-55,35},{-50,35},{-35.3,35},{-30.3,35}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_13.port_a_yn,Panel_12.port_b_yp) annotation(Line(
						points={{-20,29},{-20,24},{-20,-1},{-20,-6}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_13.port_b_yp,Panel_14.port_a_yn) annotation(Line(
						points={{-20,44},{-20,49},{-20,59},{-20,64}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_10.port_b_xp,Panel_20.port_a_xn) annotation(Line(
						points={{-10,-100},{-5,-100},{24.7,-100},{29.7,-100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_21.port_a_yn,Panel_20.port_b_yp) annotation(Line(
						points={{40,-71},{40,-76},{40,-86},{40,-91}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_21.port_a_xn,Panel_11.port_b_xp) annotation(Line(
						points={{29.7,-65},{24.7,-65},{-5,-65},{-10,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_13.port_b_xp,Panel_23.port_a_xn) annotation(Line(
						points={{-10,35},{-5,35},{24.7,35},{29.7,35}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_23.port_b_yp,Panel_24.port_a_yn) annotation(Line(
						points={{40,44},{40,49},{40,59},{40,64}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_14.port_b_xp,Panel_24.port_a_xn) annotation(Line(
						points={{-10,70},{-5,70},{24.7,70},{29.7,70}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_20.port_b_xp,Panel_30.port_a_xn) annotation(Line(
						points={{50,-100},{55,-100},{84.7,-100},{89.7,-100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_31.port_a_yn,Panel_30.port_b_yp) annotation(Line(
						points={{100,-71},{100,-76},{100,-86},{100,-91}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_31.port_a_xn,Panel_21.port_b_xp) annotation(Line(
						points={{89.7,-65},{84.7,-65},{55,-65},{50,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_32.port_a_yn,Panel_31.port_b_yp) annotation(Line(
						points={{100,-21},{100,-26},{100,-51},{100,-56}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_33.port_a_yn,Panel_32.port_b_yp) annotation(Line(
						points={{100,29},{100,24},{100,-1},{100,-6}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_23.port_b_xp,Panel_33.port_a_xn) annotation(Line(
						points={{50,35},{55,35},{84.7,35},{89.7,35}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_34.port_a_yn,Panel_33.port_b_yp) annotation(Line(
						points={{100,64},{100,59},{100,49},{100,44}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_24.port_b_xp,Panel_34.port_a_xn) annotation(Line(
						points={{50,70},{55,70},{84.7,70},{89.7,70}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_30.port_b_xp,Panel_40.port_a_xn) annotation(Line(
						points={{110,-100},{115,-100},{129.7,-100},{134.7,-100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_31.port_b_xp,Panel_41.port_a_xn) annotation(Line(
						points={{110,-65},{115,-65},{129.7,-65},{134.7,-65}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_40.port_b_yp,Panel_41.port_a_yn) annotation(Line(
						points={{145,-91},{145,-86},{145,-76},{145,-71}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_42.port_a_xn,Panel_32.port_b_xp) annotation(Line(
						points={{134.7,-15},{129.7,-15},{115,-15},{110,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_41.port_b_yp,Panel_42.port_a_yn) annotation(Line(
						points={{145,-56},{145,-51},{145,-26},{145,-21}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_33.port_b_xp,Panel_43.port_a_xn) annotation(Line(
						points={{110,35},{115,35},{129.7,35},{134.7,35}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_42.port_b_yp,Panel_43.port_a_yn) annotation(Line(
						points={{145,-6},{145,-1},{145,24},{145,29}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_43.port_b_yp,Panel_44.port_a_yn) annotation(Line(
						points={{145,44},{145,49},{145,59},{145,64}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_34.port_b_xp,Panel_44.port_a_xn) annotation(Line(
						points={{110,70},{115,70},{129.7,70},{134.7,70}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_04.port_b_xp,Panel_14.port_a_xn) annotation(Line(
						points={{-55,70},{-50,70},{-35.3,70},{-30.3,70}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_04.port_a_yn,Panel_03.port_b_yp) annotation(Line(
						points={{-65,64},{-65,59},{-65,49},{-65,44}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_04.port_a_xn,thermal_connector_side_xn.port_4) annotation(Line(
						points={{-75.3,70},{-80.3,70},{-95,70},{-95,-15},{-100,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_03.port_a_xn,thermal_connector_side_xn.port_3) annotation(Line(
						points={{-75.3,35},{-80.3,35},{-95,35},{-95,-15},{-100,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_02.port_a_xn,thermal_connector_side_xn.port_2) annotation(Line(
						points={{-75.3,-15},{-80.3,-15},{-95,-15},{-100,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_01.port_a_xn,thermal_connector_side_xn.port_1) annotation(Line(
						points={{-75.3,-65},{-80.3,-65},{-95,-65},{-95,-15},{-100,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_00.port_a_xn,thermal_connector_side_xn.port_0) annotation(Line(
						points={{-75.3,-100},{-80.3,-100},{-95,-100},{-95,-15},{-100,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_04.port_b_yp,thermal_connector_side_yp.port_0) annotation(Line(
						points={{-65,79},{-65,84},{-65,100},{35,100},{40,100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_14.port_b_yp,thermal_connector_side_yp.port_1) annotation(Line(
						points={{-20,79},{-20,84},{-20,100},{35,100},{40,100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_24.port_b_yp,thermal_connector_side_yp.port_2) annotation(Line(
						points={{40,79},{40,84},{45,84},{45,100},{40,100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_34.port_b_yp,thermal_connector_side_yp.port_3) annotation(Line(
						points={{100,79},{100,84},{100,100},{45,100},{40,100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_44.port_b_yp,thermal_connector_side_yp.port_4) annotation(Line(
						points={{145,79},{145,84},{145,100},{45,100},{40,100}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_44.port_b_xp,thermal_connector_side_xp.port_4) annotation(Line(
						points={{155,70},{160,70},{175,70},{175,-15},{180,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_43.port_b_xp,thermal_connector_side_xp.port_3) annotation(Line(
						points={{155,35},{160,35},{175,35},{175,-15},{180,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_42.port_b_xp,thermal_connector_side_xp.port_2) annotation(Line(
						points={{155,-15},{160,-15},{175,-15},{180,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_41.port_b_xp,thermal_connector_side_xp.port_1) annotation(Line(
						points={{155,-65},{160,-65},{175,-65},{175,-15},{180,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_40.port_b_xp,thermal_connector_side_xp.port_0) annotation(Line(
						points={{155,-100},{160,-100},{175,-100},{175,-15},{180,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_00.port_a_yn,thermal_connector_side_yn.port_0) annotation(Line(
						points={{-65,-106},{-65,-111},{-65,-130},{35,-130},{40,-130}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_10.port_a_yn,thermal_connector_side_yn.port_1) annotation(Line(
						points={{-20,-106},{-20,-111},{-20,-130},{35,-130},{40,-130}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_20.port_a_yn,thermal_connector_side_yn.port_2) annotation(Line(
						points={{40,-106},{40,-111},{45,-111},{45,-130},{40,-130}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_30.port_a_yn,thermal_connector_side_yn.port_3) annotation(Line(
						points={{100,-106},{100,-111},{100,-130},{45,-130},{40,-130}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_40.port_a_yn,thermal_connector_side_yn.port_4) annotation(Line(
						points={{145,-106},{145,-111},{145,-130},{45,-130},{40,-130}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_00.port_b_zp,thermal_connector_Panel_5x5_zp.port_00) annotation(Line(
						points={{-70,-104.7},{-75,-104.7},{-110,-104.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_01.port_b_zp,thermal_connector_Panel_5x5_zp.port_01) annotation(Line(
						points={{-70,-69.7},{-75,-69.7},{-110,-69.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_02.port_b_zp,thermal_connector_Panel_5x5_zp.port_02) annotation(Line(
						points={{-70,-19.7},{-75,-19.7},{-110,-19.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_03.port_b_zp,thermal_connector_Panel_5x5_zp.port_03) annotation(Line(
						points={{-70,30.3},{-75,30.3},{-110,30.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_04.port_b_zp,thermal_connector_Panel_5x5_zp.port_04) annotation(Line(
						points={{-70,65.3},{-75,65.3},{-110,65.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_10.port_b_zp,thermal_connector_Panel_5x5_zp.port_10) annotation(Line(
						points={{-25,-104.7},{-30,-104.7},{-110,-104.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_11.port_b_zp,thermal_connector_Panel_5x5_zp.port_11) annotation(Line(
						points={{-25,-69.7},{-30,-69.7},{-110,-69.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_12.port_b_zp,thermal_connector_Panel_5x5_zp.port_12) annotation(Line(
						points={{-25,-19.7},{-30,-19.7},{-110,-19.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_13.port_b_zp,thermal_connector_Panel_5x5_zp.port_13) annotation(Line(
						points={{-25,30.3},{-30,30.3},{-110,30.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_14.port_b_zp,thermal_connector_Panel_5x5_zp.port_14) annotation(Line(
						points={{-25,65.3},{-30,65.3},{-110,65.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_20.port_b_zp,thermal_connector_Panel_5x5_zp.port_20) annotation(Line(
						points={{35,-104.7},{30,-104.7},{-110,-104.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_21.port_b_zp,thermal_connector_Panel_5x5_zp.port_21) annotation(Line(
						points={{35,-69.7},{30,-69.7},{-110,-69.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_22.port_b_zp,thermal_connector_Panel_5x5_zp.port_22) annotation(Line(
						points={{35,-19.7},{30,-19.7},{-110,-19.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_23.port_b_zp,thermal_connector_Panel_5x5_zp.port_23) annotation(Line(
						points={{35,30.3},{30,30.3},{-110,30.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_24.port_b_zp,thermal_connector_Panel_5x5_zp.port_24) annotation(Line(
						points={{35,65.3},{30,65.3},{-110,65.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_30.port_b_zp,thermal_connector_Panel_5x5_zp.port_30) annotation(Line(
						points={{95,-104.7},{90,-104.7},{-110,-104.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_31.port_b_zp,thermal_connector_Panel_5x5_zp.port_31) annotation(Line(
						points={{95,-69.7},{90,-69.7},{-110,-69.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_32.port_b_zp,thermal_connector_Panel_5x5_zp.port_32) annotation(Line(
						points={{95,-19.7},{90,-19.7},{-110,-19.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_33.port_b_zp,thermal_connector_Panel_5x5_zp.port_33) annotation(Line(
						points={{95,30.3},{90,30.3},{-110,30.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_34.port_b_zp,thermal_connector_Panel_5x5_zp.port_34) annotation(Line(
						points={{95,65.3},{90,65.3},{-110,65.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_40.port_b_zp,thermal_connector_Panel_5x5_zp.port_40) annotation(Line(
						points={{140,-104.7},{135,-104.7},{-110,-104.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_41.port_b_zp,thermal_connector_Panel_5x5_zp.port_41) annotation(Line(
						points={{140,-69.7},{135,-69.7},{-110,-69.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_42.port_b_zp,thermal_connector_Panel_5x5_zp.port_42) annotation(Line(
						points={{140,-19.7},{135,-19.7},{-110,-19.7},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_43.port_b_zp,thermal_connector_Panel_5x5_zp.port_43) annotation(Line(
						points={{140,30.3},{135,30.3},{-110,30.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_44.port_b_zp,thermal_connector_Panel_5x5_zp.port_44) annotation(Line(
						points={{140,65.3},{135,65.3},{-110,65.3},{-110,-120},{-115,-120}},
						color={191,0,0},
						thickness=0.0625));
					
					connect(Panel_44.port_a_zn,thermal_connector_Panel_5x5_zn.port_44) annotation(Line(
						points={{150,76.7},{150,81.7},{150,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_43.port_a_zn,thermal_connector_Panel_5x5_zn.port_43) annotation(Line(
						points={{150,41.7},{150,46.7},{150,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_42.port_a_zn,thermal_connector_Panel_5x5_zn.port_42) annotation(Line(
						points={{150,-8.300000000000001},{150,-3.3},{150,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_41.port_a_zn,thermal_connector_Panel_5x5_zn.port_41) annotation(Line(
						points={{150,-58.3},{150,-53.3},{150,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_40.port_a_zn,thermal_connector_Panel_5x5_zn.port_40) annotation(Line(
						points={{150,-93.3},{150,-88.3},{150,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_34.port_a_zn,thermal_connector_Panel_5x5_zn.port_34) annotation(Line(
						points={{105,76.7},{105,81.7},{105,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_33.port_a_zn,thermal_connector_Panel_5x5_zn.port_33) annotation(Line(
						points={{105,41.7},{105,46.7},{105,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_32.port_a_zn,thermal_connector_Panel_5x5_zn.port_32) annotation(Line(
						points={{105,-8.300000000000001},{105,-3.3},{105,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_31.port_a_zn,thermal_connector_Panel_5x5_zn.port_31) annotation(Line(
						points={{105,-58.3},{105,-53.3},{105,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_30.port_a_zn,thermal_connector_Panel_5x5_zn.port_30) annotation(Line(
						points={{105,-93.3},{105,-88.3},{105,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_24.port_a_zn,thermal_connector_Panel_5x5_zn.port_24) annotation(Line(
						points={{45,76.7},{45,81.7},{45,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_23.port_a_zn,thermal_connector_Panel_5x5_zn.port_23) annotation(Line(
						points={{45,41.7},{45,46.7},{45,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_22.port_a_zn,thermal_connector_Panel_5x5_zn.port_22) annotation(Line(
						points={{45,-8.300000000000001},{45,-3.3},{45,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_21.port_a_zn,thermal_connector_Panel_5x5_zn.port_21) annotation(Line(
						points={{45,-58.3},{45,-53.3},{45,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_20.port_a_zn,thermal_connector_Panel_5x5_zn.port_20) annotation(Line(
						points={{45,-93.3},{45,-88.3},{45,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_14.port_a_zn,thermal_connector_Panel_5x5_zn.port_14) annotation(Line(
						points={{-15,76.7},{-15,81.7},{-15,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_13.port_a_zn,thermal_connector_Panel_5x5_zn.port_13) annotation(Line(
						points={{-15,41.7},{-15,46.7},{-15,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_12.port_a_zn,thermal_connector_Panel_5x5_zn.port_12) annotation(Line(
						points={{-15,-8.300000000000001},{-15,-3.3},{-15,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_11.port_a_zn,thermal_connector_Panel_5x5_zn.port_11) annotation(Line(
						points={{-15,-58.3},{-15,-53.3},{-15,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_10.port_a_zn,thermal_connector_Panel_5x5_zn.port_10) annotation(Line(
						points={{-15,-93.3},{-15,-88.3},{-15,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_04.port_a_zn,thermal_connector_Panel_5x5_zn.port_04) annotation(Line(
						points={{-60,76.7},{-60,81.7},{-60,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_03.port_a_zn,thermal_connector_Panel_5x5_zn.port_03) annotation(Line(
						points={{-60,41.7},{-60,46.7},{-60,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_02.port_a_zn,thermal_connector_Panel_5x5_zn.port_02) annotation(Line(
						points={{-60,-8.300000000000001},{-60,-3.3},{-60,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_01.port_a_zn,thermal_connector_Panel_5x5_zn.port_01) annotation(Line(
						points={{-60,-58.3},{-60,-53.3},{-60,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_00.port_a_zn,thermal_connector_Panel_5x5_zn.port_00) annotation(Line(
						points={{-60,-93.3},{-60,-88.3},{-60,95},{185,95},{190,95}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_xn.port_b,MSS_22.port_a_xn) annotation(Line(
						points={{20,-15},{25,-15},{24.7,-15},{29.7,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(Panel_12.port_b_xp,thermalConductor_xn.port_a) annotation(Line(
						points={{-10,-15},{-5,-15},{0,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_22.port_b_xp,thermalConductor_xp.port_a) annotation(Line(
						points={{50,-15},{55,-15},{60,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_xp.port_b,Panel_32.port_a_xn) annotation(Line(
						points={{80,-15},{85,-15},{84.7,-15},{89.7,-15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_yp.port_b,MSS_22.port_b_yp) annotation(Line(
						points={{40,0},{40,-5},{40,-1},{40,-6}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_yp.port_a,Panel_23.port_a_yn) annotation(Line(
						points={{40,20},{40,25},{40,24},{40,29}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_yn.port_b,Panel_21.port_b_yp) annotation(Line(
						points={{40,-50},{40,-55},{40,-51},{40,-56}},
						color={191,0,0},
						thickness=0.0625));
					connect(MSS_22.port_a_yn,thermalConductor_yn.port_a) annotation(Line(
						points={{40,-21},{40,-26},{40,-25},{40,-30}},
						color={191,0,0},
						thickness=0.0625));
				annotation(
					Icon(graphics={
																																																															Rectangle(
																																																																lineColor={0,0,0},
																																																																fillColor={255,215,0},
																																																																fillPattern=FillPattern.Solid,
																																																																lineThickness=4.5,
																																																																extent={{-100,100},{100,-100}}),
																																																															Ellipse(
																																																																lineColor={0,0,0},
																																																																fillColor={192,192,192},
																																																																fillPattern=FillPattern.Solid,
																																																																extent={{22,-25.3},{-24.6,21.3}}),
																																																															Text(
																																																																textString="0,0",
																																																																lineColor={0,0,0},
																																																																extent={{-96.7,-56.7},{-60,-100}}),
																																																															Text(
																																																																textString="4,4",
																																																																lineColor={0,0,0},
																																																																extent={{59.2,99.2},{95.90000000000001,55.9}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end Panel_5x5;
			model radiator_plus_neighbours_viewfactor "radiator_plus_neighbours_viewfactor.mo"
				parameter Real Gr_main(unit="m2")=0.2*0.0064 "Net radiation conductance between two surfaces (see docu)";
				parameter Real Gr_neighbour(unit="m2")=0.0406*0.0064 "Net radiation conductance between two surfaces (see docu)";
				Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
					transformation(extent={{-85,15},{-65,35}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_3 thermal_connector_side_3 annotation(Placement(
					transformation(extent={{40,15},{60,35}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr=Gr_neighbour) annotation(Placement(transformation(extent={{-20,55},{0,75}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation2(Gr=Gr_main) annotation(Placement(transformation(extent={{-20,15},{0,35}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation3(Gr=Gr_neighbour) annotation(Placement(transformation(extent={{-20,-30},{0,-10}})));
				initial equation
					port_a.T=293.15;
					thermal_connector_side_3.port_0.T=293.15;
					thermal_connector_side_3.port_1.T=293.15;
					thermal_connector_side_3.port_2.T=293.15;
				equation
					connect(bodyRadiation2.port_a,port_a) annotation(Line(
						points={{-20,25},{-25,25},{-70,25},{-75,25}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation3.port_a,port_a) annotation(Line(
						points={{-20,-20},{-25,-20},{-70,-20},{-70,25},{-75,25}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation1.port_a,port_a) annotation(Line(
						points={{-20,65},{-25,65},{-70,65},{-70,25},{-75,25}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation2.port_b,thermal_connector_side_3.port_1) annotation(Line(
						points={{0,25},{5,25},{45,25},{50,25}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation1.port_b,thermal_connector_side_3.port_0) annotation(Line(
						points={{0,65},{5,65},{45,65},{45,25},{50,25}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation3.port_b,thermal_connector_side_3.port_2) annotation(Line(
						points={{0,-20},{5,-20},{45,-20},{45,25},{50,25}},
						color={191,0,0},
						thickness=0.0625));
				annotation(
					Icon(graphics={
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,0,0},
																													fillPattern=FillPattern.Solid,
																													lineThickness=3.5,
																													extent={{-99.90000000000001,23.4},{-79.7,-26.5}}),
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,0,0},
																													fillPattern=FillPattern.Solid,
																													lineThickness=3.5,
																													extent={{78,74},{98.2,24.1}}),
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,0,0},
																													fillPattern=FillPattern.Solid,
																													lineThickness=3.5,
																													extent={{78.09999999999999,24.2},{98.3,-25.7}}),
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,0,0},
																													fillPattern=FillPattern.Solid,
																													lineThickness=3.5,
																													extent={{78.2,-25.1},{98.40000000000001,-75}}),
																												Line(
																													points={{-75.5,0},{37.8,0},{37.8,0}},
																													color={255,0,0},
																													arrow={Arrow.Filled,Arrow.Filled},
																													thickness=3.5,
																													origin={13.2,39},
																													rotation=17),
																												Line(
																													points={{-56.6,-0.7},{56.7,-0.7},{56.7,-0.7}},
																													color={255,0,0},
																													arrow={Arrow.Filled,Arrow.Filled},
																													thickness=3.5),
																												Line(
																													points={{-75.5,0},{37.8,0},{37.8,0}},
																													color={255,0,0},
																													arrow={Arrow.Filled,Arrow.Filled},
																													thickness=3.5,
																													origin={13.6,-40.4},
																													rotation=-15),
																												Line(
																													points={{50,100},{50,80},{43.3,66.7},{26.7,53.3},{10,46.7},{-6.7,
																													40},{-30,26.7},{-43.3,13.3},{-46.7,3.3},{-43.3,-13.3},{-30,-26.7},{-10,
																													-40},{13.3,-50},{30,-53.3},{43.3,-66.7},{46.7,-76.7},{50,-90},{50,
																													-100},{50,-100}},
																													pattern=LinePattern.Dash,
																													color={0,0,0},
																													smooth=Smooth.Bezier,
																													thickness=1.5),
																												Text(
																													textString="%name",
																													extent={{-100,133.3},{100,100}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end radiator_plus_neighbours_viewfactor;
			model panel_5x5_with_IF_3x3 "panel_5x5_with_IF_3x3.mo"
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_IF_5x5_zp annotation(Placement(
					transformation(extent={{-50,-30},{-30,-10}}),
					iconTransformation(extent={{-60,-110},{-40,-90}})));
				iboss.iboss_thermal.Panel_5x5.components.Panel_5x5 panel_5x5(
					x_Panel=x_Panel,
					y_Panel=y_Panel,
					z_Panel=z_Panel,
					z_MSS=z_MSS,
					material_MSS=material_MSS,
					material_Panel=material_Panel,
					h_MSS_Panel=h_MSS_Panel) annotation(Placement(transformation(extent={{-10,5},{10,25}})));
				iboss.iboss_thermal.Panel_5x5.components.combined_IF_3x3 combined_IF(
					x_Panel=x_Panel,
					y_Panel=y_Panel,
					z_TSS=z_TSS,
					h_MSS_TSS=h_MSS_TSS,
					material_MSS=material_MSS,
					material_TSS=material_TSS) annotation(Placement(transformation(extent={{20,5},{40,25}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_IF_5x5_zn annotation(Placement(
					transformation(extent={{60,40},{80,60}}),
					iconTransformation(extent={{40,90},{60,110}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_xn annotation(Placement(
					transformation(extent={{-50,5},{-30,25}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_xp annotation(Placement(
					transformation(extent={{60,5},{80,25}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_yp annotation(Placement(
					transformation(extent={{-10,40},{10,60}}),
					iconTransformation(extent={{-10,90},{10,110}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_yn annotation(Placement(
					transformation(extent={{-10,-30},{10,-10}}),
					iconTransformation(extent={{-10,-110},{10,-90}})));
				parameter Modelica.SIunits.Height x_Panel=0.4 "width of Panel in m";
				parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
				parameter Modelica.SIunits.Height z_Panel=0.03 "thickness of Panel in m";
				parameter Modelica.SIunits.Height z_TSS=0.01 "thickness of Panel in m";
				parameter Modelica.SIunits.Height z_MSS=0.06 "thickness of Panel in m";
				parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Aluminiumlegierungen_1060_Legierung() "Material of MSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of TSS from MaterialDataBase" annotation(
					Placement(transformation(extent={{-10,-10},{10,10}})),
					choicesAllMatching=true);
				parameter Real h_MSS_Panel(unit="W/(m³·K)")=1000 "Heat transfer coefficient Panel - MSS";
				parameter Real h_MSS_TSS(unit="W/(m³·K)")=1000 "Heat transfer coefficient TSS - MSS";
				equation
					connect(panel_5x5.thermal_connector_side_xn,thermal_connector_side_xn) annotation(Line(
						points={{-10.3,15.3},{-15.3,15.3},{-35,15.3},{-35,15},{-40,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_side_xp,thermal_connector_side_xp) annotation(Line(
						points={{10,15},{15,15},{65,15},{70,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_side_yp,thermal_connector_side_yp) annotation(Line(
						points={{0,25},{0,30},{5,30},{5,50},{0,50}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_side_yn,thermal_connector_side_yn) annotation(Line(
						points={{0,5},{0,0},{5,0},{5,-20},{0,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zn,thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{5,25},{5,30},{5,50},{65,50},{70,50}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_00,thermal_connector_Panel_IF_5x5_zp.port_00) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_01,thermal_connector_Panel_IF_5x5_zp.port_01) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_02,thermal_connector_Panel_IF_5x5_zp.port_02) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_03,thermal_connector_Panel_IF_5x5_zp.port_03) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_04,thermal_connector_Panel_IF_5x5_zp.port_04) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_10,thermal_connector_Panel_IF_5x5_zp.port_10) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_20,thermal_connector_Panel_IF_5x5_zp.port_20) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_30,thermal_connector_Panel_IF_5x5_zp.port_30) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_40,thermal_connector_Panel_IF_5x5_zp.port_40) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_41,thermal_connector_Panel_IF_5x5_zp.port_41) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_42,thermal_connector_Panel_IF_5x5_zp.port_42) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_43,thermal_connector_Panel_IF_5x5_zp.port_43) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_44,thermal_connector_Panel_IF_5x5_zp.port_44) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_34,thermal_connector_Panel_IF_5x5_zp.port_34) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_24,thermal_connector_Panel_IF_5x5_zp.port_24) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5.thermal_connector_Panel_5x5_zp.port_14,thermal_connector_Panel_IF_5x5_zp.port_14) annotation(Line(
						points={{-5,5},{-5,0},{-5,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_00,panel_5x5.thermal_connector_Panel_5x5_zp.port_11) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_01,panel_5x5.thermal_connector_Panel_5x5_zp.port_12) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_02,panel_5x5.thermal_connector_Panel_5x5_zp.port_13) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_10,panel_5x5.thermal_connector_Panel_5x5_zp.port_21) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_11,panel_5x5.thermal_connector_Panel_5x5_zp.port_22) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_12,panel_5x5.thermal_connector_Panel_5x5_zp.port_23) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_20,panel_5x5.thermal_connector_Panel_5x5_zp.port_31) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_21,panel_5x5.thermal_connector_Panel_5x5_zp.port_32) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zn.port_22,panel_5x5.thermal_connector_Panel_5x5_zp.port_33) annotation(Line(
						points={{35,25},{35,30},{15,30},{15,0},{-5,0},{-5,
						5}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_00,thermal_connector_Panel_IF_5x5_zp.port_11) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_01,thermal_connector_Panel_IF_5x5_zp.port_12) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_02,thermal_connector_Panel_IF_5x5_zp.port_13) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_10,thermal_connector_Panel_IF_5x5_zp.port_21) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_11,thermal_connector_Panel_IF_5x5_zp.port_22) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_12,thermal_connector_Panel_IF_5x5_zp.port_23) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_20,thermal_connector_Panel_IF_5x5_zp.port_31) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_21,thermal_connector_Panel_IF_5x5_zp.port_32) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(combined_IF.thermal_connector_Panel_3x3_zp.port_22,thermal_connector_Panel_IF_5x5_zp.port_33) annotation(Line(
						points={{25,5},{25,0},{25,-20},{-35,-20},{-40,-20}},
						color={0,0,0},
						thickness=0.0625));
				annotation(
					Icon(graphics={
																																											Rectangle(
																																												lineColor={0,0,0},
																																												fillColor={255,215,0},
																																												fillPattern=FillPattern.Solid,
																																												lineThickness=4.5,
																																												extent={{-100,100},{100,-100}}),
																																											Ellipse(
																																												lineColor={0,0,0},
																																												fillColor={210,180,140},
																																												fillPattern=FillPattern.Solid,
																																												extent={{70,-73.3},{-73.3,70}}),
																																											Ellipse(
																																												lineColor={0,0,0},
																																												fillColor={192,192,192},
																																												fillPattern=FillPattern.Solid,
																																												extent={{22,-25.3},{-24.6,21.3}}),
																																											Text(
																																												textString="0,0",
																																												lineColor={0,0,0},
																																												extent={{-99.8,-56.9},{-63.1,-100.2}}),
																																											Text(
																																												textString="4,4",
																																												lineColor={0,0,0},
																																												extent={{63.1,99.59999999999999},{99.8,56.3}}),
																																											Text(
																																												textString="+z-out",
																																												lineColor={0,0,0},
																																												extent={{-66.59999999999999,-59.9},{-16.6,-99.90000000000001}}),
																																											Text(
																																												textString="-z-in ",
																																												lineColor={0,0,0},
																																												extent={{16.7,99.40000000000001},{66.7,59.4}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end panel_5x5_with_IF_3x3;
			model TIM_5x5 "TIM_5x5.mo"
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5 annotation(Placement(
					transformation(extent={{-130,5},{-110,25}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_MSS_22(G=A_Element*h_MSS) annotation(Placement(transformation(extent={{-30,5},{-10,25}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x1 annotation(Placement(
					transformation(extent={{70,5},{90,25}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_11(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{-65,-25},{-45,-5}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_12(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{-65,5},{-45,25}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_13(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{-65,35},{-45,55}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_23(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{-30,35},{-10,55}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_33(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{5,35},{25,55}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_31(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{5,-25},{25,-5}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_21(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{-30,-25},{-10,-5}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_TSS_32(G=A_Element*h_TSS) annotation(Placement(transformation(extent={{5,5},{25,25}})));
				parameter Modelica.SIunits.Area A_Element=0.08*0.08;
				parameter Real h_TSS(unit="W/(m²·K)")=3000 "Heat transfer coefficient of TSS";
				parameter Real h_MSS(unit="W/(m²·K)")=200 "Heat transfer coefficient of TSS";
				radiator_plus_neighbours_viewfactor rad_00(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-100,-55},{-80,-35}})));
				radiator_plus_neighbours_viewfactor rad_10(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-65,-55},{-45,-35}})));
				radiator_plus_neighbours_viewfactor rad_01(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-100,-25},{-80,-5}})));
				radiator_plus_neighbours_viewfactor rad_02(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-100,5},{-80,25}})));
				radiator_plus_neighbours_viewfactor rad_03(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-100,35},{-80,55}})));
				radiator_plus_neighbours_viewfactor rad_04(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-100,65},{-80,85}})));
				radiator_plus_neighbours_viewfactor rad_14(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-65,65},{-45,85}})));
				radiator_plus_neighbours_viewfactor rad_20(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-30,-55},{-10,-35}})));
				radiator_plus_neighbours_viewfactor rad_30(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{5,-55},{25,-35}})));
				radiator_plus_neighbours_viewfactor rad_40(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{40,-55},{60,-35}})));
				radiator_plus_neighbours_viewfactor rad_41(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{40,-25},{60,-5}})));
				radiator_plus_neighbours_viewfactor rad_42(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{40,5},{60,25}})));
				radiator_plus_neighbours_viewfactor rad_43(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{40,35},{60,55}})));
				radiator_plus_neighbours_viewfactor rad_24(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{-30,65},{-10,85}})));
				radiator_plus_neighbours_viewfactor rad_34(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{5,65},{25,85}})));
				radiator_plus_neighbours_viewfactor rad_44(
					Gr_main=0.789953*0.0064,
					Gr_neighbour=0.0458598*0.0064) annotation(Placement(transformation(extent={{40,65},{60,85}})));
				equation
					connect(thermalConductor_MSS_22.port_b,thermal_connector_Panel_5x1.port_22) annotation(Line(
						points={{-10,15},{-5,15},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_MSS_22.port_a,thermal_connector_Panel_5x5.port_22) annotation(Line(
						points={{-30,15},{-35,15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_11.port_a,thermal_connector_Panel_5x5.port_11) annotation(Line(
						points={{-65,-15},{-70,-15},{-115,-15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_11.port_b,thermal_connector_Panel_5x1.port_11) annotation(Line(
						points={{-45,-15},{-40,-15},{75,-15},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_12.port_a,thermal_connector_Panel_5x5.port_12) annotation(Line(
						points={{-65,15},{-70,15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_12.port_b,thermal_connector_Panel_5x1.port_12) annotation(Line(
						points={{-45,15},{-40,15},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_13.port_a,thermal_connector_Panel_5x5.port_13) annotation(Line(
						points={{-65,45},{-70,45},{-115,45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_13.port_b,thermal_connector_Panel_5x1.port_13) annotation(Line(
						points={{-45,45},{-40,45},{75,45},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_23.port_a,thermal_connector_Panel_5x5.port_23) annotation(Line(
						points={{-30,45},{-35,45},{-115,45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_33.port_a,thermal_connector_Panel_5x5.port_33) annotation(Line(
						points={{5,45},{0,45},{-115,45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_23.port_b,thermal_connector_Panel_5x1.port_23) annotation(Line(
						points={{-10,45},{-5,45},{75,45},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_33.port_b,thermal_connector_Panel_5x1.port_33) annotation(Line(
						points={{25,45},{30,45},{75,45},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_32.port_b,thermal_connector_Panel_5x1.port_32) annotation(Line(
						points={{25,15},{30,15},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_32.port_a,thermal_connector_Panel_5x5.port_32) annotation(Line(
						points={{5,15},{0,15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_31.port_b,thermal_connector_Panel_5x1.port_31) annotation(Line(
						points={{25,-15},{30,-15},{75,-15},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_31.port_a,thermal_connector_Panel_5x5.port_31) annotation(Line(
						points={{5,-15},{0,-15},{-115,-15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_21.port_b,thermal_connector_Panel_5x1.port_21) annotation(Line(
						points={{-10,-15},{-5,-15},{75,-15},{75,15},{80,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor_TSS_21.port_a,thermal_connector_Panel_5x5.port_21) annotation(Line(
						points={{-30,-15},{-35,-15},{-115,-15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_00.port_a,thermal_connector_Panel_5x5.port_00) annotation(Line(
						points={{-100,-45},{-105,-45},{-115,-45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_01.port_a,thermal_connector_Panel_5x5.port_01) annotation(Line(
						points={{-100,-15},{-105,-15},{-115,-15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_02.port_a,thermal_connector_Panel_5x5.port_02) annotation(Line(
						points={{-100,15},{-105,15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_03.port_a,thermal_connector_Panel_5x5.port_03) annotation(Line(
						points={{-100,45},{-105,45},{-115,45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_04.port_a,thermal_connector_Panel_5x5.port_04) annotation(Line(
						points={{-100,75},{-105,75},{-115,75},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_14.port_a,thermal_connector_Panel_5x5.port_14) annotation(Line(
						points={{-65,75},{-70,75},{-115,75},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_24.port_a,thermal_connector_Panel_5x5.port_24) annotation(Line(
						points={{-30,75},{-35,75},{-115,75},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_34.port_a,thermal_connector_Panel_5x5.port_34) annotation(Line(
						points={{5,75},{0,75},{-115,75},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_44.port_a,thermal_connector_Panel_5x5.port_44) annotation(Line(
						points={{40,75},{35,75},{-115,75},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_43.port_a,thermal_connector_Panel_5x5.port_43) annotation(Line(
						points={{40,45},{35,45},{-115,45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_42.port_a,thermal_connector_Panel_5x5.port_42) annotation(Line(
						points={{40,15},{35,15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_41.port_a,thermal_connector_Panel_5x5.port_41) annotation(Line(
						points={{40,-15},{35,-15},{-115,-15},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_40.port_a,thermal_connector_Panel_5x5.port_40) annotation(Line(
						points={{40,-45},{35,-45},{-115,-45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_30.port_a,thermal_connector_Panel_5x5.port_30) annotation(Line(
						points={{5,-45},{0,-45},{-115,-45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_20.port_a,thermal_connector_Panel_5x5.port_20) annotation(Line(
						points={{-30,-45},{-35,-45},{-115,-45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_10.port_a,thermal_connector_Panel_5x5.port_10) annotation(Line(
						points={{-65,-45},{-70,-45},{-115,-45},{-115,15},{-120,15}},
						color={191,0,0},
						thickness=0.0625));
					connect(rad_00.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_00) annotation(Line(
						points={{-80,-45},{-75,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_00.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_01) annotation(Line(
						points={{-80,-45},{-75,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_00.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_10) annotation(Line(
						points={{-80,-45},{-75,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_01.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_01) annotation(Line(
						points={{-80,-15},{-75,-15},{75,-15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_01.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_02) annotation(Line(
						points={{-80,-15},{-75,-15},{75,-15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_01.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_00) annotation(Line(
						points={{-80,-15},{-75,-15},{75,-15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_02.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_02) annotation(Line(
						points={{-80,15},{-75,15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_02.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_03) annotation(Line(
						points={{-80,15},{-75,15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_02.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_01) annotation(Line(
						points={{-80,15},{-75,15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_03.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_03) annotation(Line(
						points={{-80,45},{-75,45},{75,45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_03.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_04) annotation(Line(
						points={{-80,45},{-75,45},{75,45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_03.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_02) annotation(Line(
						points={{-80,45},{-75,45},{75,45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_04.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_04) annotation(Line(
						points={{-80,75},{-75,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_04.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_14) annotation(Line(
						points={{-80,75},{-75,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_04.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_03) annotation(Line(
						points={{-80,75},{-75,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_14.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_14) annotation(Line(
						points={{-45,75},{-40,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_14.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_24) annotation(Line(
						points={{-45,75},{-40,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_14.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_04) annotation(Line(
						points={{-45,75},{-40,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_24.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_24) annotation(Line(
						points={{-10,75},{-5,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_24.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_34) annotation(Line(
						points={{-10,75},{-5,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_24.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_14) annotation(Line(
						points={{-10,75},{-5,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_34.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_34) annotation(Line(
						points={{25,75},{30,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_34.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_44) annotation(Line(
						points={{25,75},{30,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_34.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_24) annotation(Line(
						points={{25,75},{30,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_44.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_44) annotation(Line(
						points={{60,75},{65,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_44.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_43) annotation(Line(
						points={{60,75},{65,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_44.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_34) annotation(Line(
						points={{60,75},{65,75},{75,75},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_43.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_43) annotation(Line(
						points={{60,45},{65,45},{75,45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_43.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_42) annotation(Line(
						points={{60,45},{65,45},{75,45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_43.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_44) annotation(Line(
						points={{60,45},{65,45},{75,45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_42.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_42) annotation(Line(
						points={{60,15},{65,15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_42.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_41) annotation(Line(
						points={{60,15},{65,15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_42.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_43) annotation(Line(
						points={{60,15},{65,15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_41.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_41) annotation(Line(
						points={{60,-15},{65,-15},{75,-15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_41.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_40) annotation(Line(
						points={{60,-15},{65,-15},{75,-15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_41.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_42) annotation(Line(
						points={{60,-15},{65,-15},{75,-15},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_40.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_40) annotation(Line(
						points={{60,-45},{65,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_40.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_30) annotation(Line(
						points={{60,-45},{65,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_40.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_41) annotation(Line(
						points={{60,-45},{65,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_30.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_30) annotation(Line(
						points={{25,-45},{30,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_30.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_20) annotation(Line(
						points={{25,-45},{30,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_30.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_40) annotation(Line(
						points={{25,-45},{30,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_20.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_20) annotation(Line(
						points={{-10,-45},{-5,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_20.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_10) annotation(Line(
						points={{-10,-45},{-5,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_20.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_30) annotation(Line(
						points={{-10,-45},{-5,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_10.thermal_connector_side_3.port_1,thermal_connector_Panel_5x1.port_10) annotation(Line(
						points={{-45,-45},{-40,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_10.thermal_connector_side_3.port_0,thermal_connector_Panel_5x1.port_00) annotation(Line(
						points={{-45,-45},{-40,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
					connect(rad_10.thermal_connector_side_3.port_2,thermal_connector_Panel_5x1.port_20) annotation(Line(
						points={{-45,-45},{-40,-45},{75,-45},{75,15},{80,15}},
						color={0,0,0},
						thickness=0.0625));
				annotation(
					Icon(
						coordinateSystem(grid={10,10}),
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
			end TIM_5x5;
			model thermal_2_conductor "thermal_2_conductor.mo"
				parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
				parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
				parameter Real h_c(unit="W/(m2K)")=3000 "Heat transfer coefficient between surfaces in contact";
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_side_l annotation(Placement(
					transformation(extent={{-70,-10},{-50,10}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_side_r annotation(Placement(
					transformation(extent={{100,-10},{120,10}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,15},{35,35}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,-35},{35,-15}})));
				equation
					connect(thermalConductor1.port_a,thermal_connector_side_l.port_0) annotation(Line(
						points={{15,25},{10,25},{-55,25},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor2.port_a,thermal_connector_side_l.port_1) annotation(Line(
						points={{15,-25},{10,-25},{-55,-25},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor1.port_b,thermal_connector_side_r.port_0) annotation(Line(
						points={{35,25},{40,25},{105,25},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor2.port_b,thermal_connector_side_r.port_1) annotation(Line(
						points={{35,-25},{40,-25},{105,-25},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
				annotation(Icon(
					coordinateSystem(extent={{-100,-50},{100,50}}),
					graphics={
																											Rectangle(
																												lineColor={255,255,255},
																												fillColor={255,0,0},
																												fillPattern=FillPattern.Backward,
																												lineThickness=2.25,
																												extent={{-100,50},{100,-50}}),
																											Text(
																												textString="2",
																												lineColor={0,0,0},
																												lineThickness=2.25,
																												extent={{-96.7,46.7},{96.7,-46.7}})}));
			end thermal_2_conductor;
			model thermal_5_conductor "thermal_5_conductor.mo"
				parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
				parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
				parameter Real h_c(unit="W/(m2K)")=3000 "Heat transfer coefficient between surfaces in contact";
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_l annotation(Placement(
					transformation(extent={{-70,-10},{-50,10}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_r annotation(Placement(
					transformation(extent={{100,-10},{120,10}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,50},{35,70}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,20},{35,40}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,-10},{35,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor4(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,-40},{35,-20}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor5(G=x_Panel*y_Panel*h_c/5) annotation(Placement(transformation(extent={{15,-70},{35,-50}})));
				equation
					connect(thermalConductor1.port_a,thermal_connector_side_l.port_0) annotation(Line(
						points={{15,60},{10,60},{-55,60},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor2.port_a,thermal_connector_side_l.port_1) annotation(Line(
						points={{15,30},{10,30},{-55,30},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor3.port_a,thermal_connector_side_l.port_2) annotation(Line(
						points={{15,0},{10,0},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor4.port_a,thermal_connector_side_l.port_3) annotation(Line(
						points={{15,-30},{10,-30},{-55,-30},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor5.port_a,thermal_connector_side_l.port_4) annotation(Line(
						points={{15,-60},{10,-60},{-55,-60},{-55,0},{-60,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor1.port_b,thermal_connector_side_r.port_0) annotation(Line(
						points={{35,60},{40,60},{105,60},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor2.port_b,thermal_connector_side_r.port_1) annotation(Line(
						points={{35,30},{40,30},{105,30},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor3.port_b,thermal_connector_side_r.port_2) annotation(Line(
						points={{35,0},{40,0},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor4.port_b,thermal_connector_side_r.port_3) annotation(Line(
						points={{35,-30},{40,-30},{105,-30},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(thermalConductor5.port_b,thermal_connector_side_r.port_4) annotation(Line(
						points={{35,-60},{40,-60},{105,-60},{105,0},{110,0}},
						color={191,0,0},
						thickness=0.0625));
				annotation(
					Icon(
						coordinateSystem(extent={{-100,-50},{100,50}}),
						graphics={
																																																																																																																																					Rectangle(
																																																																																																																																						lineColor={255,255,255},
																																																																																																																																						fillColor={255,0,0},
																																																																																																																																						fillPattern=FillPattern.Backward,
																																																																																																																																						lineThickness=2.25,
																																																																																																																																						extent={{-100,50},{100,-50}}),
																																																																																																																																					Text(
																																																																																																																																						textString="5",
																																																																																																																																						lineColor={0,0,0},
																																																																																																																																						lineThickness=2.25,
																																																																																																																																						extent={{-96.7,46.7},{96.7,-46.7}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end thermal_5_conductor;
			model environment_5x5 "environment_5x5.mo"
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5 annotation(Placement(transformation(extent={{95,-10},{115,10}})));
				parameter Modelica.SIunits.Area effective_area_total=0.16 "Flaeche des Seitenpaneels";
				parameter Modelica.SIunits.Area effective_area_element=0.08*0.08 "Flaeche eines Elements";
				parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
				parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
				parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
				parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
				parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
				parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
				parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
				parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_23 annotation(Placement(transformation(extent={{-10,20},{10,40}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS_22 annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_00(alpha=0) annotation(Placement(transformation(extent={{-70,-70},{-50,-50}})));
				Modelica.Blocks.Math.Gain factor_Rad(k=effective_area_element * alpha_Rad / effective_area_total) annotation(Placement(transformation(extent={{-105,-40},{-85,-20}})));
				Modelica.Blocks.Math.Gain factor_TSS(k=effective_area_element * alpha_TSS / effective_area_total) annotation(Placement(transformation(extent={{-105,20},{-85,40}})));
				Modelica.Blocks.Math.Gain factor_MSS(k=effective_area_element * alpha_MSS / effective_area_total) annotation(Placement(transformation(extent={{-105,-10},{-85,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_00(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={145,-60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_11(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={175,-30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS_22(Gr=epsilon_MSS * effective_area_element) annotation(Placement(transformation(
					origin={205,0},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
					origin={295,0},
					extent={{10,10},{-10,-10}})));
				input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(
					transformation(extent={{-150,-20},{-110,20}}),
					iconTransformation(extent={{-120,-20},{-80,20}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_12 annotation(Placement(transformation(extent={{-40,-10},{-20,10}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_13 annotation(Placement(transformation(extent={{-40,20},{-20,40}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_33 annotation(Placement(transformation(extent={{20,20},{40,40}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_32 annotation(Placement(transformation(extent={{20,-10},{40,10}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_31 annotation(Placement(transformation(extent={{20,-40},{40,-20}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_21 annotation(Placement(transformation(extent={{-10,-40},{10,-20}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS_11 annotation(Placement(transformation(extent={{-40,-40},{-20,-20}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_01(alpha=0) annotation(Placement(transformation(extent={{-70,-40},{-50,-20}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_02(alpha=0) annotation(Placement(transformation(extent={{-70,-10},{-50,10}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_03(alpha=0) annotation(Placement(transformation(extent={{-70,20},{-50,40}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_04(alpha=0) annotation(Placement(transformation(extent={{-70,50},{-50,70}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_10(alpha=0) annotation(Placement(transformation(extent={{-40,-70},{-20,-50}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_20(alpha=0) annotation(Placement(transformation(extent={{-10,-70},{10,-50}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_30(alpha=0) annotation(Placement(transformation(extent={{20,-70},{40,-50}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_40(alpha=0) annotation(Placement(transformation(extent={{50,-70},{70,-50}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_41(alpha=0) annotation(Placement(transformation(extent={{50,-40},{70,-20}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_42(alpha=0) annotation(Placement(transformation(extent={{50,-10},{70,10}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_43(alpha=0) annotation(Placement(transformation(extent={{50,20},{70,40}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_44(alpha=0) annotation(Placement(transformation(extent={{50,50},{70,70}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_34(alpha=0) annotation(Placement(transformation(extent={{20,50},{40,70}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_24(alpha=0) annotation(Placement(transformation(extent={{-10,50},{10,70}})));
				Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad_14(alpha=0) annotation(Placement(transformation(extent={{-40,50},{-20,70}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_12(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={175,0},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_13(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={175,30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_23(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={205,30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_33(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={235,30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_21(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={205,-30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_31(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={235,-30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS_32(Gr=epsilon_TSS * effective_area_element) annotation(Placement(transformation(
					origin={235,0},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_01(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={145,-30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_02(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={145,0},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_03(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={145,30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_04(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={145,60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_14(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={175,60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_24(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={205,60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_34(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={235,60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_44(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={265,60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_43(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={265,30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_42(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={265,0},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_41(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={265,-30},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_40(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={265,-60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_30(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={235,-60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_20(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={205,-60},
					extent={{-10,-10},{10,10}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad_10(Gr=epsilon_Rad * effective_area_element) annotation(Placement(transformation(
					origin={175,-60},
					extent={{-10,-10},{10,10}})));
				equation
					connect(factor_TSS.u,u) annotation(Line(
						points={{-107,30},{-112,30},{-125,30},{-125,0},{-130,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_MSS.u,u) annotation(Line(
						points={{-107,0},{-112,0},{-125,0},{-130,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.u,u) annotation(Line(
						points={{-107,-30},{-112,-30},{-125,-30},{-125,0},{-130,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_13.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{-45,30},{-40,30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_23.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{-15,30},{-10,30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_33.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{15,30},{20,30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_12.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{-45,30},{-45,0},{-40,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_32.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{15,30},{15,0},{20,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_11.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{-45,30},{-45,-30},{-40,-30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_21.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{-15,30},{-15,-30},{-10,-30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_TSS.y,HeatFlow_TSS_31.Q_flow) annotation(Line(
						points={{-84,30},{-79,30},{15,30},{15,-30},{20,-30}},
						color={0,0,127},
						thickness=0.0625));
					connect(HeatFlow_MSS_22.Q_flow,factor_MSS.y) annotation(Line(
						points={{-10,0},{-15,0},{-79,0},{-84,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_00.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-75,-30},{-75,-60},{-70,-60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_01.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-75,-30},{-70,-30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_02.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-75,-30},{-75,0},{-70,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_03.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-75,-30},{-75,30},{-70,30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_04.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-75,-30},{-75,60},{-70,60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_14.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-45,-30},{-45,60},{-40,60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_24.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-15,-30},{-15,60},{-10,60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_34.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{15,-30},{15,60},{20,60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_44.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{45,-30},{45,60},{50,60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_43.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{45,-30},{45,30},{50,30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_42.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{45,-30},{45,0},{50,0}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_41.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{45,-30},{50,-30}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_10.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-45,-30},{-45,-60},{-40,-60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_20.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{-15,-30},{-15,-60},{-10,-60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_30.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{15,-30},{15,-60},{20,-60}},
						color={0,0,127},
						thickness=0.0625));
					connect(factor_Rad.y,HeatFlow_Rad_40.Q_flow) annotation(Line(
						points={{-84,-30},{-79,-30},{45,-30},{45,-60},{50,-60}},
						color={0,0,127},
						thickness=0.0625));
					connect(HeatFlow_Rad_00.port,thermal_connector_Panel_5x5.port_00) annotation(Line(
						points={{-50,-60},{-45,-60},{100,-60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_10.port,thermal_connector_Panel_5x5.port_10) annotation(Line(
						points={{-20,-60},{-15,-60},{100,-60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_20.port,thermal_connector_Panel_5x5.port_20) annotation(Line(
						points={{10,-60},{15,-60},{100,-60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_30.port,thermal_connector_Panel_5x5.port_30) annotation(Line(
						points={{40,-60},{45,-60},{100,-60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_40.port,thermal_connector_Panel_5x5.port_40) annotation(Line(
						points={{70,-60},{75,-60},{100,-60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_41.port,thermal_connector_Panel_5x5.port_41) annotation(Line(
						points={{70,-30},{75,-30},{100,-30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_42.port,thermal_connector_Panel_5x5.port_42) annotation(Line(
						points={{70,0},{75,0},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_43.port,thermal_connector_Panel_5x5.port_43) annotation(Line(
						points={{70,30},{75,30},{100,30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_44.port,thermal_connector_Panel_5x5.port_44) annotation(Line(
						points={{70,60},{75,60},{100,60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_34.port,thermal_connector_Panel_5x5.port_34) annotation(Line(
						points={{40,60},{45,60},{100,60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_24.port,thermal_connector_Panel_5x5.port_24) annotation(Line(
						points={{10,60},{15,60},{100,60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_14.port,thermal_connector_Panel_5x5.port_14) annotation(Line(
						points={{-20,60},{-15,60},{100,60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_04.port,thermal_connector_Panel_5x5.port_04) annotation(Line(
						points={{-50,60},{-45,60},{100,60},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_03.port,thermal_connector_Panel_5x5.port_03) annotation(Line(
						points={{-50,30},{-45,30},{100,30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_02.port,thermal_connector_Panel_5x5.port_02) annotation(Line(
						points={{-50,0},{-45,0},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_Rad_01.port,thermal_connector_Panel_5x5.port_01) annotation(Line(
						points={{-50,-30},{-45,-30},{100,-30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_MSS_22.port,thermal_connector_Panel_5x5.port_22) annotation(Line(
						points={{10,0},{15,0},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_13.port,thermal_connector_Panel_5x5.port_13) annotation(Line(
						points={{-20,30},{-15,30},{100,30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_23.port,thermal_connector_Panel_5x5.port_23) annotation(Line(
						points={{10,30},{15,30},{100,30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_33.port,thermal_connector_Panel_5x5.port_33) annotation(Line(
						points={{40,30},{45,30},{100,30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_32.port,thermal_connector_Panel_5x5.port_32) annotation(Line(
						points={{40,0},{45,0},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_31.port,thermal_connector_Panel_5x5.port_31) annotation(Line(
						points={{40,-30},{45,-30},{100,-30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_21.port,thermal_connector_Panel_5x5.port_21) annotation(Line(
						points={{10,-30},{15,-30},{100,-30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_11.port,thermal_connector_Panel_5x5.port_11) annotation(Line(
						points={{-20,-30},{-15,-30},{100,-30},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(HeatFlow_TSS_12.port,thermal_connector_Panel_5x5.port_12) annotation(Line(
						points={{-20,0},{-15,0},{100,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_40.port_b) annotation(Line(
						points={{285,0},{280,0},{280,-60},{275,-60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_41.port_b) annotation(Line(
						points={{285,0},{280,0},{280,-30},{275,-30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_42.port_b) annotation(Line(
						points={{285,0},{280,0},{275,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_43.port_b) annotation(Line(
						points={{285,0},{280,0},{280,30},{275,30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_44.port_b) annotation(Line(
						points={{285,0},{280,0},{280,60},{275,60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_34.port_b) annotation(Line(
						points={{285,0},{280,0},{250,0},{250,60},{245,60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_33.port_b) annotation(Line(
						points={{285,0},{280,0},{250,0},{250,30},{245,30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_32.port_b) annotation(Line(
						points={{285,0},{280,0},{250,0},{245,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_31.port_b) annotation(Line(
						points={{285,0},{280,0},{250,0},{250,-30},{245,-30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_30.port_b) annotation(Line(
						points={{285,0},{280,0},{250,0},{250,-60},{245,-60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_24.port_b) annotation(Line(
						points={{285,0},{280,0},{220,0},{220,60},{215,60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_23.port_b) annotation(Line(
						points={{285,0},{280,0},{220,0},{220,30},{215,30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_MSS_22.port_b) annotation(Line(
						points={{285,0},{280,0},{220,0},{215,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_21.port_b) annotation(Line(
						points={{285,0},{280,0},{220,0},{220,-30},{215,-30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_20.port_b) annotation(Line(
						points={{285,0},{280,0},{220,0},{220,-60},{215,-60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_14.port_b) annotation(Line(
						points={{285,0},{280,0},{190,0},{190,60},{185,60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_13.port_b) annotation(Line(
						points={{285,0},{280,0},{190,0},{190,30},{185,30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_12.port_b) annotation(Line(
						points={{285,0},{280,0},{190,0},{185,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_TSS_11.port_b) annotation(Line(
						points={{285,0},{280,0},{190,0},{190,-30},{185,-30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_10.port_b) annotation(Line(
						points={{285,0},{280,0},{190,0},{190,-60},{185,-60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_04.port_b) annotation(Line(
						points={{285,0},{280,0},{160,0},{160,60},{155,60}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_03.port_b) annotation(Line(
						points={{285,0},{280,0},{160,0},{160,30},{155,30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_02.port_b) annotation(Line(
						points={{285,0},{280,0},{160,0},{155,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_01.port_b) annotation(Line(
						points={{285,0},{280,0},{160,0},{160,-30},{155,-30}},
						color={191,0,0},
						thickness=0.0625));
					connect(fixedTemperature1.port,bodyRadiation_Rad_00.port_b) annotation(Line(
						points={{285,0},{280,0},{160,0},{160,-60},{155,-60}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_00.port_a,thermal_connector_Panel_5x5.port_00) annotation(Line(
						points={{135,-60},{130,-60},{110,-60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_01.port_a,thermal_connector_Panel_5x5.port_01) annotation(Line(
						points={{135,-30},{130,-30},{110,-30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_02.port_a,thermal_connector_Panel_5x5.port_02) annotation(Line(
						points={{135,0},{130,0},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_03.port_a,thermal_connector_Panel_5x5.port_03) annotation(Line(
						points={{135,30},{130,30},{110,30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_04.port_a,thermal_connector_Panel_5x5.port_04) annotation(Line(
						points={{135,60},{130,60},{110,60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_10.port_a,thermal_connector_Panel_5x5.port_10) annotation(Line(
						points={{165,-60},{160,-60},{110,-60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_11.port_a,thermal_connector_Panel_5x5.port_11) annotation(Line(
						points={{165,-30},{160,-30},{110,-30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_12.port_a,thermal_connector_Panel_5x5.port_12) annotation(Line(
						points={{165,0},{160,0},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_13.port_a,thermal_connector_Panel_5x5.port_13) annotation(Line(
						points={{165,30},{160,30},{110,30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_14.port_a,thermal_connector_Panel_5x5.port_14) annotation(Line(
						points={{165,60},{160,60},{110,60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_20.port_a,thermal_connector_Panel_5x5.port_20) annotation(Line(
						points={{195,-60},{190,-60},{110,-60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_21.port_a,thermal_connector_Panel_5x5.port_21) annotation(Line(
						points={{195,-30},{190,-30},{110,-30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_MSS_22.port_a,thermal_connector_Panel_5x5.port_22) annotation(Line(
						points={{195,0},{190,0},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_23.port_a,thermal_connector_Panel_5x5.port_23) annotation(Line(
						points={{195,30},{190,30},{110,30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_24.port_a,thermal_connector_Panel_5x5.port_24) annotation(Line(
						points={{195,60},{190,60},{110,60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_30.port_a,thermal_connector_Panel_5x5.port_30) annotation(Line(
						points={{225,-60},{220,-60},{110,-60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_31.port_a,thermal_connector_Panel_5x5.port_31) annotation(Line(
						points={{225,-30},{220,-30},{110,-30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_32.port_a,thermal_connector_Panel_5x5.port_32) annotation(Line(
						points={{225,0},{220,0},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_TSS_33.port_a,thermal_connector_Panel_5x5.port_33) annotation(Line(
						points={{225,30},{220,30},{110,30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_34.port_a,thermal_connector_Panel_5x5.port_34) annotation(Line(
						points={{225,60},{220,60},{110,60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_40.port_a,thermal_connector_Panel_5x5.port_40) annotation(Line(
						points={{255,-60},{250,-60},{110,-60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_41.port_a,thermal_connector_Panel_5x5.port_41) annotation(Line(
						points={{255,-30},{250,-30},{110,-30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_42.port_a,thermal_connector_Panel_5x5.port_42) annotation(Line(
						points={{255,0},{250,0},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_43.port_a,thermal_connector_Panel_5x5.port_43) annotation(Line(
						points={{255,30},{250,30},{110,30},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
					connect(bodyRadiation_Rad_44.port_a,thermal_connector_Panel_5x5.port_44) annotation(Line(
						points={{255,60},{250,60},{110,60},{110,0},{105,0}},
						color={191,0,0},
						thickness=0.0625));
				annotation(
					Icon(graphics={
																																	Rectangle(
																																		lineColor={0,0,0},
																																		fillPattern=FillPattern.Solid,
																																		extent={{-100,100},{100,-100}}),
																																	Ellipse(
																																		lineColor={0,0,0},
																																		fillColor={255,255,0},
																																		fillPattern=FillPattern.Solid,
																																		extent={{98,-96},{-96,98}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end environment_5x5;
			model Baustein5x5_Panel "Baustein5x5_Panel.mo"
				iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_xn annotation(Placement(
					transformation(extent={{-145,-40},{-125,-20}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss_thermal.Panel_5x5.components.panel_5x5_with_IF_3x3 panel_5x5_with_IF_yn annotation(Placement(transformation(
					origin={35,-110},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				iboss_thermal.Panel_5x5.components.panel_5x5_with_IF_3x3 panel_5x5_with_IF_xn annotation(Placement(transformation(
					origin={-105,-25},
					extent={{-10,-10},{10,10}},
					rotation=90)));
				iboss_thermal.Panel_5x5.components.panel_5x5_with_IF_3x3 panel_5x5_with_IF_yp annotation(Placement(transformation(extent={{25,50},{45,70}})));
				iboss_thermal.Panel_5x5.components.panel_5x5_with_IF_3x3 panel_5x5_with_IF_xp annotation(Placement(transformation(extent={{160,-35},{180,-15}})));
				iboss_thermal.Panel_5x5.components.panel_5x5_with_IF_3x3 panel_5x5_with_IF_zn annotation(Placement(transformation(
					origin={145,-145},
					extent={{-10,-10},{10,10}})));
				iboss_thermal.Panel_5x5.components.panel_5x5_with_IF_3x3 panel_5x5_with_IF_zp annotation(Placement(transformation(extent={{25,-35},{45,-15}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xn_yn annotation(Placement(transformation(extent={{-55,-115},{-35,-105}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xn_yp annotation(Placement(transformation(extent={{-55,55},{-35,65}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xp_yp annotation(Placement(transformation(extent={{100,55},{120,65}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xp_yn annotation(Placement(transformation(extent={{100,-115},{120,-105}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xp_zp annotation(Placement(transformation(extent={{90,-30},{110,-20}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xn_zp annotation(Placement(transformation(extent={{-45,-30},{-25,-20}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_yp_zp annotation(Placement(transformation(
					origin={35,15},
					extent={{-10,-5},{10,5}},
					rotation=90)));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_yn_zp annotation(Placement(transformation(
					origin={35,-70},
					extent={{-10,-5},{10,5}},
					rotation=-90)));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_yp_zn annotation(Placement(transformation(extent={{175,-150},{195,-140}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_yn_zn annotation(Placement(transformation(extent={{90,-150},{110,-140}})));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xp_zn annotation(Placement(transformation(
					origin={145,-75},
					extent={{-10,-5},{10,5}},
					rotation=-90)));
				iboss_thermal.Panel_5x5.components.thermal_5_conductor thermal_5_conductor_xn_zn annotation(Placement(transformation(extent={{-50,-150},{-30,-140}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xn_yp annotation(Placement(transformation(extent={{-65,20},{-45,40}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xn_xp annotation(Placement(transformation(extent={{-65,-5},{-45,15}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xn_zp annotation(Placement(transformation(extent={{-60,-60},{-40,-40}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xn_yn annotation(Placement(transformation(extent={{-60,-85},{-40,-65}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xn_zn annotation(Placement(transformation(extent={{-20,-70},{0,-50}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xp_yp annotation(Placement(transformation(extent={{130,10},{150,30}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xp_yn annotation(Placement(transformation(extent={{120,-55},{140,-35}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xp_zp annotation(Placement(transformation(extent={{80,-55},{100,-35}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_xp_zn annotation(Placement(transformation(extent={{80,-95},{100,-75}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_yn_yp annotation(Placement(transformation(
					origin={60,-40},
					extent={{-10,-10},{10,10}},
					rotation=270)));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_yn_zn annotation(Placement(transformation(extent={{65,-140},{85,-120}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_yn_zp annotation(Placement(transformation(
					origin={65,-75},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_yp_zn annotation(Placement(transformation(extent={{210,-55},{230,-35}})));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_yp_zp annotation(Placement(transformation(
					origin={55,35},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
				iboss_thermal.Panel_5x5.components.Radiator_5x5 radiator_5x5_zn_zp annotation(Placement(transformation(extent={{180,-120},{200,-100}})));
				iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_xp annotation(Placement(
					transformation(extent={{225,-15},{245,5}}),
					iconTransformation(extent={{90,-10},{110,10}})));
				iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_yn annotation(Placement(
					transformation(extent={{30,-185},{50,-165}}),
					iconTransformation(extent={{-10,-110},{10,-90}})));
				iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_yp annotation(Placement(
					transformation(extent={{25,90},{45,110}}),
					iconTransformation(extent={{-10,90},{10,110}})));
				iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_zp annotation(Placement(
					transformation(extent={{-130,-185},{-110,-165}}),
					iconTransformation(extent={{-61.7,-108.3},{-41.7,-88.3}})));
				iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_zn annotation(Placement(
					transformation(extent={{220,90},{240,110}}),
					iconTransformation(extent={{40,90},{60,110}})));
				iboss_thermal.components.thermalModel_ElectronicBox thermalModel_ElectronicBox1(
					material=MaterialDatabase.Elektronik_Box_Composit(),
					x=0.08,
					y=0.08,
					z=0.08) annotation(Placement(transformation(extent={{85,20},{105,40}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=1000*0.08*0.08) annotation(Placement(transformation(extent={{70,-10},{90,10}})));
				equation
					connect(thermal_5_conductor_xn_yn.thermal_connector_side_r,panel_5x5_with_IF_yn.thermal_connector_side_yn) annotation(Line(
						points={{-35,-110},{-30,-110},{20,-110},{25,-110}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xn_yn.thermal_connector_side_l,panel_5x5_with_IF_xn.thermal_connector_side_xn) annotation(Line(
						points={{-55,-110},{-60,-110},{-105,-110},{-105,-40},{-105,-35}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xn_yp.thermal_connector_side_r,panel_5x5_with_IF_yp.thermal_connector_side_xn) annotation(Line(
						points={{-35,60},{-30,60},{20,60},{25,60}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xn_yp.thermal_connector_side_l,panel_5x5_with_IF_xn.thermal_connector_side_xp) annotation(Line(
						points={{-55,60},{-60,60},{-105,60},{-105,-10},{-105,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yp.thermal_connector_side_xp,thermal_5_conductor_xp_yp.thermal_connector_side_l) annotation(Line(
						points={{45,60},{50,60},{95,60},{100,60}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xp_yp.thermal_connector_side_r,panel_5x5_with_IF_xp.thermal_connector_side_yp) annotation(Line(
						points={{120,60},{125,60},{170,60},{170,-10},{170,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yn.thermal_connector_side_yp,thermal_5_conductor_xp_yn.thermal_connector_side_l) annotation(Line(
						points={{45,-110},{50,-110},{95,-110},{100,-110}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xp_yn.thermal_connector_side_r,panel_5x5_with_IF_xp.thermal_connector_side_yn) annotation(Line(
						points={{120,-110},{125,-110},{170,-110},{170,-40},{170,-35}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yp.thermal_connector_side_yp,thermal_5_conductor_yp_zn.thermal_connector_side_r) annotation(Line(
						points={{35,70},{35,75},{200,75},{200,-145},{195,-145}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_yn_zn.thermal_connector_side_l,panel_5x5_with_IF_yn.thermal_connector_side_xp) annotation(Line(
						points={{90,-145},{85,-145},{35,-145},{35,-125},{35,-120}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zn.thermal_connector_side_yp,thermal_5_conductor_xp_zn.thermal_connector_side_r) annotation(Line(
						points={{145,-135},{145,-130},{145,-90},{145,-85}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xp_zn.thermal_connector_side_l,panel_5x5_with_IF_xp.thermal_connector_side_xp) annotation(Line(
						points={{145,-65},{145,-60},{185,-60},{185,-25},{180,-25}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xn_zn.thermal_connector_side_r,panel_5x5_with_IF_zn.thermal_connector_side_yn) annotation(Line(
						points={{-30,-145},{-25,-145},{-25,-160},{145,-160},{145,-155}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_xn.thermal_connector_side_yp,thermal_5_conductor_xn_zn.thermal_connector_side_l) annotation(Line(
						points={{-115,-25},{-120,-25},{-120,-145},{-55,-145},{-50,-145}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_yp_zn.thermal_connector_side_l,panel_5x5_with_IF_zn.thermal_connector_side_xp) annotation(Line(
						points={{175,-145},{170,-145},{160,-145},{155,-145}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zn.thermal_connector_side_xn,thermal_5_conductor_yn_zn.thermal_connector_side_r) annotation(Line(
						points={{135,-145},{130,-145},{115,-145},{110,-145}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_yn_zp.thermal_connector_side_r,panel_5x5_with_IF_yn.thermal_connector_side_xn) annotation(Line(
						points={{35,-80},{35,-85},{35,-95},{35,-100}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_yn_zp.thermal_connector_side_l,panel_5x5_with_IF_zp.thermal_connector_side_yn) annotation(Line(
						points={{35,-60},{35,-55},{35,-40},{35,-35}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_side_xn,thermal_5_conductor_xn_zp.thermal_connector_side_r) annotation(Line(
						points={{25,-25},{20,-25},{-20,-25},{-25,-25}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xn_zp.thermal_connector_side_l,panel_5x5_with_IF_xn.thermal_connector_side_yn) annotation(Line(
						points={{-45,-25},{-50,-25},{-90,-25},{-95,-25}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_side_xp,thermal_5_conductor_xp_zp.thermal_connector_side_l) annotation(Line(
						points={{45,-25},{50,-25},{85,-25},{90,-25}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_xp_zp.thermal_connector_side_r,panel_5x5_with_IF_xp.thermal_connector_side_xn) annotation(Line(
						points={{110,-25},{115,-25},{155,-25},{160,-25}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_side_yp,thermal_5_conductor_yp_zp.thermal_connector_side_l) annotation(Line(
						points={{35,-15},{35,-10},{35,0},{35,5}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermal_5_conductor_yp_zp.thermal_connector_side_r,panel_5x5_with_IF_yp.thermal_connector_side_yn) annotation(Line(
						points={{35,25},{35,30},{35,45},{35,50}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xn_yp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_xn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{-65,30},{-70,30},{-120,30},{-120,-20},{-115,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xn_yp.thermal_connector_Panel_5x5_r) annotation(Line(
						points={{40,70},{40,75},{0,75},{0,30},{-40,30},{-45,
						30}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xn_xp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_xn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{-65,5},{-70,5},{-120,5},{-120,-20},{-115,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_xp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xn_xp.thermal_connector_Panel_5x5_r) annotation(Line(
						points={{175,-15},{175,-10},{175,5},{-40,5},{-45,5}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xn_zp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_xn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{-60,-50},{-65,-50},{-120,-50},{-120,-20},{-115,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xn_zp.thermal_connector_Panel_5x5_r) annotation(Line(
						points={{40,-15},{40,-10},{2.7,-10},{2.7,-50},{-35,-50},{-40,
						-50}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xn_yn.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_xn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{-60,-75},{-65,-75},{-120,-75},{-120,-20},{-115,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yn.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xn_yn.thermal_connector_Panel_5x5_r) annotation(Line(
						points={{45,-115},{50,-115},{50,-75},{-35,-75},{-40,-75}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xn_zn.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_xn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{-20,-60},{-25,-60},{-120,-60},{-120,-20},{-115,-20}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zn.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xn_zn.thermal_connector_Panel_5x5_r) annotation(Line(
						points={{150,-135},{150,-130},{150,-60},{5,-60},{0,-60}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_xp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xp_yp.thermal_connector_Panel_5x5_r) annotation(Line(
						points={{175,-15},{175,-10},{175,20},{155,20},{150,20}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xp_yp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_yp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{130,20},{125,20},{125,75},{40,75},{40,70}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xp_yn.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_xp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{140,-45},{145,-45},{145,-10},{175,-10},{175,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yn.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xp_yn.thermal_connector_Panel_5x5_l) annotation(Line(
						points={{45,-115},{50,-115},{115,-115},{115,-45},{120,-45}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xp_zp.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_xp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{100,-45},{105,-45},{105,-10},{175,-10},{175,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xp_zp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{80,-45},{75,-45},{75,-10},{40,-10},{40,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_xp_zn.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_xp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{100,-85},{105,-85},{105,-10},{175,-10},{175,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zn.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_xp_zn.thermal_connector_Panel_5x5_l) annotation(Line(
						points={{150,-135},{150,-130},{75,-130},{75,-85},{80,-85}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_yn_yp.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_yn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{60,-50},{60,-55},{60,-115},{50,-115},{45,-115}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_yn_yp.thermal_connector_Panel_5x5_l) annotation(Line(
						points={{40,70},{40,75},{60,75},{60,-25},{60,-30}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_yn_zn.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_yn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{65,-130},{60,-130},{50,-130},{50,-115},{45,-115}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_yn_zn.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_zn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{85,-130},{90,-130},{150,-130},{150,-135}},
						color={0,0,0},
						thickness=0.0625));
					
					
					
					
					
					
					connect(panel_5x5_with_IF_yp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_yp_zn.thermal_connector_Panel_5x5_l) annotation(Line(
						points={{40,70},{40,75},{122.3,75},{122.3,-45},{205,-45},{210,
						-45}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_yp_zn.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_zn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{230,-45},{235,-45},{235,-87.3},{150,-87.3},{150,-130},{150,
						-135}},
						color={0,0,0},
						thickness=0.0625));
					
					
					
					
					connect(radiator_5x5_yp_zp.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{55,25},{55,20},{55,-10},{40,-10},{40,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_yp_zp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_yp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{55,45},{55,50},{55,75},{40,75},{40,70}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zn,radiator_5x5_yn_zp.thermal_connector_Panel_5x5_l) annotation(Line(
						points={{40,-15},{40,-10},{65,-10},{65,-60},{65,-65}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_yn_zp.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_yn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{65,-85},{65,-90},{65,-115},{50,-115},{45,-115}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_zn_zp.thermal_connector_Panel_5x5_l,panel_5x5_with_IF_zn.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{180,-110},{175,-110},{150,-110},{150,-130},{150,-135}},
						color={0,0,0},
						thickness=0.0625));
					connect(radiator_5x5_zn_zp.thermal_connector_Panel_5x5_r,panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zn) annotation(Line(
						points={{200,-110},{205,-110},{205,-10},{40,-10},{40,-15}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yp.thermal_connector_Panel_IF_5x5_zp,thermal_connector_Panel_5x5_yp) annotation(Line(
						points={{30,50},{30,45},{30,100},{35,100}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_xn.thermal_connector_Panel_IF_5x5_zp,thermal_connector_Panel_5x5_xn) annotation(Line(
						points={{-95,-30},{-90,-30},{-90,-40},{-130,-40},{-130,-30},{-135,
						-30}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_xp.thermal_connector_Panel_IF_5x5_zp,thermal_connector_Panel_5x5_xp) annotation(Line(
						points={{165,-35},{165,-40},{197.3,-40},{197.3,-5},{230,-5},{235,
						-5}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_yn.thermal_connector_Panel_IF_5x5_zp,thermal_connector_Panel_5x5_yn) annotation(Line(
						points={{25,-105},{20,-105},{20,-175},{35,-175},{40,-175}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zp,thermal_connector_Panel_5x5_zp) annotation(Line(
						points={{30,-35},{30,-40},{30,-175},{-115,-175},{-120,-175}},
						color={0,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zn.thermal_connector_Panel_IF_5x5_zp,thermal_connector_Panel_5x5_zn) annotation(Line(
						points={{140,-155},{140,-160},{182.3,-160},{182.3,100},{225,100},{230,
						100}},
						color={0,0,0},
						thickness=0.0625));
					connect(thermalConductor1.port_b,thermalModel_ElectronicBox1.EB_zp) annotation(Line(
						points={{90,0},{95,0},{95,21},{91,21},{86,21}},
						color={191,0,0},
						thickness=0.0625));
					connect(panel_5x5_with_IF_zp.thermal_connector_Panel_IF_5x5_zn.port_11,thermalConductor1.port_a) annotation(Line(
						points={{40,-15},{40,-10},{40,0},{65,0},{70,0}},
						color={0,0,0},
						thickness=0.0625));
				annotation(
					Icon(
						coordinateSystem(extent={{-101.7,-101.7},{101.7,101.7}}),
						graphics={
																																																										Rectangle(
																																																											lineColor={0,0,0},
																																																											fillColor={255,215,0},
																																																											fillPattern=FillPattern.Solid,
																																																											lineThickness=3.5,
																																																											extent={{-103.5,99.7},{99.8,-103.6}}),
																																																										Polygon(
																																																											points={{-103.3,100},{-80,120},{120,120},{100,100}},
																																																											lineColor={0,0,0},
																																																											fillColor={255,215,0},
																																																											fillPattern=FillPattern.Solid,
																																																											lineThickness=3.5),
																																																										Polygon(
																																																											points={{100,-103.3},{120,-80},{120,120},{100,100}},
																																																											lineColor={0,0,0},
																																																											fillColor={255,215,0},
																																																											fillPattern=FillPattern.Solid,
																																																											lineThickness=3.5),
																																																										Line(
																																																											points={{-103.3,-103.3},{-80,-80},{-80,116.7}},
																																																											pattern=LinePattern.Dash,
																																																											color={0,0,0},
																																																											thickness=2.25),
																																																										Line(
																																																											points={{-78.7,-80},{118,-80}},
																																																											pattern=LinePattern.Dash,
																																																											color={0,0,0},
																																																											thickness=2.25),
																																																										Ellipse(
																																																											lineColor={0,0,0},
																																																											fillColor={210,180,140},
																																																											fillPattern=FillPattern.Solid,
																																																											extent={{-61.7,60},{61.5,-62.8}}),
																																																										Ellipse(
																																																											lineColor={0,0,0},
																																																											fillColor={192,192,192},
																																																											fillPattern=FillPattern.Solid,
																																																											extent={{-16.5,12.4},{15.2,-19.9}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end Baustein5x5_Panel;
			model Tank_2x2_Panel "Tank_2x2_Panel.mo"
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_2x2 thermal_connector_Panel_2x2_xn "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
					transformation(extent={{-55,-5},{-35,15}}),
					iconTransformation(extent={{-110,-10},{-90,10}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_yp annotation(Placement(
					transformation(extent={{25,60},{45,80}}),
					iconTransformation(extent={{-10,90},{10,110}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_yn annotation(Placement(
					transformation(extent={{20,-90},{40,-70}}),
					iconTransformation(extent={{-10,-110},{10,-90}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_zp annotation(Placement(
					transformation(extent={{-45,-90},{-25,-70}}),
					iconTransformation(extent={{-60,-110},{-40,-90}})));
				iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_zn annotation(Placement(
					transformation(extent={{85,60},{105,80}}),
					iconTransformation(extent={{40,90},{60,110}})));
				iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_000 annotation(Placement(transformation(extent={{35,-35},{75,5}})));
				iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_010 annotation(Placement(transformation(extent={{35,10},{75,50}})));
				iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_001 annotation(Placement(transformation(extent={{0,-55},{40,-15}})));
				iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_011 annotation(Placement(transformation(extent={{0,-5},{40,35}})));
				equation
					connect(Tank_BB_Panel_000.port_yp,Tank_BB_Panel_010.port_yn) annotation(Line(
						points={{50,-8.300000000000001},{50,-3.3},{50,17.7},{51,17.7},{51,22.7}},
						color={191,0,0},
						thickness=0.0625));
							connect(Tank_BB_Panel_010.port_zp,Tank_BB_Panel_011.port_zn) annotation(Line(
						points={{44,22.7},{39,22.7},{39,26.7},{23,26.7},{23,21.7}},
						color={191,0,0},
						thickness=0.0625));
							connect(Tank_BB_Panel_011.port_yn,Tank_BB_Panel_001.port_yp) annotation(Line(
						points={{16,7.7},{16,2.7},{16,-23.3},{15,-23.3},{15,-28.3}},
						color={191,0,0},
						thickness=0.0625));
							connect(Tank_BB_Panel_000.port_zp,Tank_BB_Panel_001.port_zn) annotation(Line(
						points={{44,-22.3},{39,-22.3},{23,-22.3},{23,-23.3},{23,-28.3}},
						color={191,0,0},
						thickness=0.0625));
							connect(Tank_BB_Panel_000.port_yn,thermal_connector_2_yn.port_0) annotation(Line(points={{51,-22.3},{51,-27.3},{51,-80},{35,-80},{30,-80}}));
							connect(Tank_BB_Panel_001.port_yn,thermal_connector_2_yn.port_1) annotation(Line(points={{16,-42.3},{16,-47.3},{16,-80},{25,-80},{30,-80}}));
							connect(Tank_BB_Panel_010.port_yp,thermal_connector_2_yp.port_0) annotation(Line(points={{50,36.7},{50,41.7},{50,70},{40,70},{35,70}}));
							connect(Tank_BB_Panel_011.port_yp,thermal_connector_2_yp.port_1) annotation(Line(points={{15,21.7},{15,26.7},{15,70},{30,70},{35,70}}));
							connect(Tank_BB_Panel_000.port_zn,thermal_connector_2_zn.port_0) annotation(Line(points={{58,-8.300000000000001},{58,-3.3},{58,70},{90,70},{95,70}}));
							connect(Tank_BB_Panel_010.port_zn,thermal_connector_2_zn.port_1) annotation(Line(points={{58,36.7},{58,41.7},{58,70},{90,70},{95,70}}));
							connect(Tank_BB_Panel_001.port_zp,thermal_connector_2_zp.port_0) annotation(Line(points={{9,-42.3},{4,-42.3},{-30,-42.3},{-30,-80},{-35,-80}}));
							connect(Tank_BB_Panel_011.port_zp,thermal_connector_2_zp.port_1) annotation(Line(points={{9,7.7},{4,7.7},{-30,7.7},{-30,-80},{-35,-80}}));
							connect(Tank_BB_Panel_000.port_xn,thermal_connector_Panel_2x2_xn.port_00) annotation(Line(points={{49,-15},{44,-15},{-40,-15},{-40,5},{-45,5}}));
					connect(Tank_BB_Panel_001.port_xn,thermal_connector_Panel_2x2_xn.port_01) annotation(Line(points={{14,-35},{9,-35},{-40,-35},{-40,5},{-45,5}}));
					connect(Tank_BB_Panel_010.port_xn,thermal_connector_Panel_2x2_xn.port_10) annotation(Line(points={{49,30},{44,30},{-40,30},{-40,5},{-45,5}}));
					connect(Tank_BB_Panel_011.port_xn,thermal_connector_Panel_2x2_xn.port_11) annotation(Line(points={{14,15},{9,15},{-40,15},{-40,5},{-45,5}}));
				annotation(
					Icon(graphics={
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,0,0},
																													fillPattern=FillPattern.HorizontalCylinder,
																													extent={{-23.3,100},{20,0}}),
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,0,0},
																													fillPattern=FillPattern.HorizontalCylinder,
																													extent={{-23.1,0.1},{20.2,-99.90000000000001}}),
																												Line(
																													points={{20,0},{-23.3,0}},
																													color={0,0,0},
																													thickness=6),
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,215,0},
																													fillPattern=FillPattern.Solid,
																													extent={{16.7,60},{23.3,40}}),
																												Rectangle(
																													lineColor={0,0,0},
																													fillColor={255,215,0},
																													fillPattern=FillPattern.Solid,
																													extent={{16.9,-40.2},{23.5,-60.2}})}),
					experiment(
						StopTime=1,
						StartTime=0));
			end Tank_2x2_Panel;
		end components;
	end Panel_5x5;
	package buildingblocks "buildingblocks"
		import iboss.iboss_thermal.components.*;
		model BuildingBlock_thermal "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen"
			thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={325,-95},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
				transformation(
					origin={110,-45},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Andere_Metalle_Titan() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of Panel from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_EB=MaterialDatabase.Elektronik_Box_Composit() "Material of Electronic Box from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Modelica.SIunits.Power BuildingBlock_Power=5 "Leistungsbedarf des Standartbausteins";
			parameter Real h_Panel(unit="W/(m²·K)")=300 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(m²·K)")=300 "Heat transfer coefficient EB-Panel";
			parameter Real ViewFactor_parallel=0.2 "Viewfactor of parallel Surfaces";
			parameter Real ViewFactor_vertical=0.2 "Viewfactor of vertical Surfaces";
			parameter Modelica.SIunits.Emissivity eps_Panel=0.5 "Emmisivity of the inner side of the panel";
			parameter Modelica.SIunits.Emissivity eps_EB=0.5 "Emmisivity of the electronic box";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "highest allowed temperatur in the Box";
			parameter Modelica.SIunits.ActivePower heating_power=20 "heat Power of the heater";
			parameter Modelica.SIunits.ActivePower cooling_power=-20 "heat Power of the cooler";
			parameter Real hysteresis_heater=5 "Bandwidth of the controller / K";
			parameter Real hysteresis_cooler=5 "Bandwidth of the controller / K";
			thermal_Panel_with_Interface Panel_xp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={265,-105},
					extent={{-10,-10},{25,25}})));
			thermal_Panel_with_Interface Panel_xn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={65,-100},
					extent={{-15,-20},{20,15}},
					rotation=-180)));
			thermal_Panel_with_Interface Panel_yp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={160,0},
					extent={{-15,-20},{15,15}},
					rotation=-270)));
			thermal_Panel_with_Interface Panel_yn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={155,-195},
					extent={{-10,-10},{25,25}},
					rotation=-90)));
			thermal_Panel_with_Interface Panel_zn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={285,11},
					extent={{-10,-10},{24,24}},
					rotation=45)));
			thermal_Panel_with_Interface Panel_zp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={45,-224},
					extent={{-24,-24},{10,10}},
					rotation=-135)));
			thermalModel_ElectronicBox thermalModel_ElectronicBox1(
				material=material_EB,
				x=x_EB,
				y=y_EB,
				z=z_EB) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={150,-110},
					extent={{-5,-5},{30,30}})));
			intra_BuildingBlock_connector EB_Pxp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={207,-97},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
			intra_BuildingBlock_connector EB_Pxn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={116,-96},
				extent={{-6,-9},{6.25,6.25}})));
			intra_BuildingBlock_connector EB_Pyn(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={161,-141},
				extent={{-6.4815,-6.4815},{6.4815,6.4815}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pyp(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={162,-52},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pzp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={126,-132},
				extent={{-10,-8},{4,6}},
				rotation=45)));
			intra_BuildingBlock_connector EB_Pzn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={201,-64},
				extent={{-6.4943,-6.4943},{9,11}},
				rotation=45)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_x(Gr=Gr_oP) annotation(Placement(transformation(
				origin={117,-72},
				extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
			thermal_connector thermal_connector_yn annotation(Placement(
				transformation(
					origin={160,-235},
					extent={{-10,10},{10,-10}},
					rotation=-90),
				iconTransformation(
					origin={1.10041,-99.5873},
					extent={{-12,12},{12,-12}},
					rotation=-90)));
			thermal_connector thermal_connector_zp annotation(Placement(
				transformation(
					origin={10,-250},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-87.4828,-87.75790000000001},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_xn annotation(Placement(
				transformation(
					origin={15,-95},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-99.3122,-2.75103},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_yp annotation(Placement(
				transformation(
					origin={165,35},
					extent={{10,-10},{-10,10}},
					rotation=-270),
				iconTransformation(
					origin={1.10041,98.762},
					extent={{12,-12},{-12,12}},
					rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
				origin={210,-128},
				extent={{-10,-10},{3,3}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
				origin={186,-161},
				extent={{-6.0172,6.0172},{6.0172,-6.0172}},
				rotation=-90)));
			thermal_connector thermal_connector_zn annotation(Placement(
				transformation(
					origin={300,35},
					extent={{-10,-10},{10,10}},
					rotation=-360),
				iconTransformation(
					origin={87.8378,87.8378},
					extent={{-12,-12},{12,12}})));
			protected
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * eps_Panel * eps_EB / (eps_Panel + eps_EB - eps_Panel * eps_EB) "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			public
				Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=BuildingBlock_Power) annotation(Placement(transformation(extent={{0,0},{20,20}})));
				TCS tCS1(
					hysteresis_cooler=hysteresis_cooler,
					hysteresis_heater=hysteresis_heater) annotation(Placement(transformation(extent={{-85,-30},{-65,-10}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary(displayUnit="K")=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary(displayUnit="K")=lower_Temp_boundary) annotation(Placement(transformation(extent={{-40,-50},{-20,-30}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{55,35},{70,50}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{55,50},{70,65}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{185,5},{200,20}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{185,20},{200,35}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{220,-20},{235,-5}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yp(Gr=Gr_aP) annotation(Placement(transformation(extent={{220,-5},{235,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={297.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={317.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={302.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={322.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={272.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={292.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={227.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={247.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={22.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={42.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={62.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={82.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={12.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={32.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={72.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={92.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{115,-200},{130,-185}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zp(Gr=Gr_aP) annotation(Placement(transformation(extent={{115,-185},{130,-170}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
					Line(
						points={{288.6666564941406,24.66666412353516},{300,35}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
					Line(
						points={{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
					Line(
						points={{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
					Line(
						points={{41.33332824707031,-217.6666564941406},{10,-250}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
					points={{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
					points={{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}},
					thickness=0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
					points={{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
					points={{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}},
					thickness=0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
					points={{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
					points={{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
					points={{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}},
					thickness=0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
					points={{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}},
					thickness=0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
					Line(
						points={{162.6666564941406,-97.66667175292969},{110,-45}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
					Line(
						points={{205.6666564941406,-56},{281.3333435058594,17.33333587646484}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
					Line(
						points={{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
					points={{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
					points={{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
					Line(
						points={{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,
						-72}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
					Line(
						points={{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
					Line(
						points={{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(fixedHeatFlow1.port,port_b) annotation(Line(
					points={{20,10},{25,10},{105,10},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(tCS1.cooler_on,heater_cooler_EPS1.cooler_on) annotation(Line(
					points={{-70,-30},{-70,-35},{-70,-45},{-45,-45},{-40,-45}},
					color={255,0,255},
					thickness=0.0625));
				connect(tCS1.heater_on,heater_cooler_EPS1.heater_on) annotation(Line(
					points={{-80,-30},{-80,-35},{-45,-35},{-40,-35}},
					color={255,0,255},
					thickness=0.0625));
				connect(tCS1.Tmin,heater_cooler_EPS1.Tmin) annotation(Line(
					points={{-80,-10},{-80,-5},{-15,-5},{-15,-35},{-20,-35}},
					color={0,0,127},
					thickness=0.0625));
				connect(tCS1.Tmax,heater_cooler_EPS1.Tmax) annotation(Line(
					points={{-70,-10},{-70,-5},{-15,-5},{-15,-45},{-20,-45}},
					color={0,0,127},
					thickness=0.0625));
				connect(tCS1.Temp,port_b) annotation(Line(
					points={{-85,-20},{-90,-20},{-90,-45},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(heater_cooler_EPS1.Power_heating_cooling,port_b) annotation(Line(
					points={{-30,-30},{-30,-25},{37.3,-25},{37.3,-45},{105,-45},{110,
					-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_zn,thermalConductor_xn_zn.port_a) annotation(Line(
					points={{60,-103.3},{60,-108.3},{50,-108.3},{50,42.3},{55,42.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zn.port_b,Panel_zn.port_zn) annotation(Line(
					points={{70,42.3},{75,42.3},{277.7,42.3},{277.7,26.7},{282.7,26.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_zn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-20},{50,-20},{50,57.3},{55,
					57.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{70,57.3},{75,57.3},{276.3,57.3},{276.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_zn,thermalConductor_yp_zn.port_a) annotation(Line(
					points={{156.7,2.3},{151.7,2.3},{151.7,12.3},{180,12.3},{185,12.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zn.port_b,Panel_zn.port_yp) annotation(Line(
					points={{200,12.3},{205,12.3},{273,12.3},{273,22},{278,22}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_yp_zn.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{171,-9.699999999999999},{171,27.3},{180,27.3},{185,
					27.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{200,27.3},{205,27.3},{276.3,27.3},{276.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_a,Panel_yp.port_yn) annotation(Line(
					points={{220,-12.7},{215,-12.7},{173.7,-12.7},{173.7,-3},{168.7,-3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_xp_yp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{188.7,-9.699999999999999},{188.7,2.3},{215,2.3},{220,
					2.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
					points={{235,-12.7},{240,-12.7},{268,-12.7},{268,-86.7},{268,-91.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{235,2.3},{240,2.3},{262.3,2.3},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				
				connect(Panel_zn.port_yn,thermalConductor_yn_zn.port_a) annotation(Line(
					points={{287,14.3},{292,14.3},{302.7,14.3},{302.7,-115},{302.7,-120}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_a,Panel_zn.port_xn) annotation(Line(
					points={{322.7,-120},{322.7,-115},{322.7,17.3},{286.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zn,thermalConductor_yn_zn.port_b) annotation(Line(
					points={{168.3,-205},{173.3,-205},{302.3,-205},{302.3,-140},{302.3,-135}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{322.3,-135},{322.3,-140},{322.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_yn,thermalConductor_xp_yn.port_a) annotation(Line(
					points={{269,-103.7},{269,-108.7},{269,-150},{272.7,-150},{272.7,-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yn.port_b,Panel_yn.port_yp) annotation(Line(
					points={{272.3,-170},{272.3,-175},{272.3,-198},{173.3,-198},{168.3,-198}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_yn.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-123.7},{292.7,-123.7},{292.7,-150},{292.7,
					-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{292.3,-170},{292.3,-175},{292.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zn.port_b) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-79},{317.3,-79},{317.3,-60},{317.3,
					-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_xn,bodyRadiation_xp_zn.port_a) annotation(Line(
					points={{281.3,17.3},{286.3,17.3},{317.7,17.3},{317.7,-35},{317.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_zn,thermalConductor_xp_zn.port_b) annotation(Line(
					points={{275,-91.7},{275,-86.7},{275,-60},{297.3,-60},{297.3,-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_zp,thermalConductor_xp_zn.port_a) annotation(Line(
					points={{282.7,10},{287.7,10},{297.7,10},{297.7,-35},{297.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_a,Panel_xp.port_zp) annotation(Line(
					points={{227.7,-165},{227.7,-160},{227.7,-103.7},{258,-103.7},{263,-103.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zp.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{247.7,-97.7},{247.7,-160},{247.7,-165}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_b,Panel_zp.port_zn) annotation(Line(
					points={{227.3,-180},{227.3,-185},{227.3,-220},{52.3,-220},{47.3,-220}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_xp_zp.port_b) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{247.3,-210.3},{247.3,-185},{247.3,-180}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_b,Panel_xn.port_yn) annotation(Line(
					points={{22.3,-65},{22.3,-70},{22.3,-86.3},{66,-86.3},{66,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(
					points={{22.7,-50},{22.7,-45},{22.7,-8.699999999999999},{156.7,-8.699999999999999},{156.7,-3.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yp.port_b) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-83.7},{42.3,-83.7},{42.3,-70},{42.3,
					-65}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_yp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{42.7,-50},{42.7,-45},{42.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_a,Panel_yp.port_zp) annotation(Line(
					points={{62.7,-55},{62.7,-50},{62.7,-13.3},{168.7,-13.3},{168.7,-8.300000000000001}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{82.7,-55},{82.7,-50},{82.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
					points={{62.3,-70},{62.3,-75},{62.3,-215.3},{57,-215.3},{52,-215.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{82.3,-70},{82.3,-75},{82.3,-210.3},{53.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
					points={{12.3,-160},{12.3,-165},{12.3,-203},{42.3,-203},{47.3,-203}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
					points={{12.7,-145},{12.7,-140},{77,-140},{77,-91.3},{72,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{32.3,-160},{32.3,-165},{32.3,-210.3},{43.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_a,Panel_xn.port_xn) annotation(Line(
					points={{32.7,-145},{32.7,-140},{72.7,-140},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yp,thermalConductor_xn_yn.port_a) annotation(Line(
					points={{67,-103.3},{67,-108.3},{67,-140},{72.7,-140},{72.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{92.7,-97.3},{92.7,-140},{92.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
					points={{72.3,-160},{72.3,-165},{72.3,-199},{151.3,-199},{156.3,-199}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zp,bodyRadiation_xn_yn.port_b) annotation(Line(
					points={{156.3,-193},{156.3,-188},{156.3,-165},{92.3,-165},{92.3,-160}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_yn,thermalConductor_yn_zp.port_a) annotation(Line(
					points={{43,-207.3},{48,-207.3},{110,-207.3},{110,-192.7},{115,-192.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_yn_zp.port_a) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{110,-210.3},{110,-177.7},{115,-177.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
					points={{130,-192.7},{135,-192.7},{135,-188},{156.3,-188},{156.3,-193}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zp.port_b,Panel_yn.port_xn) annotation(Line(
					points={{130,-177.7},{135,-177.7},{162.3,-177.7},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				fixedHeatFlow1(port(Q_flow(flags=2))),
				heater_cooler_EPS1(
					heating_power(y(flags=2)),
					heater_power(port(Q_flow(flags=2))),
					cooling_power(y(flags=2)),
					cooler_power(port(Q_flow(flags=2))),
					lower_Temp(y(flags=2)),
					upper_Temp(y(flags=2))),
				Icon(graphics={
															Rectangle(
																lineColor={255,0,0},
																fillColor={255,255,255},
																fillPattern=FillPattern.CrossDiag,
																extent={{-10,-50},{10,50}}),
															Rectangle(
																lineColor={255,0,0},
																fillColor={255,255,255},
																fillPattern=FillPattern.CrossDiag,
																extent={{-10.2751,-50},{9.7249,50}}),
															Rectangle(
																lineColor={255,0,0},
																fillColor={255,255,255},
																fillPattern=FillPattern.CrossDiag,
																extent={{-50,-10},{50,10}}),
															Rectangle(
																lineColor={255,0,0},
																fillColor={255,255,255},
																fillPattern=FillPattern.CrossDiag,
																extent={{-50,-10},{50,10}}),
															Rectangle(
																lineColor={255,0,0},
																fillColor={255,255,255},
																lineThickness=2,
																extent={{-80,-80},{80,80}}),
															Text(
																textString="%name",
																textStyle={TextStyle.Bold},
																lineColor={0,0,0},
																fillColor={255,0,0},
																fillPattern=FillPattern.Solid,
																extent={{-78.4853,-65.66710000000001},{78.4853,-25.6671}}),
															Text(
																textString="yp",
																lineColor={0,0,0},
																fillPattern=FillPattern.Solid,
																extent={{-12.0277,70.2527},{14.7787,93.1585}}),
															Text(
																textString="yn",
																lineColor={0,0,0},
																fillPattern=FillPattern.Solid,
																extent={{-12.3028,-89.8573},{14.5036,-66.9515}}),
															Text(
																textString="xp",
																lineColor={0,0,0},
																fillPattern=FillPattern.Solid,
																extent={{67.47709999999999,-10.6276},{94.2835,12.2782}}),
															Text(
																textString="xn",
																lineColor={0,0,0},
																fillPattern=FillPattern.Solid,
																extent={{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),
															Text(
																textString="zp",
																lineColor={0,0,0},
																fillPattern=FillPattern.Solid,
																extent={{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),
															Text(
																textString="zn",
																lineColor={0,0,0},
																fillPattern=FillPattern.Solid,
																extent={{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=1,
					StartTime=0,
					Interval=0.001));
		end BuildingBlock_thermal;
		model thermal_for_combined_sim "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen fÃ¼r die gemeinsame Simulation"
			thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={325,-95},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
				transformation(
					origin={110,-45},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Andere_Metalle_Titan() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of Panel from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_EB=MaterialDatabase.Elektronik_Box_Composit() "Material of Electronic Box from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Real h_Panel(unit="W/(m²·K)")=3000 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(m²·K)")=3000 "Heat transfer coefficient EB-Panel";
			parameter Real ViewFactor_parallel=0.2 "Viewfactor of parallel Surfaces";
			parameter Real ViewFactor_vertical=0.2 "Viewfactor of vertical Surfaces";
			parameter Modelica.SIunits.Emissivity eps_Panel=0.5 "Emmisivity of the inner side of the panel";
			parameter Modelica.SIunits.Emissivity eps_EB=0.5 "Emmisivity of the electronic box";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "highest allowed temperatur in the Box";
			parameter Modelica.SIunits.ActivePower heating_power=100 "heat Power of the heater";
			parameter Modelica.SIunits.ActivePower cooling_power=-100 "heat Power of the cooler";
			parameter Real bandwidth_heater=5 "Bandwidth of the controller / K";
			parameter Real bandwidth_cooler=5 "Bandwidth of the controller / K";
			thermal_Panel_with_Interface Panel_xp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={265,-105},
					extent={{-10,-10},{25,25}})));
			thermal_Panel_with_Interface Panel_xn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={65,-100},
					extent={{-15,-20},{20,15}},
					rotation=-180)));
			thermal_Panel_with_Interface Panel_yp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={160,0},
					extent={{-15,-20},{15,15}},
					rotation=-270)));
			thermal_Panel_with_Interface Panel_yn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={155,-195},
					extent={{-10,-10},{25,25}},
					rotation=-90)));
			thermal_Panel_with_Interface Panel_zn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={285,11},
					extent={{-10,-10},{24,24}},
					rotation=45)));
			thermal_Panel_with_Interface Panel_zp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={45,-224},
					extent={{-24,-24},{10,10}},
					rotation=-135)));
			thermalModel_ElectronicBox thermalModel_ElectronicBox1(
				material=material_EB,
				x=x_EB,
				y=y_EB,
				z=z_EB) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={150,-110},
					extent={{-5,-5},{30,30}})));
			intra_BuildingBlock_connector EB_Pxp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={207,-97},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
			intra_BuildingBlock_connector EB_Pxn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={116,-96},
				extent={{-6,-9},{6.25,6.25}})));
			intra_BuildingBlock_connector EB_Pyn(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={161,-141},
				extent={{-6.4815,-6.4815},{6.4815,6.4815}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pyp(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={162,-52},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pzp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={126,-132},
				extent={{-10,-8},{4,6}},
				rotation=45)));
			intra_BuildingBlock_connector EB_Pzn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={201,-64},
				extent={{-6.4943,-6.4943},{9,11}},
				rotation=45)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_x(Gr=Gr_oP) annotation(Placement(transformation(
				origin={117,-72},
				extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
			thermal_connector thermal_connector_yn annotation(Placement(
				transformation(
					origin={160,-235},
					extent={{-10,10},{10,-10}},
					rotation=-90),
				iconTransformation(
					origin={1.10041,-99.5873},
					extent={{-12,12},{12,-12}},
					rotation=-90)));
			thermal_connector thermal_connector_zp annotation(Placement(
				transformation(
					origin={10,-250},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-87.4828,-87.75790000000001},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_xn annotation(Placement(
				transformation(
					origin={15,-95},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-99.3122,-2.75103},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_yp annotation(Placement(
				transformation(
					origin={165,35},
					extent={{10,-10},{-10,10}},
					rotation=-270),
				iconTransformation(
					origin={1.10041,98.762},
					extent={{12,-12},{-12,12}},
					rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
				origin={210,-128},
				extent={{-10,-10},{3,3}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
				origin={186,-161},
				extent={{-6.0172,6.0172},{6.0172,-6.0172}},
				rotation=-90)));
			thermal_connector thermal_connector_zn annotation(Placement(
				transformation(
					origin={300,35},
					extent={{-10,-10},{10,10}},
					rotation=-360),
				iconTransformation(
					origin={87.8378,87.8378},
					extent={{-12,-12},{12,12}})));
			protected
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * eps_Panel * eps_EB / (eps_Panel + eps_EB - eps_Panel * eps_EB) "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			public
				TCS tCS1 annotation(Placement(transformation(extent={{-75,-15},{-55,5}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary=lower_Temp_boundary) annotation(Placement(transformation(extent={{-40,-35},{-20,-15}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{55,35},{70,50}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{55,50},{70,65}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{185,5},{200,20}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{185,20},{200,35}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{220,-20},{235,-5}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yp(Gr=Gr_aP) annotation(Placement(transformation(extent={{220,-5},{235,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={297.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={317.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={302.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={322.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={272.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={292.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={227.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={247.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={22.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={42.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={62.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={82.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={12.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={32.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={72.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={92.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{115,-200},{130,-185}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zp(Gr=Gr_aP) annotation(Placement(transformation(extent={{115,-185},{130,-170}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
					Line(
						points={{288.6666564941406,24.66666412353516},{300,35}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
					Line(
						points={{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
					Line(
						points={{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
					Line(
						points={{41.33332824707031,-217.6666564941406},{10,-250}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
					points={{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
					points={{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}},
					thickness=0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
					points={{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
					points={{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}},
					thickness=0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
					points={{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
					points={{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
					points={{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}},
					thickness=0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
					points={{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}},
					thickness=0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
					Line(
						points={{162.6666564941406,-97.66667175292969},{110,-45}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
					Line(
						points={{205.6666564941406,-56},{281.3333435058594,17.33333587646484}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
					Line(
						points={{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
					points={{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
					points={{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
					Line(
						points={{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,
						-72}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
					Line(
						points={{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
					Line(
						points={{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(tCS1.cooler_on,heater_cooler_EPS1.cooler_on) annotation(Line(
					points={{-60,-15},{-60,-20},{-60,-30},{-45,-30},{-40,-30}},
					color={255,0,255},
					thickness=0.0625));
				connect(heater_cooler_EPS1.heater_on,tCS1.heater_on) annotation(Line(
					points={{-40,-20},{-45,-20},{-70,-20},{-70,-15}},
					color={255,0,255},
					thickness=0.0625));
				connect(heater_cooler_EPS1.Tmin,tCS1.Tmin) annotation(Line(
					points={{-20,-20},{-15,-20},{-15,10},{-70,10},{-70,5}},
					color={0,0,127},
					thickness=0.0625));
				connect(heater_cooler_EPS1.Tmax,tCS1.Tmax) annotation(
					Line(
						points={{-20,-30},{5,-30},{5,25},{-60,25},{-60,5}},
						color={0,0,127},
						thickness=0.0625),
					AutoRoute=false);
				connect(tCS1.Temp,port_b) annotation(Line(
					points={{-75,-5},{-80,-5},{-80,-45},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(heater_cooler_EPS1.Power_heating_cooling,port_b) annotation(Line(
					points={{-30,-15},{-30,-10},{37.3,-10},{37.3,-45},{105,-45},{110,
					-45}},
					color={191,0,0},
					thickness=0.0625));
						connect(Panel_xn.port_zn,thermalConductor_xn_zn.port_a) annotation(Line(
					points={{60,-103.3},{60,-108.3},{50,-108.3},{50,42.3},{55,42.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zn.port_b,Panel_zn.port_zn) annotation(Line(
					points={{70,42.3},{75,42.3},{277.7,42.3},{277.7,26.7},{282.7,26.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_zn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-20},{50,-20},{50,57.3},{55,
					57.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{70,57.3},{75,57.3},{276.3,57.3},{276.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_zn,thermalConductor_yp_zn.port_a) annotation(Line(
					points={{156.7,2.3},{151.7,2.3},{151.7,12.3},{180,12.3},{185,12.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zn.port_b,Panel_zn.port_yp) annotation(Line(
					points={{200,12.3},{205,12.3},{273,12.3},{273,22},{278,22}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_yp_zn.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{171,-9.699999999999999},{171,27.3},{180,27.3},{185,
					27.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{200,27.3},{205,27.3},{276.3,27.3},{276.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_a,Panel_yp.port_yn) annotation(Line(
					points={{220,-12.7},{215,-12.7},{173.7,-12.7},{173.7,-3},{168.7,-3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_xp_yp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{188.7,-9.699999999999999},{188.7,2.3},{215,2.3},{220,
					2.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
					points={{235,-12.7},{240,-12.7},{268,-12.7},{268,-86.7},{268,-91.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{235,2.3},{240,2.3},{262.3,2.3},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				
				connect(Panel_zn.port_yn,thermalConductor_yn_zn.port_a) annotation(Line(
					points={{287,14.3},{292,14.3},{302.7,14.3},{302.7,-115},{302.7,-120}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_a,Panel_zn.port_xn) annotation(Line(
					points={{322.7,-120},{322.7,-115},{322.7,17.3},{286.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zn,thermalConductor_yn_zn.port_b) annotation(Line(
					points={{168.3,-205},{173.3,-205},{302.3,-205},{302.3,-140},{302.3,-135}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{322.3,-135},{322.3,-140},{322.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_yn,thermalConductor_xp_yn.port_a) annotation(Line(
					points={{269,-103.7},{269,-108.7},{269,-150},{272.7,-150},{272.7,-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yn.port_b,Panel_yn.port_yp) annotation(Line(
					points={{272.3,-170},{272.3,-175},{272.3,-198},{173.3,-198},{168.3,-198}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_yn.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-123.7},{292.7,-123.7},{292.7,-150},{292.7,
					-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{292.3,-170},{292.3,-175},{292.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zn.port_b) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-79},{317.3,-79},{317.3,-60},{317.3,
					-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_xn,bodyRadiation_xp_zn.port_a) annotation(Line(
					points={{281.3,17.3},{286.3,17.3},{317.7,17.3},{317.7,-35},{317.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_zn,thermalConductor_xp_zn.port_b) annotation(Line(
					points={{275,-91.7},{275,-86.7},{275,-60},{297.3,-60},{297.3,-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_zp,thermalConductor_xp_zn.port_a) annotation(Line(
					points={{282.7,10},{287.7,10},{297.7,10},{297.7,-35},{297.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_a,Panel_xp.port_zp) annotation(Line(
					points={{227.7,-165},{227.7,-160},{227.7,-103.7},{258,-103.7},{263,-103.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zp.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{247.7,-97.7},{247.7,-160},{247.7,-165}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_b,Panel_zp.port_zn) annotation(Line(
					points={{227.3,-180},{227.3,-185},{227.3,-220},{52.3,-220},{47.3,-220}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_xp_zp.port_b) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{247.3,-210.3},{247.3,-185},{247.3,-180}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_b,Panel_xn.port_yn) annotation(Line(
					points={{22.3,-65},{22.3,-70},{22.3,-86.3},{66,-86.3},{66,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(
					points={{22.7,-50},{22.7,-45},{22.7,-8.699999999999999},{156.7,-8.699999999999999},{156.7,-3.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yp.port_b) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-83.7},{42.3,-83.7},{42.3,-70},{42.3,
					-65}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_yp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{42.7,-50},{42.7,-45},{42.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{82.7,-55},{82.7,-50},{82.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
					points={{62.3,-70},{62.3,-75},{62.3,-215.3},{57,-215.3},{52,-215.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{82.3,-70},{82.3,-75},{82.3,-210.3},{53.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
					points={{12.3,-160},{12.3,-165},{12.3,-203},{42.3,-203},{47.3,-203}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
					points={{12.7,-145},{12.7,-140},{77,-140},{77,-91.3},{72,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{32.3,-160},{32.3,-165},{32.3,-210.3},{43.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_a,Panel_xn.port_xn) annotation(Line(
					points={{32.7,-145},{32.7,-140},{72.7,-140},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yp,thermalConductor_xn_yn.port_a) annotation(Line(
					points={{67,-103.3},{67,-108.3},{67,-140},{72.7,-140},{72.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{92.7,-97.3},{92.7,-140},{92.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
					points={{72.3,-160},{72.3,-165},{72.3,-199},{151.3,-199},{156.3,-199}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zp,bodyRadiation_xn_yn.port_b) annotation(Line(
					points={{156.3,-193},{156.3,-188},{156.3,-165},{92.3,-165},{92.3,-160}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_yn,thermalConductor_yn_zp.port_a) annotation(Line(
					points={{43,-207.3},{48,-207.3},{110,-207.3},{110,-192.7},{115,-192.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_yn_zp.port_a) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{110,-210.3},{110,-177.7},{115,-177.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
					points={{130,-192.7},{135,-192.7},{135,-188},{156.3,-188},{156.3,-193}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zp.port_b,Panel_yn.port_xn) annotation(Line(
					points={{130,-177.7},{135,-177.7},{162.3,-177.7},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_a,Panel_yp.port_zp) annotation(Line(
					points={{62.7,-55},{62.7,-50},{62.7,-13.3},{168.7,-13.3},{168.7,-8.300000000000001}},
					color={191,0,0},
					thickness=0.015625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				tCS1(temperature_EB(
					T(flags=2),
					port(T(flags=2)))),
				heater_cooler_EPS1(
					heating_power(y(flags=2)),
					heater_power(port(Q_flow(flags=2))),
					cooling_power(y(flags=2)),
					cooler_power(port(Q_flow(flags=2))),
					lower_Temp(y(flags=2)),
					upper_Temp(y(flags=2))),
				Icon(graphics={
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10,-50},{10,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10.2751,-50},{9.7249,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												lineThickness=2,
												extent={{-80,-80},{80,80}}),
											Text(
												textString="%name",
												textStyle={TextStyle.Bold},
												lineColor={0,0,0},
												fillColor={255,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-78.4853,-65.66710000000001},{78.4853,-25.6671}}),
											Text(
												textString="yp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.0277,70.2527},{14.7787,93.1585}}),
											Text(
												textString="yn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.3028,-89.8573},{14.5036,-66.9515}}),
											Text(
												textString="xp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{67.47709999999999,-10.6276},{94.2835,12.2782}}),
											Text(
												textString="xn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),
											Text(
												textString="zp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),
											Text(
												textString="zn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=1,
					StartTime=0,
					Interval=0.001));
		end thermal_for_combined_sim;
		model thermal_for_combined_sim_no_control "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen fÃ¼r die gemeinsame Simulation"
			thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={325,-95},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
				transformation(
					origin={110,-45},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{35,50},{55,70}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Andere_Metalle_Titan() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{65,50},{85,70}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{20,55},{40,75}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of Panel from MaterialDataBase" annotation(
				Placement(transformation(extent={{25,55},{45,75}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_EB=MaterialDatabase.Elektronik_Box_Composit() "Material of Electronic Box from MaterialDataBase" annotation(
				Placement(transformation(extent={{30,35},{50,55}})),
				choicesAllMatching=true);
			parameter Real h_Panel(unit="W/(m²·K)")=3000 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(m²·K)")=3000 "Heat transfer coefficient EB-Panel";
			parameter Real ViewFactor_parallel=0.2 "Viewfactor of parallel Surfaces";
			parameter Real ViewFactor_vertical=0.2 "Viewfactor of vertical Surfaces";
			parameter Modelica.SIunits.Emissivity eps_Panel=0.5 "Emmisivity of the inner side of the panel";
			parameter Modelica.SIunits.Emissivity eps_EB=0.5 "Emmisivity of the electronic box";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "highest allowed temperatur in the Box";
			parameter Modelica.SIunits.ActivePower heating_power=100 "heat Power of the heater";
			parameter Modelica.SIunits.ActivePower cooling_power=-100 "heat Power of the cooler";
			parameter Real bandwidth_heater=5 "Bandwidth of the controller / K";
			parameter Real bandwidth_cooler=5 "Bandwidth of the controller / K";
			thermal_Panel_with_Interface Panel_xp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={265,-105},
					extent={{-10,-10},{25,25}})));
			thermal_Panel_with_Interface Panel_xn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={65,-100},
					extent={{-15,-20},{20,15}},
					rotation=-180)));
			thermal_Panel_with_Interface Panel_yp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={160,0},
					extent={{-15,-20},{15,15}},
					rotation=-270)));
			thermal_Panel_with_Interface Panel_yn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={155,-195},
					extent={{-10,-10},{25,25}},
					rotation=-90)));
			thermal_Panel_with_Interface Panel_zn(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={285,11},
					extent={{-10,-10},{24,24}},
					rotation=45)));
			thermal_Panel_with_Interface Panel_zp(
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={45,-224},
					extent={{-24,-24},{10,10}},
					rotation=-135)));
			thermalModel_ElectronicBox thermalModel_ElectronicBox1(
				material=material_EB,
				x=x_EB,
				y=y_EB,
				z=z_EB) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={150,-110},
					extent={{-5,-5},{30,30}})));
			intra_BuildingBlock_connector EB_Pxp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={207,-97},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
			intra_BuildingBlock_connector EB_Pxn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={116,-96},
				extent={{-6,-9},{6.25,6.25}})));
			intra_BuildingBlock_connector EB_Pyn(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={161,-141},
				extent={{-6.4815,-6.4815},{6.4815,6.4815}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pyp(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={162,-52},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pzp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={126,-132},
				extent={{-10,-8},{4,6}},
				rotation=45)));
			intra_BuildingBlock_connector EB_Pzn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={201,-64},
				extent={{-6.4943,-6.4943},{9,11}},
				rotation=45)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_x(Gr=Gr_oP) annotation(Placement(transformation(
				origin={117,-72},
				extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
			thermal_connector thermal_connector_yn annotation(Placement(
				transformation(
					origin={160,-235},
					extent={{-10,10},{10,-10}},
					rotation=-90),
				iconTransformation(
					origin={1.10041,-99.5873},
					extent={{-12,12},{12,-12}},
					rotation=-90)));
			thermal_connector thermal_connector_zp annotation(Placement(
				transformation(
					origin={10,-250},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-87.4828,-87.75790000000001},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_xn annotation(Placement(
				transformation(
					origin={15,-95},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-99.3122,-2.75103},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_yp annotation(Placement(
				transformation(
					origin={165,35},
					extent={{10,-10},{-10,10}},
					rotation=-270),
				iconTransformation(
					origin={1.10041,98.762},
					extent={{12,-12},{-12,12}},
					rotation=-270)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
				origin={210,-128},
				extent={{-10,-10},{3,3}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
				origin={186,-161},
				extent={{-6.0172,6.0172},{6.0172,-6.0172}},
				rotation=-90)));
			thermal_connector thermal_connector_zn annotation(Placement(
				transformation(
					origin={300,35},
					extent={{-10,-10},{10,10}},
					rotation=-360),
				iconTransformation(
					origin={87.8378,87.8378},
					extent={{-12,-12},{12,12}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{55,35},{70,50}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{55,50},{70,65}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{185,5},{200,20}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{185,20},{200,35}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{220,-20},{235,-5}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yp(Gr=Gr_aP) annotation(Placement(transformation(extent={{220,-5},{235,10}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={297.5,-47.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zn(Gr=Gr_aP) annotation(Placement(transformation(
				origin={317.5,-47.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={302.5,-127.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zn(Gr=Gr_aP) annotation(Placement(transformation(
				origin={322.5,-127.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={272.5,-162.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yn(Gr=Gr_aP) annotation(Placement(transformation(
				origin={292.5,-162.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={227.5,-172.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zp(Gr=Gr_aP) annotation(Placement(transformation(
				origin={247.5,-172.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={22.5,-57.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yp(Gr=Gr_aP) annotation(Placement(transformation(
				origin={42.5,-57.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={62.5,-62.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zp(Gr=Gr_aP) annotation(Placement(transformation(
				origin={82.5,-62.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={12.5,-152.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zp(Gr=Gr_aP) annotation(Placement(transformation(
				origin={32.5,-152.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
				origin={72.5,-152.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yn(Gr=Gr_aP) annotation(Placement(transformation(
				origin={92.5,-152.5},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{115,-200},{130,-185}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zp(Gr=Gr_aP) annotation(Placement(transformation(extent={{115,-185},{130,-170}})));
			protected
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * eps_Panel * eps_EB / (eps_Panel + eps_EB - eps_Panel * eps_EB) "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
					Line(
						points={{288.6666564941406,24.66666412353516},{300,35}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
					Line(
						points={{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
					Line(
						points={{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
					Line(
						points={{41.33332824707031,-217.6666564941406},{10,-250}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
					points={{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
					points={{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}},
					thickness=0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
					points={{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
					points={{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}},
					thickness=0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
					points={{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
					points={{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
					points={{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}},
					thickness=0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
					points={{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}},
					thickness=0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
					Line(
						points={{162.6666564941406,-97.66667175292969},{110,-45}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
					Line(
						points={{205.6666564941406,-56},{281.3333435058594,17.33333587646484}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
					Line(
						points={{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
					points={{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
					points={{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
					Line(
						points={{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,
						-72}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
					Line(
						points={{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
					Line(
						points={{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
						connect(Panel_xn.port_zn,thermalConductor_xn_zn.port_a) annotation(Line(
					points={{60,-103.3},{60,-108.3},{50,-108.3},{50,42.3},{55,42.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zn.port_b,Panel_zn.port_zn) annotation(Line(
					points={{70,42.3},{75,42.3},{277.7,42.3},{277.7,26.7},{282.7,26.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_zn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-20},{50,-20},{50,57.3},{55,
					57.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{70,57.3},{75,57.3},{276.3,57.3},{276.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_zn,thermalConductor_yp_zn.port_a) annotation(Line(
					points={{156.7,2.3},{151.7,2.3},{151.7,12.3},{180,12.3},{185,12.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zn.port_b,Panel_zn.port_yp) annotation(Line(
					points={{200,12.3},{205,12.3},{273,12.3},{273,22},{278,22}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_yp_zn.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{171,-9.699999999999999},{171,27.3},{180,27.3},{185,
					27.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{200,27.3},{205,27.3},{276.3,27.3},{276.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_a,Panel_yp.port_yn) annotation(Line(
					points={{220,-12.7},{215,-12.7},{173.7,-12.7},{173.7,-3},{168.7,-3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_xp_yp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{188.7,-9.699999999999999},{188.7,2.3},{215,2.3},{220,
					2.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
					points={{235,-12.7},{240,-12.7},{268,-12.7},{268,-86.7},{268,-91.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{235,2.3},{240,2.3},{262.3,2.3},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				
				connect(Panel_zn.port_yn,thermalConductor_yn_zn.port_a) annotation(Line(
					points={{287,14.3},{292,14.3},{302.7,14.3},{302.7,-115},{302.7,-120}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_a,Panel_zn.port_xn) annotation(Line(
					points={{322.7,-120},{322.7,-115},{322.7,17.3},{286.3,17.3},{281.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zn,thermalConductor_yn_zn.port_b) annotation(Line(
					points={{168.3,-205},{173.3,-205},{302.3,-205},{302.3,-140},{302.3,-135}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{322.3,-135},{322.3,-140},{322.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_yn,thermalConductor_xp_yn.port_a) annotation(Line(
					points={{269,-103.7},{269,-108.7},{269,-150},{272.7,-150},{272.7,-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yn.port_b,Panel_yn.port_yp) annotation(Line(
					points={{272.3,-170},{272.3,-175},{272.3,-198},{173.3,-198},{168.3,-198}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_yn.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-123.7},{292.7,-123.7},{292.7,-150},{292.7,
					-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{292.3,-170},{292.3,-175},{292.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zn.port_b) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-79},{317.3,-79},{317.3,-60},{317.3,
					-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_xn,bodyRadiation_xp_zn.port_a) annotation(Line(
					points={{281.3,17.3},{286.3,17.3},{317.7,17.3},{317.7,-35},{317.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_zn,thermalConductor_xp_zn.port_b) annotation(Line(
					points={{275,-91.7},{275,-86.7},{275,-60},{297.3,-60},{297.3,-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_zp,thermalConductor_xp_zn.port_a) annotation(Line(
					points={{282.7,10},{287.7,10},{297.7,10},{297.7,-35},{297.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_a,Panel_xp.port_zp) annotation(Line(
					points={{227.7,-165},{227.7,-160},{227.7,-103.7},{258,-103.7},{263,-103.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zp.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{247.7,-97.7},{247.7,-160},{247.7,-165}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_b,Panel_zp.port_zn) annotation(Line(
					points={{227.3,-180},{227.3,-185},{227.3,-220},{52.3,-220},{47.3,-220}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_xp_zp.port_b) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{247.3,-210.3},{247.3,-185},{247.3,-180}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_b,Panel_xn.port_yn) annotation(Line(
					points={{22.3,-65},{22.3,-70},{22.3,-86.3},{66,-86.3},{66,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(
					points={{22.7,-50},{22.7,-45},{22.7,-8.699999999999999},{156.7,-8.699999999999999},{156.7,-3.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yp.port_b) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-83.7},{42.3,-83.7},{42.3,-70},{42.3,
					-65}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_yp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{42.7,-50},{42.7,-45},{42.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_a,Panel_yp.port_zp) annotation(Line(
					points={{62.7,-55},{62.7,-50},{62.7,-13.3},{168.7,-13.3},{168.7,-8.300000000000001}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{82.7,-55},{82.7,-50},{82.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
					points={{62.3,-70},{62.3,-75},{62.3,-215.3},{57,-215.3},{52,-215.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{82.3,-70},{82.3,-75},{82.3,-210.3},{53.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
					points={{12.3,-160},{12.3,-165},{12.3,-203},{42.3,-203},{47.3,-203}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
					points={{12.7,-145},{12.7,-140},{77,-140},{77,-91.3},{72,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{32.3,-160},{32.3,-165},{32.3,-210.3},{43.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_a,Panel_xn.port_xn) annotation(Line(
					points={{32.7,-145},{32.7,-140},{72.7,-140},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yp,thermalConductor_xn_yn.port_a) annotation(Line(
					points={{67,-103.3},{67,-108.3},{67,-140},{72.7,-140},{72.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{92.7,-97.3},{92.7,-140},{92.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
					points={{72.3,-160},{72.3,-165},{72.3,-199},{151.3,-199},{156.3,-199}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zp,bodyRadiation_xn_yn.port_b) annotation(Line(
					points={{156.3,-193},{156.3,-188},{156.3,-165},{92.3,-165},{92.3,-160}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_yn,thermalConductor_yn_zp.port_a) annotation(Line(
					points={{43,-207.3},{48,-207.3},{110,-207.3},{110,-192.7},{115,-192.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_yn_zp.port_a) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{110,-210.3},{110,-177.7},{115,-177.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
					points={{130,-192.7},{135,-192.7},{135,-188},{156.3,-188},{156.3,-193}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zp.port_b,Panel_yn.port_xn) annotation(Line(
					points={{130,-177.7},{135,-177.7},{162.3,-177.7},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				Icon(graphics={
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10,-50},{10,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10.2751,-50},{9.7249,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												lineThickness=2,
												extent={{-80,-80},{80,80}}),
											Text(
												textString="%name",
												textStyle={TextStyle.Bold},
												lineColor={0,0,0},
												fillColor={255,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-78.4853,-65.66710000000001},{78.4853,-25.6671}}),
											Text(
												textString="yp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.0277,70.2527},{14.7787,93.1585}}),
											Text(
												textString="yn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.3028,-89.8573},{14.5036,-66.9515}}),
											Text(
												textString="xp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{67.47709999999999,-10.6276},{94.2835,12.2782}}),
											Text(
												textString="xn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),
											Text(
												textString="zp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),
											Text(
												textString="zn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=1,
					StartTime=0,
					Interval=0.001));
		end thermal_for_combined_sim_no_control;
		model BuildingBlock_optical_properties "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen"
			thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={325,-95},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
				transformation(
					origin={110,-45},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector_yn "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={160,-235},
					extent={{-10,10},{10,-10}},
					rotation=-90),
				iconTransformation(
					origin={0,-100},
					extent={{-12,12},{12,-12}},
					rotation=-90)));
			thermal_connector thermal_connector_zp annotation(Placement(
				transformation(
					origin={10,-250},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-87.4828,-87.75790000000001},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_xn annotation(Placement(
				transformation(
					origin={15,-95},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-99.3122,-2.75103},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_yp annotation(Placement(
				transformation(
					origin={165,35},
					extent={{10,-10},{-10,10}},
					rotation=-270),
				iconTransformation(
					origin={1.10041,98.762},
					extent={{12,-12},{-12,12}},
					rotation=-270)));
			thermal_connector thermal_connector_zn annotation(Placement(
				transformation(
					origin={300,35},
					extent={{-10,-10},{10,10}},
					rotation=-360),
				iconTransformation(
					origin={87.8378,87.8378},
					extent={{-12,-12},{12,12}})));
			panel_surface panel_surface_xn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={15,-75},
					extent={{-10,-10},{10,10}},
					rotation=90),
				iconTransformation(
					origin={-100,50},
					extent={{-10,-10},{10,10}},
					rotation=90)));
			panel_surface panel_surface_yp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{175,35},{195,55}}),
				iconTransformation(extent={{40,90},{60,110}})));
			panel_surface panel_surface_zn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={320,10},
					extent={{-10,-10},{10,10}},
					rotation=-90),
				iconTransformation(
					origin={100,50},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			panel_surface panel_surface_xp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={330,-115},
					extent={{-10,-10},{10,10}},
					rotation=-90),
				iconTransformation(
					origin={100,-50},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			panel_surface panel_surface_yn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={135,-235},
					extent={{-10,-10},{10,10}},
					rotation=-180),
				iconTransformation(
					origin={-50,-100},
					extent={{-10,-10},{10,10}},
					rotation=-180)));
			panel_surface panel_surface_zp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={0,-230},
					extent={{-10,-10},{10,10}},
					rotation=-270),
				iconTransformation(
					origin={-100,-50},
					extent={{-10,-10},{10,10}},
					rotation=-270)));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Andere_Metalle_Titan() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of Panel from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_EB=MaterialDatabase.Elektronik_Box_Composit() "Material of Electronic Box from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Modelica.SIunits.Power BuildingBlock_Power=5 "Leistungsbedarf des Standartbausteins";
			parameter Real h_Panel(unit="W/(m²·K)")=300 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(m²·K)")=300 "Heat transfer coefficient EB-Panel";
			parameter Real ViewFactor_parallel=0.2 "Viewfactor of parallel Surfaces";
			parameter Real ViewFactor_vertical=0.2 "Viewfactor of vertical Surfaces";
			parameter Modelica.SIunits.Emissivity eps_Panel=0.5 "Emmisivity of the inner side of the panel";
			parameter Modelica.SIunits.Emissivity eps_EB=0.5 "Emmisivity of the electronic box";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "highest allowed temperatur in the Box";
			parameter Modelica.SIunits.ActivePower heating_power=20 "heat Power of the heater";
			parameter Modelica.SIunits.ActivePower cooling_power=-20 "heat Power of the cooler";
			parameter Real hysteresis_heater=5 "Bandwidth of the controller / K";
			parameter Real hysteresis_cooler=5 "Bandwidth of the controller / K";
			thermal_Panel_with_Interface_with_optical_properties Panel_xp(
				alpha_Rad=alpha_Rad,
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_Rad=epsilon_Rad,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={265,-105},
					extent={{-10,-10},{25,25}})));
			thermal_Panel_with_Interface_with_optical_properties Panel_xn(
				alpha_Rad=alpha_Rad,
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_Rad=epsilon_Rad,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={65,-100},
					extent={{-15,-20},{20,15}},
					rotation=-180)));
			thermal_Panel_with_Interface_with_optical_properties Panel_yp(
				alpha_Rad=alpha_Rad,
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_Rad=epsilon_Rad,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={160,0},
					extent={{-15,-20},{15,15}},
					rotation=-270)));
			thermal_Panel_with_Interface_with_optical_properties Panel_yn(
				alpha_Rad=alpha_Rad,
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_Rad=epsilon_Rad,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={155,-195},
					extent={{-10,-10},{25,25}},
					rotation=-90)));
			thermal_Panel_with_Interface_with_optical_properties Panel_zn(
				alpha_Rad=alpha_Rad,
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_Rad=epsilon_Rad,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={280,11},
					extent={{-10,-10},{24,24}},
					rotation=45)));
			thermal_Panel_with_Interface_with_optical_properties Panel_zp(
				alpha_Rad=alpha_Rad,
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_Rad=epsilon_Rad,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={45,-224},
					extent={{-24,-24},{10,10}},
					rotation=-135)));
			thermalModel_ElectronicBox thermalModel_ElectronicBox1(
				material=material_EB,
				x=x_EB,
				y=y_EB,
				z=z_EB) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={150,-110},
					extent={{-5,-5},{30,30}})));
			intra_BuildingBlock_connector EB_Pxp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={207,-97},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
			intra_BuildingBlock_connector EB_Pxn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={116,-96},
				extent={{-6,-9},{6.25,6.25}})));
			intra_BuildingBlock_connector EB_Pyn(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={161,-141},
				extent={{-6.4815,-6.4815},{6.4815,6.4815}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pyp(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={162,-52},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pzp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={126,-132},
				extent={{-10,-8},{4,6}},
				rotation=45)));
			intra_BuildingBlock_connector EB_Pzn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={201,-64},
				extent={{-6.4943,-6.4943},{9,11}},
				rotation=45)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_x(Gr=Gr_oP) annotation(Placement(transformation(
				origin={117,-72},
				extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
				origin={210,-128},
				extent={{-10,-10},{3,3}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
				origin={186,-161},
				extent={{-6.0172,6.0172},{6.0172,-6.0172}},
				rotation=-90)));
			protected
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * eps_Panel * eps_EB / (eps_Panel + eps_EB - eps_Panel * eps_EB) "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			public
				Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=BuildingBlock_Power) annotation(Placement(transformation(extent={{0,0},{20,20}})));
				TCS tCS1(
					hysteresis_cooler=hysteresis_cooler,
					hysteresis_heater=hysteresis_heater) annotation(Placement(transformation(extent={{-85,-30},{-65,-10}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary(displayUnit="K")=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary(displayUnit="K")=lower_Temp_boundary) annotation(Placement(transformation(extent={{-40,-50},{-20,-30}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{55,35},{70,50}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{55,50},{70,65}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{185,5},{200,20}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{185,20},{200,35}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{220,-20},{235,-5}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yp(Gr=Gr_aP) annotation(Placement(transformation(extent={{220,-5},{235,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={297.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={317.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={302.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={322.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={272.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={292.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={227.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={247.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={22.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={42.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={62.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={82.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={12.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={32.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={72.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={92.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{115,-200},{130,-185}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zp(Gr=Gr_aP) annotation(Placement(transformation(extent={{115,-185},{130,-170}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
					Line(
						points={{283.6666564941406,24.66666412353516},{300,35}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
					Line(
						points={{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
					Line(
						points={{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
					Line(
						points={{41.33332824707031,-217.6666564941406},{10,-250}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
					points={{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
					points={{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}},
					thickness=0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
					points={{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
					points={{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}},
					thickness=0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
					points={{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
					points={{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
					points={{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}},
					thickness=0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
					points={{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}},
					thickness=0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
					Line(
						points={{162.6666564941406,-97.66667175292969},{110,-45}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
					Line(
						points={{205.6666564941406,-56},{276.3333435058594,17.33333587646484}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
					Line(
						points={{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
					points={{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
					points={{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
					Line(
						points={{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,
						-72}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
					Line(
						points={{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
					Line(
						points={{276.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(fixedHeatFlow1.port,port_b) annotation(Line(
					points={{20,10},{25,10},{105,10},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(tCS1.cooler_on,heater_cooler_EPS1.cooler_on) annotation(Line(
					points={{-70,-30},{-70,-35},{-70,-45},{-45,-45},{-40,-45}},
					color={255,0,255},
					thickness=0.0625));
				connect(tCS1.heater_on,heater_cooler_EPS1.heater_on) annotation(Line(
					points={{-80,-30},{-80,-35},{-45,-35},{-40,-35}},
					color={255,0,255},
					thickness=0.0625));
				connect(tCS1.Tmin,heater_cooler_EPS1.Tmin) annotation(Line(
					points={{-80,-10},{-80,-5},{-15,-5},{-15,-35},{-20,-35}},
					color={0,0,127},
					thickness=0.0625));
				connect(tCS1.Tmax,heater_cooler_EPS1.Tmax) annotation(Line(
					points={{-70,-10},{-70,-5},{-15,-5},{-15,-45},{-20,-45}},
					color={0,0,127},
					thickness=0.0625));
				connect(tCS1.Temp,port_b) annotation(Line(
					points={{-85,-20},{-90,-20},{-90,-45},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(heater_cooler_EPS1.Power_heating_cooling,port_b) annotation(Line(
					points={{-30,-30},{-30,-25},{37.3,-25},{37.3,-45},{105,-45},{110,
					-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.panel_surface1,panel_surface_xn) annotation(Line(
					points={{57.3,-92.3},{52.3,-92.3},{20,-92.3},{20,-75},{15,-75}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_yp.panel_surface1,panel_surface_yp) annotation(Line(
					points={{167.7,4.7},{167.7,9.699999999999999},{167.7,45},{180,45},{185,45}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_zn.panel_surface1,panel_surface_zn) annotation(Line(
					points={{287.3,21},{292.3,21},{315,21},{315,10},{320,10}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_xp.panel_surface1,panel_surface_xp) annotation(Line(
					points={{277.7,-102.7},{282.7,-102.7},{325,-102.7},{325,-115},{330,-115}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_yn.panel_surface1,panel_surface_yn) annotation(Line(
					points={{157.3,-207.7},{152.3,-207.7},{140,-207.7},{140,-235},{135,-235}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_zp.panel_surface1,panel_surface_zp) annotation(Line(
					points={{37.7,-214},{32.7,-214},{5,-214},{5,-230},{0,-230}},
					color={255,0,0},
					thickness=0.0625));
						connect(Panel_xn.port_zn,thermalConductor_xn_zn.port_a) annotation(Line(
					points={{60,-103.3},{60,-108.3},{50,-108.3},{50,42.3},{55,42.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zn.port_b,Panel_zn.port_zn) annotation(Line(
					points={{70,42.3},{75,42.3},{272.7,42.3},{272.7,26.7},{277.7,26.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_zn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-20},{50,-20},{50,57.3},{55,
					57.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{70,57.3},{75,57.3},{271.3,57.3},{271.3,17.3},{276.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_zn,thermalConductor_yp_zn.port_a) annotation(Line(
					points={{156.7,2.3},{151.7,2.3},{151.7,12.3},{180,12.3},{185,12.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zn.port_b,Panel_zn.port_yp) annotation(Line(
					points={{200,12.3},{205,12.3},{268,12.3},{268,22},{273,22}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_yp_zn.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{171,-9.699999999999999},{171,27.3},{180,27.3},{185,
					27.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{200,27.3},{205,27.3},{271.3,27.3},{271.3,17.3},{276.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_a,Panel_yp.port_yn) annotation(Line(
					points={{220,-12.7},{215,-12.7},{173.7,-12.7},{173.7,-3},{168.7,-3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_xp_yp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{188.7,-9.699999999999999},{188.7,2.3},{215,2.3},{220,
					2.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
					points={{235,-12.7},{240,-12.7},{268,-12.7},{268,-86.7},{268,-91.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{235,2.3},{240,2.3},{262.3,2.3},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				
				connect(Panel_zn.port_yn,thermalConductor_yn_zn.port_a) annotation(Line(
					points={{282,14.3},{287,14.3},{302.7,14.3},{302.7,-115},{302.7,-120}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_a,Panel_zn.port_xn) annotation(Line(
					points={{322.7,-120},{322.7,-115},{322.7,17.3},{281.3,17.3},{276.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zn,thermalConductor_yn_zn.port_b) annotation(Line(
					points={{168.3,-205},{173.3,-205},{302.3,-205},{302.3,-140},{302.3,-135}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{322.3,-135},{322.3,-140},{322.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_yn,thermalConductor_xp_yn.port_a) annotation(Line(
					points={{269,-103.7},{269,-108.7},{269,-150},{272.7,-150},{272.7,-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yn.port_b,Panel_yn.port_yp) annotation(Line(
					points={{272.3,-170},{272.3,-175},{272.3,-198},{173.3,-198},{168.3,-198}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_yn.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-123.7},{292.7,-123.7},{292.7,-150},{292.7,
					-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{292.3,-170},{292.3,-175},{292.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zn.port_b) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-79},{317.3,-79},{317.3,-60},{317.3,
					-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_xn,bodyRadiation_xp_zn.port_a) annotation(Line(
					points={{276.3,17.3},{281.3,17.3},{317.7,17.3},{317.7,-35},{317.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_zn,thermalConductor_xp_zn.port_b) annotation(Line(
					points={{275,-91.7},{275,-86.7},{275,-60},{297.3,-60},{297.3,-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_zp,thermalConductor_xp_zn.port_a) annotation(Line(
					points={{277.7,10},{282.7,10},{297.7,10},{297.7,-35},{297.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_a,Panel_xp.port_zp) annotation(Line(
					points={{227.7,-165},{227.7,-160},{227.7,-103.7},{258,-103.7},{263,-103.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zp.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{247.7,-97.7},{247.7,-160},{247.7,-165}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_b,Panel_zp.port_zn) annotation(Line(
					points={{227.3,-180},{227.3,-185},{227.3,-220},{52.3,-220},{47.3,-220}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_xp_zp.port_b) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{247.3,-210.3},{247.3,-185},{247.3,-180}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_b,Panel_xn.port_yn) annotation(Line(
					points={{22.3,-65},{22.3,-70},{22.3,-86.3},{66,-86.3},{66,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(
					points={{22.7,-50},{22.7,-45},{22.7,-8.699999999999999},{156.7,-8.699999999999999},{156.7,-3.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yp.port_b) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-83.7},{42.3,-83.7},{42.3,-70},{42.3,
					-65}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_yp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{42.7,-50},{42.7,-45},{42.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_a,Panel_yp.port_zp) annotation(Line(
					points={{62.7,-55},{62.7,-50},{62.7,-13.3},{168.7,-13.3},{168.7,-8.300000000000001}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{82.7,-55},{82.7,-50},{82.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
					points={{62.3,-70},{62.3,-75},{62.3,-215.3},{57,-215.3},{52,-215.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{82.3,-70},{82.3,-75},{82.3,-210.3},{53.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
					points={{12.3,-160},{12.3,-165},{12.3,-203},{42.3,-203},{47.3,-203}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
					points={{12.7,-145},{12.7,-140},{77,-140},{77,-91.3},{72,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{32.3,-160},{32.3,-165},{32.3,-210.3},{43.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_a,Panel_xn.port_xn) annotation(Line(
					points={{32.7,-145},{32.7,-140},{72.7,-140},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yp,thermalConductor_xn_yn.port_a) annotation(Line(
					points={{67,-103.3},{67,-108.3},{67,-140},{72.7,-140},{72.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{92.7,-97.3},{92.7,-140},{92.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
					points={{72.3,-160},{72.3,-165},{72.3,-199},{151.3,-199},{156.3,-199}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zp,bodyRadiation_xn_yn.port_b) annotation(Line(
					points={{156.3,-193},{156.3,-188},{156.3,-165},{92.3,-165},{92.3,-160}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_yn,thermalConductor_yn_zp.port_a) annotation(Line(
					points={{43,-207.3},{48,-207.3},{110,-207.3},{110,-192.7},{115,-192.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_yn_zp.port_a) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{110,-210.3},{110,-177.7},{115,-177.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
					points={{130,-192.7},{135,-192.7},{135,-188},{156.3,-188},{156.3,-193}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zp.port_b,Panel_yn.port_xn) annotation(Line(
					points={{130,-177.7},{135,-177.7},{162.3,-177.7},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				fixedHeatFlow1(port(Q_flow(flags=2))),
				heater_cooler_EPS1(
					heating_power(y(flags=2)),
					heater_power(port(Q_flow(flags=2))),
					cooling_power(y(flags=2)),
					cooler_power(port(Q_flow(flags=2))),
					lower_Temp(y(flags=2)),
					upper_Temp(y(flags=2))),
				Icon(graphics={
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10,-50},{10,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10.2751,-50},{9.7249,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												lineThickness=2,
												extent={{-80,-80},{80,80}}),
											Text(
												textString="%name",
												textStyle={TextStyle.Bold},
												lineColor={0,0,0},
												fillColor={255,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-78.4853,-65.66710000000001},{78.4853,-25.6671}}),
											Text(
												textString="yp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.0277,70.2527},{14.7787,93.1585}}),
											Text(
												textString="yn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.3028,-89.8573},{14.5036,-66.9515}}),
											Text(
												textString="xp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{67.47709999999999,-10.6276},{94.2835,12.2782}}),
											Text(
												textString="xn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),
											Text(
												textString="zp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),
											Text(
												textString="zn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=1,
					StartTime=0,
					Interval=0.001));
		end BuildingBlock_optical_properties;
		model BuildingBlock_optical_properties_var_rad "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen"
			thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={325,-95},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={100,0},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
				transformation(
					origin={110,-45},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={0,0},
					extent={{-10,-10},{10,10}})));
			thermal_connector thermal_connector_yn "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
				transformation(
					origin={160,-235},
					extent={{-10,10},{10,-10}},
					rotation=-90),
				iconTransformation(
					origin={0,-100},
					extent={{-12,12},{12,-12}},
					rotation=-90)));
			thermal_connector thermal_connector_zp annotation(Placement(
				transformation(
					origin={10,-250},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-87.4828,-87.75790000000001},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_xn annotation(Placement(
				transformation(
					origin={15,-95},
					extent={{10,10},{-10,-10}},
					rotation=-180),
				iconTransformation(
					origin={-99.3122,-2.75103},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			thermal_connector thermal_connector_yp annotation(Placement(
				transformation(
					origin={165,35},
					extent={{10,-10},{-10,10}},
					rotation=-270),
				iconTransformation(
					origin={1.10041,98.762},
					extent={{12,-12},{-12,12}},
					rotation=-270)));
			thermal_connector thermal_connector_zn annotation(Placement(
				transformation(
					origin={300,35},
					extent={{-10,-10},{10,10}},
					rotation=-360),
				iconTransformation(
					origin={87.8378,87.8378},
					extent={{-12,-12},{12,12}})));
			panel_surface panel_surface_xn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={15,-75},
					extent={{-10,-10},{10,10}},
					rotation=90),
				iconTransformation(
					origin={-100,50},
					extent={{-10,-10},{10,10}},
					rotation=90)));
			panel_surface panel_surface_yp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(extent={{175,35},{195,55}}),
				iconTransformation(extent={{40,90},{60,110}})));
			panel_surface panel_surface_zn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={320,10},
					extent={{-10,-10},{10,10}},
					rotation=-90),
				iconTransformation(
					origin={100,50},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			panel_surface panel_surface_xp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={330,-115},
					extent={{-10,-10},{10,10}},
					rotation=-90),
				iconTransformation(
					origin={100,-50},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			panel_surface panel_surface_yn "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={135,-235},
					extent={{-10,-10},{10,10}},
					rotation=-180),
				iconTransformation(
					origin={-50,-100},
					extent={{-10,-10},{10,10}},
					rotation=-180)));
			panel_surface panel_surface_zp "optical properties of the outer surface of the side panel" annotation(Placement(
				transformation(
					origin={0,-230},
					extent={{-10,-10},{10,10}},
					rotation=-270),
				iconTransformation(
					origin={-100,-50},
					extent={{-10,-10},{10,10}},
					rotation=-270)));
			parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
			parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
			parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
			parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
			parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
			parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
			parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
			parameter Modelica.SIunits.Height y_TSS=0.25 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.25 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			parameter MaterialDatabase.Material material_ESS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of ESS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_MSS=MaterialDatabase.Andere_Metalle_Titan() "Material of MSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_TSS=MaterialDatabase.Kupferlegierungen_Kupfer() "Material of TSS from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_Panel=MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd() "Material of Panel from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter MaterialDatabase.Material material_EB=MaterialDatabase.Elektronik_Box_Composit() "Material of Electronic Box from MaterialDataBase" annotation(
				Placement(transformation(extent={{-10,-10},{10,10}})),
				choicesAllMatching=true);
			parameter Modelica.SIunits.Power BuildingBlock_Power=5 "Leistungsbedarf des Standartbausteins";
			parameter Real h_Panel(unit="W/(m²·K)")=300 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(m²·K)")=300 "Heat transfer coefficient EB-Panel";
			parameter Real ViewFactor_parallel=0.2 "Viewfactor of parallel Surfaces";
			parameter Real ViewFactor_vertical=0.2 "Viewfactor of vertical Surfaces";
			parameter Modelica.SIunits.Emissivity eps_Panel=0.5 "Emmisivity of the inner side of the panel";
			parameter Modelica.SIunits.Emissivity eps_EB=0.5 "Emmisivity of the electronic box";
			parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
			parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "highest allowed temperatur in the Box";
			parameter Modelica.SIunits.ActivePower heating_power=20 "heat Power of the heater";
			parameter Modelica.SIunits.ActivePower cooling_power=-20 "heat Power of the cooler";
			parameter Real hysteresis_heater=5 "Bandwidth of the controller / K";
			parameter Real hysteresis_cooler=5 "Bandwidth of the controller / K";
			thermal_Panel_with_Interface_with_optical_properties_var_rad Panel_xp(
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={265,-105},
					extent={{-10,-10},{25,25}})));
			thermal_Panel_with_Interface_with_optical_properties_var_rad Panel_xn(
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={65,-100},
					extent={{-15,-20},{20,15}},
					rotation=-180)));
			thermal_Panel_with_Interface_with_optical_properties_var_rad Panel_yp(
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={160,0},
					extent={{-15,-20},{15,15}},
					rotation=-270)));
			thermal_Panel_with_Interface_with_optical_properties_var_rad Panel_yn(
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={155,-195},
					extent={{-10,-10},{25,25}},
					rotation=-90)));
			thermal_Panel_with_Interface_with_optical_properties_var_rad Panel_zn(
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={280,11},
					extent={{-10,-10},{24,24}},
					rotation=45)));
			thermal_Panel_with_Interface_with_optical_properties_var_rad Panel_zp(
				alpha_TSS=alpha_TSS,
				alpha_MSS=alpha_MSS,
				alpha_ESS=alpha_ESS,
				epsilon_TSS=epsilon_TSS,
				epsilon_MSS=epsilon_MSS,
				epsilon_ESS=epsilon_ESS,
				x_ESS=x_ESS,
				y_ESS=y_ESS,
				z_ESS=z_ESS,
				x_MSS=x_MSS,
				y_MSS=y_MSS,
				z_MSS=z_MSS,
				x_TSS=x_TSS,
				y_TSS=y_TSS,
				z_TSS=z_TSS,
				x_Panel=x_Panel,
				y_Panel=y_Panel,
				z_Panel=z_Panel,
				material_ESS=material_ESS,
				material_MSS=material_MSS,
				material_TSS=material_TSS,
				material_Panel=material_Panel) annotation(
				schnittstelle1(
					material_ESS(choicesAllMatching=true),
					material_MSS(choicesAllMatching=true),
					material_TSS(choicesAllMatching=true),
					ESS(material(choicesAllMatching=true)),
					MSS(material(choicesAllMatching=true)),
					TSS(material(choicesAllMatching=true))),
				BuildingBlock_Panel(material(choicesAllMatching=true)),
				material_ESS(choicesAllMatching=true),
				material_MSS(choicesAllMatching=true),
				material_TSS(choicesAllMatching=true),
				material_Panel(choicesAllMatching=true),
				Placement(transformation(
					origin={45,-224},
					extent={{-24,-24},{10,10}},
					rotation=-135)));
			thermalModel_ElectronicBox thermalModel_ElectronicBox1(
				material=material_EB,
				x=x_EB,
				y=y_EB,
				z=z_EB) annotation(
				material(choicesAllMatching=true),
				Placement(transformation(
					origin={150,-110},
					extent={{-5,-5},{30,30}})));
			intra_BuildingBlock_connector EB_Pxp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={207,-97},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
			intra_BuildingBlock_connector EB_Pxn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={116,-96},
				extent={{-6,-9},{6.25,6.25}})));
			intra_BuildingBlock_connector EB_Pyn(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={161,-141},
				extent={{-6.4815,-6.4815},{6.4815,6.4815}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pyp(
				Gr=Gr_P_EB,
				A_cross_Panel=x_EB * z_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={162,-52},
				extent={{-6.6332,-6.6332},{6.6332,6.6332}},
				rotation=-90)));
			intra_BuildingBlock_connector EB_Pzp(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={126,-132},
				extent={{-10,-8},{4,6}},
				rotation=45)));
			intra_BuildingBlock_connector EB_Pzn(
				Gr=Gr_P_EB,
				A_cross_Panel=y_EB * x_EB,
				h_c=h_EB) annotation(Placement(transformation(
				origin={201,-64},
				extent={{-6.4943,-6.4943},{9,11}},
				rotation=45)));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_x(Gr=Gr_oP) annotation(Placement(transformation(
				origin={117,-72},
				extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
				origin={210,-128},
				extent={{-10,-10},{3,3}})));
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
				origin={186,-161},
				extent={{-6.0172,6.0172},{6.0172,-6.0172}},
				rotation=-90)));
			protected
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1) "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * eps_Panel * eps_EB / (eps_Panel + eps_EB - eps_Panel * eps_EB) "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			public
				Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=BuildingBlock_Power) annotation(Placement(transformation(extent={{0,0},{20,20}})));
				TCS tCS1(
					hysteresis_cooler=hysteresis_cooler,
					hysteresis_heater=hysteresis_heater) annotation(Placement(transformation(extent={{-85,-30},{-65,-10}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary(displayUnit="K")=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary(displayUnit="K")=lower_Temp_boundary) annotation(Placement(transformation(extent={{-40,-50},{-20,-30}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{55,35},{70,50}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{55,50},{70,65}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{185,5},{200,20}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zn(Gr=Gr_aP) annotation(Placement(transformation(extent={{185,20},{200,35}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{220,-20},{235,-5}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yp(Gr=Gr_aP) annotation(Placement(transformation(extent={{220,-5},{235,10}})));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={297.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={317.5,-47.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={302.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={322.5,-127.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={272.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={292.5,-162.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={227.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={247.5,-172.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={22.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={42.5,-57.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={62.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yp_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={82.5,-62.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={12.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_zp(Gr=Gr_aP) annotation(Placement(transformation(
					origin={32.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn_yn(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(
					origin={72.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_xn_yn(Gr=Gr_aP) annotation(Placement(transformation(
					origin={92.5,-152.5},
					extent={{-7.5,-7.5},{7.5,7.5}},
					rotation=-90)));
				Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn_zp(G=x_Panel * y_Panel * h_Panel) annotation(Placement(transformation(extent={{115,-200},{130,-185}})));
				Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_yn_zp(Gr=Gr_aP) annotation(Placement(transformation(extent={{115,-185},{130,-170}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
					Line(
						points={{283.6666564941406,24.66666412353516},{300,35}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
					Line(
						points={{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
					Line(
						points={{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
					Line(
						points={{41.33332824707031,-217.6666564941406},{10,-250}},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
					points={{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
					points={{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}},
					thickness=0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
					points={{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
					points={{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}},
					thickness=0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
					points={{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
					points={{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
					points={{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}},
					thickness=0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
					points={{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}},
					thickness=0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
					Line(
						points={{162.6666564941406,-97.66667175292969},{110,-45}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
					Line(
						points={{205.6666564941406,-56},{276.3333435058594,17.33333587646484}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
					Line(
						points={{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
					points={{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
					points={{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
					points={{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
					Line(
						points={{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,
						-72}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
					Line(
						points={{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
					Line(
						points={{276.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(fixedHeatFlow1.port,port_b) annotation(Line(
					points={{20,10},{25,10},{105,10},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(tCS1.cooler_on,heater_cooler_EPS1.cooler_on) annotation(Line(
					points={{-70,-30},{-70,-35},{-70,-45},{-45,-45},{-40,-45}},
					color={255,0,255},
					thickness=0.0625));
				connect(tCS1.heater_on,heater_cooler_EPS1.heater_on) annotation(Line(
					points={{-80,-30},{-80,-35},{-45,-35},{-40,-35}},
					color={255,0,255},
					thickness=0.0625));
				connect(tCS1.Tmin,heater_cooler_EPS1.Tmin) annotation(Line(
					points={{-80,-10},{-80,-5},{-15,-5},{-15,-35},{-20,-35}},
					color={0,0,127},
					thickness=0.0625));
				connect(tCS1.Tmax,heater_cooler_EPS1.Tmax) annotation(Line(
					points={{-70,-10},{-70,-5},{-15,-5},{-15,-45},{-20,-45}},
					color={0,0,127},
					thickness=0.0625));
				connect(tCS1.Temp,port_b) annotation(Line(
					points={{-85,-20},{-90,-20},{-90,-45},{105,-45},{110,-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(heater_cooler_EPS1.Power_heating_cooling,port_b) annotation(Line(
					points={{-30,-30},{-30,-25},{37.3,-25},{37.3,-45},{105,-45},{110,
					-45}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.panel_surface1,panel_surface_xn) annotation(Line(
					points={{57.3,-92.3},{52.3,-92.3},{20,-92.3},{20,-75},{15,-75}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_yp.panel_surface1,panel_surface_yp) annotation(Line(
					points={{167.7,4.7},{167.7,9.699999999999999},{167.7,45},{180,45},{185,45}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_zn.panel_surface1,panel_surface_zn) annotation(Line(
					points={{287.3,21},{292.3,21},{315,21},{315,10},{320,10}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_xp.panel_surface1,panel_surface_xp) annotation(Line(
					points={{277.7,-102.7},{282.7,-102.7},{325,-102.7},{325,-115},{330,-115}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_yn.panel_surface1,panel_surface_yn) annotation(Line(
					points={{157.3,-207.7},{152.3,-207.7},{140,-207.7},{140,-235},{135,-235}},
					color={255,0,0},
					thickness=0.0625));
				connect(Panel_zp.panel_surface1,panel_surface_zp) annotation(Line(
					points={{37.7,-214},{32.7,-214},{5,-214},{5,-230},{0,-230}},
					color={255,0,0},
					thickness=0.0625));
						connect(Panel_xn.port_zn,thermalConductor_xn_zn.port_a) annotation(Line(
					points={{60,-103.3},{60,-108.3},{50,-108.3},{50,42.3},{55,42.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zn.port_b,Panel_zn.port_zn) annotation(Line(
					points={{70,42.3},{75,42.3},{272.7,42.3},{272.7,26.7},{277.7,26.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_zn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-20},{50,-20},{50,57.3},{55,
					57.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{70,57.3},{75,57.3},{271.3,57.3},{271.3,17.3},{276.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_zn,thermalConductor_yp_zn.port_a) annotation(Line(
					points={{156.7,2.3},{151.7,2.3},{151.7,12.3},{180,12.3},{185,12.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zn.port_b,Panel_zn.port_yp) annotation(Line(
					points={{200,12.3},{205,12.3},{268,12.3},{268,22},{273,22}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_yp_zn.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{171,-9.699999999999999},{171,27.3},{180,27.3},{185,
					27.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zn.port_b,Panel_zn.port_xn) annotation(Line(
					points={{200,27.3},{205,27.3},{271.3,27.3},{271.3,17.3},{276.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_a,Panel_yp.port_yn) annotation(Line(
					points={{220,-12.7},{215,-12.7},{173.7,-12.7},{173.7,-3},{168.7,-3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_xn,bodyRadiation_xp_yp.port_a) annotation(Line(
					points={{162.3,-4.7},{162.3,-9.699999999999999},{188.7,-9.699999999999999},{188.7,2.3},{215,2.3},{220,
					2.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
					points={{235,-12.7},{240,-12.7},{268,-12.7},{268,-86.7},{268,-91.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yp.port_b,Panel_xp.port_xn) annotation(Line(
					points={{235,2.3},{240,2.3},{262.3,2.3},{262.3,-97.7},{267.3,-97.7}},
					color={191,0,0},
					thickness=0.0625));
				
				
				
				
				connect(Panel_zn.port_yn,thermalConductor_yn_zn.port_a) annotation(Line(
					points={{282,14.3},{287,14.3},{302.7,14.3},{302.7,-115},{302.7,-120}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_a,Panel_zn.port_xn) annotation(Line(
					points={{322.7,-120},{322.7,-115},{322.7,17.3},{281.3,17.3},{276.3,17.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zn,thermalConductor_yn_zn.port_b) annotation(Line(
					points={{168.3,-205},{173.3,-205},{302.3,-205},{302.3,-140},{302.3,-135}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{322.3,-135},{322.3,-140},{322.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_yn,thermalConductor_xp_yn.port_a) annotation(Line(
					points={{269,-103.7},{269,-108.7},{269,-150},{272.7,-150},{272.7,-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_yn.port_b,Panel_yn.port_yp) annotation(Line(
					points={{272.3,-170},{272.3,-175},{272.3,-198},{173.3,-198},{168.3,-198}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_yn.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-123.7},{292.7,-123.7},{292.7,-150},{292.7,
					-155}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xp_yn.port_b,Panel_yn.port_xn) annotation(Line(
					points={{292.3,-170},{292.3,-175},{292.3,-192.3},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zn.port_b) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{262.3,-79},{317.3,-79},{317.3,-60},{317.3,
					-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_xn,bodyRadiation_xp_zn.port_a) annotation(Line(
					points={{276.3,17.3},{281.3,17.3},{317.7,17.3},{317.7,-35},{317.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_zn,thermalConductor_xp_zn.port_b) annotation(Line(
					points={{275,-91.7},{275,-86.7},{275,-60},{297.3,-60},{297.3,-55}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_zp,thermalConductor_xp_zn.port_a) annotation(Line(
					points={{277.7,10},{282.7,10},{297.7,10},{297.7,-35},{297.7,-40}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_a,Panel_xp.port_zp) annotation(Line(
					points={{227.7,-165},{227.7,-160},{227.7,-103.7},{258,-103.7},{263,-103.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_xn,bodyRadiation_xp_zp.port_a) annotation(Line(
					points={{267.3,-97.7},{262.3,-97.7},{247.7,-97.7},{247.7,-160},{247.7,-165}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xp_zp.port_b,Panel_zp.port_zn) annotation(Line(
					points={{227.3,-180},{227.3,-185},{227.3,-220},{52.3,-220},{47.3,-220}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_xp_zp.port_b) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{247.3,-210.3},{247.3,-185},{247.3,-180}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_b,Panel_xn.port_yn) annotation(Line(
					points={{22.3,-65},{22.3,-70},{22.3,-86.3},{66,-86.3},{66,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(
					points={{22.7,-50},{22.7,-45},{22.7,-8.699999999999999},{156.7,-8.699999999999999},{156.7,-3.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yp.port_b) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{72.7,-83.7},{42.3,-83.7},{42.3,-70},{42.3,
					-65}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_yp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{42.7,-50},{42.7,-45},{42.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_a,Panel_yp.port_zp) annotation(Line(
					points={{62.7,-55},{62.7,-50},{62.7,-13.3},{168.7,-13.3},{168.7,-8.300000000000001}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_a,Panel_yp.port_xn) annotation(Line(
					points={{82.7,-55},{82.7,-50},{82.7,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
					points={{62.3,-70},{62.3,-75},{62.3,-215.3},{57,-215.3},{52,-215.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yp_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{82.3,-70},{82.3,-75},{82.3,-210.3},{53.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
					points={{12.3,-160},{12.3,-165},{12.3,-203},{42.3,-203},{47.3,-203}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
					points={{12.7,-145},{12.7,-140},{77,-140},{77,-91.3},{72,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_b,Panel_zp.port_xn) annotation(Line(
					points={{32.3,-160},{32.3,-165},{32.3,-210.3},{43.7,-210.3},{48.7,-210.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_xn_zp.port_a,Panel_xn.port_xn) annotation(Line(
					points={{32.7,-145},{32.7,-140},{72.7,-140},{72.7,-97.3},{67.7,-97.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yp,thermalConductor_xn_yn.port_a) annotation(Line(
					points={{67,-103.3},{67,-108.3},{67,-140},{72.7,-140},{72.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_xn,bodyRadiation_xn_yn.port_a) annotation(Line(
					points={{67.7,-97.3},{72.7,-97.3},{92.7,-97.3},{92.7,-140},{92.7,-145}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
					points={{72.3,-160},{72.3,-165},{72.3,-199},{151.3,-199},{156.3,-199}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yn.port_zp,bodyRadiation_xn_yn.port_b) annotation(Line(
					points={{156.3,-193},{156.3,-188},{156.3,-165},{92.3,-165},{92.3,-160}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_yn,thermalConductor_yn_zp.port_a) annotation(Line(
					points={{43,-207.3},{48,-207.3},{110,-207.3},{110,-192.7},{115,-192.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zp.port_xn,bodyRadiation_yn_zp.port_a) annotation(Line(
					points={{48.7,-210.3},{53.7,-210.3},{110,-210.3},{110,-177.7},{115,-177.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(thermalConductor_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
					points={{130,-192.7},{135,-192.7},{135,-188},{156.3,-188},{156.3,-193}},
					color={191,0,0},
					thickness=0.0625));
				connect(bodyRadiation_yn_zp.port_b,Panel_yn.port_xn) annotation(Line(
					points={{130,-177.7},{135,-177.7},{162.3,-177.7},{162.3,-192.3},{162.3,-197.3}},
					color={191,0,0},
					thickness=0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				Panel_xp(combiTable1Ds1(y(flags=2))),
				Panel_xn(combiTable1Ds1(y(flags=2))),
				Panel_yp(combiTable1Ds1(y(flags=2))),
				Panel_yn(combiTable1Ds1(y(flags=2))),
				Panel_zn(combiTable1Ds1(y(flags=2))),
				Panel_zp(combiTable1Ds1(y(flags=2))),
				fixedHeatFlow1(port(Q_flow(flags=2))),
				heater_cooler_EPS1(
					heating_power(y(flags=2)),
					heater_power(port(Q_flow(flags=2))),
					cooling_power(y(flags=2)),
					cooler_power(port(Q_flow(flags=2))),
					lower_Temp(y(flags=2)),
					upper_Temp(y(flags=2))),
				Icon(graphics={
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10,-50},{10,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-10.2751,-50},{9.7249,50}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												fillPattern=FillPattern.CrossDiag,
												extent={{-50,-10},{50,10}}),
											Rectangle(
												lineColor={255,0,0},
												fillColor={255,255,255},
												lineThickness=2,
												extent={{-80,-80},{80,80}}),
											Text(
												textString="%name",
												textStyle={TextStyle.Bold},
												lineColor={0,0,0},
												fillColor={255,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-78.4853,-65.66710000000001},{78.4853,-25.6671}}),
											Text(
												textString="yp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.0277,70.2527},{14.7787,93.1585}}),
											Text(
												textString="yn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-12.3028,-89.8573},{14.5036,-66.9515}}),
											Text(
												textString="xp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{67.47709999999999,-10.6276},{94.2835,12.2782}}),
											Text(
												textString="xn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),
											Text(
												textString="zp",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),
											Text(
												textString="zn",
												lineColor={0,0,0},
												fillPattern=FillPattern.Solid,
												extent={{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
				Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
				experiment(
					StopTime=1,
					StartTime=0,
					Interval=0.001));
		end BuildingBlock_optical_properties_var_rad;
		model Tank_2x2 "Tank_2x2.mo"
			iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_xp annotation(Placement(transformation(extent={{75,-15},{95,5}})));
			iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_xn annotation(Placement(transformation(
				origin={-35,-5},
				extent={{-10,-10},{10,10}},
				rotation=180)));
			iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_yn annotation(Placement(transformation(
				origin={25,-65},
				extent={{-10,-10},{10,10}},
				rotation=270)));
			iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_yp annotation(Placement(transformation(
				origin={30,65},
				extent={{-10,-10},{10,10}},
				rotation=90)));
			iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_zn annotation(Placement(transformation(extent={{100,75},{120,95}})));
			iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_zp annotation(Placement(transformation(
				origin={-70,-85},
				extent={{-10,-10},{10,10}},
				rotation=180)));
			Panel_5x5.components.thermal_2_conductor thermal_2_conductor1 annotation(Placement(transformation(extent={{-25,60},{-5,70}})));
			Panel_5x5.components.thermal_2_conductor thermal_2_conductor2 annotation(Placement(transformation(extent={{60,60},{80,70}})));
			Panel_5x5.components.thermal_2_conductor thermal_2_conductor3 annotation(Placement(transformation(extent={{60,-70},{80,-60}})));
			Panel_5x5.components.thermal_2_conductor thermal_2_conductor4 annotation(Placement(transformation(extent={{-30,-70},{-10,-60}})));
			equation
				connect(thermal_2_conductor1.thermal_connector_side_r,tank_2x2_Panel_yp.thermal_connector_2_yp) annotation(Line(
					points={{-5,65},{0,65},{15,65},{20,65}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor1.thermal_connector_side_l,tank_2x2_Panel_xn.thermal_connector_2_yn) annotation(Line(
					points={{-25,65},{-30,65},{-35,65},{-35,10},{-35,5}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor2.thermal_connector_side_l,tank_2x2_Panel_yp.thermal_connector_2_yn) annotation(Line(
					points={{60,65},{55,65},{45,65},{40,65}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor2.thermal_connector_side_r,tank_2x2_Panel_xp.thermal_connector_2_yp) annotation(Line(
					points={{80,65},{85,65},{85,10},{85,5}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor3.thermal_connector_side_r,tank_2x2_Panel_xp.thermal_connector_2_yn) annotation(Line(
					points={{80,-65},{85,-65},{85,-20},{85,-15}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor3.thermal_connector_side_l,tank_2x2_Panel_yn.thermal_connector_2_yp) annotation(Line(
					points={{60,-65},{55,-65},{40,-65},{35,-65}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor4.thermal_connector_side_r,tank_2x2_Panel_yn.thermal_connector_2_yn) annotation(Line(
					points={{-10,-65},{-5,-65},{10,-65},{15,-65}},
					color={0,0,0},
					thickness=0.0625));
				connect(thermal_2_conductor4.thermal_connector_side_l,tank_2x2_Panel_xn.thermal_connector_2_yp) annotation(Line(
					points={{-30,-65},{-35,-65},{-35,-20},{-35,-15}},
					color={0,0,0},
					thickness=0.0625));
		end Tank_2x2;
	end buildingblocks;
end iboss_thermal;
