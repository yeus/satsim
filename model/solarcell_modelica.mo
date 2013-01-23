model solarcell_simple
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Basic.Ground Ground1 annotation(Placement(visible = true, transformation(origin = {-23.915,-31.4567}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 1000, offset = 0, duration = 1.0) annotation(Placement(visible = true, transformation(origin = {58.5736,37.9363}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {26.1002,7.28376}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Semiconductors.Diode diode1 annotation(Placement(visible = true, transformation(origin = {-23.6768,3.00237}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantCurrent constantcurrent1 annotation(Placement(visible = true, transformation(origin = {-62.6911,3.36391}, extent = {{12,-12},{-12,12}}, rotation = -270)));
equation
  connect(constantcurrent1.n,diode1.p) annotation(Line(points = {{-62.6911,15.3639},{-23.2416,15.3639},{-23.2416,15.0024},{-23.6768,15.0024}}));
  connect(constantcurrent1.p,diode1.n) annotation(Line(points = {{-62.6911,-8.63609},{-23.8532,-8.63609},{-23.8532,-8.99763},{-23.6768,-8.99763}}));
  connect(diode1.n,variableresistor1.n) annotation(Line(points = {{-23.6768,-8.99763},{23.9757,-8.99763},{23.9757,-4.71624},{26.1002,-4.71624}}));
  connect(variableresistor1.p,diode1.p) annotation(Line(points = {{26.1002,19.2838},{-23.0653,19.2838},{-23.0653,15.0024},{-23.6768,15.0024}}));
  connect(diode1.n,Ground1.p) annotation(Line(points = {{-23.6768,-8.99763},{-23.3687,-8.99763},{-23.3687,-21.4567},{-23.915,-21.4567}}));
  connect(ramp1.y,variableresistor1.R) annotation(Line(points = {{71.7736,37.9363},{39.4537,37.9363},{39.4537,7.28376},{39.3002,7.28376}}));
  annotation(experiment(StopTime = 1), Diagram(), Icon());
end solarcell_simple;

