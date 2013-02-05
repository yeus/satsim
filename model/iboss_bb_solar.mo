model bb_solar
  extends buildingblock;
  annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  Modelica.Blocks.Sources.Trapezoid SolarPower(amplitude = 1367, rising = 120, width = 1500, falling = 120, period = 5000, offset = 500) annotation(Placement(visible = true, transformation(origin = {18.1047,28.0056}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {6.7892,-14.4271}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-74.6817,-60.8204}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(pcu1.GND,solarcell1.n) annotation(Line(points = {{-48.3281,-40.1245},{-56.2942,-40.1245},{-56.2942,-56.86},{18.6704,-56.86},{18.6704,-14.4271},{18.7892,-14.4271}}));
  connect(ground1.p,pcu1.VCC) annotation(Line(points = {{-74.6817,-48.8204},{-74.6817,-34.2291},{-48.2941,-34.2291},{-48.2941,-33.8444}}));
  connect(solarcell1.p,pcu1.VCC) annotation(Line(points = {{-5.2108,-14.4271},{-56.0113,-14.4271},{-56.0113,-34.2291},{-48.2941,-34.2291},{-48.2941,-33.8444}}));
  connect(SolarPower.y,solarcell1.E_s) annotation(Line(points = {{18.1047,14.8056},{18.3876,14.8056},{18.3876,5.37482},{6.78925,5.37482},{6.78925,-5.90731},{6.63706,-5.90731}}));
end bb_solar;

