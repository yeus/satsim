model EVS2
  annotation(experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001));
  bb_catalogue.bb_battery bb_battery1 annotation(Placement(visible = true, transformation(origin = {-27.4399,-16.1244}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {1.9802,-16.6902}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher1 annotation(Placement(visible = true, transformation(origin = {36.7751,-15.2758}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(connectionelement1.int1,bb_verbraucher1.Xn) annotation(Line(points = {{12.6054,-16.1471},{24.611,-16.1471},{24.611,-15.2971},{24.7653,-15.2971}}));
  connect(bb_battery1.Xp,connectionelement1.int2) annotation(Line(points = {{-15.6772,-16.1194},{-9.05233,-16.1194},{-9.05233,-16.2068},{-8.56894,-16.2068}}));
end EVS2;

