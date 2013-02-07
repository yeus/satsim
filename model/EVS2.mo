model EVS2
  annotation(experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.000001));
  bb_solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {21.2164,1.41443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock1 annotation(Placement(visible = true, transformation(origin = {-36.7751,2.26308}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {-7.92079,0.848656}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(connectionelement1.int1,bb_solar1.Xn) annotation(Line(points = {{2.70438,1.39179},{8.76945,1.39179},{8.76945,1.39317},{9.20657,1.39317}}));
  connect(buildingblock1.Xp,connectionelement1.int2) annotation(Line(points = {{-25.0124,2.26811},{-18.3876,2.26811},{-18.3876,1.33205},{-18.4699,1.33205}}));
end EVS2;

