model solarcell
  import Modelica.SIunits;
  import Modelica.Constants.*;
  parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage";
  parameter SIunits.CurrentDensity I_sc = 168 "Short Circuit Current";
  parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage";
  parameter SIunits.CurrentDensity I_mp = 160 "[Maximum Powerpoint Current";
  parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cm²";
  parameter Real N_p = 100.0 "Numper of parallel solar cells per string";
  parameter Real N_s = 25.0 "Number of series-connected solar cells per string";
  parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation.";
  Real C_a = (V_mp / V_oc - 1) / log(1 - I_mp / I_sc);
  Real C_b = (1 - I_mp / I_sc) * exp(-V_mp / (C_a * V_oc));
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-75.2475,-29.703},{-75.2475,-61.9519}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-88.826,-44.9788},{-61.9519,-44.9788}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{63.3663,-42.4328},{89.1089,-42.4328}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
equation
  i = I_sc * A_cell * N_p * (1 - C_b * (exp(-v / (C_a * V_oc * N_s)) - 1));
  //i=10.0-0.01*(exp(v)-1);
end solarcell;

