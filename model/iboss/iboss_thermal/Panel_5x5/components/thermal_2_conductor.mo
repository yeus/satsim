within iboss.iboss_thermal.Panel_5x5.components;

model thermal_2_conductor "thermal_2_conductor.mo"
  parameter Modelica.SIunits.Height x_Panel = 0.03 "thickness of Panel in m";
  parameter Modelica.SIunits.Height y_Panel = 0.4 "height of Panel in m";
  parameter Real h_c(unit = "W/(m2K)") = 3000 "Heat transfer coefficient between surfaces in contact";
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_side_l annotation(Placement(transformation(extent = {{-70, -10}, {-50, 10}}), iconTransformation(extent = {{-110, -10}, {-90, 10}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_side_r annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{90, -10}, {110, 10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, 15}, {35, 35}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, -35}, {35, -15}})));
equation
  connect(thermalConductor1.port_a, thermal_connector_side_l.port_0) annotation(Line(points = {{15, 25}, {10, 25}, {-55, 25}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor2.port_a, thermal_connector_side_l.port_1) annotation(Line(points = {{15, -25}, {10, -25}, {-55, -25}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.port_b, thermal_connector_side_r.port_0) annotation(Line(points = {{35, 25}, {40, 25}, {105, 25}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor2.port_b, thermal_connector_side_r.port_1) annotation(Line(points = {{35, -25}, {40, -25}, {105, -25}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-100, -50}, {100, 50}}), graphics = {Rectangle(lineColor = {255, 255, 255}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Backward, lineThickness = 2.25, extent = {{-100, 50}, {100, -50}}), Text(textString = "2", lineColor = {0, 0, 0}, lineThickness = 2.25, extent = {{-96.7, 46.7}, {96.7, -46.7}})}));
end thermal_2_conductor;