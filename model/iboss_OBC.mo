model OBC
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-80.9052,86.5629},{86.2801,-87.1287}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.3069,56.0113},{69.024,-52.3338}}, textString = "OBC")}));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-42.7157,-98.1612}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-42.7157,-98.1612}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-0.565771,-99.0099}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.565771,-99.0099}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {-22.0651,-36.7751}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1000) annotation(Placement(visible = true, transformation(origin = {-51.4851,-2.26308}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(const.y,variableresistor1.R) annotation(Line(points = {{-38.2851,-2.26308},{-22.6308,-2.26308},{-22.6308,-23.5751},{-22.0651,-23.5751}}));
  connect(variableresistor1.n,pin_n) annotation(Line(points = {{-10.0651,-36.7751},{-0.282885,-36.7751},{-0.282885,-99.0099},{-0.565771,-99.0099}}));
  connect(variableresistor1.p,pin_p) annotation(Line(points = {{-34.0651,-36.7751},{-43.2815,-36.7751},{-43.2815,-98.1612},{-42.7157,-98.1612}}));
end OBC;

