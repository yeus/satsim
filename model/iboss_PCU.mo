model PCU
  annotation(Diagram(), Icon(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.3918,53.4653},{93.918,-42.4328}}, textString = "PCU"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{22.9137,-45.8274},{93.3522,-81.1881}}, textString = "GND")}));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-99.5757,62.8006}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5757,62.8006}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.Pin pin annotation(Placement(visible = true, transformation(origin = {-99.5757,-35.3607}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5757,-35.3607}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin negativepin1 annotation(Placement(visible = true, transformation(origin = {100.141,-63.9321}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.141,-63.9321}, extent = {{-12,-12},{12,12}}, rotation = 0)));
end PCU;

