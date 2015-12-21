within iboss.iboss_thermal.FMU;

model TE_for_FMU "TE_for_FMU.mo"
  iboss.iboss_thermal.components.thermal_element thermal_element1(material = iboss.MaterialDatabase.Aluminiumlegierungen_1060_Legierung(), x = 0.1, y = 0.1, z = 0.1) annotation(Placement(transformation(extent = {{0, 5}, {20, 25}})));
  iboss.iboss_thermal.FMU.T_out_Q_flow_in t_out_Q_flow_in_xn;
  iboss.iboss_thermal.FMU.T_out_Q_flow_in t_out_Q_flow_in_xp;
  input Modelica.Blocks.Interfaces.RealInput Q_flow_in_xn annotation(Placement(transformation(origin = {-70, 0}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput T_out_xn annotation(Placement(transformation(origin = {-80, 40}, extent = {{-10, -10}, {10, 10}})));
  output Modelica.Blocks.Interfaces.RealOutput T_out_xp annotation(Placement(transformation(origin = {85, 5}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Q_flow_in_xp annotation(Placement(transformation(origin = {85, 40}, extent = {{-20, -20}, {20, 20}})));
equation
  connect(t_out_Q_flow_in_xn.port_a, thermal_element1.port_a_xn) annotation(Line(points = {{-15, 26.3}, {-10, 26.3}, {-5.3, 26.3}, {-5.3, 15}, {-0.3, 15}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(t_out_Q_flow_in_xn.Q_flow_in, Q_flow_in_xn) annotation(Line(points = {{-28.3, 24}, {-28.3, 19}, {-28.3, 0}, {-65, 0}, {-70, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(thermal_element1.port_b_xp, t_out_Q_flow_in_xp.port_a) annotation(Line(points = {{20, 15}, {25, 15}, {35, 15}, {35, 18.3}, {40, 18.3}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(t_out_Q_flow_in_xp.Q_flow_in, Q_flow_in_xp) annotation(Line(points = {{53.7, 21}, {53.7, 26}, {53.7, 40}, {80, 40}, {85, 40}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_out_Q_flow_in_xp.T_out, T_out_xp) annotation(Line(points = {{54.7, 16.7}, {54.7, 11.7}, {54.7, 5}, {80, 5}, {85, 5}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_out_Q_flow_in_xn.T_out, T_out_xn) annotation(Line(points = {{-29.3, 28}, {-29.3, 33}, {-29.3, 40}, {-75, 40}, {-80, 40}}, color = {0, 0, 127}, thickness = 0.0625));
  annotation(experiment(StopTime = 1, StartTime = 0));
end TE_for_FMU;