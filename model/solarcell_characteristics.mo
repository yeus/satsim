model solarcell_characteristic
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.3756,-36.7279}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {25.0985,8.28543}, extent = {{12,-12},{-12,12}}, rotation = -270)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-57.0952,9.34891}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {-27.0451,4.34057}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
equation
  connect(exprgenerator1.y,variableresistor1.R) annotation(Line(points = {{-18.8489,4.34057},{10.6845,4.34057},{10.6845,8.28543},{11.8985,8.28543}}));
  connect(solarcell1.p,variableresistor1.n) annotation(Line(points = {{-57.0952,21.3489},{25.0417,21.3489},{25.0417,20.2854},{25.0985,20.2854}}));
  connect(solarcell1.n,ground1.p) annotation(Line(points = {{-57.0952,-2.65109},{-57.7629,-2.65109},{-57.7629,-24.7078},{25.3756,-24.7078},{25.3756,-24.7279}}));
  connect(ground1.p,variableresistor1.p) annotation(Line(points = {{25.3756,-24.7279},{25.3756,-4.34057},{25.0985,-4.34057},{25.0985,-3.71457}}));
  annotation(experiment(StopTime = 1), Diagram(), Icon());
end solarcell_characteristic;

