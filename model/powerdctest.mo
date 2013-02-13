model powerdctest
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 35, phase = 90, freqHz = 0.0002) annotation(Placement(visible = true, transformation(origin = {-78.3593,-1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.3626,20.6506}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.DCtoPower dctopower1 annotation(Placement(visible = true, transformation(origin = {13.0127,7.63791}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(sinevoltage1.p,resistor2.p) annotation(Line(points = {{-78.3593,10.3027},{-78.0764,10.3027},{-78.0764,19.2362},{-48.3626,19.2362},{-48.3626,20.6506}}));
  connect(sinevoltage1.n,resistor3.n) annotation(Line(points = {{-78.3593,-13.6973},{-47.5248,-13.6973},{-47.5248,-13.0493},{-48.2726,-13.0493}}));
  connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
end powerdctest;

