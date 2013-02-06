model bb_solar
  extends buildingblock;
  annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}), experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-74.6817,-60.8204}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid SolarPower(amplitude = 1367, rising = 120, width = 1500, falling = 120, period = 5000, offset = 0) annotation(Placement(visible = true, transformation(origin = {18.1047,28.0056}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-17.8218,-13.0127}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(ground1.p,pcu1.GND) annotation(Line(points = {{-74.6817,-48.8204},{-74.6817,-40.1697},{-48.3281,-40.1697},{-48.3281,-40.1245}}));
  connect(SolarPower.y,solarcell1.E_s) annotation(Line(points = {{18.1047,14.8056},{18.1047,14.8056},{18.1047,-28.5714},{-18.3876,-28.5714},{-18.3876,-21.5325},{-17.6697,-21.5325}}));
  connect(solarcell1.n,pcu1.VCC) annotation(Line(points = {{-29.8218,-13.0127},{-58.2744,-13.0127},{-58.2744,-34.2291},{-48.2941,-34.2291},{-48.2941,-33.8444}}));
  connect(solarcell1.p,pcu1.GND) annotation(Line(points = {{-5.82183,-13.0127},{-5.65771,-13.0127},{-5.65771,-57.4257},{-56.2942,-57.4257},{-56.2942,-40.1697},{-48.3281,-40.1697},{-48.3281,-40.1245}}));
end bb_solar;

