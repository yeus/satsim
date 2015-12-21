within iboss.iboss_thermal.FMU;

model environment_FMU "environment_FMU.mo"
  components.thermal_connector_opt_prop_in thermal_connector_opt_prop_in "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {60, -80}, extent = {{10, 10}, {-10, -10}}, rotation = 180), iconTransformation(origin = {150, 16.7}, extent = {{-20, 20}, {20, -20}}, rotation = 270)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit = "K") = 3) annotation(Placement(transformation(origin = {145, -80}, extent = {{10, 10}, {-10, -10}}, rotation = 180)));
  components.VariableRad_no_Input variableRad_TSS(Gr = thermal_connector_opt_prop_in.TSS.epsilon * thermal_connector_opt_prop_in.TSS.A) annotation(Placement(transformation(extent = {{85, -50}, {105, -30}})));
  components.VariableRad_no_Input variableRad_MSS(Gr = thermal_connector_opt_prop_in.MSS.epsilon * thermal_connector_opt_prop_in.MSS.A) annotation(Placement(transformation(extent = {{85, -90}, {105, -70}})));
  components.VariableRad_no_Input variableRad_Rad(Gr = thermal_connector_opt_prop_in.Rad.epsilon * thermal_connector_opt_prop_in.Rad.A) annotation(Placement(transformation(extent = {{85, -125}, {105, -105}})));
  input Modelica.Blocks.Interfaces.RealInput TSS_T_xn(start = 293) annotation(Placement(transformation(origin = {-10, 85}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -183.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput TSS_Q_flow_xn annotation(Placement(transformation(origin = {-15, -20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-150, -133.3}, extent = {{-10, -10}, {10, 10}})));
  input Modelica.Blocks.Interfaces.RealInput TSS_A_xn(start = 0.04) annotation(Placement(transformation(origin = {-10, 60}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -233.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput TSS_alpha_xn(start = 0.32) annotation(Placement(transformation(origin = {-10, 35}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -333.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput TSS_epsilon_xn(start = 0.02) annotation(Placement(transformation(origin = {-10, 10}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -283.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput MSS_T_xn(start = 293) annotation(Placement(transformation(origin = {-40, -45}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 66.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput MSS_Q_flow_xn annotation(Placement(transformation(origin = {-45, -150}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-150, 116.7}, extent = {{-10, -10}, {10, 10}})));
  input Modelica.Blocks.Interfaces.RealInput MSS_A_xn(start = 0.0064) annotation(Placement(transformation(origin = {-40, -70}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 16.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput MSS_alpha_xn(start = 0.15) annotation(Placement(transformation(origin = {-40, -95}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -83.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput MSS_epsilon_xn(start = 0.05) annotation(Placement(transformation(origin = {-40, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -33.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Rad_T_xn(start = 293) annotation(Placement(transformation(origin = {-10, -175}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 316.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput Rad_Q_flow_xn annotation(Placement(transformation(origin = {-15, -280}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-150, 366.7}, extent = {{-10, -10}, {10, 10}})));
  input Modelica.Blocks.Interfaces.RealInput Rad_A_xn(start = 0.1136) annotation(Placement(transformation(origin = {-10, -200}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 266.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Rad_alpha_xn(start = 0.0037) annotation(Placement(transformation(origin = {-10, -225}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 166.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Rad_epsilon_xn(start = 0.016) annotation(Placement(transformation(origin = {-10, -250}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 216.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  T_in_Q_out TSS_T_Q_xn;
  T_in_Q_out MSS_T_Q_xn;
  T_in_Q_out Rad_T_Q_xn;
  input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(extent = {{80, 10}, {120, 50}}), iconTransformation(extent = {{130, -53.3}, {170, -13.3}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_TSS annotation(Placement(transformation(extent = {{235, 65}, {255, 85}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_MSS annotation(Placement(transformation(extent = {{235, 25}, {255, 45}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_Rad annotation(Placement(transformation(extent = {{235, -10}, {255, 10}})));
  Modelica.Blocks.Sources.RealExpression Value_HeatFlow_TSS(y = u * thermal_connector_opt_prop_in.TSS.alpha * thermal_connector_opt_prop_in.TSS.A / (thermal_connector_opt_prop_in.TSS.A + thermal_connector_opt_prop_in.MSS.A + thermal_connector_opt_prop_in.Rad.A)) annotation(Placement(transformation(extent = {{190, 65}, {210, 85}})));
  Modelica.Blocks.Sources.RealExpression Value_HeatFlow_MSS(y = u * thermal_connector_opt_prop_in.MSS.alpha * thermal_connector_opt_prop_in.MSS.A / (thermal_connector_opt_prop_in.TSS.A + thermal_connector_opt_prop_in.MSS.A + thermal_connector_opt_prop_in.Rad.A)) annotation(Placement(transformation(extent = {{190, 25}, {210, 45}})));
  Modelica.Blocks.Sources.RealExpression Value_HeatFlow_Rad(y = u * thermal_connector_opt_prop_in.Rad.alpha * thermal_connector_opt_prop_in.Rad.A / (thermal_connector_opt_prop_in.TSS.A + thermal_connector_opt_prop_in.MSS.A + thermal_connector_opt_prop_in.Rad.A)) annotation(Placement(transformation(extent = {{190, -10}, {210, 10}})));
equation
  connect(variableHeatFlow_TSS.port, thermal_connector_opt_prop_in.TSS.thermal_port) annotation(Line(points = {{255, 75}, {260, 75}, {260, -80}, {65, -80}, {60, -80}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableHeatFlow_MSS.port, thermal_connector_opt_prop_in.MSS.thermal_port) annotation(Line(points = {{255, 35}, {260, 35}, {260, -80}, {65, -80}, {60, -80}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableHeatFlow_Rad.port, thermal_connector_opt_prop_in.Rad.thermal_port) annotation(Line(points = {{255, 0}, {260, 0}, {260, -80}, {65, -80}, {60, -80}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(variableRad_MSS.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -80}, {110, -80}, {160, -80}, {155, -80}}));
  connect(variableRad_TSS.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -40}, {110, -40}, {160, -40}, {160, -80}, {155, -80}}));
  connect(variableRad_Rad.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -115}, {110, -115}, {160, -115}, {160, -80}, {155, -80}}));
  connect(variableRad_Rad.port_a, thermal_connector_opt_prop_in.Rad.thermal_port) annotation(Line(points = {{85, -115}, {80, -115}, {65, -115}, {65, -80}, {60, -80}}));
  connect(variableRad_MSS.port_a, thermal_connector_opt_prop_in.MSS.thermal_port) annotation(Line(points = {{85, -80}, {80, -80}, {65, -80}, {60, -80}}));
  connect(variableRad_TSS.port_a, thermal_connector_opt_prop_in.TSS.thermal_port) annotation(Line(points = {{85, -40}, {80, -40}, {65, -40}, {65, -80}, {60, -80}}));
  connect(TSS_T_Q_xn.port_b, thermal_connector_opt_prop_in.TSS.thermal_port) annotation(Line(points = {{39.7, 37.7}, {44.7, 37.7}, {55, 37.7}, {55, -80}, {60, -80}}));
  connect(MSS_T_Q_xn.port_b, thermal_connector_opt_prop_in.MSS.thermal_port) annotation(Line(points = {{14.7, -82}, {19.7, -82}, {55, -82}, {55, -80}, {60, -80}}));
  connect(Rad_T_Q_xn.port_b, thermal_connector_opt_prop_in.Rad.thermal_port) annotation(Line(points = {{39.7, -227.3}, {44.7, -227.3}, {55, -227.3}, {55, -80}, {60, -80}}));
  connect(Value_HeatFlow_TSS.y, variableHeatFlow_TSS.Q_flow) annotation(Line(points = {{211, 75}, {216, 75}, {230, 75}, {235, 75}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Value_HeatFlow_MSS.y, variableHeatFlow_MSS.Q_flow) annotation(Line(points = {{211, 35}, {216, 35}, {230, 35}, {235, 35}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Value_HeatFlow_Rad.y, variableHeatFlow_Rad.Q_flow) annotation(Line(points = {{211, 0}, {216, 0}, {230, 0}, {235, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(TSS_T_Q_xn.T_in, TSS_T_xn) annotation(Line(points = {{28, 40}, {28, 45}, {28, 85}, {-5, 85}, {-10, 85}}));
  connect(thermal_connector_opt_prop_in.TSS.A, TSS_A_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.TSS.alpha, TSS_alpha_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.TSS.epsilon, TSS_epsilon_xn) annotation(Line(points = 0));
  connect(TSS_T_Q_xn.Q_flow_out, TSS_Q_flow_xn) annotation(Line(points = {{27.7, 33.3}, {27.7, 28.3}, {27.7, -20}, {-10, -20}, {-15, -20}}));
  connect(MSS_T_Q_xn.T_in, MSS_T_xn) annotation(Line(points = {{3, -80}, {3, -75}, {3, -45}, {-35, -45}, {-40, -45}}));
  connect(thermal_connector_opt_prop_in.MSS.A, MSS_A_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.MSS.alpha, MSS_alpha_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.MSS.epsilon, MSS_epsilon_xn) annotation(Line(points = 0));
  connect(MSS_T_Q_xn.Q_flow_out, MSS_Q_flow_xn) annotation(Line(points = {{2.7, -86.7}, {2.7, -91.7}, {2.7, -150}, {-40, -150}, {-45, -150}}));
  connect(Rad_T_Q_xn.T_in, Rad_T_xn) annotation(Line(points = {{28, -225}, {28, -220}, {28, -175}, {-5, -175}, {-10, -175}}));
  connect(thermal_connector_opt_prop_in.Rad.A, Rad_A_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.Rad.alpha, Rad_alpha_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.Rad.epsilon, Rad_epsilon_xn) annotation(Line(points = 0));
  connect(Rad_T_Q_xn.Q_flow_out, Rad_Q_flow_xn) annotation(Line(points = {{27.7, -231.7}, {27.7, -236.7}, {27.7, -280}, {-10, -280}, {-15, -280}}));
  annotation(Icon(coordinateSystem(extent = {{-150, -416.7}, {150, 416.7}}), graphics = {Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-153.3, 420}, {146.7, -430}}), Text(textString = "FMU", lineColor = {255, 255, 255}, extent = {{-131.7, 73.3}, {131.6, -73.40000000000001}}, origin = {78.7, -27}, rotation = -268), Text(textString = "Rad", lineColor = {255, 255, 255}, extent = {{-129.9, 298.8}, {-33.2, 205.5}}), Text(textString = "MSS", lineColor = {255, 255, 255}, extent = {{-133, 62.3}, {-36.3, -31}}), Text(textString = "TSS", lineColor = {255, 255, 255}, extent = {{-132.8, -174.5}, {-36.1, -267.8}})}), experiment(StopTime = 1, StartTime = 0));
end environment_FMU;