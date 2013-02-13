model dc_limiter_test
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal dcdc_ideal1(Vinmax = 100, Pout = 10, Vref = 5, eff = 0.8, Vinmin = 6.5) annotation(Placement(visible = true, transformation(origin = {12.7298,7.9208}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12) annotation(Placement(visible = true, transformation(origin = {57.1428,5.9406}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 35, phase = 90, freqHz = 0.0002) annotation(Placement(visible = true, transformation(origin = {-78.3593,-1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-16.2777,18.9533}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(sinevoltage1.p,resistor2.p) annotation(Line(points = {{-78.3593,10.3027},{-78.0764,10.3027},{-78.0764,19.2362},{-28.2777,19.2362},{-28.2777,18.9533}}));
  connect(resistor2.n,dcdc_ideal1.p) annotation(Line(points = {{-4.27775,18.9533},{0.848656,18.9533},{0.848656,13.4133},{0.7895,13.4133}}));
  connect(sinevoltage1.n,resistor3.n) annotation(Line(points = {{-78.3593,-13.6973},{-47.5248,-13.6973},{-47.5248,-13.0493},{-48.2726,-13.0493}}));
  connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
  connect(dcdc_ideal1.p1,resistor1.p) annotation(Line(points = {{24.7894,13.4531},{32.5318,13.4531},{32.5318,18.1047},{57.1428,18.1047},{57.1428,17.9406}}));
  connect(resistor1.n,dcdc_ideal1.n1) annotation(Line(points = {{57.1428,-6.0594},{31.6832,-6.0594},{31.6832,0.282885},{24.8293,0.282885},{24.8293,1.22489}}));
  connect(dcdc_ideal1.n,dcdc_ideal1.n1) annotation(Line(points = {{0.733341,1.05633},{0.282885,1.05633},{0.282885,-12.1641},{25.1768,-12.1641},{25.1768,1.22489},{24.8293,1.22489}}));
  connect(dcdc_ideal1.n,resistor3.p) annotation(Line(points = {{0.733341,1.05633},{-24.3281,1.05633},{-24.3281,-13.0493},{-24.2726,-13.0493}}));
end dc_limiter_test;

