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
  connect(bb[i,j,k].Yp,connelem_y[i,j,k].int1);
  connect(bb[i,j + 1,k].Yn,connelem_y[i,j,k].int2);

  end for;
  for i in 1:size_x, j in 1:size_y, k in 1:size_z - 1 loop
  connect(bb[i,j,k].Zp,connelem_z[i,j,k].int1);
  connect(bb[i,j,k + 1].Zn,connelem_z[i,j,k].int2);

  end for;
  //*/
end iboss_sat;

