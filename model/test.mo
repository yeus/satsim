model test
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 2) annotation(Placement(visible = true, transformation(origin = {12.9794,-10.9145}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {12.0944,34.8083}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {44.5933,-47.1267}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dc_limiter dc_limiter1(Imax = 2) annotation(Placement(visible = true, transformation(origin = {-41.9753,15.2263}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(resistor1.p,dc_limiter1.n) annotation(Line(points = {{0.0944004,34.8083},{-41.9753,34.8083},{-41.9753,27.2263},{-41.9753,27.2263}}));
  connect(dc_limiter1.p,constantvoltage1.p) annotation(Line(points = {{-41.9753,3.22634},{-42.3868,3.22634},{-42.3868,-11.1111},{0.9794,-11.1111},{0.9794,-10.9145}}));
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{24.9794,-10.9145},{44.1301,-10.9145},{44.1301,-35.1267},{44.5933,-35.1267}}));
  connect(resistor1.n,constantvoltage1.n) annotation(Line(points = {{24.0944,34.8083},{24.4838,34.8083},{24.4838,-10.9145},{24.9794,-10.9145}}));
end test;

