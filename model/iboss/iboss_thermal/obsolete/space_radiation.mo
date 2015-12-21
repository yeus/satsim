within iboss.iboss_thermal.obsolete;

model space_radiation "space_radiation.mo"
  components.thermal_connector_opt_prop_in thermal_connector_opt_prop_in "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {60, -80}, extent = {{10, 10}, {-10, -10}}, rotation = 180), iconTransformation(origin = {100, 0}, extent = {{-20, 20}, {20, -20}}, rotation = 270)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit = "K") = 3) annotation(Placement(transformation(origin = {145, -80}, extent = {{10, 10}, {-10, -10}}, rotation = 180)));
  components.VariableRad_no_Input variableRad_TSS(Gr = thermal_connector_opt_prop_in.TSS.epsilon * thermal_connector_opt_prop_in.TSS.A) annotation(Placement(transformation(extent = {{85, -50}, {105, -30}})));
  components.VariableRad_no_Input variableRad_MSS(Gr = thermal_connector_opt_prop_in.MSS.epsilon * thermal_connector_opt_prop_in.MSS.A) annotation(Placement(transformation(extent = {{85, -90}, {105, -70}})));
  components.VariableRad_no_Input variableRad_Rad(Gr = thermal_connector_opt_prop_in.Rad.epsilon * thermal_connector_opt_prop_in.Rad.A) annotation(Placement(transformation(extent = {{85, -125}, {105, -105}})));
equation
  connect(variableRad_MSS.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -80}, {110, -80}, {160, -80}, {155, -80}}));
  connect(variableRad_TSS.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -40}, {110, -40}, {160, -40}, {160, -80}, {155, -80}}));
  connect(variableRad_Rad.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -115}, {110, -115}, {160, -115}, {160, -80}, {155, -80}}));
  connect(variableRad_Rad.port_a, thermal_connector_opt_prop_in.Rad.thermal_port) annotation(Line(points = {{85, -115}, {80, -115}, {65, -115}, {65, -80}, {60, -80}}));
  connect(variableRad_MSS.port_a, thermal_connector_opt_prop_in.MSS.thermal_port) annotation(Line(points = {{85, -80}, {80, -80}, {65, -80}, {60, -80}}));
  connect(variableRad_TSS.port_a, thermal_connector_opt_prop_in.TSS.thermal_port) annotation(Line(points = {{85, -40}, {80, -40}, {65, -40}, {65, -80}, {60, -80}}));
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {110, -103.3}})}), experiment(StopTime = 1, StartTime = 0));
end space_radiation;