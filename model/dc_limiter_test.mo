model dc_limiter_test
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {2.82885,-73.2673}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dc_limiter dc_limiter1 annotation(Placement(visible = true, transformation(origin = {3.11174,15.5587}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {21.7822,71.2871}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcdc_converter_no_dclimiter dcdc_converter_no_dclimiter1 annotation(Placement(visible = true, transformation(origin = {-36.4922,15.2758}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {39.8868,-34.7949}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {41.0184,2.26308}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 50) annotation(Placement(visible = true, transformation(origin = {-67.8925,-49.222}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(dcdc_converter_no_dclimiter1.gnd,ground1.p) annotation(Line(points = {{-43.8586,4.71853},{-43.5644,4.71853},{-43.5644,-35.6436},{2.54597,-35.6436},{2.54597,-61.2673},{2.82885,-61.2673}}));
  connect(dcdc_converter_no_dclimiter1.p_in,constantvoltage1.p) annotation(Line(points = {{-48.2716,15.5134},{-67.8925,15.5134},{-67.8925,-37.222},{-67.8925,-37.222}}));
  connect(dcdc_converter_no_dclimiter1.p_out,dc_limiter1.p) annotation(Line(points = {{-24.0679,15.5134},{-8.76945,15.5134},{-8.76945,15.5587},{-8.88826,15.5587}}));
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{-67.8925,-61.222},{-33.3805,-61.222},{-33.3805,-61.1033},{2.82885,-61.1033},{2.82885,-61.2673}}));
  connect(ramp1.y,variableresistor1.R) annotation(Line(points = {{34.9822,71.2871},{72.9844,71.2871},{72.9844,2.26308},{54.2184,2.26308},{54.2184,2.26308}}));
  connect(variableresistor1.p,dc_limiter1.n) annotation(Line(points = {{41.0184,14.2631},{40.4526,14.2631},{40.4526,15.8416},{15.1117,15.8416},{15.1117,15.5587}}));
  connect(variableresistor1.n,resistor1.p) annotation(Line(points = {{41.0184,-9.73692},{39.604,-9.73692},{39.604,-22.7949},{39.8868,-22.7949}}));
  connect(ground1.p,resistor1.n) annotation(Line(points = {{2.82885,-61.2673},{2.82885,-61.1033},{39.604,-61.1033},{39.604,-46.7949},{39.8868,-46.7949}}));
end dc_limiter_test;

