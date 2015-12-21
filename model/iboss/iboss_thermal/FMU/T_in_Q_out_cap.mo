within iboss.iboss_thermal.FMU;

model T_in_Q_out_cap "T_in_Q_out_cap mit kleiner Kapazität für den FMU export - soll instabilitäten verhindern"
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(extent = {{-105, 10}, {-85, 30}}), iconTransformation(extent = {{-86.7, -8.300000000000001}, {-66.7, 11.7}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1 annotation(Placement(transformation(extent = {{-45, -5}, {-25, 15}})));
  output Modelica.Blocks.Interfaces.RealOutput Q_flow_out annotation(Placement(transformation(extent = {{15, 55}, {35, 75}}), iconTransformation(extent = {{63.3, 41.7}, {83.3, 61.7}})));
  input Modelica.Blocks.Interfaces.RealInput T_in annotation(Placement(transformation(extent = {{0, -20}, {40, 20}}), iconTransformation(extent = {{53.3, -68.3}, {93.3, -28.3}})));
  components.thermal_element thermal_element1(material = MaterialDatabase.Aluminiumlegierungen_1060_Legierung(), x = 0.01, y = 0.01, z = 0.01) annotation(Placement(transformation(extent = {{-65, 40}, {-45, 60}})));
equation
  Q_flow_out = -thermal_element1.port_b_xp.Q_flow;
  connect(prescribedTemperature1.T, T_in) annotation(Line(points = {{-47, 5}, {-52, 5}, {-52, -5}, {15, -5}, {15, 0}, {20, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(thermal_element1.port_a_xn, port_b) annotation(Line(points = {{-65.3, 50}, {-70.3, 50}, {-90, 50}, {-90, 20}, {-95, 20}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_element1.port_b_xp, prescribedTemperature1.port) annotation(Line(points = {{-45, 50}, {-40, 50}, {-20, 50}, {-20, 5}, {-25, 5}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-76.7, -101.7}, {76.7, 101.7}}), graphics = {Rectangle(fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-80, 106.7}, {80, -113.3}}), Text(textString = "Q_out", lineColor = {255, 255, 255}, extent = {{-53.2, 93.5}, {56.8, 0.2}}), Text(textString = "T_in", lineColor = {255, 255, 255}, extent = {{-50.5, -5.2}, {59.5, -98.5}})}), experiment(StopTime = 1, StartTime = 0));
end T_in_Q_out_cap;