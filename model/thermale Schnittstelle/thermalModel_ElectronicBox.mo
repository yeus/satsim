model thermalModel_ElectronicBox "Zentraler Knoten des Bausteinmodells mit Schnittstelle zur Elektroniksimulation. Gibt die Elektrisch erzeugte Waermeenergie wieder"
  // CP: 65001
  // SimulationX Version: 3.5.706.23 x64
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xn annotation(Placement(transformation(origin = {-60,-0}, extent = {{-10,-10},{10,10}}), iconTransformation(origin = {-100,-0}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xp annotation(Placement(transformation(origin = {60,0}, extent = {{-10,-10},{10,10}}), iconTransformation(origin = {100,0}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_yp annotation(Placement(transformation(origin = {0,80}, extent = {{-10,-10},{10,10}}), iconTransformation(origin = {0,100}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_yn annotation(Placement(transformation(origin = {0,-80}, extent = {{-10,-10},{10,10}}), iconTransformation(origin = {0,-100}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C = C) annotation(Placement(transformation(origin = {0,10}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b dissipationPower annotation(Placement(transformation(origin = {-39,35}, extent = {{-10,-10},{10,10}}), iconTransformation(origin = {0,0}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zp(G = Gz / 2) annotation(Placement(transformation(origin = {-29,-35}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G = Gx / 2) annotation(Placement(transformation(origin = {30,0}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G = Gx / 2) annotation(Placement(transformation(origin = {-30,0}, extent = {{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zn(G = Gz / 2) annotation(Placement(transformation(origin = {31,35}, extent = {{-10,-10},{10,10}})));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching = true);
  parameter Modelica.SIunits.Length x "Laenge des Materials in x Richtung der Waermeausbreitung";
  parameter Modelica.SIunits.Length y "Laenge des Materials in y Richtung der Waermeausbreitung";
  parameter Modelica.SIunits.Length z "Laenge des Materials in z Richtung der Waermeausbreitung";
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yp(G = Gy / 2) annotation(Placement(visible = true, transformation(origin = {0,48.2665}, extent = {{-10,10},{10,-10}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_yn(G = Gy / 2) annotation(Placement(visible = true, transformation(origin = {0,-50}, extent = {{-10,10},{10,-10}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zp annotation(Placement(visible = true, transformation(origin = {-90.147,-89.9621}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-90.147,-89.9621}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zn annotation(Placement(visible = true, transformation(origin = {90.147,89.9621}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {90.147,89.9621}, extent = {{-10,-10},{10,10}}, rotation = 0)));
protected
  parameter Modelica.SIunits.ThermalConductance Gx = (y * z * material.k) / x "Constant thermal conductance of material in x direction";
  parameter Modelica.SIunits.ThermalConductance Gy = (x * z * material.k) / y "Constant thermal conductance of material in x direction";
  parameter Modelica.SIunits.ThermalConductance Gz = (y * y * material.k) / z "Constant thermal conductance of material in x direction";
  parameter Modelica.SIunits.HeatCapacity C = x * y * z * material.d * material.c "Heat capacity of element (= cp*m)";
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
  annotation(experiment(StopTime = 1, StartTime = 0), Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {255,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Dot, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-99.8363,-100.111},{100.164,99.8886}}),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{67.7961,-9.3325},{89.8959,7.7865}}, textString = "xp"),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-89.1229,-9.3325},{-67.0231,7.7865}}, textString = "xn"),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-11.0499,71.446},{11.0499,88.565}}, textString = "yp"),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-11.4955,-90.0356},{10.6043,-72.9166}}, textString = "yn"),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{58.2761,65.9935},{80.3759,83.1125}}, textString = "zn"),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-83.9086,-81.0027},{-61.8088,-63.8837}}, textString = "zp"),Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-44.773,20.8807},{55.227,45.6943}}, textString = "electrical power")}));
end thermalModel_ElectronicBox;

