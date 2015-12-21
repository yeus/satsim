within iboss.iboss_thermal.FMU;

model TC_opt_prop_FMU "TC_opt_prop_FMU.mo"
  components.thermal_conductor_A thermalConductor1 annotation(Placement(transformation(extent = {{10, 70}, {30, 90}})));
  input Modelica.Blocks.Interfaces.RealInput T_in_xp annotation(Placement(transformation(extent = {{85, 60}, {125, 100}})));
  output Modelica.Blocks.Interfaces.RealOutput Q_flow_out_xp annotation(Placement(transformation(origin = {110, -25}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput Q_flow_out_xn annotation(Placement(transformation(extent = {{-55, -40}, {-35, -20}})));
  input Modelica.Blocks.Interfaces.RealInput T_in_xn annotation(Placement(transformation(origin = {-45, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput A_in_xp annotation(Placement(transformation(extent = {{85, 35}, {125, 75}})));
  input Modelica.Blocks.Interfaces.RealInput alpha_in_xp annotation(Placement(transformation(extent = {{85, 10}, {125, 50}})));
  input Modelica.Blocks.Interfaces.RealInput epsilon_in_xp annotation(Placement(transformation(extent = {{85, -15}, {125, 25}})));
  input Modelica.Blocks.Interfaces.RealInput A_in_xn annotation(Placement(transformation(origin = {-45, 55}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput alpha_in_xn annotation(Placement(transformation(origin = {-45, 30}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput epsilon_in_xn annotation(Placement(transformation(origin = {-45, 5}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  T_in_Q_out t_in_Q_out_xp;
  T_in_Q_out t_in_Q_out1;
equation
  connect(thermalConductor1.surface_properties2.A, A_in_xp) annotation(Line(points = {{30, 80}, {35, 80}, {100, 80}, {100, 55}, {105, 55}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.surface_properties2.alpha, alpha_in_xp) annotation(Line(points = {{30, 80}, {35, 80}, {100, 80}, {100, 30}, {105, 30}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.surface_properties2.epsilon, epsilon_in_xp) annotation(Line(points = {{30, 80}, {35, 80}, {100, 80}, {100, 5}, {105, 5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.surface_properties1.A, A_in_xn) annotation(Line(points = {{10, 80}, {5, 80}, {-40, 80}, {-40, 55}, {-45, 55}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.surface_properties1.alpha, alpha_in_xn) annotation(Line(points = {{10, 80}, {5, 80}, {-40, 80}, {-40, 30}, {-45, 30}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.surface_properties1.epsilon, epsilon_in_xn) annotation(Line(points = {{10, 80}, {5, 80}, {-40, 80}, {-40, 5}, {-45, 5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(t_in_Q_out_xp.Q_flow_out, Q_flow_out_xp) annotation(Line(points = {{62.7, 61.3}, {62.7, 66.3}, {83.7, 66.3}, {83.7, -25}, {105, -25}, {110, -25}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_in_Q_out_xp.T_in, T_in_xp) annotation(Line(points = {{62, 55}, {62, 60}, {62, 80}, {100, 80}, {105, 80}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_in_Q_out1.Q_flow_out, Q_flow_out_xn) annotation(Line(points = {{-12.3, 43.3}, {-12.3, 38.3}, {-12.3, -30}, {-40, -30}, {-45, -30}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_in_Q_out1.T_in, T_in_xn) annotation(Line(points = {{-12, 50}, {-12, 55}, {-12, 80}, {-40, 80}, {-45, 80}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_in_Q_out1.port_b, thermalConductor1.surface_properties1.thermal_port) annotation(Line(points = {{-0.3, 47.7}, {4.7, 47.7}, {5, 47.7}, {5, 80}, {10, 80}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(t_in_Q_out_xp.port_b, thermalConductor1.surface_properties2.thermal_port) annotation(Line(points = {{50.7, 57}, {45.7, 57}, {35, 57}, {35, 80}, {30, 80}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(experiment(StopTime = 1, StartTime = 0));
end TC_opt_prop_FMU;