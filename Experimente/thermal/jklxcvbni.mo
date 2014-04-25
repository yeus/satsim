model jklxcvbni
  iboss.iboss_thermal.components.TCS tcs1(hysteresis_cooler = 10, hysteresis_heater = 10) annotation(Placement(visible = true, transformation(origin = {-60, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C = 10) annotation(Placement(visible = true, transformation(origin = {40, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  iboss.iboss_thermal.components.heater_cooler_EPS heater_cooler_eps1(power_cooler = -50, power_heater = 300, lower_Temp_boundary = 270) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedheatflow1(Q_flow = -10) annotation(Placement(visible = true, transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
initial equation
  heatcapacitor1.T = 290;
equation
  connect(heatcapacitor1.port, tcs1.Temp) annotation(Line(points = {{40, 70}, {-70.3704, 70}, {-70.3704, 20.2614}, {-70.3704, 20.2614}}));
  connect(fixedheatflow1.port, heatcapacitor1.port) annotation(Line(points = {{10, 60}, {39.6514, 60}, {39.6514, 70.1525}, {39.6514, 70.1525}}));
  connect(heater_cooler_eps1.Power_heating_cooling, heatcapacitor1.port) annotation(Line(points = {{0, 10}, {40.0871, 10}, {40.0871, 69.9346}, {40.0871, 69.9346}}));
  connect(tcs1.Tmin, heater_cooler_eps1.Tmin) annotation(Line(points = {{-65, 30}, {-65.2835, 30}, {-65.2835, 47.3029}, {19.3638, 47.3029}, {19.3638, 24.8963}, {10.2351, 5}, {10, 5}}));
  connect(heater_cooler_eps1.Tmax, tcs1.Tmax) annotation(Line(points = {{10, -5}, {36.5145, -5}, {36.5145, 39.5574}, {-55.0484, 39.5574}, {-55.0484, 31.5353}, {-54.7718, 31.5353}, {-54.7718, 31.5353}}));
  connect(tcs1.heater_on, heater_cooler_eps1.heater_on) annotation(Line(points = {{-65, 10}, {-67.2199, 10}, {-67.2199, -14.3845}, {-24.343, -14.3845}, {-24.343, 24.8963}, {-10.7884, 5}, {-10, 5}}));
  connect(tcs1.cooler_on, heater_cooler_eps1.cooler_on) annotation(Line(points = {{-55, 10}, {-52.5588, 10}, {-52.5588, -0.8298759999999999}, {-23.7898, -0.8298759999999999}, {-23.7898, 14.6611}, {-11.065, -5}, {-10, -5}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end jklxcvbni;