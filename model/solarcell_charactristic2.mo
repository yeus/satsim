model solarcell_charactristic2
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.IntegerTable integertable1(table = [0,0.1;0.1,0.01;0.2,0.001;0.3,0.0001;0.4,100]) annotation(Placement(visible = true, transformation(origin = {-84.017,62.8006}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.IntegerToReal integertoreal1 annotation(Placement(visible = true, transformation(origin = {-74.9646,7.07214}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = 1000) annotation(Placement(visible = true, transformation(origin = {-94.7666,-62.2348}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {-52.6167,-47.8076}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 1000, duration = 1) annotation(Placement(visible = true, transformation(origin = {-95.3324,-27.157}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {35.0778,65.3465}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 1000) annotation(Placement(visible = true, transformation(origin = {-44.413,71.57}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-39.3211,7.63791}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Blocks.Sources.SawTooth sawtooth2(amplitude = 1000, period = 0.1) annotation(Placement(visible = true, transformation(origin = {78.3593,-14.71}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {36.1311,6.871}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-4.61025,-17.7746}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {34.0582,-43.4671}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
  dcmodel.DCtoDCModel dctodcmodel1(Vinmax = 100, Vref = 5, Pout = 50, Vinmin = 5.5, eff = 0.85) annotation(Placement(visible = true, transformation(origin = {-2.26308,22.3479}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(exprgenerator1.y,variableresistor1.R) annotation(Line(points = {{42.2543,-43.4671},{57.4257,-43.4671},{57.4257,6.78925},{49.3311,6.78925},{49.3311,6.871}}));
  connect(integertable1.y,integertoreal1.u) annotation(Line(points = {{-70.817,62.8006},{-67.6096,62.8006},{-67.6096,31.4003},{-97.3126,31.4003},{-97.3126,7.92079},{-89.3646,7.92079},{-89.3646,7.07214}}));
  connect(constant1.y,add1.u2) annotation(Line(points = {{-81.5666,-62.2348},{-74.9646,-62.2348},{-74.9646,-54.8798},{-67.0167,-54.8798},{-67.0167,-55.0076}}));
  connect(ramp1.y,add1.u1) annotation(Line(points = {{-82.1324,-27.157},{-76.662,-27.157},{-76.662,-40.4526},{-67.0167,-40.4526},{-67.0167,-40.6076}}));
  connect(dctodcmodel1.p1,variableresistor1.p) annotation(Line(points = {{9.79656,27.8803},{36.4922,27.8803},{36.4922,18.871},{36.1311,18.871}}));
  connect(solarcell1.n,dctodcmodel1.p) annotation(Line(points = {{-39.3211,19.6379},{-39.0382,19.6379},{-39.0382,28.5714},{-14.2034,28.5714},{-14.2034,27.8405}}));
  connect(dctodcmodel1.n1,ground1.p) annotation(Line(points = {{9.8364,15.652},{10.4668,15.652},{10.4668,-5.09194},{-4.61025,-5.09194},{-4.61025,-5.7746}}));
  connect(dctodcmodel1.n,ground1.p) annotation(Line(points = {{-14.2595,15.4835},{-15.5587,15.4835},{-15.5587,-4.80905},{-4.61025,-4.80905},{-4.61025,-5.7746}}));
  connect(constant2.y,solarcell1.E_s) annotation(Line(points = {{-31.213,71.57},{-24.8939,71.57},{-24.8939,38.4724},{-55.4455,38.4724},{-55.4455,7.63791},{-47.8409,7.63791},{-47.8409,7.48577}}));
  connect(ground1.p,solarcell1.p) annotation(Line(points = {{-4.61025,-5.7746},{-4.61025,-4.80905},{-39.3211,-4.80905},{-39.3211,-4.36209}}));
  connect(variableresistor1.n,ground1.p) annotation(Line(points = {{36.1311,-5.129},{-4.52617,-5.129},{-4.52617,-5.7746},{-4.61025,-5.7746}}));
end solarcell_charactristic2;

