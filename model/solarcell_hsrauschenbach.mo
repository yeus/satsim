model solarcell
  import Modelica.SIunits;
  import Modelica.Constants.*;
  parameter SIunits.Current I_L = 1 "photogenerated current";
  parameter SIunits.Current I_0 = 0.001 "reverse saturation current";
  parameter Real N = 1 "diode ideality factor (1 for an ideal diode)";
  parameter SIunits.Resistance R_SH = 1 "shunt resistance";
  parameter SIunits.Resistance R_S = 1 "series resistance";
  parameter SIunits.Temp_K T = 293 "absolute temperature";
  final constant Real q(final unit = "A.s") = 0.000000000000000000160217656 "elementary charge";
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-75.2475,-29.703},{-75.2475,-61.9519}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-88.826,-44.9788},{-61.9519,-44.9788}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{63.3663,-42.4328},{89.1089,-42.4328}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
equation
  //i = I_L - I_0 * (exp((q * (v + i * R_S)) / (N * k * T)) - 1) - (v + i * R_S) / R_SH;
  i = I_L - I_0 * (exp((q * (v + i * R_S)) / (N * k * T)) - 1) - (v + i * R_S) / R_SH;
end solarcell;

