within iboss.iboss_thermal.Panel_5x5.components;

model thermal_5_conductor "thermal_5_conductor.mo"
  parameter Modelica.SIunits.Height x_Panel = 0.03 "thickness of Panel in m";
  parameter Modelica.SIunits.Height y_Panel = 0.4 "height of Panel in m";
  parameter Real h_c(unit = "W/(m2K)") = 3000 "Heat transfer coefficient between surfaces in contact";
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_l annotation(Placement(transformation(extent = {{-70, -10}, {-50, 10}}), iconTransformation(extent = {{-110, -10}, {-90, 10}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_5 thermal_connector_side_r annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{90, -10}, {110, 10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, 50}, {35, 70}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, 20}, {35, 40}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, -10}, {35, 10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor4(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, -40}, {35, -20}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor5(G = x_Panel * y_Panel * h_c / 5) annotation(Placement(transformation(extent = {{15, -70}, {35, -50}})));
equation
  connect(thermalConductor1.port_a, thermal_connector_side_l.port_0) annotation(Line(points = {{15, 60}, {10, 60}, {-55, 60}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor2.port_a, thermal_connector_side_l.port_1) annotation(Line(points = {{15, 30}, {10, 30}, {-55, 30}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor3.port_a, thermal_connector_side_l.port_2) annotation(Line(points = {{15, 0}, {10, 0}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor4.port_a, thermal_connector_side_l.port_3) annotation(Line(points = {{15, -30}, {10, -30}, {-55, -30}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor5.port_a, thermal_connector_side_l.port_4) annotation(Line(points = {{15, -60}, {10, -60}, {-55, -60}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.port_b, thermal_connector_side_r.port_0) annotation(Line(points = {{35, 60}, {40, 60}, {105, 60}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor2.port_b, thermal_connector_side_r.port_1) annotation(Line(points = {{35, 30}, {40, 30}, {105, 30}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor3.port_b, thermal_connector_side_r.port_2) annotation(Line(points = {{35, 0}, {40, 0}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor4.port_b, thermal_connector_side_r.port_3) annotation(Line(points = {{35, -30}, {40, -30}, {105, -30}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor5.port_b, thermal_connector_side_r.port_4) annotation(Line(points = {{35, -60}, {40, -60}, {105, -60}, {105, 0}, {110, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-100, -50}, {100, 50}}), graphics = {Rectangle(lineColor = {255, 255, 255}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Backward, lineThickness = 2.25, extent = {{-100, 50}, {100, -50}}), Text(textString = "5", lineColor = {0, 0, 0}, lineThickness = 2.25, extent = {{-96.7, 46.7}, {96.7, -46.7}})}), experiment(StopTime = 1, StartTime = 0));
end thermal_5_conductor;