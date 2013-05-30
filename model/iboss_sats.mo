model EVS2x2
  bb_catalogue.bb_verbraucher bb_verbraucher3 annotation(Placement(visible = true, transformation(origin = {-23.4795,-7.07215}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {14.4272,-7.35502}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher1 annotation(Placement(visible = true, transformation(origin = {-24.0453,33.6634}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher2 annotation(Placement(visible = true, transformation(origin = {14.1443,35.0778}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, width = 1000, period = 3000, rising = 60, falling = 60) annotation(Placement(visible = true, transformation(origin = {28.6717,-48.7037}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
equation
  connect(bb_verbraucher1.Xp,bb_verbraucher2.Xn) annotation(Line(points = {{-12.2826,33.6684},{1.41443,33.6684},{1.41443,35.0565},{2.13446,35.0565}}));
  connect(trapezoid1.y,bb_solar1.u) annotation(Line(points = {{36.8679,-48.7037},{40.7355,-48.7037},{40.7355,-7.44399},{40.9842,-7.44399}}));
  connect(bb_verbraucher2.Yn,bb_solar1.Yp) annotation(Line(points = {{14.1081,23.643},{14.1081,4.80905},{14.2689,4.80905},{14.2689,4.45657}}));
  connect(bb_verbraucher1.Yn,bb_verbraucher3.Yp) annotation(Line(points = {{-24.0814,22.2286},{-24.0814,5.94059},{-23.6378,5.94059},{-23.6378,4.73944}}));
  connect(bb_verbraucher3.Xp,bb_solar1.Xn) annotation(Line(points = {{-11.7168,-7.06711},{1.9802,-7.06711},{1.9802,-7.37628},{2.41732,-7.37628}}));
  annotation(Icon(), experiment(StartTime = 0.0, StopTime = 10000, Tolerance = 0.000001));
end EVS2x2;

