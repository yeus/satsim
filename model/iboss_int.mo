connector iboss_connector
  import Modelica.Electrical.Analog.Interfaces;
  annotation(defaultComponentName = "iBoss_connector", Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}), Diagram(graphics = {Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.2356,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}));
  Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(visible = true, transformation(origin = {60.2551,64.3919}, extent = {{-28.2954,-28.2954},{28.2954,28.2954}}, rotation = 0), iconTransformation(origin = {60.2551,64.3919}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(visible = true, transformation(origin = {63.7738,-61.7521}, extent = {{-28.2954,-28.2954},{28.2954,28.2954}}, rotation = 0), iconTransformation(origin = {63.7738,-61.7521}, extent = {{-12,-12},{12,12}}, rotation = 0)));
end iboss_connector;

