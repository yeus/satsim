// CP: 65001
// SimulationX Version: 3.6.1.26028 x64
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
					graphics={Rectangle(fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,-100},{100,100}}, visible = true),Text(textString = "Rad", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {-44.0817,85.1439}),Text(textString = "TSS", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {46.7747,84.8561}),Text(textString = "MSS", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {-44.0959,-85.1439}),Text(textString = "ESS", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {47.1086,-85.1439})}),
				Diagram(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-30.7109,-23.1268},{27.2635,33.4688}}, visible = true, origin = {-28.2763,-5.171}),Text(textString = "TSS", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-17.1201,-5.9154},{17.1201,5.9154}}, visible = true, origin = {70,24.0846}),Text(textString = "MSS", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.9755,-6.8676},{12.9755,6.8676}}, visible = true, origin = {70,-25.2132}),Text(textString = "ESS", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-13.598,-6.3627},{13.598,6.3627}}, visible = true, origin = {70,-76.3627}),Text(textString = "Rad", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-17.1201,-5.9154},{17.1201,5.9154}}, visible = true, origin = {70,74.08459999999999}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-102.764,-162.343},{97.23560000000001,-102.343}}, visible = true, origin = {-142.343,2.7644}, rotation = 90)}));
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
				connect(thermalConductorlinks_x.port_a,port_a_xn) annotation(Line(points = {{-40,15},{-45,15},{-68,15},{-68,13},{-73,13}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatcapacitor1.port,thermalConductorlinks_x.port_b) annotation(Line(points = {{0,18},{0,13},{-7,13},{-7,15},{-15,15},{-20,15}}, color = {191,0,0}, thickness = 0.0625));
				connect(port_b_xp,thermalconductorrechts_x.port_b) annotation(Line(points = {{77,13},{72,13},{52,13},{52,14},{47,14}}, color = {191,0,0}, thickness = 0.0625));
				connect(heatcapacitor1.port,thermalconductorrechts_x.port_a) annotation(Line(points = {{0,18},{0,13},{15,13},{15,14},{30,14},{35,14}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductorunten_y.port_b,heatcapacitor1.port) annotation(Line(points = {{-3,-14},{-3,-9},{-3,13},{0,13},{0,18}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductorunten_y.port_a,port_a_yn) annotation(Line(points = {{-3,-30},{-3,-35},{-5,-35},{-5,-60},{0,-60}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductoroben_y.port_a,heatcapacitor1.port) annotation(Line(points = {{-3,55},{-3,50},{-1,50},{-1,13},{0,13},{0,18}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductoroben_y.port_b,port_b_yp) annotation(Line(points = {{-3,70},{-3,75},{-5,75},{-5,90},{0,90}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductorvorne_z.port_b,port_b_zp) annotation(Line(points = {{-37,-22},{-42,-22},{-45,-22},{-45,-45},{-50,-45}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductorvorne_z.port_a,heatcapacitor1.port) annotation(Line(points = {{-23,-8},{-18,-8},{0,-8},{0,13},{0,18}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductorhinten_z.port_b,heatcapacitor1.port) annotation(Line(points = {{18,29},{13,29},{13,13},{0,13},{0,18}}, color = {191,0,0}, thickness = 0.0625));
				connect(thermalConductorhinten_z.port_a,port_a_zn) annotation(Line(points = {{32,43},{37,43},{45,43},{45,65},{50,65}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				Icon(
					coordinateSystem(grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-94.63549999999999,-59.4223},{96.011,61.8982}}, visible = true, origin = {-0.6878,-1.238}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-101.2507,52.8171},{98.74930000000001,112.8171}}, visible = true, origin = {82.8171,1.2507}, rotation = 90),Text(textString = "thermal element", fontSize = 16, fillColor = {0,0,255}, extent = {{-3,-2},{0,9}}, visible = true)}),
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
				transformation(extent={{-50,20},{-30,40}}),
				iconTransformation(
					origin={-100,0},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			input Modelica.Blocks.Interfaces.RealInput Tmax "'input Real' as connector" annotation(Placement(
				transformation(extent={{40,-20},{80,20}}),
				iconTransformation(
					origin={50,100},
					extent={{-20,-20},{20,20}},
					rotation=270)));
			input Modelica.Blocks.Interfaces.RealInput Tmin "'input Real' as connector" annotation(Placement(
				transformation(extent={{45,35},{85,75}}),
				iconTransformation(
					origin={-50,100},
					extent={{-20,-20},{20,20}},
					rotation=270)));
			output Modelica.Blocks.Interfaces.BooleanOutput heater_on "'output Boolean' as connector" annotation(Placement(
				transformation(extent={{165,40},{185,60}}),
				iconTransformation(
					origin={-50,-100},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			output Modelica.Blocks.Interfaces.BooleanOutput cooler_on "'output Boolean' as connector" annotation(Placement(
				transformation(extent={{165,-5},{185,15}}),
				iconTransformation(
					origin={50,-100},
					extent={{-10,-10},{10,10}},
					rotation=-90)));
			parameter Real bandwidth_cooler=5 "Bandwidth of the bang-bang controller (cool) / K";
			parameter Real bandwidth_heater=5 "Bandwidth of the bang-bang controller (heat) / K";
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
				origin={15,30},
				extent={{-10,-10},{10,10}})));
			OnOffController_noEvent onOffController_heat(bandwidth=bandwidth_heater) annotation(Placement(transformation(extent={{120,40},{140,60}})));
			OnOffController_noEvent onOffController_cool(bandwidth=bandwidth_cooler) annotation(Placement(transformation(extent={{120,-5},{140,15}})));
			equation
				connect(onOffController_heat.reference,Tmin) annotation(Line(points = {{118,56},{113,56},{70,56},{70,55},{65,55}}, color = {0,0,127}, thickness = 0.0625));
				connect(onOffController_cool.u,Tmax) annotation(Line(points = {{118,-1},{113,-1},{65,-1},{65,0},{60,0}}, color = {0,0,127}, thickness = 0.0625));
				connect(onOffController_heat.y,heater_on) annotation(Line(points = {{141,50},{146,50},{170,50},{175,50}}, color = {255,0,255}, thickness = 0.0625));
				connect(onOffController_cool.y,cooler_on) annotation(Line(points = {{141,5},{146,5},{170,5},{175,5}}, color = {255,0,255}, thickness = 0.0625));
				connect(Temp,temperature_EB.port) annotation(Line(points = {{-40,30},{-35,30},{0,30},{5,30}}, color = {191,0,0}, thickness = 0.0625));
				connect(temperature_EB.T,onOffController_heat.u) annotation(Line(points = {{25,30},{30,30},{113,30},{113,44},{118,44}}, color = {0,0,127}, thickness = 0.0625));
				connect(temperature_EB.T,onOffController_cool.reference) annotation(Line(points = {{25,30},{30,30},{113,30},{113,11},{118,11}}, color = {0,0,127}, thickness = 0.0625));
			annotation(
				temperature_EB(
					T(flags=2),
					port(T(flags=2))),
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
			parameter Real bandwidth_cooler=5 "Bandwidth of the bang-bang controller (cool) / K";
			parameter Real bandwidth_heater=5 "Bandwidth of the bang-bang controller (heat) / K";
			Modelica.Blocks.Math.Gain heating_power(k=power_heater) annotation(Placement(transformation(extent={{-5,-10},{15,10}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent={{25,-10},{45,10}})));
			Modelica.Blocks.Math.BooleanToReal booleanToReal_heat annotation(Placement(transformation(extent={{-40,-10},{-20,10}})));
			Modelica.Blocks.Math.Gain cooling_power(k=power_cooler) annotation(Placement(transformation(extent={{-5,-50},{15,-30}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow cooler_power annotation(Placement(transformation(extent={{25,-50},{45,-30}})));
			Modelica.Blocks.Math.BooleanToReal booleanToReal_cool annotation(Placement(transformation(extent={{-40,-50},{-20,-30}})));
			Modelica.Blocks.Sources.Constant lower_Temp(k=lower_Temp_boundary + bandwidth_heater / 2) annotation(Placement(transformation(
				origin={-30,35},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			Modelica.Blocks.Sources.Constant upper_Temp(k=upper_Temp_boundary - bandwidth_cooler / 2) annotation(Placement(transformation(
				origin={-30,-75},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			equation
				connect(heating_power.y,heater_power.Q_flow) annotation(Line(points = {{16,0},{21,0},{20,0},{25,0}}, color = {0,0,127}, thickness = 0.0625));
				connect(heater_power.port,Power_heating_cooling) annotation(Line(points = {{45,0},{50,0},{80,0},{80,-20},{85,-20}}, color = {191,0,0}, thickness = 0.0625));
				connect(lower_Temp.y,Tmin) annotation(Line(points = {{-41,35},{-46,35},{-90,35},{-95,35}}, color = {0,0,127}, thickness = 0.0625));
				connect(upper_Temp.y,Tmax) annotation(Line(points = {{-41,-75},{-46,-75},{-90,-75},{-95,-75}}, color = {0,0,127}, thickness = 0.0625));
				connect(cooler_power.port,Power_heating_cooling) annotation(Line(points = {{45,-40},{50,-40},{80,-40},{80,-20},{85,-20}}, color = {191,0,0}, thickness = 0.0625));
				connect(cooling_power.y,cooler_power.Q_flow) annotation(Line(points = {{16,-40},{21,-40},{20,-40},{25,-40}}, color = {0,0,127}, thickness = 0.0625));
				connect(booleanToReal_heat.u,heater_on) annotation(Line(points = {{-42,0},{-47,0},{-100,0},{-105,0}}, color = {255,0,255}, thickness = 0.0625));
				connect(booleanToReal_heat.y,heating_power.u) annotation(Line(points = {{-19,0},{-14,0},{-12,0},{-7,0}}, color = {0,0,127}, thickness = 0.0625));
				connect(booleanToReal_cool.u,cooler_on) annotation(Line(points = {{-42,-40},{-47,-40},{-100,-40},{-105,-40}}, color = {255,0,255}, thickness = 0.0625));
				connect(booleanToReal_cool.y,cooling_power.u) annotation(Line(points = {{-19,-40},{-14,-40},{-12,-40},{-7,-40}}, color = {0,0,127}, thickness = 0.0625));
			annotation(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)),
				Icon(graphics={Rectangle(lineColor = {255,255,255}, fillColor = {255,0,0}, fillPattern = FillPattern.CrossDiag, extent = {{-100,100},{100,0}}),Rectangle(lineColor = {0,0,0}, fillColor = {0,0,255}, fillPattern = FillPattern.CrossDiag, extent = {{-100,1},{100,-99}}),Text(textString = "heater", fontSize = 12, textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, extent = {{-97,54},{100,0}}),Text(textString = "cooler", fontSize = 12, textStyle = {TextStyle.Bold}, lineColor = {255,255,255}, extent = {{-98,-2},{100,-57}}),Text(textString = "heat", fontSize = 8, lineColor = {0,0,0}, extent = {{-100,96},{-13,66}}),Text(textString = "cool", fontSize = 8, lineColor = {255,255,255}, extent = {{-102,-70},{-15,-100}}),Text(textString = "Tmin", fontSize = 8, lineColor = {0,0,0}, extent = {{0,97},{99,64}}),Text(textString = "Tmax", fontSize = 8, lineColor = {255,255,255}, extent = {{-9,-69},{99,-102}})}),
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
		model thermal_TIM_VEROSIM "thermal interfacial material parameters (Conductance)"
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
			Modelica.Icons.SignalBus Values_from_BB annotation(Placement(transformation(extent={{-20,-166},{20,-126}})));
			variable_ThermalConductor Conductance_TIM_TSS(G=h_TSS.numberPort * A_TSS.numberPort) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,10},
				extent={{-6.1349,-6.1349},{6.1349,6.1349}})));
			variable_ThermalConductor Conductance_MSS(G=h_MSS.numberPort * A_MSS.numberPort) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,-10},
				extent={{-6.0931,-6.0931},{6.0931,6.0931}})));
			variable_ThermalConductor Conductance_ESS(G=h_ESS.numberPort * A_ESS.numberPort) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={0,-30},
				extent={{-6.1934,-6.1934},{6.1934,6.1934}})));
			parameter Real ViewFactor_Rad=0.2 "Viewfactor of Radiator";
			VariableRad_VEROSIM Radiator(Gr=ViewFactor_Rad * A_Rad.numberPort * 1 / (2 / epsilon_Rad.numberPort - 1)) "Lumped thermal element for radiation heat transfer" annotation(Placement(transformation(
				origin={0,30},
				extent={{-6.25,-6.25},{6.25,6.25}})));
			Modelica.Blocks.Interaction.Show.RealValue epsilon_Rad annotation(Placement(transformation(extent={{25,-126},{45,-106}})));
			Modelica.Blocks.Interaction.Show.RealValue h_TSS annotation(Placement(transformation(extent={{25,-146},{45,-126}})));
			Modelica.Blocks.Interaction.Show.RealValue h_MSS annotation(Placement(transformation(extent={{25,-166},{45,-146}})));
			Modelica.Blocks.Interaction.Show.RealValue h_ESS annotation(Placement(transformation(extent={{25,-186},{45,-166}})));
			Modelica.Blocks.Interaction.Show.RealValue A_Rad annotation(Placement(transformation(extent={{-40,-126},{-20,-106}})));
			Modelica.Blocks.Interaction.Show.RealValue A_TSS annotation(Placement(transformation(extent={{-40,-146},{-20,-126}})));
			Modelica.Blocks.Interaction.Show.RealValue A_MSS annotation(Placement(transformation(extent={{-40,-166},{-20,-146}})));
			Modelica.Blocks.Interaction.Show.RealValue A_ESS annotation(Placement(transformation(extent={{-40,-186},{-20,-166}})));
			equation
				connect(Radiator.port_b,thermal_connector1.Rad) annotation(Line(
					points={{6.3,30},{11.3,30},{35,30},{35,0},{40,0}},
					color={191,0,0},
					visible=true,
					origin={19.5679,5.309}));
				connect(thermal_connector2.Rad,Radiator.port_a) annotation(Line(
					points={{-40,0},{-35,0},{-11.3,0},{-11.3,30},{-6.3,30}},
					color={191,0,0},
					visible=true,
					origin={-26.4466,22.485}));
				connect(thermal_connector2.TSS,Conductance_TIM_TSS.port_a) annotation(Line(
					points={{-40,0},{-35,0},{-11,0},{-11,10},{-6,10}},
					color={191,0,0},
					visible=true,
					origin={-15.2265,6.2513}));
				connect(Conductance_TIM_TSS.port_b,thermal_connector1.TSS) annotation(Line(
					points={{6,10},{11,10},{35,10},{35,0},{40,0}},
					color={191,0,0},
					visible=true,
					origin={24.159,3.7486}));
				connect(thermal_connector2.MSS,Conductance_MSS.port_a) annotation(Line(
					points={{-40,0},{-35,0},{-11,0},{-11,-10},{-6,-10}},
					color={191,0,0},
					visible=true,
					origin={-15.1875,-6.2673}));
				connect(thermal_connector1.MSS,Conductance_MSS.port_b) annotation(Line(
					points={{40,0},{35,0},{11,0},{11,-10},{6,-10}},
					color={191,0,0},
					visible=true,
					origin={15.1875,-3.7327}));
				connect(thermal_connector2.ESS,Conductance_ESS.port_a) annotation(Line(
					points={{-40,0},{-35,0},{-11.3,0},{-11.3,-30},{-6.3,-30}},
					color={191,0,0},
					visible=true,
					origin={-26.3625,-22.5122}));
				connect(thermal_connector1.ESS,Conductance_ESS.port_b) annotation(Line(
					points={{40,0},{35,0},{11.3,0},{11.3,-30},{6.3,-30}},
					color={191,0,0},
					visible=true,
					origin={19.4949,-5.2927}));
				connect(A_Rad.numberPort,Values_from_BB.A_Rad) annotation(Line(
					points={{-41.3,-116},{-46.3,-116},{-46.3,-146},{-5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_MSS.numberPort,Values_from_BB.A_MSS) annotation(Line(
					points={{-41.3,-156},{-46.3,-156},{-46.3,-146},{-5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_TSS.numberPort,Values_from_BB.A_TSS) annotation(Line(
					points={{-41.3,-136},{-46.3,-136},{-46.3,-146},{-5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_ESS.numberPort,Values_from_BB.A_ESS) annotation(Line(
					points={{-41.3,-176},{-46.3,-176},{-46.3,-146},{-5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_Rad.numberPort,Values_from_BB.epsilon_Rad) annotation(Line(
					points={{23.7,-116},{18.7,-116},{5,-116},{5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(h_TSS.numberPort,Values_from_BB.h_TSS) annotation(Line(
					points={{23.7,-136},{18.7,-136},{5,-136},{5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(h_MSS.numberPort,Values_from_BB.h_MSS) annotation(Line(
					points={{23.7,-156},{18.7,-156},{5,-156},{5,-146},{0,-146}},
					color={0,0,127},
					thickness=0.0625));
				connect(h_ESS.numberPort,Values_from_BB.h_ESS) annotation(Line(
					points={{23.7,-176},{18.7,-176},{5,-176},{5,-146},{0,-146}},
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
		end thermal_TIM_VEROSIM;
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
			Modelica.Blocks.Sources.TimeTable timeTable1(
				table=illumination,
				offset=0) annotation(Placement(transformation(extent={{-95,-5},{-75,15}})));
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
				connect(timeTable1.y,factor_TSS.u) annotation(Line(points = {{-74,5},{-69,5},{-42,5},{-42,50},{-37,50}}, color = {0,0,127}, thickness = 0.0625));
				connect(timeTable1.y,factor_MSS.u) annotation(Line(points = {{-74,5},{-69,5},{-42,5},{-42,20},{-37,20}}, color = {0,0,127}, thickness = 0.0625));
				connect(factor_Rad.y,HeatFlow_Rad.Q_flow) annotation(Line(points = {{-14,-40},{-9,-40},{5,-40},{10,-40}}, color = {0,0,127}, thickness = 0.0625));
				connect(factor_ESS.y,HeatFlow_ESS.Q_flow) annotation(Line(points = {{-14,-10},{-9,-10},{5,-10},{10,-10}}, color = {0,0,127}, thickness = 0.0625));
				connect(factor_MSS.y,HeatFlow_MSS.Q_flow) annotation(Line(points = {{-14,20},{-9,20},{5,20},{10,20}}, color = {0,0,127}, thickness = 0.0625));
				connect(factor_TSS.y,HeatFlow_TSS.Q_flow) annotation(Line(points = {{-14,50},{-9,50},{5,50},{10,50}}, color = {0,0,127}, thickness = 0.0625));
				connect(fixedTemperature1.port,bodyRadiation_TSS.port_b) annotation(Line(points = {{165,5},{160,5},{145,5},{145,50},{140,50}}, color = {191,0,0}, thickness = 0.0625));
				connect(fixedTemperature1.port,bodyRadiation_MSS.port_b) annotation(Line(points = {{165,5},{160,5},{145,5},{145,20},{140,20}}, color = {191,0,0}, thickness = 0.0625));
				connect(fixedTemperature1.port,bodyRadiation_ESS.port_b) annotation(Line(points = {{165,5},{160,5},{145,5},{145,-10},{140,-10}}, color = {191,0,0}, thickness = 0.0625));
				connect(fixedTemperature1.port,bodyRadiation_Rad.port_b) annotation(Line(points = {{165,5},{160,5},{145,5},{145,-40},{140,-40}}, color = {191,0,0}, thickness = 0.0625));
				connect(timeTable1.y,factor_ESS.u) annotation(Line(points = {{-74,5},{-69,5},{-42,5},{-42,-10},{-37,-10}}, color = {0,0,127}, thickness = 0.0625));
				connect(timeTable1.y,factor_Rad.u) annotation(Line(points = {{-74,5},{-69,5},{-42,5},{-42,-40},{-37,-40}}, color = {0,0,127}, thickness = 0.0625));
				connect(bodyRadiation_ESS.port_a,thermal_connector_env.ESS) annotation(Line(points = {{120,-10},{115,-10},{95,-10},{95,10},{90,10}}));
				connect(bodyRadiation_MSS.port_a,thermal_connector_env.MSS) annotation(Line(points = {{120,20},{115,20},{95,20},{95,10},{90,10}}));
				connect(bodyRadiation_TSS.port_a,thermal_connector_env.TSS) annotation(Line(points = {{120,50},{115,50},{95,50},{95,10},{90,10}}));
				connect(bodyRadiation_Rad.port_a,thermal_connector_env.Rad) annotation(Line(points = {{120,-40},{115,-40},{95,-40},{95,10},{90,10}}));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points = {{30,-10},{35,-10},{85,-10},{85,10},{90,10}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points = {{30,20},{35,20},{85,20},{85,10},{90,10}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points = {{30,50},{35,50},{85,50},{85,10},{90,10}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points = {{30,-40},{35,-40},{85,-40},{85,10},{90,10}}));
			annotation(
				Icon(graphics={Rectangle(lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-100,100},{100,-100}}),Ellipse(lineColor = {0,0,0}, fillColor = {255,255,0}, fillPattern = FillPattern.Solid, extent = {{98,-96},{-96,98}})}),
				experiment(
					StopTime=10,
					StartTime=0));
		end environment;
		model environment_VEROSIM "environment_VEROSIM"
			parameter Real illumination[:,2]=[0,0;1,1];
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{10,40},{30,60}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{10,10},{30,30}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{10,-20},{30,0}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{10,-50},{30,-30}})));
			variable_Gain factor_Rad(k=A_Rad.numberPort * alpha_Rad.numberPort / (A_Rad.numberPort+A_TSS.numberPort+A_MSS.numberPort+A_ESS.numberPort)) annotation(Placement(transformation(extent={{-35,-50},{-15,-30}})));
			Modelica.Blocks.Sources.TimeTable timeTable1(
				table=illumination,
				offset=0) annotation(Placement(transformation(extent={{-95,-5},{-75,15}})));
			variable_Gain factor_TSS(k=A_TSS.numberPort * alpha_TSS.numberPort / (A_Rad.numberPort+A_TSS.numberPort+A_MSS.numberPort+A_ESS.numberPort)) annotation(Placement(transformation(extent={{-35,40},{-15,60}})));
			variable_Gain factor_MSS(k=A_MSS.numberPort * alpha_MSS.numberPort / (A_Rad.numberPort+A_TSS.numberPort+A_MSS.numberPort+A_ESS.numberPort)) annotation(Placement(transformation(extent={{-35,10},{-15,30}})));
			variable_Gain factor_ESS(k=A_ESS.numberPort * alpha_ESS.numberPort / (A_Rad.numberPort+A_TSS.numberPort+A_MSS.numberPort+A_ESS.numberPort)) annotation(Placement(transformation(extent={{-35,-20},{-15,0}})));
			VariableRad_VEROSIM bodyRadiation_Rad(Gr=epsilon_Rad.numberPort * A_Rad.numberPort) annotation(Placement(transformation(
				origin={130,-40},
				extent={{-10,-10},{10,10}})));
			VariableRad_VEROSIM bodyRadiation_TSS(Gr=epsilon_TSS.numberPort * A_TSS.numberPort) annotation(Placement(transformation(
				origin={130,50},
				extent={{-10,-10},{10,10}})));
			VariableRad_VEROSIM bodyRadiation_MSS(Gr=epsilon_MSS.numberPort * A_MSS.numberPort) annotation(Placement(transformation(
				origin={130,20},
				extent={{-10,-10},{10,10}})));
			VariableRad_VEROSIM bodyRadiation_ESS(Gr=epsilon_ESS.numberPort * A_ESS.numberPort) annotation(Placement(transformation(
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
			Modelica.Icons.SignalBus Values_from_BB annotation(Placement(transformation(extent={{-60,-150},{-20,-110}})));
			Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
				origin={175,5},
				extent={{10,10},{-10,-10}},
				rotation=180)));
			Modelica.Blocks.Interaction.Show.RealValue A_Rad annotation(Placement(transformation(extent={{-80,-110},{-60,-90}})));
			Modelica.Blocks.Interaction.Show.RealValue A_TSS annotation(Placement(transformation(extent={{-80,-130},{-60,-110}})));
			Modelica.Blocks.Interaction.Show.RealValue A_MSS annotation(Placement(transformation(extent={{-80,-150},{-60,-130}})));
			Modelica.Blocks.Interaction.Show.RealValue A_ESS annotation(Placement(transformation(extent={{-80,-170},{-60,-150}})));
			Modelica.Blocks.Interaction.Show.RealValue alpha_Rad annotation(Placement(transformation(extent={{-20,-110},{0,-90}})));
			Modelica.Blocks.Interaction.Show.RealValue alpha_TSS annotation(Placement(transformation(extent={{-20,-130},{0,-110}})));
			Modelica.Blocks.Interaction.Show.RealValue alpha_MSS annotation(Placement(transformation(extent={{-20,-150},{0,-130}})));
			Modelica.Blocks.Interaction.Show.RealValue alpha_ESS annotation(Placement(transformation(extent={{-20,-170},{0,-150}})));
			Modelica.Blocks.Interaction.Show.RealValue epsilon_Rad annotation(Placement(transformation(extent={{15,-110},{35,-90}})));
			Modelica.Blocks.Interaction.Show.RealValue epsilon_TSS annotation(Placement(transformation(extent={{15,-130},{35,-110}})));
			Modelica.Blocks.Interaction.Show.RealValue epsilon_MSS annotation(Placement(transformation(extent={{15,-150},{35,-130}})));
			Modelica.Blocks.Interaction.Show.RealValue epsilon_ESS annotation(Placement(transformation(extent={{15,-170},{35,-150}})));
			equation
				connect(timeTable1.y,factor_TSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,50},{-37,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y,factor_MSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,20},{-37,20}},
					color={0,0,127},
					thickness=0.0625));
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
				connect(timeTable1.y,factor_ESS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-10},{-37,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y,factor_Rad.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-40},{-37,-40}},
					color={0,0,127},
					thickness=0.0625));
				connect(bodyRadiation_ESS.port_a,thermal_connector_env.ESS) annotation(Line(points={{120,-10},{115,-10},{95,-10},{95,10},{90,10}}));
				connect(bodyRadiation_MSS.port_a,thermal_connector_env.MSS) annotation(Line(points={{120,20},{115,20},{95,20},{95,10},{90,10}}));
				connect(bodyRadiation_TSS.port_a,thermal_connector_env.TSS) annotation(Line(points={{120,50},{115,50},{95,50},{95,10},{90,10}}));
				connect(bodyRadiation_Rad.port_a,thermal_connector_env.Rad) annotation(Line(points={{120,-40},{115,-40},{95,-40},{95,10},{90,10}}));
				connect(HeatFlow_ESS.port,thermal_connector_env.ESS) annotation(Line(points={{30,-10},{35,-10},{85,-10},{85,10},{90,10}}));
				connect(HeatFlow_MSS.port,thermal_connector_env.MSS) annotation(Line(points={{30,20},{35,20},{85,20},{85,10},{90,10}}));
				connect(HeatFlow_TSS.port,thermal_connector_env.TSS) annotation(Line(points={{30,50},{35,50},{85,50},{85,10},{90,10}}));
				connect(HeatFlow_Rad.port,thermal_connector_env.Rad) annotation(Line(points={{30,-40},{35,-40},{85,-40},{85,10},{90,10}}));
				connect(A_Rad.numberPort,Values_from_BB.A_Rad) annotation(Line(
					points={{-81.3,-100},{-86.3,-100},{-86.3,-130},{-45,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_TSS.numberPort,Values_from_BB.A_TSS) annotation(Line(
					points={{-81.3,-120},{-86.3,-120},{-86.3,-130},{-45,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_MSS.numberPort,Values_from_BB.A_MSS) annotation(Line(
					points={{-81.3,-140},{-86.3,-140},{-86.3,-130},{-45,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_ESS.numberPort,Values_from_BB.A_ESS) annotation(Line(
					points={{-81.3,-160},{-86.3,-160},{-86.3,-130},{-45,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_Rad.numberPort,Values_from_BB.alpha_Rad) annotation(Line(
					points={{-21.3,-100},{-26.3,-100},{-35,-100},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_TSS.numberPort,Values_from_BB.alpha_TSS) annotation(Line(
					points={{-21.3,-120},{-26.3,-120},{-35,-120},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_MSS.numberPort,Values_from_BB.alpha_MSS) annotation(Line(
					points={{-21.3,-140},{-26.3,-140},{-35,-140},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_ESS.numberPort,Values_from_BB.alpha_ESS) annotation(Line(
					points={{-21.3,-160},{-26.3,-160},{-35,-160},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_Rad.numberPort,Values_from_BB.epsilon_Rad) annotation(Line(
					points={{13.7,-100},{8.699999999999999,-100},{-35,-100},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_TSS.numberPort,Values_from_BB.epsilon_TSS) annotation(Line(
					points={{13.7,-120},{8.699999999999999,-120},{-35,-120},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_MSS.numberPort,Values_from_BB.epsilon_MSS) annotation(Line(
					points={{13.7,-140},{8.699999999999999,-140},{-35,-140},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_ESS.numberPort,Values_from_BB.epsilon_ESS) annotation(Line(
					points={{13.7,-160},{8.699999999999999,-160},{-35,-160},{-35,-130},{-40,-130}},
					color={0,0,127},
					thickness=0.0625));
			annotation(experiment(
				StopTime=1,
				StartTime=0));
		end environment_VEROSIM;
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
			Modelica.Blocks.Sources.TimeTable timeTable1(
				table=illumination,
				offset=0) annotation(Placement(transformation(extent={{-95,-5},{-75,15}})));
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
				fileName="/home/jens/iBOSS2/Simulation_Linux/ibosssim/model/iboss/thermochrom_alpha_epsilon.txt") annotation(Placement(transformation(extent={{135,-80},{155,-60}})));
			Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor_Radiator annotation(Placement(transformation(extent={{100,-80},{120,-60}})));
			Modelica.Blocks.Math.Gain factor_Area_Rad(k=effective_area_Rad) annotation(Placement(transformation(extent={{180,-80},{200,-60}})));
			Modelica.Blocks.Math.Gain factor_effective_Area_Rad(k=effective_area_Rad  / effective_area_total) annotation(Placement(transformation(
				origin={60,-95},
				extent={{-10,-10},{10,10}},
				rotation=-180)));
			equation
				connect(timeTable1.y,factor_TSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,50},{-37,50}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y,factor_MSS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,20},{-37,20}},
					color={0,0,127},
					thickness=0.0625));
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
				connect(timeTable1.y,factor_ESS.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-10},{-37,-10}},
					color={0,0,127},
					thickness=0.0625));
				connect(timeTable1.y,factor_Rad.u) annotation(Line(
					points={{-74,5},{-69,5},{-42,5},{-42,-40},{-37,-40}},
					color={0,0,127},
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
				connect(factor_Area_Rad.y,bodyRadiation_Rad.u) annotation(Line(
					points={{201,-70},{206,-70},{206,-26},{130,-26},{130,-31}},
					color={0,0,127},
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
			discrete Real k(unit="1")=k_gain "Gain value multiplied with input signal";
			input Modelica.Blocks.Interfaces.RealInput k_gain annotation(Placement(transformation(
				origin={0,90},
				extent={{-20,-20},{20,20}},
				rotation=-90)));
			input Modelica.Blocks.Interfaces.RealInput u "Input signal connector" annotation(Placement(transformation(extent={{-140,-20},{-100,20}})));
			output Modelica.Blocks.Interfaces.RealOutput y "Output signal connector" annotation(Placement(transformation(extent={{100,-10},{120,10}})));
			equation
				y = k*u;
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
		model VariableRad "the same like the BodyRadiation class from Modelica, but with Gr as discrete"
			extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
			discrete Real Gr(unit="m2")=u "Net radiation conductance between two surfaces (see docu)";
			input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(
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
		model VariableRad_VEROSIM "the same like the BodyRadiation class from Modelica, but with Gr as discrete"
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
		end VariableRad_VEROSIM;
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
		model OnOffController_noEvent "On-off controller"
			extends Modelica.Blocks.Icons.PartialBooleanBlock;
			input Modelica.Blocks.Interfaces.RealInput reference "Connector of Real input signal used as reference signal" annotation(Placement(transformation(extent={{-140,80},{-100,40}})));
			input Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal used as measurement signal" annotation(Placement(transformation(extent={{-140,-40},{-100,-80}})));
			output Modelica.Blocks.Interfaces.BooleanOutput y "Connector of Real output signal used as actuator signal" annotation(Placement(transformation(extent={{100,-10},{120,10}})));
			parameter Real bandwidth(start=0.1) "Bandwidth around reference signal";
			parameter Boolean pre_y_start=false "Value of pre(y) at initial time";
			initial equation
				pre(y) = pre_y_start;
			equation
				y = noEvent(pre(y) and (u < reference + bandwidth/2) or (u < reference - bandwidth/
				  2));
			annotation(
				Icon(graphics={
												Text(
												textString="reference",
												lineThickness=0.5,
												extent={{-92,74},{44,44}}),
											Text(
												textString="u",
												extent={{-94,-52},{-34,-74}}),
											Line(
												points={{-76,-32},{-68,-6},{-50,26},{-24,40},{-2,42},{16,
												36},{32,28},{48,12},{58,-6},{68,-28}},
												color={0,0,127}),
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
												color={255,0,255})}),
				Documentation(info="<html>
<p>The block OnOffController sets the output signal <b>y</b> to <b>true</b> when
the input signal <b>u</b> falls below the <b>reference</b> signal minus half of
the bandwidth and sets the output signal <b>y</b> to <b>false</b> when the input
signal <b>u</b> exceeds the <b>reference</b> signal plus half of the bandwidth.</p>
</html>"));
		end OnOffController_noEvent;
	end components;
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
			intra_BuildingBlock_connector adjoiningPanel_xp_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={266,-161},
				extent={{-5.8179,-5.8179},{8,7}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xp_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={226,-1},
				extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
			intra_BuildingBlock_connector adjoiningPanel_xp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={275,-45},
				extent={{-4.7981,-4.7981},{4.7981,4.7981}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_xp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={252,-187},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={67,-167},
				extent={{-6.5445,-6.5445},{6.5445,6.5445}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,-46},
				extent={{-6.2294,-6.2294},{6.2294,6.2294}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,14},
				extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
			intra_BuildingBlock_connector adjoiningPanel_xn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={51,-151},
				extent={{-5.8783,-5.8783},{5.8783,5.8783}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={281,-129},
				extent={{-7,-13},{4,1}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={126,-184},
				extent={{-5.778,-5.778},{4,4}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={176,19},
				extent={{-6.2539,-6.2539},{4,6}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={81,-61},
				extent={{-6.1458,-6.1458},{6,10}},
				rotation=-90)));
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
					bandwidth_cooler=bandwidth_cooler,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{-80,-5},{-60,15}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary=lower_Temp_boundary,
					bandwidth_cooler=bandwidth_cooler,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{-45,-35},{-25,-15}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(Line(points = {{288.6666564941406,24.66666412353516},{300,35}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(Line(points = {{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(points = {{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(points = {{41.33332824707031,-217.6666564941406},{10,-250}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(points = {{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(points = {{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}}, thickness = 0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(points = {{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(points = {{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}}, thickness = 0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(points = {{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(points = {{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(points = {{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}}, thickness = 0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(points = {{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}}, thickness = 0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(Line(points = {{162.6666564941406,-97.66667175292969},{110,-45}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(points = {{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(Line(points = {{205.6666564941406,-56},{281.3333435058594,17.33333587646484}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(points = {{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(points = {{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(Line(points = {{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(points = {{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(points = {{168.3,-198},{173.3,-198},{266.7,-198},{266.7,-174},{266.7,-169}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(points = {{266.7,-155.3},{266.7,-150.3},{266.7,-108.7},{269,-108.7},{269,-103.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(points = {{232.3,-1},{237.3,-1},{268,-1},{268,-86.7},{268,-91.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(points = {{168.7,-3},{173.7,-3},{214.7,-3},{214.7,-1},{219.7,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(points = {{66,-91.3},{66,-86.3},{66,-57.3},{66,-52.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(points = {{67,-103.3},{67,-108.3},{67,-155.3},{67,-160.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(points = {{67,-173.7},{67,-178.7},{67,-199},{151.3,-199},{156.3,-199}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(points = {{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(Line(points = {{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(points = {{263,-103.7},{258,-103.7},{252,-103.7},{252,-174.3},{252,-179.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(points = {{275,-40.3},{275,-35.3},{275,10},{277.7,10},{282.7,10}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(points = {{275,-91.7},{275,-86.7},{275,-54.7},{275,-49.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(points = {{51,-157},{51,-162},{52.3,-162},{52.3,-203},{47.3,-203}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(points = {{51,-145},{51,-140},{77,-140},{77,-91.3},{72,-91.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(Line(points = {{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(points = {{59.7,14},{54.7,14},{54.7,-108.3},{60,-108.3},{60,-103.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(Line(points = {{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(points = {{83,-67},{83,-72},{83,-215.3},{57,-215.3},{52,-215.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(points = {{120.3,-185},{115.3,-185},{48,-185},{48,-207.3},{43,-207.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(points = {{130,-185},{135,-185},{156.3,-185},{156.3,-188},{156.3,-193}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(points = {{287,14.3},{282,14.3},{282,-52.7},{287,-52.7},{287,-120},{287,-125}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(points = {{287,-136},{287,-141},{287,-205},{173.3,-205},{168.3,-205}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(Line(points = {{278,22},{278,20},{232,20},{232,19},{185,19},{180,19}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(points = {{156.7,2.3},{151.7,2.3},{151.7,19},{164.7,19},{169.7,19}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(points = {{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(points = {{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(points = {{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(Line(points = {{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,-72}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(Line(points = {{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(Line(points = {{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(fixedHeatFlow1.port,port_b) annotation(Line(points = {{20,10},{25,10},{105,10},{105,-45},{110,-45}}, color = {191,0,0}, thickness = 0.0625));
				connect(tCS1.cooler_on,heater_cooler_EPS1.cooler_on) annotation(Line(points = {{-65,-5},{-65,-10},{-65,-30},{-50,-30},{-45,-30}}, color = {255,0,255}, thickness = 0.0625));
				connect(heater_cooler_EPS1.heater_on,tCS1.heater_on) annotation(Line(points = {{-45,-20},{-50,-20},{-75,-20},{-75,-10},{-75,-5}}, color = {255,0,255}, thickness = 0.0625));
				connect(tCS1.Tmax,heater_cooler_EPS1.Tmax) annotation(Line(points = {{-65,15},{-65,30},{-15,30},{-15,-30},{-25,-30}}, color = {0,0,127}, thickness = 0.0625), AutoRoute = false);
				connect(heater_cooler_EPS1.Tmin,tCS1.Tmin) annotation(Line(points = {{-25,-20},{-20,-20},{-20,20},{-75,20},{-75,15}}, color = {0,0,127}, thickness = 0.0625));
				connect(port_b,tCS1.Temp) annotation(Line(points = {{110,-45},{105,-45},{-85,-45},{-85,5},{-80,5}}, color = {191,0,0}, thickness = 0.0625));
				connect(heater_cooler_EPS1.Power_heating_cooling,port_b) annotation(Line(points = {{-35,-15},{-35,-10},{35,-10},{35,-45},{105,-45},{110,-45}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				fixedHeatFlow1(port(Q_flow(flags=2))),
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
				Icon(graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10,-50},{10,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10.2751,-50},{9.7249,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, lineThickness = 2, extent = {{-80,-80},{80,80}}),Text(textString = "%name", textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-78.4853,-65.6671},{78.4853,-25.6671}}),Text(textString = "yp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.0277,70.2527},{14.7787,93.1585}}),Text(textString = "yn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.3028,-89.8573},{14.5036,-66.9515}}),Text(textString = "xp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{67.47709999999999,-10.6276},{94.2835,12.2782}}),Text(textString = "xn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),Text(textString = "zp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),Text(textString = "zn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
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
			intra_BuildingBlock_connector adjoiningPanel_xp_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={266,-161},
				extent={{-5.8179,-5.8179},{8,7}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xp_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={226,-1},
				extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
			intra_BuildingBlock_connector adjoiningPanel_xp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={275,-45},
				extent={{-4.7981,-4.7981},{4.7981,4.7981}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_xp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={252,-187},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={67,-167},
				extent={{-6.5445,-6.5445},{6.5445,6.5445}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,-46},
				extent={{-6.2294,-6.2294},{6.2294,6.2294}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,14},
				extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
			intra_BuildingBlock_connector adjoiningPanel_xn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={51,-151},
				extent={{-5.8783,-5.8783},{5.8783,5.8783}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={281,-129},
				extent={{-7,-13},{4,1}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={126,-184},
				extent={{-5.778,-5.778},{4,4}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={176,19},
				extent={{-6.2539,-6.2539},{4,6}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={81,-61},
				extent={{-6.1458,-6.1458},{6,10}},
				rotation=-90)));
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
				TCS tCS1(
					bandwidth_cooler=bandwidth_cooler,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{-75,-15},{-55,5}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary=lower_Temp_boundary,
					bandwidth_cooler=bandwidth_cooler,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{-40,-35},{-20,-15}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(Line(points = {{288.6666564941406,24.66666412353516},{300,35}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(Line(points = {{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(points = {{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(points = {{41.33332824707031,-217.6666564941406},{10,-250}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(points = {{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(points = {{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}}, thickness = 0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(points = {{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(points = {{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}}, thickness = 0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(points = {{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(points = {{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(points = {{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}}, thickness = 0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(points = {{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}}, thickness = 0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(Line(points = {{162.6666564941406,-97.66667175292969},{110,-45}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(points = {{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(Line(points = {{205.6666564941406,-56},{281.3333435058594,17.33333587646484}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(points = {{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(points = {{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(Line(points = {{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(points = {{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(points = {{168.3,-198},{173.3,-198},{266.7,-198},{266.7,-174},{266.7,-169}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(points = {{266.7,-155.3},{266.7,-150.3},{266.7,-108.7},{269,-108.7},{269,-103.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(points = {{232.3,-1},{237.3,-1},{268,-1},{268,-86.7},{268,-91.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(points = {{168.7,-3},{173.7,-3},{214.7,-3},{214.7,-1},{219.7,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(points = {{66,-91.3},{66,-86.3},{66,-57.3},{66,-52.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(points = {{67,-103.3},{67,-108.3},{67,-155.3},{67,-160.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(points = {{67,-173.7},{67,-178.7},{67,-199},{151.3,-199},{156.3,-199}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(points = {{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(Line(points = {{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(points = {{263,-103.7},{258,-103.7},{252,-103.7},{252,-174.3},{252,-179.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(points = {{275,-40.3},{275,-35.3},{275,10},{277.7,10},{282.7,10}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(points = {{275,-91.7},{275,-86.7},{275,-54.7},{275,-49.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(points = {{51,-157},{51,-162},{52.3,-162},{52.3,-203},{47.3,-203}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(points = {{51,-145},{51,-140},{77,-140},{77,-91.3},{72,-91.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(Line(points = {{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(points = {{59.7,14},{54.7,14},{54.7,-108.3},{60,-108.3},{60,-103.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(Line(points = {{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(points = {{83,-67},{83,-72},{83,-215.3},{57,-215.3},{52,-215.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(points = {{120.3,-185},{115.3,-185},{48,-185},{48,-207.3},{43,-207.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(points = {{130,-185},{135,-185},{156.3,-185},{156.3,-188},{156.3,-193}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(points = {{287,14.3},{282,14.3},{282,-52.7},{287,-52.7},{287,-120},{287,-125}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(points = {{287,-136},{287,-141},{287,-205},{173.3,-205},{168.3,-205}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(Line(points = {{278,22},{278,20},{232,20},{232,19},{185,19},{180,19}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(points = {{156.7,2.3},{151.7,2.3},{151.7,19},{164.7,19},{169.7,19}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(points = {{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(points = {{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(points = {{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(Line(points = {{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,-72}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(Line(points = {{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(Line(points = {{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(tCS1.cooler_on,heater_cooler_EPS1.cooler_on) annotation(Line(points = {{-60,-15},{-60,-20},{-60,-30},{-45,-30},{-40,-30}}, color = {255,0,255}, thickness = 0.0625));
				connect(heater_cooler_EPS1.heater_on,tCS1.heater_on) annotation(Line(points = {{-40,-20},{-45,-20},{-70,-20},{-70,-15}}, color = {255,0,255}, thickness = 0.0625));
				connect(heater_cooler_EPS1.Tmin,tCS1.Tmin) annotation(Line(points = {{-20,-20},{-15,-20},{-15,10},{-70,10},{-70,5}}, color = {0,0,127}, thickness = 0.0625));
				connect(heater_cooler_EPS1.Tmax,tCS1.Tmax) annotation(Line(points = {{-20,-30},{5,-30},{5,25},{-60,25},{-60,5}}, color = {0,0,127}, thickness = 0.0625), AutoRoute = false);
				connect(tCS1.Temp,port_b) annotation(Line(points = {{-75,-5},{-80,-5},{-80,-45},{105,-45},{110,-45}}, color = {191,0,0}, thickness = 0.0625));
				connect(heater_cooler_EPS1.Power_heating_cooling,port_b) annotation(Line(points = {{-30,-15},{-30,-10},{37.3,-10},{37.3,-45},{105,-45},{110,-45}}, color = {191,0,0}, thickness = 0.0625));
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
				Icon(graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10,-50},{10,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10.2751,-50},{9.7249,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, lineThickness = 2, extent = {{-80,-80},{80,80}}),Text(textString = "%name", textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-78.4853,-65.6671},{78.4853,-25.6671}}),Text(textString = "yp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.0277,70.2527},{14.7787,93.1585}}),Text(textString = "yn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.3028,-89.8573},{14.5036,-66.9515}}),Text(textString = "xp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{67.47709999999999,-10.6276},{94.2835,12.2782}}),Text(textString = "xn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),Text(textString = "zp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),Text(textString = "zn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
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
			intra_BuildingBlock_connector adjoiningPanel_xp_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={266,-161},
				extent={{-5.8179,-5.8179},{8,7}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xp_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={226,-1},
				extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
			intra_BuildingBlock_connector adjoiningPanel_xp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={275,-45},
				extent={{-4.7981,-4.7981},{4.7981,4.7981}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_xp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={252,-187},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={67,-167},
				extent={{-6.5445,-6.5445},{6.5445,6.5445}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,-46},
				extent={{-6.2294,-6.2294},{6.2294,6.2294}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,14},
				extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
			intra_BuildingBlock_connector adjoiningPanel_xn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={51,-151},
				extent={{-5.8783,-5.8783},{5.8783,5.8783}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={281,-129},
				extent={{-7,-13},{4,1}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={126,-184},
				extent={{-5.778,-5.778},{4,4}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={176,19},
				extent={{-6.2539,-6.2539},{4,6}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={81,-61},
				extent={{-6.1458,-6.1458},{6,10}},
				rotation=-90)));
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
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(Line(points = {{288.6666564941406,24.66666412353516},{300,35}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(Line(points = {{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(points = {{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(points = {{41.33332824707031,-217.6666564941406},{10,-250}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(points = {{161,-134.7},{161,-129.7},{161,-120},{162.7,-120},{162.7,-115}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(points = {{162.3,-207.7},{162.3,-212.7},{165,-212.7},{165,-235},{160,-235}}, thickness = 0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(points = {{200.3,-97},{195.3,-97},{185,-97},{185,-97.7},{180,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(points = {{277.7,-97.7},{282.7,-97.7},{320,-97.7},{320,-95},{325,-95}}, thickness = 0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(points = {{122.3,-97.3},{127.3,-97.3},{140,-97.3},{140,-97.7},{145,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(points = {{162,-58.7},{162,-63.7},{162,-75},{162.7,-75},{162.7,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(points = {{162.3,4.7},{162.3,9.699999999999999},{160,9.699999999999999},{160,35},{165,35}}, thickness = 0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(points = {{57.3,-97.3},{52.3,-97.3},{20,-97.3},{20,-95},{15,-95}}, thickness = 0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(Line(points = {{162.6666564941406,-97.66667175292969},{110,-45}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(points = {{162.3,-4.7},{162.3,-9.699999999999999},{162.3,-40.3},{162,-40.3},{162,-45.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(Line(points = {{205.6666564941406,-56},{281.3333435058594,17.33333587646484}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(points = {{213.7,-97},{218.7,-97},{262.3,-97},{262.3,-97.7},{267.3,-97.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(points = {{162.3,-197.3},{162.3,-192.3},{162.3,-152.3},{161,-152.3},{161,-147.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(Line(points = {{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(points = {{67.7,-97.3},{72.7,-97.3},{105,-97.3},{110,-97.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(points = {{168.3,-198},{173.3,-198},{266.7,-198},{266.7,-174},{266.7,-169}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(points = {{266.7,-155.3},{266.7,-150.3},{266.7,-108.7},{269,-108.7},{269,-103.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(points = {{232.3,-1},{237.3,-1},{268,-1},{268,-86.7},{268,-91.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(points = {{168.7,-3},{173.7,-3},{214.7,-3},{214.7,-1},{219.7,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(points = {{66,-91.3},{66,-86.3},{66,-57.3},{66,-52.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(points = {{67,-103.3},{67,-108.3},{67,-155.3},{67,-160.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(points = {{67,-173.7},{67,-178.7},{67,-199},{151.3,-199},{156.3,-199}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(points = {{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(Line(points = {{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(points = {{263,-103.7},{258,-103.7},{252,-103.7},{252,-174.3},{252,-179.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(points = {{275,-40.3},{275,-35.3},{275,10},{277.7,10},{282.7,10}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(points = {{275,-91.7},{275,-86.7},{275,-54.7},{275,-49.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(points = {{51,-157},{51,-162},{52.3,-162},{52.3,-203},{47.3,-203}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(points = {{51,-145},{51,-140},{77,-140},{77,-91.3},{72,-91.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(Line(points = {{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(points = {{59.7,14},{54.7,14},{54.7,-108.3},{60,-108.3},{60,-103.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(Line(points = {{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(points = {{83,-67},{83,-72},{83,-215.3},{57,-215.3},{52,-215.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(points = {{120.3,-185},{115.3,-185},{48,-185},{48,-207.3},{43,-207.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(points = {{130,-185},{135,-185},{156.3,-185},{156.3,-188},{156.3,-193}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(points = {{287,14.3},{282,14.3},{282,-52.7},{287,-52.7},{287,-120},{287,-125}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(points = {{287,-136},{287,-141},{287,-205},{173.3,-205},{168.3,-205}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(Line(points = {{278,22},{278,20},{232,20},{232,19},{185,19},{180,19}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(points = {{156.7,2.3},{151.7,2.3},{151.7,19},{164.7,19},{169.7,19}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(points = {{162.3,-197.3},{162.3,-192.3},{162.3,-172},{186,-172},{186,-167}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(points = {{186,-155},{186,-150},{186,-9.699999999999999},{162.3,-9.699999999999999},{162.3,-4.7}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(points = {{110.3,-72},{105.3,-72},{72.7,-72},{72.7,-97.3},{67.7,-97.3}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(Line(points = {{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,-72}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(Line(points = {{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(Line(points = {{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
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
		model thermal_for_verosim "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen fuer den FMU export"
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
			thermal_connector thermal_connector_zn annotation(Placement(
				transformation(
					origin={300,35},
					extent={{-10,-10},{10,10}},
					rotation=-360),
				iconTransformation(
					origin={87.8378,87.8378},
					extent={{-12,-12},{12,12}})));
			Modelica.Icons.SignalBus Values_xn annotation(Placement(transformation(extent={{-130,-150},{-90,-110}})));
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
			parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Flaeche des Radiators tbd";
			parameter Modelica.SIunits.Area effective_area_TSS=0.005 "Flaeche der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilonRad=0.56 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilonTSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilonMSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilonESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			parameter Modelica.SIunits.Emissivity alphaRad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alphaTSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alphaMSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alphaESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Real hTSS(unit="W/(m³·K)")=300 "Heat transfer coefficient TSS - TSS";
			parameter Real hMSS(unit="W/(m³·K)")=190 "Heat transfer coefficient MSS - MSS";
			parameter Real hESS(unit="W/(m³·K)")=240 "Heat transfer coefficient ESS - ESS";
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
			intra_BuildingBlock_connector adjoiningPanel_xp_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={266,-161},
				extent={{-5.8179,-5.8179},{8,7}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xp_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={226,-1},
				extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
			intra_BuildingBlock_connector adjoiningPanel_xp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={275,-45},
				extent={{-4.7981,-4.7981},{4.7981,4.7981}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_xp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={252,-187},
				extent={{-7.5,-7.5},{7.5,7.5}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={67,-167},
				extent={{-6.5445,-6.5445},{6.5445,6.5445}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_yp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,-46},
				extent={{-6.2294,-6.2294},{6.2294,6.2294}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_xn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={66,14},
				extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
			intra_BuildingBlock_connector adjoiningPanel_xn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={51,-151},
				extent={{-5.8783,-5.8783},{5.8783,5.8783}},
				rotation=-90)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={281,-129},
				extent={{-7,-13},{4,1}},
				rotation=-270)));
			intra_BuildingBlock_connector adjoiningPanel_yn_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={126,-184},
				extent={{-5.778,-5.778},{4,4}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zn(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={176,19},
				extent={{-6.2539,-6.2539},{4,6}})));
			intra_BuildingBlock_connector adjoiningPanel_yp_zp(
				Gr=Gr_aP,
				A_cross_Panel=x_Panel * y_Panel,
				h_c=h_Panel) annotation(Placement(transformation(
				origin={81,-61},
				extent={{-6.1458,-6.1458},{6,10}},
				rotation=-90)));
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
				TCS tCS1(
					bandwidth_cooler=bandwidth_cooler,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{-75,-15},{-55,5}})));
				heater_cooler_EPS heater_cooler_EPS1(
					power_cooler=cooling_power,
					upper_Temp_boundary=upper_Temp_boundary,
					power_heater=heating_power,
					lower_Temp_boundary=lower_Temp_boundary,
					bandwidth_cooler=bandwidth_cooler,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{-40,-35},{-20,-15}})));
				Modelica.Blocks.Sources.Constant A_Rad(k=effective_area_Rad) annotation(Placement(transformation(extent={{-145,-95},{-125,-75}})));
				Modelica.Blocks.Sources.Constant A_TSS(k=effective_area_TSS) annotation(Placement(transformation(extent={{-145,-125},{-125,-105}})));
				Modelica.Blocks.Sources.Constant A_MSS(k=effective_area_MSS) annotation(Placement(transformation(extent={{-145,-155},{-125,-135}})));
				Modelica.Blocks.Sources.Constant A_ESS(k=effective_area_ESS) annotation(Placement(transformation(extent={{-145,-185},{-125,-165}})));
				Modelica.Blocks.Sources.Constant alpha_Rad(k=alphaRad) annotation(Placement(transformation(extent={{-95,-95},{-75,-75}})));
				Modelica.Blocks.Sources.Constant alpha_TSS(k=alphaTSS) annotation(Placement(transformation(extent={{-95,-125},{-75,-105}})));
				Modelica.Blocks.Sources.Constant alpha_MSS(k=alphaMSS) annotation(Placement(transformation(extent={{-95,-155},{-75,-135}})));
				Modelica.Blocks.Sources.Constant alpha_ESS(k=alphaESS) annotation(Placement(transformation(extent={{-95,-185},{-75,-165}})));
				Modelica.Blocks.Sources.Constant epsilon_Rad(k=epsilonRad) annotation(Placement(transformation(extent={{-65,-95},{-45,-75}})));
				Modelica.Blocks.Sources.Constant epsilon_TSS(k=epsilonTSS) annotation(Placement(transformation(extent={{-65,-125},{-45,-105}})));
				Modelica.Blocks.Sources.Constant epsilon_MSS(k=epsilonMSS) annotation(Placement(transformation(extent={{-65,-155},{-45,-135}})));
				Modelica.Blocks.Sources.Constant epsilon_ESS(k=epsilonESS) annotation(Placement(transformation(extent={{-65,-185},{-45,-165}})));
				Modelica.Blocks.Sources.Constant h_TSS(k=hTSS) annotation(Placement(transformation(extent={{-35,-110},{-15,-90}})));
				Modelica.Blocks.Sources.Constant h_MSS(k=hMSS) annotation(Placement(transformation(extent={{-35,-140},{-15,-120}})));
				Modelica.Blocks.Sources.Constant h_ESS(k=hESS) annotation(Placement(transformation(extent={{-35,-170},{-15,-150}})));
				Modelica.Icons.SignalBus Values_zp annotation(Placement(transformation(extent={{10,-285},{50,-245}})));
				Modelica.Icons.SignalBus Values_yn annotation(Placement(transformation(extent={{160,-280},{200,-240}})));
				Modelica.Icons.SignalBus Values_yp annotation(Placement(transformation(extent={{115,20},{155,60}})));
				Modelica.Icons.SignalBus Values_zn annotation(Placement(transformation(extent={{315,10},{355,50}})));
				Modelica.Icons.SignalBus Values_xp annotation(Placement(transformation(extent={{310,-150},{350,-110}})));
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
				connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(
					points={{168.3,-198},{173.3,-198},{266.7,-198},{266.7,-174},{266.7,-169}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(
					points={{266.7,-155.3},{266.7,-150.3},{266.7,-108.7},{269,-108.7},{269,-103.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
					points={{232.3,-1},{237.3,-1},{268,-1},{268,-86.7},{268,-91.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(
					points={{168.7,-3},{173.7,-3},{214.7,-3},{214.7,-1},{219.7,-1}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(
					points={{66,-91.3},{66,-86.3},{66,-57.3},{66,-52.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(
					points={{67,-103.3},{67,-108.3},{67,-155.3},{67,-160.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
					points={{67,-173.7},{67,-178.7},{67,-199},{151.3,-199},{156.3,-199}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(
					Line(
						points={{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(
					Line(
						points={{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(
					points={{263,-103.7},{258,-103.7},{252,-103.7},{252,-174.3},{252,-179.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(
					points={{275,-40.3},{275,-35.3},{275,10},{277.7,10},{282.7,10}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(
					points={{275,-91.7},{275,-86.7},{275,-54.7},{275,-49.7}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
					points={{51,-157},{51,-162},{52.3,-162},{52.3,-203},{47.3,-203}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
					points={{51,-145},{51,-140},{77,-140},{77,-91.3},{72,-91.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(
					Line(
						points={{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(
					points={{59.7,14},{54.7,14},{54.7,-108.3},{60,-108.3},{60,-103.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(
					Line(
						points={{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
					points={{83,-67},{83,-72},{83,-215.3},{57,-215.3},{52,-215.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(
					points={{120.3,-185},{115.3,-185},{48,-185},{48,-207.3},{43,-207.3}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
					points={{130,-185},{135,-185},{156.3,-185},{156.3,-188},{156.3,-193}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(
					points={{287,14.3},{282,14.3},{282,-52.7},{287,-52.7},{287,-120},{287,
					-125}},
					color={191,0,0},
					thickness=0.0625));
				connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(
					points={{287,-136},{287,-141},{287,-205},{173.3,-205},{168.3,-205}},
					color={191,0,0},
					thickness=0.0625));
				connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(
					Line(
						points={{278,22},{278,20},{232,20},{232,19},{185,19},{180,
						19}},
						color={191,0,0},
						thickness=0.0625),
					AutoRoute=false);
				connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(
					points={{156.7,2.3},{151.7,2.3},{151.7,19},{164.7,19},{169.7,19}},
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
				
				connect(A_Rad.y,Values_xn.A_Rad) annotation(Line(
					points={{-124,-85},{-119,-85},{-115,-85},{-115,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_TSS.y,Values_xn.A_TSS) annotation(Line(
					points={{-124,-115},{-119,-115},{-115,-115},{-115,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_MSS.y,Values_xn.A_MSS) annotation(Line(
					points={{-124,-145},{-119,-145},{-115,-145},{-115,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_ESS.y,Values_xn.A_ESS) annotation(Line(
					points={{-124,-175},{-119,-175},{-115,-175},{-115,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_Rad.y,Values_xn.epsilon_Rad) annotation(Line(
					points={{-44,-85},{-39,-85},{-39,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_TSS.y,Values_xn.epsilon_TSS) annotation(Line(
					points={{-44,-115},{-39,-115},{-39,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_MSS.y,Values_xn.epsilon_MSS) annotation(Line(
					points={{-44,-145},{-39,-145},{-39,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(epsilon_ESS.y,Values_xn.epsilon_ESS) annotation(Line(
					points={{-44,-175},{-39,-175},{-39,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_Rad.y,Values_xn.alpha_Rad) annotation(Line(
					points={{-74,-85},{-69,-85},{-69,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_TSS.y,Values_xn.alpha_TSS) annotation(Line(
					points={{-74,-115},{-69,-115},{-69,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_MSS.y,Values_xn.alpha_MSS) annotation(Line(
					points={{-74,-145},{-69,-145},{-69,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(alpha_ESS.y,Values_xn.alpha_ESS) annotation(Line(
					points={{-74,-175},{-69,-175},{-69,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(h_MSS.y,Values_xn.h_MSS) annotation(Line(
					points={{-14,-130},{-9,-130},{-9,-140},{-105,-140},{-105,-130},{-110,
					-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(h_TSS.y,Values_xn.h_TSS) annotation(Line(
					points={{-14,-100},{-9,-100},{-9,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(h_ESS.y,Values_xn.h_ESS) annotation(Line(
					points={{-14,-160},{-9,-160},{-9,-130},{-105,-130},{-110,-130}},
					color={0,0,127},
					thickness=0.0625));
				connect(A_Rad.y,Values_xp.A_Rad) annotation(Line(points={{-124,-85},{-119,-85},{325,-85},{325,-130},{330,-130}}));
				connect(A_TSS.y,Values_xp.A_TSS) annotation(Line(points={{-124,-115},{-119,-115},{325,-115},{325,-130},{330,-130}}));
				connect(A_MSS.y,Values_xp.A_MSS) annotation(Line(points={{-124,-145},{-119,-145},{325,-145},{325,-130},{330,-130}}));
				connect(A_ESS.y,Values_xp.A_ESS) annotation(Line(points={{-124,-175},{-119,-175},{325,-175},{325,-130},{330,-130}}));
				connect(epsilon_Rad.y,Values_xp.epsilon_Rad) annotation(Line(points={{-44,-85},{-39,-85},{325,-85},{325,-130},{330,-130}}));
				connect(epsilon_TSS.y,Values_xp.epsilon_TSS) annotation(Line(points={{-44,-115},{-39,-115},{325,-115},{325,-130},{330,-130}}));
				connect(epsilon_MSS.y,Values_xp.epsilon_MSS) annotation(Line(points={{-44,-145},{-39,-145},{325,-145},{325,-130},{330,-130}}));
				connect(epsilon_ESS.y,Values_xp.epsilon_ESS) annotation(Line(points={{-44,-175},{-39,-175},{325,-175},{325,-130},{330,-130}}));
				connect(alpha_Rad.y,Values_xp.alpha_Rad) annotation(Line(points={{-74,-85},{-69,-85},{325,-85},{325,-130},{330,-130}}));
				connect(alpha_TSS.y,Values_xp.alpha_TSS) annotation(Line(points={{-74,-115},{-69,-115},{325,-115},{325,-130},{330,-130}}));
				connect(alpha_MSS.y,Values_xp.alpha_MSS) annotation(Line(points={{-74,-145},{-69,-145},{325,-145},{325,-130},{330,-130}}));
				connect(alpha_ESS.y,Values_xp.alpha_ESS) annotation(Line(points={{-74,-175},{-69,-175},{325,-175},{325,-130},{330,-130}}));
				connect(h_MSS.y,Values_xp.h_MSS) annotation(Line(points={{-14,-130},{-9,-130},{325,-130},{330,-130}}));
				connect(h_TSS.y,Values_xp.h_TSS) annotation(Line(points={{-14,-100},{-9,-100},{325,-100},{325,-130},{330,-130}}));
				connect(h_ESS.y,Values_xp.h_ESS) annotation(Line(points={{-14,-160},{-9,-160},{325,-160},{325,-130},{330,-130}}));
				connect(A_Rad.y,Values_yn.A_Rad) annotation(Line(points={{-124,-85},{-119,-85},{175,-85},{175,-260},{180,-260}}));
				connect(A_TSS.y,Values_yn.A_TSS) annotation(Line(points={{-124,-115},{-119,-115},{175,-115},{175,-260},{180,-260}}));
				connect(A_MSS.y,Values_yn.A_MSS) annotation(Line(points={{-124,-145},{-119,-145},{175,-145},{175,-260},{180,-260}}));
				connect(A_ESS.y,Values_yn.A_ESS) annotation(Line(points={{-124,-175},{-119,-175},{175,-175},{175,-260},{180,-260}}));
				connect(epsilon_Rad.y,Values_yn.epsilon_Rad) annotation(Line(points={{-44,-85},{-39,-85},{175,-85},{175,-260},{180,-260}}));
				connect(epsilon_TSS.y,Values_yn.epsilon_TSS) annotation(Line(points={{-44,-115},{-39,-115},{175,-115},{175,-260},{180,-260}}));
				connect(epsilon_MSS.y,Values_yn.epsilon_MSS) annotation(Line(points={{-44,-145},{-39,-145},{175,-145},{175,-260},{180,-260}}));
				connect(epsilon_ESS.y,Values_yn.epsilon_ESS) annotation(Line(points={{-44,-175},{-39,-175},{175,-175},{175,-260},{180,-260}}));
				connect(alpha_Rad.y,Values_yn.alpha_Rad) annotation(Line(points={{-74,-85},{-69,-85},{175,-85},{175,-260},{180,-260}}));
				connect(alpha_TSS.y,Values_yn.alpha_TSS) annotation(Line(points={{-74,-115},{-69,-115},{175,-115},{175,-260},{180,-260}}));
				connect(alpha_MSS.y,Values_yn.alpha_MSS) annotation(Line(points={{-74,-145},{-69,-145},{175,-145},{175,-260},{180,-260}}));
				connect(alpha_ESS.y,Values_yn.alpha_ESS) annotation(Line(points={{-74,-175},{-69,-175},{175,-175},{175,-260},{180,-260}}));
				connect(h_MSS.y,Values_yn.h_MSS) annotation(Line(points={{-14,-130},{-9,-130},{175,-130},{175,-260},{180,-260}}));
				connect(h_TSS.y,Values_yn.h_TSS) annotation(Line(points={{-14,-100},{-9,-100},{175,-100},{175,-260},{180,-260}}));
				connect(h_ESS.y,Values_yn.h_ESS) annotation(Line(points={{-14,-160},{-9,-160},{175,-160},{175,-260},{180,-260}}));
				connect(A_Rad.y,Values_yp.A_Rad) annotation(Line(points={{-124,-85},{-119,-85},{130,-85},{130,40},{135,40}}));
				connect(A_TSS.y,Values_yp.A_TSS) annotation(Line(points={{-124,-115},{-119,-115},{130,-115},{130,40},{135,40}}));
				connect(A_MSS.y,Values_yp.A_MSS) annotation(Line(points={{-124,-145},{-119,-145},{130,-145},{130,40},{135,40}}));
				connect(A_ESS.y,Values_yp.A_ESS) annotation(Line(points={{-124,-175},{-119,-175},{130,-175},{130,40},{135,40}}));
				connect(epsilon_Rad.y,Values_yp.epsilon_Rad) annotation(Line(points={{-44,-85},{-39,-85},{130,-85},{130,40},{135,40}}));
				connect(epsilon_TSS.y,Values_yp.epsilon_TSS) annotation(Line(points={{-44,-115},{-39,-115},{130,-115},{130,40},{135,40}}));
				connect(epsilon_MSS.y,Values_yp.epsilon_MSS) annotation(Line(points={{-44,-145},{-39,-145},{130,-145},{130,40},{135,40}}));
				connect(epsilon_ESS.y,Values_yp.epsilon_ESS) annotation(Line(points={{-44,-175},{-39,-175},{130,-175},{130,40},{135,40}}));
				connect(alpha_Rad.y,Values_yp.alpha_Rad) annotation(Line(points={{-74,-85},{-69,-85},{130,-85},{130,40},{135,40}}));
				connect(alpha_TSS.y,Values_yp.alpha_TSS) annotation(Line(points={{-74,-115},{-69,-115},{130,-115},{130,40},{135,40}}));
				connect(alpha_MSS.y,Values_yp.alpha_MSS) annotation(Line(points={{-74,-145},{-69,-145},{130,-145},{130,40},{135,40}}));
				connect(alpha_ESS.y,Values_yp.alpha_ESS) annotation(Line(points={{-74,-175},{-69,-175},{130,-175},{130,40},{135,40}}));
				connect(h_MSS.y,Values_yp.h_MSS) annotation(Line(points={{-14,-130},{-9,-130},{130,-130},{130,40},{135,40}}));
				connect(h_TSS.y,Values_yp.h_TSS) annotation(Line(points={{-14,-100},{-9,-100},{130,-100},{130,40},{135,40}}));
				connect(h_ESS.y,Values_yp.h_ESS) annotation(Line(points={{-14,-160},{-9,-160},{130,-160},{130,40},{135,40}}));
				connect(A_Rad.y,Values_zn.A_Rad) annotation(Line(points={{-124,-85},{-119,-85},{330,-85},{330,30},{335,30}}));
				connect(A_TSS.y,Values_zn.A_TSS) annotation(Line(points={{-124,-115},{-119,-115},{330,-115},{330,30},{335,30}}));
				connect(A_MSS.y,Values_zn.A_MSS) annotation(Line(points={{-124,-145},{-119,-145},{330,-145},{330,30},{335,30}}));
				connect(A_ESS.y,Values_zn.A_ESS) annotation(Line(points={{-124,-175},{-119,-175},{330,-175},{330,30},{335,30}}));
				connect(epsilon_Rad.y,Values_zn.epsilon_Rad) annotation(Line(points={{-44,-85},{-39,-85},{330,-85},{330,30},{335,30}}));
				connect(epsilon_TSS.y,Values_zn.epsilon_TSS) annotation(Line(points={{-44,-115},{-39,-115},{330,-115},{330,30},{335,30}}));
				connect(epsilon_MSS.y,Values_zn.epsilon_MSS) annotation(Line(points={{-44,-145},{-39,-145},{330,-145},{330,30},{335,30}}));
				connect(epsilon_ESS.y,Values_zn.epsilon_ESS) annotation(Line(points={{-44,-175},{-39,-175},{330,-175},{330,30},{335,30}}));
				connect(alpha_Rad.y,Values_zn.alpha_Rad) annotation(Line(points={{-74,-85},{-69,-85},{330,-85},{330,30},{335,30}}));
				connect(alpha_TSS.y,Values_zn.alpha_TSS) annotation(Line(points={{-74,-115},{-69,-115},{330,-115},{330,30},{335,30}}));
				connect(alpha_MSS.y,Values_zn.alpha_MSS) annotation(Line(points={{-74,-145},{-69,-145},{330,-145},{330,30},{335,30}}));
				connect(alpha_ESS.y,Values_zn.alpha_ESS) annotation(Line(points={{-74,-175},{-69,-175},{330,-175},{330,30},{335,30}}));
				connect(h_MSS.y,Values_zn.h_MSS) annotation(Line(points={{-14,-130},{-9,-130},{330,-130},{330,30},{335,30}}));
				connect(h_TSS.y,Values_zn.h_TSS) annotation(Line(points={{-14,-100},{-9,-100},{330,-100},{330,30},{335,30}}));
				connect(h_ESS.y,Values_zn.h_ESS) annotation(Line(points={{-14,-160},{-9,-160},{330,-160},{330,30},{335,30}}));
				connect(A_Rad.y,Values_zp.A_Rad) annotation(Line(points={{-124,-85},{-119,-85},{25,-85},{25,-265},{30,-265}}));
				connect(A_TSS.y,Values_zp.A_TSS) annotation(Line(points={{-124,-115},{-119,-115},{25,-115},{25,-265},{30,-265}}));
				connect(A_MSS.y,Values_zp.A_MSS) annotation(Line(points={{-124,-145},{-119,-145},{25,-145},{25,-265},{30,-265}}));
				connect(A_ESS.y,Values_zp.A_ESS) annotation(Line(points={{-124,-175},{-119,-175},{25,-175},{25,-265},{30,-265}}));
				connect(epsilon_Rad.y,Values_zp.epsilon_Rad) annotation(Line(points={{-44,-85},{-39,-85},{25,-85},{25,-265},{30,-265}}));
				connect(epsilon_TSS.y,Values_zp.epsilon_TSS) annotation(Line(points={{-44,-115},{-39,-115},{25,-115},{25,-265},{30,-265}}));
				connect(epsilon_MSS.y,Values_zp.epsilon_MSS) annotation(Line(points={{-44,-145},{-39,-145},{25,-145},{25,-265},{30,-265}}));
				connect(epsilon_ESS.y,Values_zp.epsilon_ESS) annotation(Line(points={{-44,-175},{-39,-175},{25,-175},{25,-265},{30,-265}}));
				connect(alpha_Rad.y,Values_zp.alpha_Rad) annotation(Line(points={{-74,-85},{-69,-85},{25,-85},{25,-265},{30,-265}}));
				connect(alpha_TSS.y,Values_zp.alpha_TSS) annotation(Line(points={{-74,-115},{-69,-115},{25,-115},{25,-265},{30,-265}}));
				connect(alpha_MSS.y,Values_zp.alpha_MSS) annotation(Line(points={{-74,-145},{-69,-145},{25,-145},{25,-265},{30,-265}}));
				connect(alpha_ESS.y,Values_zp.alpha_ESS) annotation(Line(points={{-74,-175},{-69,-175},{25,-175},{25,-265},{30,-265}}));
				connect(h_MSS.y,Values_zp.h_MSS) annotation(Line(points={{-14,-130},{-9,-130},{25,-130},{25,-265},{30,-265}}));
				connect(h_TSS.y,Values_zp.h_TSS) annotation(Line(points={{-14,-100},{-9,-100},{25,-100},{25,-265},{30,-265}}));
				connect(h_ESS.y,Values_zp.h_ESS) annotation(Line(points={{-14,-160},{-9,-160},{25,-160},{25,-265},{30,-265}}));
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
		end thermal_for_verosim;
	end buildingblocks;
end iboss_thermal;
