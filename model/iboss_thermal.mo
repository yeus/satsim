// CP: 65001
// SimulationX Version: 3.5.707.15 x64
package iboss_thermal "iboss_thermal"
	import MaterialDatabase.*;
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
					origin={35.5288,-75.3658},
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Rectangle(fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,-100},{100,100}}, visible = true),Text(textString = "Rad", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {-44.0817,85.1439}),Text(textString = "TSS", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {46.7747,84.8561}),Text(textString = "MSS", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {-44.0959,-85.1439}),Text(textString = "ESS", fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-30,-15.1439},{30,15.1439}}, visible = true, origin = {47.1086,-85.1439})}),
				Diagram(
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-30.7109,-23.1268},{27.2635,33.4688}}, visible = true, origin = {-28.2763,-5.171}),Text(textString = "TSS", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-17.1201,-5.9154},{17.1201,5.9154}}, visible = true, origin = {70,24.0846}),Text(textString = "MSS", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.9755,-6.8676},{12.9755,6.8676}}, visible = true, origin = {70,-25.2132}),Text(textString = "ESS", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-13.598,-6.3627},{13.598,6.3627}}, visible = true, origin = {70,-76.3627}),Text(textString = "Rad", fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-17.1201,-5.9154},{17.1201,5.9154}}, visible = true, origin = {70,74.0846}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-102.764,-162.343},{97.2356,-102.343}}, visible = true, origin = {-142.343,2.7644}, rotation = 90)}));
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
			replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
			parameter Modelica.SIunits.Length x "Laenge des Materials in x Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length y "Laenge des Materials in y Richtung der Waermeausbreitung";
			parameter Modelica.SIunits.Length z "Laenge des Materials in z Richtung der Waermeausbreitung";
			protected
				parameter Modelica.SIunits.ThermalConductance Gx=(y * z * material.k) / x "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gy=(x * z * material.k) / y "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gz=(y * x * material.k) / z "Constant thermal conductance of material in x direction";
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-94.6355,-59.4223},{96.011,61.8982}}, visible = true, origin = {-0.6878,-1.238}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-101.2507,52.8171},{98.7493,112.8171}}, visible = true, origin = {82.8171,1.2507}, rotation = 90),Text(textString = "thermal element", fontSize = 16, fillColor = {0,0,255}, extent = {{-3,-2},{0,9}}, visible = true)}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
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
			replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
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
					origin={98.674,-0.6225},
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-30,-100},{30,100}}, visible = true),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100,-30},{100,30}}, visible = true, origin = {60,-0}, rotation = 90)}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
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
			replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
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
					origin={-90.147,-89.9621},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={-90.147,-89.9621},
					extent={{-10,-10},{10,10}})));
			Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zn annotation(Placement(
				transformation(
					origin={90.147,89.9621},
					extent={{-10,-10},{10,10}}),
				iconTransformation(
					origin={90.147,89.9621},
					extent={{-10,-10},{10,10}})));
			protected
				parameter Modelica.SIunits.ThermalConductance Gx=(y * z * material.k) / x "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gy=(x * z * material.k) / y "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.ThermalConductance Gz=(y * y * material.k) / z "Constant thermal conductance of material in x direction";
				parameter Modelica.SIunits.HeatCapacity C=x * y * z * material.d * material.c "Heat capacity of element (= cp*m)";
			equation
				connect(thermalConductor_zn.port_b,EB_zn) annotation(Line(points = {{41,35},{46,35},{51,35},{51,89.9621},{90.147,89.9621}}));
				connect(thermalConductor_zp.port_a,EB_zp) annotation(Line(points = {{-39,-35},{-44,-35},{-49,-35},{-49,-89.9621},{-90.147,-89.9621}}));
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
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Rectangle(pattern = LinePattern.Dot, lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.Sphere, extent = {{-99.8363,-100.111},{100.164,99.8886}}),Text(textString = "xp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{67.7961,-9.3325},{89.8959,7.7865}}),Text(textString = "xn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-89.1229,-9.3325},{-67.0231,7.7865}}),Text(textString = "yp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-11.0499,71.446},{11.0499,88.565}}),Text(textString = "yn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-11.4955,-90.0356},{10.6043,-72.9166}}),Text(textString = "zn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{58.2761,65.9935},{80.3759,83.1125}}),Text(textString = "zp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-83.9086,-81.0027},{-61.8088,-63.8837}}),Text(textString = "electrical power", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-44.773,20.8807},{55.227,45.6943}})}),
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
				origin={5.22696,-68.5007},
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Rectangle(pattern = LinePattern.Dash, lineColor = {255,0,0}, fillColor = {255,255,255}, extent = {{-94.6355,-39.1837},{96.011,40.8163}}, visible = true, origin = {0,-0.8163}),Text(textString = "T", fontSize = 24, fillColor = {0,0,255}, extent = {{-3.0261,-1.9257},{0,8.2531}}, visible = true),Text(textString = "%name", fillPattern = FillPattern.Solid, extent = {{-101.2507,52.8171},{98.7493,112.817}}, visible = true, origin = {82.817,1.2507}, rotation = 90)}),
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
			replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
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
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Ellipse(lineColor = {0,0,0}, fillColor = {0,0,255}, fillPattern = FillPattern.CrossDiag, extent = {{100,-100},{-100,100}}),Text(textString = "cooler", textStyle = {TextStyle.Bold}, lineColor = {255,255,255}, fillColor = {255,0,0}, extent = {{-99,37},{100,-35}})}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
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
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Ellipse(lineColor = {255,255,255}, fillColor = {255,0,0}, fillPattern = FillPattern.CrossDiag, extent = {{100,-100},{-100,100}}),Text(textString = "heater", textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, fillColor = {255,0,0}, extent = {{-99,37},{100,-35}})}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
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
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_TIM_TSS(G=h_TSS * A_TSS)"Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,10},
				extent={{-6.1349,-6.1349},{6.1349,6.1349}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_MSS(G=h_MSS * A_MSS)"Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={-0,-10},
				extent={{-6.0931,-6.0931},{6.0931,6.0931}})));
			Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_ESS(G=h_ESS * A_ESS)"Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(
				origin={0,-30},
				extent={{-6.1934,-6.1934},{6.1934,6.1934}})));
			parameter Real h_TSS(unit="W/(mÂ²Â·K)")=300 "Heat transfer coefficient TSS - TSS";
			parameter Real h_MSS(unit="W/(mÂ²Â·K)")=190 "Heat transfer coefficient MSS - MSS";
			parameter Real h_ESS(unit="W/(mÂ²Â·K)")=240 "Heat transfer coefficient ESS - ESS";
			parameter Modelica.SIunits.Emissivity eps_Rad=0.5 "Emmisivity of the radiator";
			parameter Real ViewFactor_Rad=0.2 "Viewfactor of Radiator";
			Modelica.Thermal.HeatTransfer.Components.BodyRadiation Radiator(Gr=ViewFactor_Rad * A_Rad * 1 / (2 / eps_Rad - 1))"Lumped thermal element for radiation heat transfer" annotation(Placement(transformation(
				origin={0,30},
				extent={{-6.25,-6.25},{6.25,6.25}})));
			parameter Modelica.SIunits.Area A_ESS(unit="m2")=0.0002 "Querschnittsflaeche der ESS";
			parameter Modelica.SIunits.Area A_TSS(unit="m2")=0.01 "Querschnittsflaeche der TSS";
			parameter Modelica.SIunits.Area A_MSS(unit="m2")=0.005 "Querschnittsflaeche der MSS";
			parameter Modelica.SIunits.Area A_Rad(unit="m2")=0.1448 "Querschnittsflaeche der MSS";
			equation
				connect(Radiator.port_b,thermal_connector1.Rad) annotation(Line(points = {{-13.3179,24.691},{-10.3179,24.691},{-10.3179,-18.309},{16.9769,-18.309},{16.9769,-12.7641}}, color = {191,0,0}, visible = true, origin = {19.5679,5.309}));
				connect(thermal_connector2.Rad,Radiator.port_a) annotation(Line(points = {{-10.0983,-15.0299},{-10.0983,7.5149},{20.1966,7.5149}}, color = {191,0,0}, visible = true, origin = {-26.4466,22.485}));
				connect(thermal_connector2.TSS,Conductance_TIM_TSS.port_a) annotation(Line(points = {{-21.2747,-3.7486},{6.0916,-3.7486},{6.0916,3.7486},{9.0916,3.7486}}, color = {191,0,0}, visible = true, origin = {-15.2265,6.2513}));
				connect(Conductance_TIM_TSS.port_b,thermal_connector1.TSS) annotation(Line(points = {{-18.0241,6.2513},{2.841,6.2513},{2.841,-6.2513},{12.3422,-6.2513}}, color = {191,0,0}, visible = true, origin = {24.159,3.7486}));
				connect(thermal_connector2.MSS,Conductance_MSS.port_a) annotation(Line(points = {{-21.2833,3.7327},{6.0944,3.7327},{6.0944,-3.7327},{9.0944,-3.7327}}, color = {191,0,0}, visible = true, origin = {-15.1875,-6.2673}));
				connect(thermal_connector1.MSS,Conductance_MSS.port_b) annotation(Line(points = {{21.2833,6.2673},{-6.0944,6.2673},{-6.0944,-6.2673},{-9.0944,-6.2673}}, color = {191,0,0}, visible = true, origin = {15.1875,-3.7327}));
				connect(thermal_connector2.ESS,Conductance_ESS.port_a) annotation(Line(points = {{-10.0846,14.9756},{-10.0846,-7.4878},{20.1691,-7.4878}}, color = {191,0,0}, visible = true, origin = {-26.3625,-22.5122}));
				connect(thermal_connector1.ESS,Conductance_ESS.port_b) annotation(Line(points = {{16.9522,12.8293},{16.9522,18.2927},{-10.3015,18.2927},{-10.3015,-24.7073},{-13.3015,-24.7073}}, color = {191,0,0}, visible = true, origin = {19.4949,-5.2927}));
			annotation(
				Icon(
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-20,-100},{20,100}}, visible = true, origin = {-80,0}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-20,-100},{20,100}}, visible = true, origin = {80,0}),Rectangle(lineColor = {255,0,0}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-40,-100},{40,100}}, visible = true),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100.0603,-40},{100.0603,40}}, visible = true, origin = {-0,0.0603}, rotation = 90)}),
				Diagram(coordinateSystem(
					extent={{-105,-74},{105,74}},
					grid={5,5})),
				experiment(
					StopTime=1,
					StartTime=0));
		end thermal_TIM;
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
					graphics={Ellipse(fillColor = {255,255,0}, fillPattern = FillPattern.Solid, extent = {{-99.8221,-100},{99.8221,100}}, visible = true, origin = {0.1779,0}),Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100,-19.1444},{100,19.1444}}, visible = true, origin = {-0,119.1444}),Text(textString = "Period=%orbit_Period", fillPattern = FillPattern.Solid, extent = {{-90,-14.5134},{90,14.5134}}, visible = true, origin = {0,25.4866}),Text(textString = "percent_sun=%percent_sun", fillPattern = FillPattern.Solid, extent = {{-90,-14.5134},{90,14.5134}}, visible = true, origin = {0,-24.5134})}),
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
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.56 "Emmisionskoeffizient des Radiators tbd";
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
					coordinateSystem(
						extent={{-100,-100},{100,100}},
						grid={10,10}),
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
			parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Flaeche des Radiators";
			parameter Modelica.SIunits.Area effective_area_TSS=0.01 "Flaeche der thermalen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
			parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
			parameter Modelica.SIunits.Emissivity epsilon_Rad=0.56 "Emmisionskoeffizient des Radiators tbd";
			parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
			parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
			parameter Real illumination[:,2]=[0,0;1,1];
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent={{10,40},{30,60}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent={{10,10},{30,30}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent={{10,-20},{30,0}})));
			Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha=0) annotation(Placement(transformation(extent={{10,-50},{30,-30}})));
			Modelica.Blocks.Math.Gain factor_Rad(k=(effective_area_Rad * alpha_Rad) / effective_area_total) annotation(Placement(transformation(extent={{-35,-50},{-15,-30}})));
			Modelica.Blocks.Sources.TimeTable timeTable1(
				table=illumination,
				offset=0) annotation(Placement(transformation(extent={{-95,-5},{-75,15}})));
			Modelica.Blocks.Math.Gain factor_TSS(k=(effective_area_TSS * alpha_TSS) / effective_area_total) annotation(Placement(transformation(extent={{-35,40},{-15,60}})));
			Modelica.Blocks.Math.Gain factor_MSS(k=(effective_area_MSS * alpha_MSS) / effective_area_total) annotation(Placement(transformation(extent={{-35,10},{-15,30}})));
			Modelica.Blocks.Math.Gain factor_ESS(k=(effective_area_ESS * alpha_ESS) / effective_area_total) annotation(Placement(transformation(extent={{-35,-20},{-15,0}})));
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
					points={{165,5},{160,5},{145,5},{145,50},{140,50}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_MSS.port_b) annotation(Line(
					points={{165,5},{160,5},{145,5},{145,20},{140,20}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_ESS.port_b) annotation(Line(
					points={{165,5},{160,5},{145,5},{145,-10},{140,-10}},
					color={191,0,0},
					thickness=0.0625));
				connect(fixedTemperature1.port,bodyRadiation_Rad.port_b) annotation(Line(
					points={{165,5},{160,5},{145,5},{145,-40},{140,-40}},
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
			annotation(
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={
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
	end components;
	package buildingblocks "buildingblocks"
		import iboss_thermal.components.*;
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
			parameter Modelica.SIunits.Height y_TSS=0.1 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.1 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			replaceable parameter MaterialDatabase.Material material_ESS=Kupfer "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_MSS=Titan "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_TSS=Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_Panel=Panel "Material of Panel from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_EB=elektronik_Box_Composit1 "Material of Electronic Box from MaterialDataBase" annotation(choicesAllMatching=true);
			parameter Modelica.SIunits.Power BuildingBlock_Power=5 "Leistungsbedarf des Standartbausteins";
			parameter Real h_Panel(unit="W/(mÂ²Â·K)")=300 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(mÂ²Â·K)")=300 "Heat transfer coefficient EB-Panel";
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
			parameter MaterialDatabase.Kupferlegierungen_Kupfer Kupfer annotation(Placement(transformation(
				origin={130,90},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Titanlegierungen_Handelsueblich_Rein_CP_Ti_UNS_R50700__Klasse_4_SS Titan annotation(Placement(transformation(
				origin={130,30},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Aluminiumlegierungen_1060_H12 Aluminium annotation(Placement(transformation(
				origin={130,-30},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd Panel annotation(Placement(transformation(
				origin={130,-60},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Elektronik_Box_Composit elektronik_Box_Composit1 annotation(Placement(transformation(
				origin={130,60},
				extent={{-10,-10},{10,10}})));
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
					origin={-87.4828,-87.7579},
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
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1)"Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1)"Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * (eps_Panel * eps_EB) / (eps_Panel + eps_EB - eps_Panel * eps_EB)"Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			public
				Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=BuildingBlock_Power) annotation(Placement(transformation(extent={{0,0},{20,20}})));
				BB_heater bB_heater1(
					heating_power=heating_power,
					lower_Temp_boundary=lower_Temp_boundary,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{30,-35},{50,-15}})));
				BB_cooler bB_cooler1(
					cooling_power=cooling_power,
					upper_Temp_boundary=upper_Temp_boundary,
					bandwidth_cooler=bandwidth_cooler) annotation(Placement(transformation(extent={{20,-60},{40,-40}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(Line(points = {{288.6666564941406,24.66666412353516},{300,35}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(Line(points = {{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(points = {{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(points = {{41.33332824707031,-217.6666564941406},{10,-250}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(points = {{161,-135},{161,-130},{161,-120},{163,-120},{163,-115}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(points = {{162,-208},{162,-213},{165,-213},{165,-235},{160,-235}}, thickness = 0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(points = {{200,-97},{195,-97},{185,-97},{185,-98},{180,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(points = {{278,-98},{283,-98},{320,-98},{320,-95},{325,-95}}, thickness = 0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(points = {{122,-97},{127,-97},{140,-97},{140,-98},{145,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(points = {{162,-59},{162,-64},{162,-75},{163,-75},{163,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(points = {{162,5},{162,10},{160,10},{160,35},{165,35}}, thickness = 0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(points = {{57,-97},{52,-97},{20,-97},{20,-95},{15,-95}}, thickness = 0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(Line(points = {{162.6666564941406,-97.66667175292969},{110,-45}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(points = {{162,-5},{162,-10},{162,-40},{162,-40},{162,-45}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(Line(points = {{205.6666564941406,-56},{281.3333435058594,17.33333587646484}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(points = {{214,-97},{219,-97},{262,-97},{262,-98},{267,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(points = {{162,-197},{162,-192},{162,-152},{161,-152},{161,-147}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(Line(points = {{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(points = {{68,-97},{73,-97},{105,-97},{110,-97}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(points = {{168,-198},{173,-198},{267,-198},{267,-174},{267,-169}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(points = {{267,-155},{267,-150},{267,-109},{269,-109},{269,-104}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(points = {{232,-1},{237,-1},{268,-1},{268,-87},{268,-92}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(points = {{169,-3},{174,-3},{215,-3},{215,-1},{220,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(points = {{66,-91},{66,-86},{66,-57},{66,-52}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(points = {{67,-103},{67,-108},{67,-155},{67,-160}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(points = {{67,-174},{67,-179},{67,-199},{151,-199},{156,-199}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(points = {{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(Line(points = {{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(points = {{263,-104},{258,-104},{252,-104},{252,-174},{252,-179}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(points = {{275,-40},{275,-35},{275,5},{283,5},{283,10}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(points = {{275,-92},{275,-87},{275,-55},{275,-50}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(points = {{51,-157},{51,-162},{51,-198},{47,-198},{47,-203}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(points = {{51,-145},{51,-140},{77,-140},{77,-91},{72,-91}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(Line(points = {{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(points = {{60,14},{55,14},{55,-108},{60,-108},{60,-103}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(Line(points = {{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(points = {{83,-67},{83,-72},{83,-210},{52,-210},{52,-215}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(points = {{120,-185},{115,-185},{43,-185},{43,-202},{43,-207}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(points = {{130,-185},{135,-185},{156,-185},{156,-188},{156,-193}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(points = {{287,14},{287,9},{287,-120},{287,-125}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(points = {{287,-136},{287,-141},{287,-205},{173,-205},{168,-205}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(Line(points = {{278,22},{278,20},{232,20},{232,19},{185,19},{180,19}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(points = {{157,2},{152,2},{152,19},{165,19},{170,19}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(points = {{162,-197},{162,-192},{162,-172},{186,-172},{186,-167}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(points = {{186,-155},{186,-150},{186,-10},{162,-10},{162,-5}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(points = {{110,-72},{105,-72},{73,-72},{73,-97},{68,-97}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(Line(points = {{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,-72}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(Line(points = {{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(Line(points = {{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(fixedHeatFlow1.port,port_b) annotation(Line(points = {{20,10},{25,10},{105,10},{105,-45},{110,-45}}, color = {191,0,0}, thickness = 0.0625));
				connect(bB_heater1.Heater,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(points = {{50,-25},{55,-25},{158,-25},{158,-98},{163,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(bB_cooler1.cooler,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(points = {{40,-50},{45,-50},{158,-50},{158,-98},{163,-98}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				fixedHeatFlow1(port(Q_flow(flags=2))),
				bB_heater1(
					lower_Temp(y(flags=2)),
					temperature_EB(
						T(flags=2),
						port(T(flags=2))),
					gain1(y(flags=2)),
					heater_power(port(Q_flow(flags=2)))),
				bB_cooler1(
					upper_Temp(y(flags=2)),
					temperature_EB(
						T(flags=2),
						port(T(flags=2))),
					gain1(y(flags=2)),
					heater_power(port(Q_flow(flags=2)))),
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10,-50},{10,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10.2751,-50},{9.7249,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, lineThickness = 2, extent = {{-80,-80},{80,80}}),Text(textString = "%name", textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-78.4853,-65.6671},{78.4853,-25.6671}}),Text(textString = "yp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.0277,70.2527},{14.7787,93.1585}}),Text(textString = "yn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.3028,-89.8573},{14.5036,-66.9515}}),Text(textString = "xp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{67.4771,-10.6276},{94.2835,12.2782}}),Text(textString = "xn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-92.6329,-12.5533},{-65.8265,10.3525}}),Text(textString = "zp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-79.428,-79.9536},{-52.6216,-57.0478}}),Text(textString = "zn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{55.2109,58.9977},{82.0173,81.9035}})}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
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
			parameter Modelica.SIunits.Height y_TSS=0.1 "height of TSS in m";
			parameter Modelica.SIunits.Height z_TSS=0.1 "width of TSS in m";
			parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
			parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
			parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
			parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
			parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
			parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
			replaceable parameter MaterialDatabase.Material material_ESS=Kupfer "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_MSS=Titan "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_TSS=Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_Panel=Panel "Material of Panel from MaterialDataBase" annotation(choicesAllMatching=true);
			replaceable parameter MaterialDatabase.Material material_EB=elektronik_Box_Composit1 "Material of Electronic Box from MaterialDataBase" annotation(choicesAllMatching=true);
			parameter Real h_Panel(unit="W/(mÂ²Â·K)")=3000 "Heat transfer coefficient Panel-Panel";
			parameter Real h_EB(unit="W/(mÂ²Â·K)")=3000 "Heat transfer coefficient EB-Panel";
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
			parameter MaterialDatabase.Kupferlegierungen_Kupfer Kupfer annotation(Placement(transformation(
				origin={130,90},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Titanlegierungen_Handelsueblich_Rein_CP_Ti_UNS_R50700__Klasse_4_SS Titan annotation(Placement(transformation(
				origin={130,30},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Aluminiumlegierungen_1060_H12 Aluminium annotation(Placement(transformation(
				origin={130,-30},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd Panel annotation(Placement(transformation(
				origin={130,-60},
				extent={{-10,-10},{10,10}})));
			parameter MaterialDatabase.Elektronik_Box_Composit elektronik_Box_Composit1 annotation(Placement(transformation(
				origin={130,60},
				extent={{-10,-10},{10,10}})));
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
					origin={-87.4828,-87.7579},
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
				parameter Real Gr_oP(unit="m2")=ViewFactor_parallel * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1)"Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
				parameter Real Gr_aP(unit="m2")=ViewFactor_vertical * y_Panel * z_Panel * 1 / (2 / eps_Panel - 1)"Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
				parameter Real Gr_P_EB(unit="m2")=x_EB * y_EB * (eps_Panel * eps_EB) / (eps_Panel + eps_EB - eps_Panel * eps_EB)"Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
			public
				BB_heater bB_heater1(
					heating_power=heating_power,
					lower_Temp_boundary=lower_Temp_boundary,
					bandwidth_heater=bandwidth_heater) annotation(Placement(transformation(extent={{30,-35},{50,-15}})));
				BB_cooler bB_cooler1(
					cooling_power=cooling_power,
					upper_Temp_boundary=upper_Temp_boundary,
					bandwidth_cooler=bandwidth_cooler) annotation(Placement(transformation(extent={{20,-60},{40,-40}})));
			equation
				connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(Line(points = {{288.6666564941406,24.66666412353516},{300,35}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(Line(points = {{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(points = {{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(points = {{41.33332824707031,-217.6666564941406},{10,-250}}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(points = {{161,-135},{161,-130},{161,-120},{163,-120},{163,-115}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(points = {{162,-208},{162,-213},{165,-213},{165,-235},{160,-235}}, thickness = 0.0625));
				connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(points = {{200,-97},{195,-97},{185,-97},{185,-98},{180,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(points = {{278,-98},{283,-98},{320,-98},{320,-95},{325,-95}}, thickness = 0.0625));
				connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(points = {{122,-97},{127,-97},{140,-97},{140,-98},{145,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(points = {{162,-59},{162,-64},{162,-75},{163,-75},{163,-80}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(points = {{162,5},{162,10},{160,10},{160,35},{165,35}}, thickness = 0.0625));
				connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(points = {{57,-97},{52,-97},{20,-97},{20,-95},{15,-95}}, thickness = 0.0625));
				connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(Line(points = {{162.6666564941406,-97.66667175292969},{110,-45}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(points = {{162,-5},{162,-10},{162,-40},{162,-40},{162,-45}}, color = {191,0,0}, thickness = 0.0625));
				connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(Line(points = {{205.6666564941406,-56},{281.3333435058594,17.33333587646484}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(points = {{214,-97},{219,-97},{262,-97},{262,-98},{267,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(points = {{162,-197},{162,-192},{162,-152},{161,-152},{161,-147}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(Line(points = {{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(points = {{68,-97},{73,-97},{105,-97},{110,-97}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(points = {{168,-198},{173,-198},{267,-198},{267,-174},{267,-169}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(points = {{267,-155},{267,-150},{267,-109},{269,-109},{269,-104}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(points = {{232,-1},{237,-1},{268,-1},{268,-87},{268,-92}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(points = {{169,-3},{174,-3},{215,-3},{215,-1},{220,-1}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(points = {{66,-91},{66,-86},{66,-57},{66,-52}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(points = {{67,-103},{67,-108},{67,-155},{67,-160}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(points = {{67,-174},{67,-179},{67,-199},{151,-199},{156,-199}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(Line(points = {{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(Line(points = {{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(points = {{263,-104},{258,-104},{252,-104},{252,-174},{252,-179}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(points = {{275,-40},{275,-35},{275,5},{283,5},{283,10}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(points = {{275,-92},{275,-87},{275,-55},{275,-50}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(points = {{51,-157},{51,-162},{51,-198},{47,-198},{47,-203}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(points = {{51,-145},{51,-140},{77,-140},{77,-91},{72,-91}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(Line(points = {{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(points = {{60,14},{55,14},{55,-108},{60,-108},{60,-103}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(Line(points = {{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(points = {{83,-67},{83,-72},{83,-210},{52,-210},{52,-215}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(points = {{120,-185},{115,-185},{43,-185},{43,-202},{43,-207}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(points = {{130,-185},{135,-185},{156,-185},{156,-188},{156,-193}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(points = {{287,14},{287,9},{287,-120},{287,-125}}, color = {191,0,0}, thickness = 0.0625));
				connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(points = {{287,-136},{287,-141},{287,-205},{173,-205},{168,-205}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(Line(points = {{278,22},{278,20},{232,20},{232,19},{185,19},{180,19}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(points = {{157,2},{152,2},{152,19},{165,19},{170,19}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(points = {{162,-197},{162,-192},{162,-172},{186,-172},{186,-167}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(points = {{186,-155},{186,-150},{186,-10},{162,-10},{162,-5}}, color = {191,0,0}, thickness = 0.0625));
				connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(points = {{110,-72},{105,-72},{73,-72},{73,-97},{68,-97}}, color = {191,0,0}, thickness = 0.0625));
				connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(Line(points = {{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,-72}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(Line(points = {{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(Line(points = {{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}}, color = {191,0,0}, thickness = 0.0625), AutoRoute = false);
				connect(bB_heater1.Heater,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(points = {{50,-25},{55,-25},{158,-25},{158,-98},{163,-98}}, color = {191,0,0}, thickness = 0.0625));
				connect(bB_cooler1.cooler,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(points = {{40,-50},{45,-50},{158,-50},{158,-98},{163,-98}}, color = {191,0,0}, thickness = 0.0625));
			annotation(
				port_b(
					T(flags=2),
					Q_flow(flags=2)),
				bB_heater1(
					lower_Temp(y(flags=2)),
					temperature_EB(
						T(flags=2),
						port(T(flags=2))),
					gain1(y(flags=2)),
					heater_power(port(Q_flow(flags=2)))),
				bB_cooler1(
					upper_Temp(y(flags=2)),
					temperature_EB(
						T(flags=2),
						port(T(flags=2))),
					gain1(y(flags=2)),
					heater_power(port(Q_flow(flags=2)))),
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10,-50},{10,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-10.2751,-50},{9.7249,50}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, fillPattern = FillPattern.CrossDiag, extent = {{-50,-10},{50,10}}),Rectangle(lineColor = {255,0,0}, fillColor = {255,255,255}, lineThickness = 2, extent = {{-80,-80},{80,80}}),Text(textString = "%name", textStyle = {TextStyle.Bold}, lineColor = {0,0,0}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, extent = {{-78.4853,-65.6671},{78.4853,-25.6671}}),Text(textString = "yp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.0277,70.2527},{14.7787,93.1585}}),Text(textString = "yn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-12.3028,-89.8573},{14.5036,-66.9515}}),Text(textString = "xp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{67.4771,-10.6276},{94.2835,12.2782}}),Text(textString = "xn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-92.6329,-12.5533},{-65.8265,10.3525}}),Text(textString = "zp", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{-79.428,-79.9536},{-52.6216,-57.0478}}),Text(textString = "zn", lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{55.2109,58.9977},{82.0173,81.9035}})}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
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
	end buildingblocks;
end iboss_thermal;