within iboss.iboss_thermal.FMU;

model TC_for_FMU "TC_for_FMU.mo"
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G = 10) annotation(Placement(transformation(extent = {{5, 5}, {25, 25}})));
  T_in_Q_out t_in_Q_out_xn;
  T_in_Q_out t_in_Q_out_xp;
  input Modelica.Blocks.Interfaces.RealInput Q_flow_out_xp annotation(Placement(transformation(extent = {{80, -15}, {120, 25}})));
  output Modelica.Blocks.Interfaces.RealOutput T_in_xp annotation(Placement(transformation(origin = {105, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput T_in_xn annotation(Placement(transformation(extent = {{-65, -15}, {-45, 5}})));
  input Modelica.Blocks.Interfaces.RealInput Q_flow_out_xn annotation(Placement(transformation(origin = {-50, 40}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
equation
  connect(t_in_Q_out_xn.port_b, thermalConductor1.port_a) annotation(Line(points = {{-10.3, 17.7}, {-5.3, 17.7}, {0, 17.7}, {0, 15}, {5, 15}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConductor1.port_b, t_in_Q_out_xp.port_b) annotation(Line(points = {{25, 15}, {30, 15}, {40.7, 15}, {40.7, 17}, {45.7, 17}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(t_in_Q_out_xn.T_in, Q_flow_out_xn) annotation(Line(points = {{-22, 20}, {-22, 25}, {-22, 40}, {-45, 40}, {-50, 40}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(T_in_xn, t_in_Q_out_xn.Q_flow_out) annotation(Line(points = {{-55, -5}, {-50, -5}, {-22.3, -5}, {-22.3, 8.300000000000001}, {-22.3, 13.3}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_in_Q_out_xp.T_in, Q_flow_out_xp) annotation(Line(points = {{57, 14.7}, {57, 9.699999999999999}, {57, 5}, {95, 5}, {100, 5}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(t_in_Q_out_xp.Q_flow_out, T_in_xp) annotation(Line(points = {{57.7, 21.3}, {57.7, 26.3}, {57.7, 50}, {100, 50}, {105, 50}}, color = {0, 0, 127}, thickness = 0.0625));
  annotation(experiment(StopTime = 1, StartTime = 0));
end TC_for_FMU;