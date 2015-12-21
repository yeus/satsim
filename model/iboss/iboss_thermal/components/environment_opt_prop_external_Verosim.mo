within iboss.iboss_thermal.components;

model environment_opt_prop_external_Verosim "environment_opt_prop_external_Verosim.mo"
  iboss.iboss_thermal.components.thermal_connector_opt_prop_in thermal_connector_opt_prop_in1 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {110, -25}, extent = {{10, 10}, {-10, -10}}, rotation = 180), iconTransformation(origin = {100, 0}, extent = {{-20, 20}, {20, -20}}, rotation = 270)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit = "K") = 3) annotation(Placement(transformation(origin = {195, -25}, extent = {{10, 10}, {-10, -10}}, rotation = 180)));
  input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(extent = {{-85, -50}, {-45, -10}}), iconTransformation(extent = {{-120, -20}, {-80, 20}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_TSS annotation(Placement(transformation(extent = {{70, 5}, {90, 25}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_MSS annotation(Placement(transformation(extent = {{70, -35}, {90, -15}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_Rad annotation(Placement(transformation(extent = {{70, -70}, {90, -50}})));
  iboss.iboss_thermal.components.VariableRad_no_Input variableRad_TSS(Gr = thermal_connector_opt_prop_in1.TSS.epsilon * thermal_connector_opt_prop_in1.TSS.A) annotation(Placement(transformation(extent = {{135, 5}, {155, 25}})));
  iboss.iboss_thermal.components.VariableRad_no_Input variableRad_MSS(Gr = thermal_connector_opt_prop_in1.MSS.epsilon * thermal_connector_opt_prop_in1.MSS.A) annotation(Placement(transformation(extent = {{135, -35}, {155, -15}})));
  iboss.iboss_thermal.components.VariableRad_no_Input variableRad_Rad(Gr = thermal_connector_opt_prop_in1.Rad.epsilon * thermal_connector_opt_prop_in1.Rad.A) annotation(Placement(transformation(extent = {{135, -70}, {155, -50}})));
  Modelica.Blocks.Sources.RealExpression Value_HeatFlow_TSS(y = u * thermal_connector_opt_prop_in1.TSS.alpha * thermal_connector_opt_prop_in1.TSS.A / (thermal_connector_opt_prop_in1.TSS.A + thermal_connector_opt_prop_in1.MSS.A + thermal_connector_opt_prop_in1.Rad.A)) annotation(Placement(transformation(extent = {{25, 5}, {45, 25}})));
  Modelica.Blocks.Sources.RealExpression Value_HeatFlow_MSS(y = u * thermal_connector_opt_prop_in1.MSS.alpha * thermal_connector_opt_prop_in1.MSS.A / (thermal_connector_opt_prop_in1.TSS.A + thermal_connector_opt_prop_in1.MSS.A + thermal_connector_opt_prop_in1.Rad.A)) annotation(Placement(transformation(extent = {{25, -35}, {45, -15}})));
  Modelica.Blocks.Sources.RealExpression Value_HeatFlow_Rad(y = u * thermal_connector_opt_prop_in1.Rad.alpha * thermal_connector_opt_prop_in1.Rad.A / (thermal_connector_opt_prop_in1.TSS.A + thermal_connector_opt_prop_in1.MSS.A + thermal_connector_opt_prop_in1.Rad.A)) annotation(Placement(transformation(extent = {{25, -70}, {45, -50}})));
equation
  connect(variableHeatFlow_TSS.port, thermal_connector_opt_prop_in1.TSS.thermal_port) annotation(Line(points = {{90, 15}, {95, 15}, {105, 15}, {105, -25}, {110, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableHeatFlow_MSS.port, thermal_connector_opt_prop_in1.MSS.thermal_port) annotation(Line(points = {{90, -25}, {95, -25}, {105, -25}, {110, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableHeatFlow_Rad.port, thermal_connector_opt_prop_in1.Rad.thermal_port) annotation(Line(points = {{90, -60}, {95, -60}, {105, -60}, {105, -25}, {110, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_MSS.port_b, fixedTemperature1.port) annotation(Line(points = {{155, -25}, {160, -25}, {210, -25}, {205, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_TSS.port_b, fixedTemperature1.port) annotation(Line(points = {{155, 15}, {160, 15}, {210, 15}, {210, -25}, {205, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_Rad.port_b, fixedTemperature1.port) annotation(Line(points = {{155, -60}, {160, -60}, {210, -60}, {210, -25}, {205, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_TSS.port_a, thermal_connector_opt_prop_in1.TSS.thermal_port) annotation(Line(points = {{135, 15}, {130, 15}, {115, 15}, {115, -25}, {110, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_MSS.port_a, thermal_connector_opt_prop_in1.MSS.thermal_port) annotation(Line(points = {{135, -25}, {130, -25}, {115, -25}, {110, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_Rad.port_a, thermal_connector_opt_prop_in1.Rad.thermal_port) annotation(Line(points = {{135, -60}, {130, -60}, {115, -60}, {115, -25}, {110, -25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(Value_HeatFlow_TSS.y, variableHeatFlow_TSS.Q_flow) annotation(Line(points = {{46, 15}, {51, 15}, {65, 15}, {70, 15}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Value_HeatFlow_MSS.y, variableHeatFlow_MSS.Q_flow) annotation(Line(points = {{46, -25}, {51, -25}, {65, -25}, {70, -25}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Value_HeatFlow_Rad.y, variableHeatFlow_Rad.Q_flow) annotation(Line(points = {{46, -60}, {51, -60}, {65, -60}, {70, -60}}, color = {0, 0, 127}, thickness = 0.0625));
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{98, -96}, {-96, 98}})}), experiment(StopTime = 1, StartTime = 0));
end environment_opt_prop_external_Verosim;