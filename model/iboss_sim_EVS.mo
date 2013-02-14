model EVS
  annotation(Icon(), experiment(StartTime = 0.0, StopTime = 10000, Tolerance = 0.000001));
  bb_catalogue.bb_verbraucher bb_verbraucher3 annotation(Placement(visible = true, transformation(origin = {24.8939,-9.901}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_battery bb_battery1 annotation(Placement(visible = true, transformation(origin = {-37.3408,-10.7496}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement5 annotation(Placement(visible = true, transformation(origin = {-6.77674,-10.248}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(bb_battery1.Xp,connectionelement5.int2) annotation(Line(points = {{-25.5782,-10.7446},{-17.5389,-10.7446},{-17.5389,-9.76461},{-17.3259,-9.76461}}));
  connect(connectionelement5.int1,bb_verbraucher3.Xn) annotation(Line(points = {{3.84843,-9.70486},{13.2957,-9.70486},{13.2957,-9.92225},{12.8841,-9.92225}}));
end EVS;

