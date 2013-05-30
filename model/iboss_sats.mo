model iboss_sat
  parameter Integer size_x = 3,size_y = 1,size_z = 1;
  bb_catalogue.bb_verbraucher bb[size_x,size_y,size_z] annotation(Placement(visible = true, transformation(origin = {16.9731,-61.6691}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_solar bbs;
  connectionelement connelem_s;
  connectionelement connelem_x[size_x - 1,size_y,size_z];
  /*connectionelement connelem_y[size_x,size_y - 1,size_z];
  connectionelement connelem_z[size_x,size_y,size_z - 1];*/
  annotation(experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.000001));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, width = 1000, period = 3000, rising = 60, falling = 60) annotation(Placement(visible = true, transformation(origin = {-71.8473,7.01273}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(trapezoid1.y,bbs.u) annotation(Line(points = {{-58.6473,7.01273},{-17.8218,7.01273},{-17.8218,-0.0889732},{26.557,-0.0889732}}));
  connect(bbs.Xp,connelem_s.int1);
  connect(bb[1,1,1].Xn,connelem_s.int2);
  //connect other buildingblocks
  for i in 1:size_x - 1, j in 1:size_y, k in 1:size_z loop
  connect(bb[i,j,k].Xp,connelem_x[i,j,k].int1);
  connect(bb[i + 1,j,k].Xn,connelem_x[i,j,k].int2);

  end for;
  for i in 1:size_x, j in 1:size_y - 1, k in 1:size_z loop
  connect(bb[i,j,k].Xp,connelem_y[i,j,k].int1);
  connect(bb[i,j + 1,k].Xn,connelem_y[i,j,k].int2);

  end for;
  for i in 1:size_x, j in 1:size_y, k in 1:size_z - 1 loop
  connect(bb[i,j,k].Xp,connelem_z[i,j,k].int1);
  connect(bb[i,j,k + 1].Xn,connelem_z[i,j,k].int2);

  end for;
  //*/
end iboss_sat;
model EVS
annotation(Icon(), experiment(StartTime = 0.0, StopTime = 10000, Tolerance = 0.000001));
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
end EVS;



