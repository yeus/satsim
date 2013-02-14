model dc_limiter_test
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-16.2777,18.9533}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12) annotation(Placement(visible = true, transformation(origin = {57.1428,5.9406}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 35, phase = 90, freqHz = 0.0002) annotation(Placement(visible = true, transformation(origin = {-78.3593,-1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {16.4074,3.9604}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(dcdc_ideal_simple1.n2,dcdc_ideal_simple1.n1) annotation(Line(points = {{28.4074,-2.0396},{28.2885,-2.0396},{28.2885,-10.1839},{4.80905,-10.1839},{4.80905,-2.0396},{4.40736,-2.0396}}));
  connect(resistor1.p,dcdc_ideal_simple1.p2) annotation(Line(points = {{57.1428,17.9406},{39.3211,17.9406},{39.3211,10.1839},{28.4074,10.1839},{28.4074,9.9604}}));
  connect(dcdc_ideal_simple1.n2,resistor1.n) annotation(Line(points = {{28.4074,-2.0396},{34.7949,-2.0396},{34.7949,-6.78925},{57.1428,-6.78925},{57.1428,-6.0594}}));
  connect(dcdc_ideal_simple1.n1,resistor3.p) annotation(Line(points = {{4.40736,-2.0396},{4.52617,-2.0396},{4.52617,-13.0127},{-24.2726,-13.0127},{-24.2726,-13.0493}}));
  connect(resistor2.n,dcdc_ideal_simple1.p1) annotation(Line(points = {{-4.2777,18.9533},{4.52617,18.9533},{4.52617,9.9604},{4.40736,9.9604}}));
  connect(sinevoltage1.p,resistor2.p) annotation(Line(points = {{-78.3593,10.3027},{-78.0764,10.3027},{-78.0764,19.2362},{-28.2777,19.2362},{-28.2777,18.9533}}));
  connect(sinevoltage1.n,resistor3.n) annotation(Line(points = {{-78.3593,-13.6973},{-47.5248,-13.6973},{-47.5248,-13.0493},{-48.2726,-13.0493}}));
  connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
end dc_limiter_test;

