model dockinterface
  annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-59.3997,67.2986},{58.1359,-72.6698}})}), Diagram(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-46.7615,68.8784},{46.7615,-71.406}})}));
  iboss_Int iBoss_Int annotation(Placement(visible = true, transformation(origin = {-0.315956,69.1943}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.315956,69.1943}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.2765,-4.10742}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 100) annotation(Placement(visible = true, transformation(origin = {0.631912,12.3223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(constantvoltage1.n,iBoss_Int.GND) annotation(Line(points = {{12.6319,12.3223},{12.0063,12.3223},{12.0063,72.3539},{3.65576,72.3539},{3.65576,71.7403}}));
  connect(iBoss_Int.Vcc,constantvoltage1.p) annotation(Line(points = {{-4.38951,71.7742},{-11.3744,71.7742},{-11.3744,12.3223},{-11.3681,12.3223}}));
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{12.6319,12.3223},{24.9605,12.3223},{24.9605,7.89258},{25.2765,7.89258}}));
end dockinterface;

