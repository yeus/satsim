model solarcell_charactristic2
  extends Modelica.Icons.Example;
  Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
  Modelica.Blocks.Sources.SawTooth sawtooth2(amplitude = 1000, period = 0.1) annotation(Placement(visible = true, transformation(origin = {64.4979,-13.2956}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.IntegerTable integertable1(table = [0,0.1;0.1,0.01;0.2,0.001;0.3,0.0001;0.4,100]) annotation(Placement(visible = true, transformation(origin = {-84.017,62.8006}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.3756,-56.5299}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcdc_converter dcdc_converter1 annotation(Placement(visible = true, transformation(origin = {-7.92079,28.8543}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.IntegerToReal integertoreal1 annotation(Placement(visible = true, transformation(origin = {-74.9646,7.07214}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = 1000) annotation(Placement(visible = true, transformation(origin = {-94.7666,-62.2348}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {-52.6167,-47.8076}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 1000, duration = 1) annotation(Placement(visible = true, transformation(origin = {-95.3324,-27.157}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 2) annotation(Placement(visible = true, transformation(origin = {35.0778,65.3465}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 100) annotation(Placement(visible = true, transformation(origin = {-44.413,71.57}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-38.1896,7.35503}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {25.6643,6.871}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(add1.y,solarcell1.E_s) annotation(Line(points = {{-39.4167,-47.8076},{-18.9533,-47.8076},{-18.9533,-20.9335},{-56.0113,-20.9335},{-56.0113,7.07214},{-46.7094,7.07214},{-46.7094,7.20289}}));
  connect(const.y,variableresistor1.R) annotation(Line(points = {{48.2778,65.3465},{59.4059,65.3465},{59.4059,6.50636},{38.8643,6.50636},{38.8643,6.871}}));
  connect(ramp1.y,add1.u1) annotation(Line(points = {{-82.1324,-27.157},{-67.6096,-27.157},{-67.6096,-40.6076},{-67.0167,-40.6076}}));
  connect(constant1.y,add1.u2) annotation(Line(points = {{-81.5666,-62.2348},{-68.4583,-62.2348},{-68.4583,-55.0076},{-67.0167,-55.0076}}));
  connect(integertable1.y,integertoreal1.u) annotation(Line(points = {{-70.817,62.8006},{-61.3861,62.8006},{-61.3861,32.5318},{-95.6153,32.5318},{-95.6153,7.07214},{-89.3646,7.07214},{-89.3646,7.07214}}));
  connect(dcdc_converter1.p_out,variableresistor1.p) annotation(Line(points = {{4.50353,29.0919},{25.7426,29.0919},{25.7426,18.871},{25.6643,18.871}}));
  connect(solarcell1.n,dcdc_converter1.p_in) annotation(Line(points = {{-38.1896,19.355},{-38.4724,19.355},{-38.4724,29.4201},{-19.7002,29.4201},{-19.7002,29.0919}}));
  connect(dcdc_converter1.gnd,solarcell1.p) annotation(Line(points = {{-15.2871,18.297},{-14.9929,18.297},{-14.9929,-4.52617},{-38.1896,-4.52617},{-38.1896,-4.64497}}));
  connect(solarcell1.p,variableresistor1.n) annotation(Line(points = {{-38.1896,-4.64497},{-24.8939,-4.64497},{-24.8939,-4.52617},{25.6643,-4.52617},{25.6643,-5.129}}));
  connect(variableresistor1.n,ground1.p) annotation(Line(points = {{25.6643,-5.129},{25.7426,-5.129},{25.7426,-44.5299},{25.3756,-44.5299}}));
  annotation(Diagram(), Icon(), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
end solarcell_charactristic2;

