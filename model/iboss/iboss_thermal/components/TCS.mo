within iboss.iboss_thermal.components;

model TCS "TCS.mo"
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a Temp "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(transformation(extent = {{-35, 20}, {-15, 40}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  input Modelica.Blocks.Interfaces.RealInput Tmax "'input Real' as connector" annotation(Placement(transformation(extent = {{30, -5}, {70, 35}}), iconTransformation(origin = {50, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
  input Modelica.Blocks.Interfaces.RealInput Tmin "'input Real' as connector" annotation(Placement(transformation(extent = {{30, 30}, {70, 70}}), iconTransformation(origin = {-50, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
  output Modelica.Blocks.Interfaces.BooleanOutput heater_on "'output Boolean' as connector" annotation(Placement(transformation(extent = {{165, 55}, {185, 75}}), iconTransformation(origin = {-50, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  output Modelica.Blocks.Interfaces.BooleanOutput cooler_on "'output Boolean' as connector" annotation(Placement(transformation(extent = {{165, -10}, {185, 10}}), iconTransformation(origin = {50, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  parameter Real hysteresis_cooler = 5 "Bandwidth of the bang-bang controller (cool) / K";
  parameter Real hysteresis_heater = 5 "Bandwidth of the bang-bang controller (heat) / K";
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(origin = {15, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.OnOffController onOffController_heat(bandwidth = hysteresis_heater) annotation(Placement(transformation(extent = {{120, 55}, {140, 75}})));
  Modelica.Blocks.Logical.OnOffController onOffController_cool(bandwidth = hysteresis_cooler) annotation(Placement(transformation(extent = {{120, -10}, {140, 10}})));
  Modelica.Blocks.Sources.Constant comp_hys_cool(k = -hysteresis_heater / 2) annotation(Placement(transformation(extent = {{50, -25}, {70, -5}})));
  Modelica.Blocks.Sources.Constant comp_hys_heat(k = hysteresis_heater / 2) annotation(Placement(transformation(extent = {{50, 70}, {70, 90}})));
  Modelica.Blocks.Math.Add add1 annotation(Placement(transformation(extent = {{85, 60}, {105, 80}})));
  Modelica.Blocks.Math.Add add2 annotation(Placement(transformation(extent = {{85, -15}, {105, 5}})));
equation
  connect(Temp, temperature_EB.port) annotation(Line(points = {{-25, 30}, {-20, 30}, {0, 30}, {5, 30}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(onOffController_heat.y, heater_on) annotation(Line(points = {{141, 65}, {146, 65}, {170, 65}, {175, 65}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(onOffController_cool.y, cooler_on) annotation(Line(points = {{141, 0}, {146, 0}, {170, 0}, {175, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(comp_hys_heat.y, add1.u1) annotation(Line(points = {{71, 80}, {76, 80}, {78, 80}, {78, 76}, {83, 76}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(add1.u2, Tmin) annotation(Line(points = {{83, 64}, {78, 64}, {55, 64}, {55, 50}, {50, 50}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(add2.u1, Tmax) annotation(Line(points = {{83, 1}, {78, 1}, {55, 1}, {55, 15}, {50, 15}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(comp_hys_cool.y, add2.u2) annotation(Line(points = {{71, -15}, {76, -15}, {78, -15}, {78, -11}, {83, -11}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(temperature_EB.T, onOffController_cool.reference) annotation(Line(points = {{25, 30}, {30, 30}, {113, 30}, {113, 6}, {118, 6}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(add2.y, onOffController_cool.u) annotation(Line(points = {{106, -5}, {111, -5}, {113, -5}, {113, -6}, {118, -6}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(add1.y, onOffController_heat.reference) annotation(Line(points = {{106, 70}, {111, 70}, {113, 70}, {113, 71}, {118, 71}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(temperature_EB.T, onOffController_heat.u) annotation(Line(points = {{25, 30}, {30, 30}, {113, 30}, {113, 59}, {118, 59}}, color = {0, 0, 127}, thickness = 0.0625));
  annotation(Icon(graphics = {Rectangle(radius = 4, lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(textString = "TCS", textStyle = {TextStyle.Bold}, lineColor = {0, 0, 0}, extent = {{-40, 10}, {-43, 10}}), Text(textString = "TCS", fontSize = 16, textStyle = {TextStyle.Bold}, lineColor = {0, 0, 0}, extent = {{-99, 99}, {101, -98}}), Text(textString = "Tmin", fontSize = 8, lineColor = {0, 0, 0}, extent = {{-108, 86}, {-3, 51}}), Text(textString = "Tmax", fontSize = 8, lineColor = {0, 0, 0}, extent = {{-4, 84}, {107, 52}}), Text(textString = "heat", fontSize = 8, lineColor = {0, 0, 0}, extent = {{-95, -61}, {-4, -87}}), Text(textString = "cool", fontSize = 8, lineColor = {0, 0, 0}, extent = {{8, -62}, {94, -86}})}), experiment(StopTime = 1, StartTime = 0));
end TCS;