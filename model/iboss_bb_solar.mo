model bb_solar
  extends buildingblock;
  annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-70.7214,-55.4455}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-69.8727,-87.4116}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(ground1.p,solarcell1.n) annotation(Line(points = {{-69.8727,-75.4116},{-69.8727,-67.0438},{-70.7214,-67.0438},{-70.7214,-67.4455}}));
  connect(pcu1.VCC,solarcell1.p) annotation(Line(points = {{-36.413,-36.1075},{-70.7214,-36.1075},{-70.7214,-43.4455},{-70.7214,-43.4455}}));
  connect(solarcell1.n,pcu1.GND) annotation(Line(points = {{-70.7214,-67.4455},{-48.0905,-67.4455},{-48.0905,-42.4328},{-36.4469,-42.4328},{-36.4469,-42.3875}}));
end bb_solar;

