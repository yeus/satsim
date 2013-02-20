model EVS5
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {24.611,3.39463}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1000, rising = 60, falling = 60, period = 3000, width = 1000) annotation(Placement(visible = true, transformation(origin = {-77.5106,-1.41443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-28.0029,-43.6886}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.001) annotation(Placement(visible = true, transformation(origin = {-13.5785,-1.69731}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-44.9511,-2.60173}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor5(R = 0.001) annotation(Placement(visible = true, transformation(origin = {-14.1443,17.5389}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2 annotation(Placement(visible = true, transformation(origin = {25.4597,32.2489}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 25) annotation(Placement(visible = true, transformation(origin = {59.6888,29.703}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1 annotation(Placement(visible = true, transformation(origin = {6.22348,-22.6308}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(capacitor1.n,ground1.p) annotation(Line(points = {{6.22348,-34.6308},{-8.76945,-34.6308},{-8.76945,-31.6832},{-28.0029,-31.6832},{-28.0029,-31.6886}}));
  connect(dcdc_ideal_simple_improved1.n1,capacitor1.p) annotation(Line(points = {{13.4766,-1.45968},{5.94059,-1.45968},{5.94059,-10.6308},{6.22348,-10.6308}}));
  connect(dcdc_ideal_simple_improved2.n2,resistor2.n) annotation(Line(points = {{36.628,26.6139},{47.2419,26.6139},{47.2419,17.8218},{59.6888,17.8218},{59.6888,17.703}}));
  connect(dcdc_ideal_simple_improved2.p2,resistor2.p) annotation(Line(points = {{36.5601,37.3409},{47.2419,37.3409},{47.2419,41.5842},{59.6888,41.5842},{59.6888,41.703}}));
  connect(resistor5.n,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-2.14431,17.5389},{-1.69731,17.5389},{-1.69731,37.6238},{14.3932,37.6238},{14.3932,37.273}}));
  connect(resistor4.n,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-1.5785,-1.69731},{6.50636,-1.69731},{6.50636,27.7228},{14.3253,27.7228},{14.3253,27.3946}}));
  connect(resistor5.p,solarcell_simple1.n) annotation(Line(points = {{-26.1443,17.5389},{-45.8274,17.5389},{-45.8274,9.39827},{-44.9511,9.39827}}));
  connect(resistor5.n,dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-2.14431,17.5389},{-2.26308,17.5389},{-2.26308,9.05233},{13.5445,9.05233},{13.5445,8.41867}}));
  connect(resistor4.p,ground1.p) annotation(Line(points = {{-25.5785,-1.69731},{-28.0057,-1.69731},{-28.0057,-31.6886},{-28.0029,-31.6886}}));
  connect(resistor4.n,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-1.5785,-1.69731},{13.0127,-1.69731},{13.0127,-1.45968},{13.4767,-1.45968}}));
  connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-64.3106,-1.41443},{-54.314,-1.41443},{-54.314,-2.75387},{-53.4709,-2.75387}}));
  connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-44.9511,-14.6017},{-41.3362,-14.6017},{-41.3362,-31.6886},{-28.0029,-31.6886}}));
  connect(resistor1.n,dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359,-18.4103},{42.4328,-18.4103},{42.4328,-2.24045},{35.7794,-2.24045}}));
  connect(dcdc_ideal_simple_improved1.p2,resistor1.p) annotation(Line(points = {{35.7115,8.48656},{59.9717,8.48656},{59.9717,5.58974},{59.9359,5.58974}}));
end EVS5;

