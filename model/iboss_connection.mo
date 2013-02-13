model connectionelement
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-85.5219,88.3168},{87.4569,-87.1287}})}));
  iboss_connector int1 annotation(Placement(visible = true, transformation(origin = {88.5431,4.52615}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {88.5431,4.52615}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Real R(final quantity = "Resistance", final unit = "Ohm") = 0.0001;
  iboss_connector int2 annotation(Placement(visible = true, transformation(origin = {-87.9095,4.02826}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-87.9095,4.02826}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Basic.Resistor R_GND(R = R) annotation(Placement(visible = true, transformation(origin = {22.5969,-3.84725}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R_Vcc(R = R) annotation(Placement(visible = true, transformation(origin = {23.7962,12.5262}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(int1.Vcc,R_Vcc.n) annotation(Line(points = {{96.0941,12.4257},{36.4922,12.4257},{36.4922,12.5262},{35.7962,12.5262}}));
  connect(R_Vcc.p,int2.Vcc) annotation(Line(points = {{11.7962,12.5262},{-78.925,12.5262},{-78.925,11.9278},{-80.3585,11.9278}}));
  connect(R_GND.p,int2.GND) annotation(Line(points = {{10.5969,-3.84725},{-80.9052,-3.84725},{-80.9052,-3.24896},{-80.4752,-3.24896}}));
  connect(R_GND.n,int1.GND) annotation(Line(points = {{34.5969,-3.84725},{95.0495,-3.84725},{95.0495,-2.75107},{95.9774,-2.75107}}));
end connectionelement;

