model EVS3
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {24.611,3.39463}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2(V_out = 5, V_in_min = 8) annotation(Placement(visible = true, transformation(origin = {24.611,33.3805}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 3.3, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {23.4795,66.4781}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 25) annotation(Placement(visible = true, transformation(origin = {59.6888,34.512}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 25) annotation(Placement(visible = true, transformation(origin = {60.2546,67.0438}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1000, rising = 2, falling = 2, period = 3000, width = 1000) annotation(Placement(visible = true, transformation(origin = {-77.5106,-1.41443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-44.9511,-2.60173}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-28.0029,-43.6886}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor5 annotation(Placement(visible = true, transformation(origin = {-14.4272,25.1768}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor4 annotation(Placement(visible = true, transformation(origin = {-13.5785,-1.69731}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(resistor5.p,solarcell_simple1.n) annotation(Line(points = {{-26.4272,25.1768},{-45.8274,25.1768},{-45.8274,9.39827},{-44.9511,9.39827}}));
  connect(resistor4.p,ground1.p) annotation(Line(points = {{-25.5785,-1.69731},{-28.0057,-1.69731},{-28.0057,-31.6886},{-28.0029,-31.6886}}));
  connect(resistor4.n,dcdc_ideal_simple_improved3.n1) annotation(Line(points = {{-1.5785,-1.69731},{6.22348,-1.69731},{6.22348,61.669},{12.3451,61.669},{12.3451,61.6238}}));
  connect(resistor4.n,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-1.5785,-1.69731},{5.94059,-1.69731},{5.94059,28.5714},{13.4767,28.5714},{13.4767,28.5262}}));
  connect(resistor4.n,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-1.5785,-1.69731},{13.0127,-1.69731},{13.0127,-1.45968},{13.4767,-1.45968}}));
  connect(resistor5.n,dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-2.42716,25.1768},{-2.26308,25.1768},{-2.26308,9.05233},{13.5446,9.05233},{13.5446,8.41867}}));
  connect(resistor5.n,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-2.42716,25.1768},{-2.26308,25.1768},{-2.26308,38.4724},{13.5445,38.4724},{13.5445,38.4045}}));
  connect(resistor5.n,dcdc_ideal_simple_improved3.p1) annotation(Line(points = {{-2.42716,25.1768},{-2.54597,25.1768},{-2.54597,71.57},{12.413,71.57},{12.413,71.5021}}));
  connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-64.3106,-1.41443},{-54.314,-1.41443},{-54.314,-2.75387},{-53.4709,-2.75387}}));
  connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-44.9511,-14.6017},{-41.3362,-14.6017},{-41.3362,-31.6886},{-28.0029,-31.6886}}));
  connect(resistor2.n,dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{59.6888,22.512},{46.3932,22.512},{46.3932,28.2885},{35.7793,28.2885},{35.7793,27.7454}}));
  connect(dcdc_ideal_simple_improved2.p2,resistor2.p) annotation(Line(points = {{35.7115,38.4724},{46.6761,38.4724},{46.6761,48.3734},{59.1231,48.3734},{59.1231,46.512},{59.6888,46.512}}));
  connect(resistor3.n,dcdc_ideal_simple_improved3.n2) annotation(Line(points = {{60.2546,55.0438},{46.1103,55.0438},{46.1103,61.1033},{34.6478,61.1033},{34.6478,60.843}}));
  connect(dcdc_ideal_simple_improved3.p2,resistor3.p) annotation(Line(points = {{34.5799,71.57},{43.2815,71.57},{43.2815,80.0566},{60.2546,80.0566},{60.2546,79.0438}}));
  connect(resistor1.n,dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359,-18.4103},{42.4328,-18.4103},{42.4328,-2.24045},{35.7794,-2.24045}}));
  connect(dcdc_ideal_simple_improved1.p2,resistor1.p) annotation(Line(points = {{35.7115,8.48656},{59.9717,8.48656},{59.9717,5.58974},{59.9359,5.58974}}));
end EVS3;

