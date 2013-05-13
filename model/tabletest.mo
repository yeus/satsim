model tabletest
  Modelica.Blocks.Sources.Ramp ramp1(duration = 10) annotation(Placement(visible = true, transformation(origin = {-63.9659,11.9403}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(visible = true, transformation(origin = {30.2772,-14.9254}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1D combitable1ds1(table = [0.0,0.5;0.9,3.0;1.0,4.0], columns = {2,3}, n = 1) annotation(Placement(visible = true, transformation(origin = {-14.9254,11.5139}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {47.3968,-64.2729}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {30.8797,-43.447}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(resistor1.n,signalvoltage1.n) annotation(Line(points = {{40.8797,-43.447},{47.0377,-43.447},{47.0377,-14.3627},{40.5745,-14.3627},{40.5745,-14.3627}}));
  connect(resistor1.n,ground1.p) annotation(Line(points = {{40.8797,-43.447},{46.6786,-43.447},{46.6786,-54.5781},{46.6786,-54.5781}}));
  connect(signalvoltage1.p,resistor1.p) annotation(Line(points = {{20.2772,-14.9254},{6.10413,-14.9254},{6.10413,-44.1652},{20.4668,-44.1652},{20.4668,-44.1652}}));
  connect(combitable1ds1.y[1],signalvoltage1.v) annotation(Line(points = {{-3.9254,11.5139},{30.1616,11.5139},{30.1616,-7.18133},{30.1616,-7.18133}}));
  connect(ramp1.y,combitable1ds1.u[1]) annotation(Line(points = {{-52.9659,11.9403},{-27.6481,11.9403},{-27.6481,10.772},{-27.6481,10.772}}));
  annotation(experiment(StartTime = 0.0, StopTime = 10.0, Tolerance = 0.0001));
end tabletest;

