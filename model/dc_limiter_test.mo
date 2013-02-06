model dc_limiter_test
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {39.8868,-34.7949}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {2.82885,-73.2673}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dc_limiter dc_limiter1 annotation(Placement(visible = true, transformation(origin = {3.11174,15.5587}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {41.0184,2.26308}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 100, duration = 1) annotation(Placement(visible = true, transformation(origin = {21.7822,71.2871}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 50) annotation(Placement(visible = true, transformation(origin = {-33.0976,-22.3479}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{-33.0976,-34.3479},{-33.3805,-34.3479},{-33.3805,-61.1033},{2.82885,-61.1033},{2.82885,-61.2673}}));
  connect(dc_limiter1.p,constantvoltage1.p) annotation(Line(points = {{-8.88826,15.5587},{-33.3805,15.5587},{-33.3805,-10.3479},{-33.0976,-10.3479}}));
  connect(ramp1.y,variableresistor1.R) annotation(Line(points = {{34.9822,71.2871},{72.9844,71.2871},{72.9844,2.26308},{54.2184,2.26308},{54.2184,2.26308}}));
  connect(variableresistor1.p,dc_limiter1.n) annotation(Line(points = {{41.0184,14.2631},{40.4526,14.2631},{40.4526,15.8416},{15.1117,15.8416},{15.1117,15.5587}}));
  connect(variableresistor1.n,resistor1.p) annotation(Line(points = {{41.0184,-9.73692},{39.604,-9.73692},{39.604,-22.7949},{39.8868,-22.7949}}));
  connect(ground1.p,resistor1.n) annotation(Line(points = {{2.82885,-61.2673},{2.82885,-61.1033},{39.604,-61.1033},{39.604,-46.7949},{39.8868,-46.7949}}));
end dc_limiter_test;

