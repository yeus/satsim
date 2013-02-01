model connectionelement
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-85.5219,88.3168},{87.4569,-87.1287}})}));
  iboss_connector int1 annotation(Placement(visible = true, transformation(origin = {88.5431,4.52615}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {88.5431,4.52615}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Real R(final quantity = "Resistance", final unit = "Ohm") = 0.0001;
  iboss_connector int2 annotation(Placement(visible = true, transformation(origin = {-87.9095,4.02826}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-87.9095,4.02826}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Basic.Resistor R_Vcc(R = R) annotation(Placement(visible = true, transformation(origin = {32.5657,-12.6506}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R_GND(R = R) annotation(Placement(visible = true, transformation(origin = {31.6492,11.9943}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(R_GND.n,int1.GND) annotation(Line(points = {{43.6492,11.9943},{95.3324,11.9943},{95.3324,12.2532},{95.7737,12.2532}}));
  connect(int2.GND,R_GND.p) annotation(Line(points = {{-80.6789,11.7553},{19.5191,11.7553},{19.5191,11.9943},{19.6492,11.9943}}));
  connect(R_Vcc.n,int1.Vcc) annotation(Line(points = {{44.5657,-12.6506},{96.181,-12.6506},{96.181,-2.8841},{96.196,-2.8841}}));
  connect(int2.Vcc,R_Vcc.p) annotation(Line(points = {{-80.2566,-3.38199},{20.6506,-3.38199},{20.6506,-12.6506},{20.5657,-12.6506}}));
end connectionelement;

