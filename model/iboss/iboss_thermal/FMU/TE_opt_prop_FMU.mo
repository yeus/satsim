within iboss.iboss_thermal.FMU;

model TE_opt_prop_FMU "TE_opt_prop_FMU.mo"
  iboss.iboss_thermal.components.thermal_element_opt_prop thermal_element1(material = iboss.MaterialDatabase.Aluminiumlegierungen_1060_Legierung(), x = 0.1, y = 0.1, z = 0.1) annotation(Placement(transformation(extent = {{5, 0}, {25, 20}})));
  input Modelica.Blocks.Interfaces.RealInput Q_flow_in_xn annotation(Placement(transformation(origin = {-70, -20}, extent = {{-20, -20}, {20, 20}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput T_out_xn annotation(Placement(transformation(origin = {-75, 10}, extent = {{-10, -10}, {10, 10}})));
  output Modelica.Blocks.Interfaces.RealOutput T_out_xp annotation(Placement(transformation(origin = {100, 35}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  input Modelica.Blocks.Interfaces.RealInput Q_flow_in_xp annotation(Placement(transformation(origin = {95, 60}, extent = {{-20, -20}, {20, 20}})));
  output Modelica.Blocks.Interfaces.RealOutput alpha_out_xn annotation(Placement(transformation(extent = {{-85, 50}, {-65, 70}})));
  output Modelica.Blocks.Interfaces.RealOutput epsilon_out_xn annotation(Placement(transformation(extent = {{-85, 25}, {-65, 45}})));
  output Modelica.Blocks.Interfaces.RealOutput A_out_xn annotation(Placement(transformation(extent = {{-85, 70}, {-65, 90}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow_xn annotation(Placement(transformation(extent = {{-35, -30}, {-15, -10}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor_xn annotation(Placement(transformation(origin = {-25, 5}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput alpha_out_xp annotation(Placement(transformation(origin = {100, -15}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput epsilon_out_xp annotation(Placement(transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  output Modelica.Blocks.Interfaces.RealOutput A_out_xp annotation(Placement(transformation(origin = {100, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor_xn1 annotation(Placement(transformation(origin = {60, 35}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow_xn1 annotation(Placement(transformation(origin = {60, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
equation
  connect(thermal_element1.xn.A, A_out_xn) annotation(Line(points = {{5, 10}, {0, 10}, {-70, 10}, {-70, 80}, {-75, 80}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_element1.xn.alpha, alpha_out_xn) annotation(Line(points = {{5, 10}, {0, 10}, {-70, 10}, {-70, 60}, {-75, 60}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_element1.xn.epsilon, epsilon_out_xn) annotation(Line(points = {{5, 10}, {0, 10}, {-70, 10}, {-70, 35}, {-75, 35}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(temperatureSensor_xn.T, T_out_xn) annotation(Line(points = {{-35, 5}, {-40, 5}, {-70, 5}, {-70, 10}, {-75, 10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(prescribedHeatFlow_xn.Q_flow, Q_flow_in_xn) annotation(Line(points = {{-35, -20}, {-40, -20}, {-65, -20}, {-70, -20}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(temperatureSensor_xn.port, thermal_element1.xn.thermal_port) annotation(Line(points = {{-15, 5}, {-10, 5}, {0, 5}, {0, 10}, {5, 10}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(prescribedHeatFlow_xn.port, thermal_element1.xn.thermal_port) annotation(Line(points = {{-15, -20}, {-10, -20}, {0, -20}, {0, 10}, {5, 10}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(temperatureSensor_xn1.T, T_out_xp) annotation(Line(points = {{70, 35}, {75, 35}, {95, 35}, {100, 35}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(temperatureSensor_xn1.port, thermal_element1.xp.thermal_port) annotation(Line(points = {{50, 35}, {45, 35}, {30, 35}, {30, 10}, {25, 10}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(prescribedHeatFlow_xn1.Q_flow, Q_flow_in_xp) annotation(Line(points = {{70, 60}, {75, 60}, {90, 60}, {95, 60}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(prescribedHeatFlow_xn1.port, thermal_element1.xp.thermal_port) annotation(Line(points = {{50, 60}, {45, 60}, {30, 60}, {30, 10}, {25, 10}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_element1.xp.A, A_out_xp) annotation(Line(points = {{25, 10}, {30, 10}, {95, 10}, {100, 10}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(alpha_out_xp, thermal_element1.xp.alpha) annotation(Line(points = {{100, -15}, {95, -15}, {30, -15}, {30, 10}, {25, 10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(epsilon_out_xp, thermal_element1.xp.epsilon) annotation(Line(points = {{100, -40}, {95, -40}, {30, -40}, {30, 10}, {25, 10}}, color = {0, 0, 127}, thickness = 0.0625));
end TE_opt_prop_FMU;