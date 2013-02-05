model solarcell_characteristic
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.3756,-36.7279}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-74.116,67.3267}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {25.3814,6.871}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-41.5842,7.07214}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(const.y,solarcell1.E_s) annotation(Line(points = {{-60.916,67.3267},{-57.7086,67.3267},{-57.7086,5.94059},{-50.104,5.94059},{-50.104,6.92}}));
  connect(solarcell1.p,variableresistor1.n) annotation(Line(points = {{-41.5842,-4.92786},{-24.8939,-4.92786},{-24.8939,-5.09194},{25.3814,-5.09194},{25.3814,-5.129}}));
  connect(solarcell1.n,variableresistor1.p) annotation(Line(points = {{-41.5842,19.0721},{25.1768,19.0721},{25.1768,18.871},{25.3814,18.871}}));
  connect(exprgenerator1.y,variableresistor1.R) annotation(Line(points = {{66.5824,-42.6184},{78.3593,-42.6184},{78.3593,6.78925},{38.5814,6.78925},{38.5814,6.871}}));
  connect(variableresistor1.n,ground1.p) annotation(Line(points = {{25.3814,-5.129},{25.7426,-5.129},{25.7426,-24.7279},{25.3756,-24.7279}}));
  annotation(experiment(StopTime = 1), Diagram(), Icon());
end solarcell_characteristic;

