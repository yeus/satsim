within iboss.iboss_thermal.components;

model thermal_element
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a_xn annotation(Placement(transformation(origin = {-73, 13}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-102, -0}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b_xp annotation(Placement(transformation(origin = {77, 13}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {100, 0}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductorrechts_x(G = Gx / 2) annotation(Placement(transformation(origin = {47, 20}, extent = {{-12, -12}, {0, 0}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C = C, T(fixed = true)) annotation(Placement(transformation(origin = {0, 30}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorlinks_x(G = Gx / 2) annotation(Placement(transformation(origin = {-30, 15}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a_yn annotation(Placement(transformation(extent = {{-10, -70}, {10, -50}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b_yp annotation(Placement(transformation(extent = {{-10, 80}, {10, 100}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a_zn annotation(Placement(transformation(extent = {{40, 55}, {60, 75}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b_zp annotation(Placement(transformation(extent = {{-60, -55}, {-40, -35}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorunten_y(G = Gy / 2) annotation(Placement(transformation(origin = {-3, -22}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductoroben_y(G = Gy / 2) annotation(Placement(transformation(origin = {-5, 65}, extent = {{-10, -10}, {5, 5}}, rotation = -270)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorhinten_z(G = Gz / 2) annotation(Placement(transformation(origin = {25, 36}, extent = {{-10, -10}, {10, 10}}, rotation = -135)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorvorne_z(G = Gz / 2) annotation(Placement(transformation(origin = {-30, -15}, extent = {{-10, -10}, {10, 10}}, rotation = -135)));
  parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})), choicesAllMatching = true);
  parameter Modelica.SIunits.Length x "Laenge des Materials in x Richtung der Waermeausbreitung";
  parameter Modelica.SIunits.Length y "Laenge des Materials in y Richtung der Waermeausbreitung";
  parameter Modelica.SIunits.Length z "Laenge des Materials in z Richtung der Waermeausbreitung";
protected
  parameter Modelica.SIunits.ThermalConductance Gx = y * z * material.k / x "Constant thermal conductance of material in x direction";
  parameter Modelica.SIunits.ThermalConductance Gy = x * z * material.k / y "Constant thermal conductance of material in x direction";
  parameter Modelica.SIunits.ThermalConductance Gz = y * x * material.k / z "Constant thermal conductance of material in x direction";
  parameter Modelica.SIunits.HeatCapacity C = x * y * z * material.d * material.c "Heat capacity of element (= cp*m)";
equation
  connect(thermalConductorlinks_x.port_a, port_a_xn) annotation(Line(points = {{-40, 15}, {-45, 15}, {-68, 15}, {-68, 13}, {-73, 13}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(heatcapacitor1.port, thermalConductorlinks_x.port_b) annotation(Line(points = {{0, 18}, {0, 13}, {-7.3, 13}, {-7.3, 15}, {-15, 15}, {-20, 15}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(port_b_xp, thermalconductorrechts_x.port_b) annotation(Line(points = {{77, 13}, {72, 13}, {52, 13}, {52, 14}, {47, 14}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(heatcapacitor1.port, thermalconductorrechts_x.port_a) annotation(Line(points = {{0, 18}, {0, 13}, {15, 13}, {15, 14}, {30, 14}, {35, 14}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductorunten_y.port_b, heatcapacitor1.port) annotation(Line(points = {{-3, -14.3}, {-3, -9.300000000000001}, {-3, 13}, {0, 13}, {0, 18}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductorunten_y.port_a, port_a_yn) annotation(Line(points = {{-3, -29.7}, {-3, -34.7}, {-5, -34.7}, {-5, -60}, {0, -60}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductoroben_y.port_a, heatcapacitor1.port) annotation(Line(points = {{-2.7, 55}, {-2.7, 50}, {-1.3, 50}, {-1.3, 13}, {0, 13}, {0, 18}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductoroben_y.port_b, port_b_yp) annotation(Line(points = {{-2.7, 70}, {-2.7, 75}, {-5, 75}, {-5, 90}, {0, 90}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductorvorne_z.port_b, port_b_zp) annotation(Line(points = {{-37, -22}, {-42, -22}, {-45, -22}, {-45, -45}, {-50, -45}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductorvorne_z.port_a, heatcapacitor1.port) annotation(Line(points = {{-23, -8}, {-18, -8}, {0, -8}, {0, 13}, {0, 18}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductorhinten_z.port_b, heatcapacitor1.port) annotation(Line(points = {{18, 29}, {13, 29}, {13, 13}, {0, 13}, {0, 18}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductorhinten_z.port_a, port_a_zn) annotation(Line(points = {{32, 43}, {37, 43}, {45, 43}, {45, 65}, {50, 65}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(grid = {10, 10}), graphics = {Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-94.63549999999999, -59.4223}, {96.011, 61.8982}}, visible = true, origin = {-0.6878, -1.238}), Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-101.2507, 52.8171}, {98.74930000000001, 112.8171}}, visible = true, origin = {82.8171, 1.2507}, rotation = 90), Text(textString = "thermal element", fontSize = 16, fillColor = {0, 0, 255}, extent = {{-3, -2}, {0, 9}}, visible = true)}), experiment(StopTime = 1, StartTime = 0));
end thermal_element;