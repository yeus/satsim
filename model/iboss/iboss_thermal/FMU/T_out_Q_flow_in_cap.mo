within iboss.iboss_thermal.FMU;

model T_out_Q_flow_in_cap "T_out_Q_flow_in_cap mit kleiner Kapazität für den FMU export - soll instabilitäten verhindern"
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(transformation(extent = {{-110, -25}, {-90, -5}}), iconTransformation(extent = {{-86.7, -8.300000000000001}, {-66.7, 11.7}})));
  input Modelica.Blocks.Interfaces.RealInput Q_flow_in annotation(Placement(transformation(extent = {{15, -10}, {55, 30}}), iconTransformation(extent = {{53.3, 31.7}, {93.3, 71.7}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow1 annotation(Placement(transformation(extent = {{-40, -10}, {-20, 10}})));
  output Modelica.Blocks.Interfaces.RealOutput T_out annotation(Placement(transformation(extent = {{35, -40}, {55, -20}}), iconTransformation(extent = {{63.3, -58.3}, {83.3, -38.3}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor1 annotation(Placement(transformation(extent = {{-30, -45}, {-10, -25}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C = 1) annotation(Placement(transformation(extent = {{-80, -15}, {-60, 5}})));
equation
  connect(prescribedHeatFlow1.Q_flow, Q_flow_in) annotation(Line(points = {{-40, 0}, {-45, 0}, {-45, 10}, {30, 10}, {35, 10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(temperatureSensor1.T, T_out) annotation(Line(points = {{-10, -35}, {-5, -35}, {40, -35}, {40, -30}, {45, -30}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(heatCapacitor1.port, port_a) annotation(Line(points = {{-70, -15}, {-70, -20}, {-82.3, -20}, {-82.3, -15}, {-95, -15}, {-100, -15}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(heatCapacitor1.port, prescribedHeatFlow1.port) annotation(Line(points = {{-70, -15}, {-70, -20}, {-15, -20}, {-15, 0}, {-20, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(heatCapacitor1.port, temperatureSensor1.port) annotation(Line(points = {{-70, -15}, {-70, -20}, {-70, -35}, {-35, -35}, {-30, -35}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-76.7, -101.7}, {76.7, 101.7}}), graphics = {Rectangle(lineColor = {255, 0, 0}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-80, 106.7}, {80, -113.3}}), Text(textString = "Q_in", lineColor = {255, 255, 255}, extent = {{-53.2, 93.5}, {56.8, 0.2}}), Text(textString = "T_out", lineColor = {255, 255, 255}, extent = {{-50.5, -5.2}, {59.5, -98.5}})}), experiment(StopTime = 1, StartTime = 0));
end T_out_Q_flow_in_cap;