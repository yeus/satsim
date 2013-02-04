model EVS
  annotation(Icon());
  buildingblock buildingblock2 annotation(Placement(visible = true, transformation(origin = {23.8909,-4.35677}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {-4.52616,-4.52613}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {-4.24329,54.0311}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock1 annotation(Placement(visible = true, transformation(origin = {-32.5903,-3.67752}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock3 annotation(Placement(visible = true, transformation(origin = {-32.7968,54.5464}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock4 annotation(Placement(visible = true, transformation(origin = {24.6432,54.2438}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement5 annotation(Placement(visible = true, transformation(origin = {-62.2348,-4.24328}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {-33.6634,27.157}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  connectionelement connectionelement4 annotation(Placement(visible = true, transformation(origin = {23.1966,26.5912}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  bb_solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-91.0891,-4.52617}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(bb_solar1.Yn,connectionelement5.int2) annotation(Line(points = {{-79.6543,-4.5623},{-79.6543,-3.67751},{-72.7839,-3.67751},{-72.7839,-3.75989}}));
  connect(connectionelement5.int1,buildingblock1.Xn) annotation(Line(points = {{-51.6096,-3.70014},{-44.6959,-3.70014},{-44.6959,-3.69878},{-44.6001,-3.69878}}));
  connect(connectionelement3.int2,buildingblock3.Yn) annotation(Line(points = {{-33.18,37.7061},{-33.0976,37.7061},{-33.0976,44.2902},{-33.3652,44.2902}}));
  connect(buildingblock4.Yn,connectionelement4.int2) annotation(Line(points = {{24.0748,43.9876},{23.7624,43.9876},{23.7624,37.1403},{23.68,37.1403}}));
  connect(connectionelement2.int1,buildingblock4.Xn) annotation(Line(points = {{6.38188,54.5742},{14.4272,54.5742},{14.4272,54.3923},{14.6022,54.3923}}));
  connect(buildingblock3.Xp,connectionelement2.int2) annotation(Line(points = {{-22.4938,54.3138},{-14.4272,54.3138},{-14.4272,54.5145},{-14.7924,54.5145}}));
  connect(buildingblock1.Yp,connectionelement3.int1) annotation(Line(points = {{-33.0881,6.94595},{-33.0976,6.94595},{-33.0976,16.5318},{-33.1203,16.5318}}));
  connect(connectionelement1.int2,buildingblock1.Xp) annotation(Line(points = {{-15.0753,-4.04274},{-21.4993,-4.04274},{-21.4993,-3.91011},{-22.2873,-3.91011}}));
  connect(buildingblock2.Xn,connectionelement1.int1) annotation(Line(points = {{13.8499,-4.2083},{6.50636,-4.2083},{6.50636,-3.98299},{6.09901,-3.98299}}));
  connect(connectionelement4.int1,buildingblock2.Yp) annotation(Line(points = {{23.7397,15.966},{23.4795,15.966},{23.4795,6.2667},{23.3931,6.2667}}));
end EVS;

