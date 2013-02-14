package bb_catalogue
  model bb_solar
    extends buildingblock;
    annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001));
    Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 5, width = 1000, falling = 5, period = 2000) annotation(Placement(visible = true, transformation(origin = {15.5587,34.512}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {1.41448,-39.3211}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 6.5) annotation(Placement(visible = true, transformation(origin = {-29.1372,-26.5912}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    solar_power.solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {13.5785,-5.94055}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-27.2032,5.66355}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  equation
    connect(resistor1.p,idealdiode1.n) annotation(Line(points = {{-41.1372,-26.5912},{-44.9788,-26.5912},{-44.9788,5.65771},{-39.2032,5.65771},{-39.2032,5.66355}}));
    connect(ground1.p,resistor1.n) annotation(Line(points = {{1.41448,-27.3211},{1.41448,-26.8741},{-17.1372,-26.8741},{-17.1372,-26.5912}}));
    connect(solarcell1.p,ground1.p) annotation(Line(points = {{13.5785,-17.9405},{13.2956,-17.9405},{13.2956,-27.157},{1.41448,-27.157},{1.41448,-27.3211}}));
    connect(trapezoid1.y,solarcell1.E_s) annotation(Line(points = {{28.7587,34.512},{36.4922,34.512},{36.4922,11.8812},{5.05869,11.8812},{5.05869,-6.09268}}));
    connect(solarcell1.n,idealdiode1.p) annotation(Line(points = {{13.5785,6.05945},{-15.2197,6.05945},{-15.2197,5.66355},{-15.2032,5.66355}}));
  end bb_solar;
  model bb_battery
    extends buildingblock;
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {0.565801,-28.8543}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidvoltage1(V = 40, rising = 100, width = 1000, falling = 100, period = 3000) annotation(Placement(visible = true, transformation(origin = {-32.2489,-1.69732}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(trapezoidvoltage1.n,int_Xn.gnd) annotation(Line(points = {{-32.2489,-13.6973},{-68.7412,-13.6973},{-68.7412,-6.11033},{-68.7185,-6.11033}}));
    connect(int_Xn.vcc,trapezoidvoltage1.p) annotation(Line(points = {{-68.7524,-2.17255},{-68.1754,-2.17255},{-68.1754,10.4668},{-32.2489,10.4668},{-32.2489,10.3027}}));
    connect(trapezoidvoltage1.n,ground1.p) annotation(Line(points = {{-32.2489,-13.6973},{0.282885,-13.6973},{0.282885,-16.8543},{0.565801,-16.8543}}));
  end bb_battery;
  model bb_verbraucher
    extends buildingblock;
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    dcmodel.dcdc_ideal dcdc_ideal1(Vinmax = 100, Vref = 5, Pout = 50, Vinmin = 6.5, eff = 0.85) annotation(Placement(visible = true, transformation(origin = {-31.4003,6.50636}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 8) annotation(Placement(visible = true, transformation(origin = {3.9604,-3.67751}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(dcdc_ideal1.n,dcdc_ideal1.n1) annotation(Line(points = {{-43.3968,-0.358108},{-43.8472,-0.358108},{-43.8472,-7.63791},{-19.802,-7.63791},{-19.802,-0.189544},{-19.3008,-0.189544}}));
    connect(int_Xn.vcc,dcdc_ideal1.p) annotation(Line(points = {{-68.7524,-2.17255},{-54.314,-2.17255},{-54.314,12.1641},{-43.3406,12.1641},{-43.3406,11.9989}}));
    connect(dcdc_ideal1.n,int_Xn.gnd) annotation(Line(points = {{-43.3968,-0.358108},{-47.5248,-0.358108},{-47.5248,-6.78925},{-68.7185,-6.78925},{-68.7185,-6.11033}}));
    connect(resistor1.n,dcdc_ideal1.n1) annotation(Line(points = {{3.9604,-15.6775},{-19.802,-15.6775},{-19.802,-0.189544},{-19.3008,-0.189544}}));
    connect(dcdc_ideal1.p1,resistor1.p) annotation(Line(points = {{-19.3407,12.0387},{4.24328,12.0387},{4.24328,8.32249},{3.9604,8.32249}}));
  end bb_verbraucher;
end bb_catalogue;

