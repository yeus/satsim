within iboss.iboss_thermal.FMU;

model space_radiation_FMU "space_radiation_FMU.mo"
  components.thermal_connector_opt_prop_in thermal_connector_opt_prop_in "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {60, -80}, extent = {{10, 10}, {-10, -10}}, rotation = 180), iconTransformation(origin = {150, 16.7}, extent = {{-20, 20}, {20, -20}}, rotation = 270)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit = "K") = 3) annotation(Placement(transformation(origin = {145, -80}, extent = {{10, 10}, {-10, -10}}, rotation = 180)));
  components.VariableRad_no_Input variableRad_TSS(Gr = thermal_connector_opt_prop_in.TSS.epsilon * thermal_connector_opt_prop_in.TSS.A) annotation(Placement(transformation(extent = {{85, -50}, {105, -30}})));
  components.VariableRad_no_Input variableRad_MSS(Gr = thermal_connector_opt_prop_in.MSS.epsilon * thermal_connector_opt_prop_in.MSS.A) annotation(Placement(transformation(extent = {{85, -90}, {105, -70}})));
  components.VariableRad_no_Input variableRad_Rad(Gr = thermal_connector_opt_prop_in.Rad.epsilon * thermal_connector_opt_prop_in.Rad.A) annotation(Placement(transformation(extent = {{85, -125}, {105, -105}})));
  input Modelica.Blocks.Interfaces.RealInput TSS_T_in_xn(start = 293) annotation(Placement(transformation(origin = {-10, 85}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -183.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput TSS_Q_flow_out_xn annotation(Placement(transformation(origin = {-15, -20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-150, -133.3}, extent = {{-10, -10}, {10, 10}})));
  input Modelica.Blocks.Interfaces.RealInput TSS_A_in_xn(start = 0.04) annotation(Placement(transformation(origin = {-10, 60}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -233.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput TSS_alpha_in_xn(start = 0.32) annotation(Placement(transformation(origin = {-10, 35}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -333.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput TSS_epsilon_in_xn(start = 0.02) annotation(Placement(transformation(origin = {-10, 10}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -283.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput MSS_T_in_xn(start = 293) annotation(Placement(transformation(origin = {-40, -45}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 66.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput MSS_Q_flow_out_xn annotation(Placement(transformation(origin = {-45, -150}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-150, 116.7}, extent = {{-10, -10}, {10, 10}})));
  input Modelica.Blocks.Interfaces.RealInput MSS_A_in_xn(start = 0.0064) annotation(Placement(transformation(origin = {-40, -70}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 16.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput MSS_alpha_in_xn(start = 0.15) annotation(Placement(transformation(origin = {-40, -95}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -83.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput MSS_epsilon_in_xn(start = 0.05) annotation(Placement(transformation(origin = {-40, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, -33.3}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Rad_T_in_xn(start = 293) annotation(Placement(transformation(origin = {-10, -175}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 316.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput Rad_Q_flow_out_xn annotation(Placement(transformation(origin = {-15, -280}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-150, 366.7}, extent = {{-10, -10}, {10, 10}})));
  input Modelica.Blocks.Interfaces.RealInput Rad_A_in_xn(start = 0.1136) annotation(Placement(transformation(origin = {-10, -200}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 266.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Rad_alpha_in_xn(start = 0.0037) annotation(Placement(transformation(origin = {-10, -225}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 166.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Rad_epsilon_in_xn(start = 0.016) annotation(Placement(transformation(origin = {-10, -250}, extent = {{-20, -20}, {20, 20}}, rotation = -180), iconTransformation(origin = {-150, 216.7}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  T_in_Q_out TSS_T_in_Q_out_xn;
  T_in_Q_out MSS_T_in_Q_out_xn;
  T_in_Q_out Rad_T_in_Q_out_xn;
equation
  connect(variableRad_MSS.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -80}, {110, -80}, {160, -80}, {155, -80}}));
  connect(variableRad_TSS.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -40}, {110, -40}, {160, -40}, {160, -80}, {155, -80}}));
  connect(variableRad_Rad.port_b, fixedTemperature1.port) annotation(Line(points = {{105, -115}, {110, -115}, {160, -115}, {160, -80}, {155, -80}}));
  connect(variableRad_Rad.port_a, thermal_connector_opt_prop_in.Rad.thermal_port) annotation(Line(points = {{85, -115}, {80, -115}, {65, -115}, {65, -80}, {60, -80}}));
  connect(variableRad_MSS.port_a, thermal_connector_opt_prop_in.MSS.thermal_port) annotation(Line(points = {{85, -80}, {80, -80}, {65, -80}, {60, -80}}));
  connect(variableRad_TSS.port_a, thermal_connector_opt_prop_in.TSS.thermal_port) annotation(Line(points = {{85, -40}, {80, -40}, {65, -40}, {65, -80}, {60, -80}}));
  connect(TSS_T_in_Q_out_xn.port_b, thermal_connector_opt_prop_in.TSS.thermal_port) annotation(Line(points = {{39.7, 37.7}, {44.7, 37.7}, {55, 37.7}, {55, -80}, {60, -80}}));
  connect(MSS_T_in_Q_out_xn.port_b, thermal_connector_opt_prop_in.MSS.thermal_port) annotation(Line(points = {{14.7, -82}, {19.7, -82}, {55, -82}, {55, -80}, {60, -80}}));
  connect(Rad_T_in_Q_out_xn.port_b, thermal_connector_opt_prop_in.Rad.thermal_port) annotation(Line(points = {{39.7, -227.3}, {44.7, -227.3}, {55, -227.3}, {55, -80}, {60, -80}}));
  connect(TSS_T_in_Q_out_xn.Q_flow_out, TSS_Q_flow_out_xn) annotation(Line(points = {{27.7, 33.3}, {27.7, 28.3}, {27.7, -20}, {-10, -20}, {-15, -20}}));
  connect(TSS_T_in_Q_out_xn.T_in, TSS_T_in_xn) annotation(Line(points = {{28, 40}, {28, 45}, {28, 85}, {-5, 85}, {-10, 85}}));
  connect(thermal_connector_opt_prop_in.TSS.A, TSS_A_in_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.TSS.alpha, TSS_alpha_in_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.TSS.epsilon, TSS_epsilon_in_xn) annotation(Line(points = 0));
  connect(MSS_T_in_Q_out_xn.Q_flow_out, MSS_Q_flow_out_xn) annotation(Line(points = {{2.7, -86.7}, {2.7, -91.7}, {2.7, -150}, {-40, -150}, {-45, -150}}));
  connect(MSS_T_in_Q_out_xn.T_in, MSS_T_in_xn) annotation(Line(points = {{3, -80}, {3, -75}, {3, -45}, {-35, -45}, {-40, -45}}));
  connect(thermal_connector_opt_prop_in.MSS.A, MSS_A_in_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.MSS.alpha, MSS_alpha_in_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.MSS.epsilon, MSS_epsilon_in_xn) annotation(Line(points = 0));
  connect(Rad_T_in_Q_out_xn.Q_flow_out, Rad_Q_flow_out_xn) annotation(Line(points = {{27.7, -231.7}, {27.7, -236.7}, {27.7, -280}, {-10, -280}, {-15, -280}}));
  connect(Rad_T_in_Q_out_xn.T_in, Rad_T_in_xn) annotation(Line(points = {{28, -225}, {28, -220}, {28, -175}, {-5, -175}, {-10, -175}}));
  connect(thermal_connector_opt_prop_in.Rad.A, Rad_A_in_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.Rad.alpha, Rad_alpha_in_xn) annotation(Line(points = 0));
  connect(thermal_connector_opt_prop_in.Rad.epsilon, Rad_epsilon_in_xn) annotation(Line(points = 0));
  annotation(Icon(coordinateSystem(extent = {{-150, -416.7}, {150, 416.7}}), graphics = {Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-153.3, 420}, {146.7, -430}}), Text(textString = "FMU", lineColor = {255, 255, 255}, extent = {{-131.7, 73.3}, {131.6, -73.40000000000001}}, origin = {78.7, -27}, rotation = -268), Text(textString = "Rad", lineColor = {255, 255, 255}, extent = {{-129.9, 298.8}, {-33.2, 205.5}}), Text(textString = "MSS", lineColor = {255, 255, 255}, extent = {{-133, 62.3}, {-36.3, -31}}), Text(textString = "TSS", lineColor = {255, 255, 255}, extent = {{-132.8, -174.5}, {-36.1, -267.8}})}), experiment(StopTime = 1, StartTime = 0));
end space_radiation_FMU;