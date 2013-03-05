model EVS2x2x1
  annotation(experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001));
  bb_catalogue.bb_verbraucher bb_verbraucher1 annotation(Placement(visible = true, transformation(origin = {36.7751,-15.2758}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {5.94059,-14.9929}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher2 annotation(Placement(visible = true, transformation(origin = {36.2093,40.7355}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {6.22348,41.0184}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher3 annotation(Placement(visible = true, transformation(origin = {-24.0453,41.867}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, width = 1000, period = 3000, rising = 60, falling = 60) annotation(Placement(visible = true, transformation(origin = {-72.4187,-15.5587}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-25.1768,-15.5587}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {35.3607,12.7298}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  connectionelement connectionelement4 annotation(Placement(visible = true, transformation(origin = {-25.1768,13.5785}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(trapezoid1.y,bb_solar1.u) annotation(Line(points = {{-59.2187,-15.5587},{-17.8218,-15.5587},{-17.8218,-21.8727},{-17.6747,-21.8727}}));
  connect(connectionelement4.int1,bb_solar1.Xn) annotation(Line(points = {{-24.6337,2.95333},{-25.4597,2.95333},{-25.4597,-3.54886},{-25.1981,-3.54886}}));
  connect(bb_verbraucher3.Yn,connectionelement4.int2) annotation(Line(points = {{-24.0814,30.4323},{-24.0814,24.8939},{-24.6934,24.8939},{-24.6934,24.1276}}));
  connect(bb_verbraucher3.Xp,connectionelement3.int2) annotation(Line(points = {{-12.2826,41.8721},{-3.9604,41.8721},{-3.9604,41.5018},{-4.32566,41.5018}}));
  connect(connectionelement3.int1,bb_verbraucher2.Xn) annotation(Line(points = {{16.8487,41.5615},{24.0453,41.5615},{24.0453,40.7142},{24.1995,40.7142}}));
  connect(connectionelement2.int1,bb_verbraucher1.Yp) annotation(Line(points = {{35.9038,2.10467},{36.2093,2.10467},{36.2093,-3.46421},{36.6168,-3.46421}}));
  connect(bb_verbraucher2.Yn,connectionelement2.int2) annotation(Line(points = {{36.1732,29.3007},{36.1732,23.7624},{35.8441,23.7624},{35.8441,23.279}}));
  connect(connectionelement1.int2,bb_solar1.Yp) annotation(Line(points = {{-4.60855,-14.5095},{-12.447,-14.5095},{-12.447,-15.4004},{-13.3652,-15.4004}}));
  connect(connectionelement1.int1,bb_verbraucher1.Xn) annotation(Line(points = {{16.5658,-14.4498},{24.8939,-14.4498},{24.8939,-15.2971},{24.7653,-15.2971}}));
  end EVS2x2x1;

