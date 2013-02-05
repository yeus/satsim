model dcdc_characteristic
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-36.7751,-39.8868}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcdc_converter dcdc_converter1(efficiency = 0.85) annotation(Placement(visible = true, transformation(origin = {-14.1443,0.848656}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 6.4) annotation(Placement(visible = true, transformation(origin = {45.2617,-7.07214}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 50, duration = 1) annotation(Placement(visible = true, transformation(origin = {-33.3805,52.3338}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 30) annotation(Placement(visible = true, transformation(origin = {-74.3989,51.4851}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{-86.3989,51.4851},{-92.5035,51.4851},{-92.5035,-28.0057},{-36.7751,-28.0057},{-36.7751,-27.8868}}));
  connect(rampvoltage1.n,dcdc_converter1.p_in) annotation(Line(points = {{-21.3805,52.3338},{-16.1245,52.3338},{-16.1245,21.4993},{-38.7553,21.4993},{-38.7553,0.848656},{-25.9237,0.848656},{-25.9237,1.08628}}));
  connect(constantvoltage1.p,rampvoltage1.p) annotation(Line(points = {{-62.3989,51.4851},{-46.3932,51.4851},{-46.3932,52.3338},{-45.3805,52.3338}}));
  connect(resistor1.n,dcdc_converter1.gnd) annotation(Line(points = {{45.2617,-19.0721},{-21.4993,-19.0721},{-21.4993,-9.05233},{-21.5106,-9.05233},{-21.5106,-9.70863}}));
  connect(dcdc_converter1.p_out,resistor1.p) annotation(Line(points = {{-1.71998,1.08628},{18.1047,1.08628},{18.1047,5.37482},{45.2617,5.37482},{45.2617,4.92786}}));
  connect(ground1.p,dcdc_converter1.gnd) annotation(Line(points = {{-36.7751,-27.8868},{-36.7751,-9.90099},{-21.5106,-9.90099},{-21.5106,-9.70863}}));
end dcdc_characteristic;

