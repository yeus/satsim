model connectionelement
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-74.7723,90.297},{69.0693,-87.1287}})}));
  iboss_Int iBoss_Int annotation(Placement(visible = true, transformation(origin = {-3.9604,98.727}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-3.9604,98.727}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_Int iboss_int1 annotation(Placement(visible = true, transformation(origin = {-1.91231,-95.8303}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-1.91231,-95.8303}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-15.5248,6.0198}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {7.60396,6.33663}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(resistor1.p,iboss_int1.GND) annotation(Line(points = {{7.60396,-5.66337},{1.90099,-5.66337},{1.90099,-93.2843},{2.05941,-93.2843}}));
  connect(iBoss_Int.GND,resistor1.n) annotation(Line(points = {{0.0113158,101.273},{2.21782,101.273},{2.21782,18.3366},{7.60396,18.3366}}));
  connect(resistor2.n,iboss_int1.Vcc) annotation(Line(points = {{-15.5248,-5.9802},{-6.0198,-5.9802},{-6.0198,-93.2504},{-5.98586,-93.2504}}));
  connect(resistor2.p,iBoss_Int.Vcc) annotation(Line(points = {{-15.5248,18.0198},{-8.23762,18.0198},{-8.23762,101.307},{-8.03395,101.307}}));
end connectionelement;

