model powerdctest
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 35, phase = 90, freqHz = 0.0002) annotation(Placement(visible = true, transformation(origin = {-78.3593,-1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  dcmodel.DCtoPower dctopower1(m = 1, V_in_max = 100, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {24.373,6.47989}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 10) annotation(Placement(visible = true, transformation(origin = {-48.6014,20.979}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-7.34162,21.0003}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_power_consumption.OBCpower obcpower1 annotation(Placement(visible = true, transformation(origin = {72.7273,23.4266}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(dctopower1.power_out[1],obcpower1.power_in) annotation(Line(points = {{36.4918,6.37805},{55.5944,6.37805},{55.5944,23.3846},{60.9371,23.3846}}));
  connect(constantvoltage1.p,resistor2.p) annotation(Line(points = {{-36.6014,20.979},{-19.9301,20.979},{-19.9301,21.0003},{-19.3416,21.0003}}));
  connect(resistor2.n,dctopower1.p) annotation(Line(points = {{4.65838,21.0003},{12.2378,21.0003},{12.2378,11.0966},{12.3561,11.0966}}));
  connect(constantvoltage1.n,sinevoltage1.p) annotation(Line(points = {{-60.6014,20.979},{-78.6713,20.979},{-78.6713,10.3027},{-78.3593,10.3027}}));
  connect(dctopower1.n,resistor3.p) annotation(Line(points = {{12.3561,1.72741},{12.9371,1.72741},{12.9371,-12.9371},{-24.2726,-12.9371},{-24.2726,-13.0493}}));
  connect(sinevoltage1.n,resistor3.n) annotation(Line(points = {{-78.3593,-13.6973},{-47.5248,-13.6973},{-47.5248,-13.0493},{-48.2726,-13.0493}}));
  connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
end powerdctest;

