model solarcell_characteristic
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.3756,-36.7279}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 100000, offset = 100, duration = 1.0) annotation(Placement(visible = true, transformation(origin = {71.51,8.54463}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {25.0985,8.28543}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-57.429,9.34891}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(solarcell1.n,ground1.p) annotation(Line(points = {{-57.429,-2.65109},{-57.7629,-2.65109},{-57.7629,-24.7078},{25.3756,-24.7078},{25.3756,-24.7279}}));
  connect(solarcell1.p,variableresistor1.p) annotation(Line(points = {{-57.429,21.3489},{25.0417,21.3489},{25.0417,20.2854},{25.0985,20.2854}}));
  connect(ground1.p,variableresistor1.n) annotation(Line(points = {{25.3756,-24.7279},{25.3756,-5.00835},{25.0985,-5.00835},{25.0985,-3.71457}}));
  connect(ramp1.y,variableresistor1.R) annotation(Line(points = {{84.71,8.54463},{40.3976,8.54463},{40.3976,8.28543},{38.2985,8.28543}}));
  annotation(experiment(StopTime = 1), Diagram(), Icon());
end solarcell_characteristic;

