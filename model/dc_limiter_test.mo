model dc_limiter_test
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {2.82885,-73.2673}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {21.7822,71.2871}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {39.8868,-34.7949}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {41.0184,2.26308}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 50) annotation(Placement(visible = true, transformation(origin = {-67.8925,-49.222}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{-67.8925,-61.222},{2.82885,-61.222},{2.82885,-61.2673},{2.82885,-61.2673}}));
  connect(variableresistor1.n,resistor1.p) annotation(Line(points = {{41.0184,-9.73692},{40.1697,-9.73692},{40.1697,-22.7949},{39.8868,-22.7949}}));
  connect(resistor1.n,ground1.p) annotation(Line(points = {{39.8868,-46.7949},{39.604,-46.7949},{39.604,-61.1033},{2.82885,-61.1033},{2.82885,-61.2673}}));
end dc_limiter_test;

