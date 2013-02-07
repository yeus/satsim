model solarcell_charactristic2
  extends Modelica.Icons.Example;
  Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
  Modelica.Blocks.Sources.SawTooth sawtooth2(amplitude = 1000, period = 0.1) annotation(Placement(visible = true, transformation(origin = {64.4979,-13.2956}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.IntegerTable integertable1(table = [0,0.1;0.1,0.01;0.2,0.001;0.3,0.0001;0.4,100]) annotation(Placement(visible = true, transformation(origin = {-84.017,62.8006}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.3756,-56.5299}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.IntegerToReal integertoreal1 annotation(Placement(visible = true, transformation(origin = {-74.9646,7.07214}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = 1000) annotation(Placement(visible = true, transformation(origin = {-94.7666,-62.2348}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {-52.6167,-47.8076}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 1000, duration = 1) annotation(Placement(visible = true, transformation(origin = {-95.3324,-27.157}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {35.0778,65.3465}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 1000) annotation(Placement(visible = true, transformation(origin = {-44.413,71.57}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {25.6643,6.871}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  dcdc_converter_no_dclimiter dcdc_converter_no_dclimiter1(efficiency = 0.9) annotation(Placement(visible = true, transformation(origin = {-10.7496,27.157}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantCurrent constantcurrent1(I = 0.1) annotation(Placement(visible = true, transformation(origin = {-42.4328,2.82885}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1(Vknee = 0) annotation(Placement(visible = true, transformation(origin = {-17.8218,-27.4399}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(idealdiode1.p,ground1.p) annotation(Line(points = {{-17.8218,-39.4399},{25.7426,-39.4399},{25.7426,-44.5299},{25.3756,-44.5299}}));
  connect(dcdc_converter_no_dclimiter1.gnd,idealdiode1.n) annotation(Line(points = {{-18.116,16.5997},{-18.1047,16.5997},{-18.1047,-15.4399},{-17.8218,-15.4399}}));
  connect(constantcurrent1.p,variableresistor1.n) annotation(Line(points = {{-42.4328,-9.17115},{25.4597,-9.17115},{25.4597,-5.129},{25.6643,-5.129}}));
  connect(constantcurrent1.n,dcdc_converter_no_dclimiter1.p_in) annotation(Line(points = {{-42.4328,14.8289},{-42.7157,14.8289},{-42.7157,27.7228},{-22.5291,27.7228},{-22.5291,27.3946}}));
  connect(dcdc_converter_no_dclimiter1.p_out,variableresistor1.p) annotation(Line(points = {{1.67467,27.3946},{25.7426,27.3946},{25.7426,18.871},{25.6643,18.871}}));
  connect(const.y,variableresistor1.R) annotation(Line(points = {{48.2778,65.3465},{59.4059,65.3465},{59.4059,6.50636},{38.8643,6.50636},{38.8643,6.871}}));
  connect(ramp1.y,add1.u1) annotation(Line(points = {{-82.1324,-27.157},{-67.6096,-27.157},{-67.6096,-40.6076},{-67.0167,-40.6076}}));
  connect(constant1.y,add1.u2) annotation(Line(points = {{-81.5666,-62.2348},{-68.4583,-62.2348},{-68.4583,-55.0076},{-67.0167,-55.0076}}));
  connect(integertable1.y,integertoreal1.u) annotation(Line(points = {{-70.817,62.8006},{-61.3861,62.8006},{-61.3861,32.5318},{-95.6153,32.5318},{-95.6153,7.07214},{-89.3646,7.07214},{-89.3646,7.07214}}));
  connect(variableresistor1.n,ground1.p) annotation(Line(points = {{25.6643,-5.129},{25.7426,-5.129},{25.7426,-44.5299},{25.3756,-44.5299}}));
  annotation(Diagram(), Icon(), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
end solarcell_charactristic2;

