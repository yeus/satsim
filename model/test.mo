model test
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 100) annotation(Placement(visible = true, transformation(origin = {12.9794,-10.9145}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1000) annotation(Placement(visible = true, transformation(origin = {12.0944,34.8083}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-30.0885,-24.7788}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(ground1.p,constantvoltage1.p) annotation(Line(points = {{-30.0885,-12.7788},{-30.0885,-10.9145},{0.979351,-10.9145},{0.979351,-10.9145}}));
  connect(constantvoltage1.p,resistor1.p) annotation(Line(points = {{0.979351,-10.9145},{-0.589971,-10.9145},{-0.589971,34.8083},{0.0943953,34.8083}}));
  connect(resistor1.n,constantvoltage1.n) annotation(Line(points = {{24.0944,34.8083},{24.4838,34.8083},{24.4838,-10.9145},{24.9794,-10.9145}}));
end test;

