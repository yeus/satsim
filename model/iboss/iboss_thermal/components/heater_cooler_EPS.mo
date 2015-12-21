within iboss.iboss_thermal.components;

model heater_cooler_EPS "heater_cooler_EPS.mo"
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Power_heating_cooling "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)" annotation(Placement(transformation(extent = {{75, -30}, {95, -10}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
  input Modelica.Blocks.Interfaces.BooleanInput heater_on "'input Boolean' as connector" annotation(Placement(transformation(extent = {{-125, -20}, {-85, 20}}), iconTransformation(extent = {{-120, 30}, {-80, 70}})));
  input Modelica.Blocks.Interfaces.BooleanInput cooler_on "'input Boolean' as connector" annotation(Placement(transformation(extent = {{-125, -60}, {-85, -20}}), iconTransformation(extent = {{-120, -70}, {-80, -30}})));
  output Modelica.Blocks.Interfaces.RealOutput Tmin "'output Real' as connector" annotation(Placement(transformation(extent = {{-105, 25}, {-85, 45}}), iconTransformation(extent = {{90, 40}, {110, 60}})));
  output Modelica.Blocks.Interfaces.RealOutput Tmax "'output Real' as connector" annotation(Placement(transformation(extent = {{-105, -85}, {-85, -65}}), iconTransformation(extent = {{90, -60}, {110, -40}})));
  parameter Modelica.SIunits.ActivePower power_cooler = -100 "cooling Power of the heater";
  parameter Modelica.SIunits.Temp_K upper_Temp_boundary = 310 "hottest allowed temperatur in the Box";
  parameter Modelica.SIunits.ActivePower power_heater = 100 "heating Power of the heater";
  parameter Modelica.SIunits.Temp_K lower_Temp_boundary = 270 "Coldest allowed temperatur in the Box";
  Modelica.Blocks.Math.Gain heating_power(k = power_heater) annotation(Placement(transformation(extent = {{-5, -10}, {15, 10}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent = {{25, -10}, {45, 10}})));
  Modelica.Blocks.Math.Gain cooling_power(k = power_cooler) annotation(Placement(transformation(extent = {{-5, -50}, {15, -30}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow cooler_power annotation(Placement(transformation(extent = {{25, -50}, {45, -30}})));
  Modelica.Blocks.Sources.Constant lower_Temp(k = lower_Temp_boundary) annotation(Placement(transformation(origin = {-30, 35}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  Modelica.Blocks.Sources.Constant upper_Temp(k = upper_Temp_boundary) annotation(Placement(transformation(origin = {-30, -75}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  Modelica.Blocks.Math.BooleanToReal booleanToReal_heat annotation(Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal_cool annotation(Placement(transformation(extent = {{-60, -50}, {-40, -30}})));
equation
  connect(heating_power.y, heater_power.Q_flow) annotation(Line(points = {{16, 0}, {21, 0}, {20, 0}, {25, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(heater_power.port, Power_heating_cooling) annotation(Line(points = {{45, 0}, {50, 0}, {80, 0}, {80, -20}, {85, -20}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(lower_Temp.y, Tmin) annotation(Line(points = {{-41, 35}, {-46, 35}, {-90, 35}, {-95, 35}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(upper_Temp.y, Tmax) annotation(Line(points = {{-41, -75}, {-46, -75}, {-90, -75}, {-95, -75}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(cooler_power.port, Power_heating_cooling) annotation(Line(points = {{45, -40}, {50, -40}, {80, -40}, {80, -20}, {85, -20}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(cooling_power.y, cooler_power.Q_flow) annotation(Line(points = {{16, -40}, {21, -40}, {20, -40}, {25, -40}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(booleanToReal_cool.y, cooling_power.u) annotation(Line(points = {{-39, -40}, {-34, -40}, {-12, -40}, {-7, -40}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(booleanToReal_cool.u, cooler_on) annotation(Line(points = {{-62, -40}, {-67, -40}, {-100, -40}, {-105, -40}}, color = {255, 0, 255}, thickness = 0.0625));
  connect(booleanToReal_heat.y, heating_power.u) annotation(Line(points = {{-39, 0}, {-34, 0}, {-12, 0}, {-7, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(booleanToReal_heat.u, heater_on) annotation(Line(points = {{-62, 0}, {-67, 0}, {-100, 0}, {-105, 0}}, color = {255, 0, 255}, thickness = 0.0625));
  annotation(heating_power(y(flags = 2)), heater_power(port(Q_flow(flags = 2))), cooling_power(y(flags = 2)), cooler_power(port(Q_flow(flags = 2))), lower_Temp(y(flags = 2)), upper_Temp(y(flags = 2)), Icon(graphics = {Rectangle(lineColor = {255, 255, 255}, fillColor = {255, 0, 0}, fillPattern = FillPattern.CrossDiag, extent = {{-100, 100}, {100, 0}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {0, 0, 255}, fillPattern = FillPattern.CrossDiag, extent = {{-100, 1}, {100, -99}}), Text(textString = "heater", fontSize = 12, textStyle = {TextStyle.Bold}, lineColor = {0, 0, 0}, extent = {{-97, 54}, {100, 0}}), Text(textString = "cooler", fontSize = 12, textStyle = {TextStyle.Bold}, lineColor = {255, 255, 255}, extent = {{-98, -2}, {100, -57}}), Text(textString = "heat", fontSize = 8, lineColor = {0, 0, 0}, extent = {{-100, 96}, {-13, 66}}), Text(textString = "cool", fontSize = 8, lineColor = {255, 255, 255}, extent = {{-102, -70}, {-15, -100}}), Text(textString = "Tmin", fontSize = 8, lineColor = {0, 0, 0}, extent = {{0, 97}, {99, 64}}), Text(textString = "Tmax", fontSize = 8, lineColor = {255, 255, 255}, extent = {{-9, -69}, {99, -102}})}), Documentation(info = "<HTML>
		<P>
		A constant voltage of 10 V is applied to a
		temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
		whose losses v**2/r are dissipated via a
		thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
		The resistor is assumed to have a thermal capacity of 1 J/K,
		having ambient temparature at the beginning of the experiment.
		The temperature of this heating resistor is held by an OnOff-controller
		at reference temperature within a given bandwith +/- 1 K
		by switching on and off the voltage source.
		The reference temperature starts at 25 degree C
		and rises between t = 2 and 8 seconds linear to 50 degree C.
		An approppriate simulating time would be 10 seconds.
		</P>
		</HTML>
		"), experiment(StopTime = 1, StartTime = 0, Interval = 0.001));
end heater_cooler_EPS;