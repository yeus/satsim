connector iboss_connector
  import Modelica.Electrical.Analog.Interfaces;
  annotation(defaultComponentName = "iBoss_Int", Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-100,100},{100,-100}})}), Diagram(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-102.291,-19.5615},{97.7086,-79.5615}}, textString = "%name")}));
  Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(visible = true, transformation(origin = {33.0976,21.2164}, extent = {{-28.2954,-28.2954},{28.2954,28.2954}}, rotation = 0), iconTransformation(origin = {33.0976,21.2164}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(visible = true, transformation(origin = {-33.9463,21.4993}, extent = {{-28.2954,-28.2954},{28.2954,28.2954}}, rotation = 0), iconTransformation(origin = {-33.9463,21.4993}, extent = {{-12,-12},{12,12}}, rotation = 0)));
end iboss_connector;

