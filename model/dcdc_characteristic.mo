model dcdc_characteristic
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-36.7751,-39.8868}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(Diagram(graphics = {Line(points = {{25.7426,63.3663}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {65.6294,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {22.9137,69.3069}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {22.9138,35.9265}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcdc_converter dcdc_converter1 annotation(Placement(visible = true, transformation(origin = {-11.5983,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {50.0707,-6.50636}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(visible = true, transformation(origin = {-78.5311,-4.30002}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {12.447,-24.8939}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(resistor1.n,dcdc_converter1.gnd) annotation(Line(points = {{0.447,-24.8939},{-5.3719,-24.8939},{-5.3719,-16.1157},{-19.0083,-16.1157},{-19.0083,-4.89958},{-18.9646,-4.89958}}));
  connect(resistor1.p,variableresistor1.n) annotation(Line(points = {{24.447,-24.8939},{49.5868,-24.8939},{49.5868,-18.5064},{50.0707,-18.5064}}));
  connect(dcdc_converter1.p_out,variableresistor1.p) annotation(Line(points = {{0.82602,5.89533},{50.4132,5.89533},{50.4132,5.49364},{50.0707,5.49364}}));
  connect(dcdc_converter1.gnd,ground1.p) annotation(Line(points = {{-18.9646,-4.89958},{-19.0083,-4.89958},{-19.0083,-16.1157},{-36.7769,-16.1157},{-36.7769,-27.8868},{-36.7751,-27.8868}}));
  connect(dcdc_converter1.p_in,constantvoltage1.p) annotation(Line(points = {{-23.3777,5.89533},{-43.8017,5.89533},{-43.8017,16.1157},{-78.5124,16.1157},{-78.5124,7.69998},{-78.5311,7.69998}}));
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{-78.5311,-16.3},{-36.7769,-16.3},{-36.7769,-27.8868},{-36.7751,-27.8868}}));
  connect(add1.y,variableresistor1.R) annotation(Line(points = {{78.8294,40.4526},{85.9972,40.4526},{85.9972,-6.78925},{63.2707,-6.78925},{63.2707,-6.50636}}));
  connect(const.y,add1.u2) annotation(Line(points = {{36.1138,35.9265},{41.867,35.9265},{41.867,33.3805},{51.2294,33.3805},{51.2294,33.2526}}));
  connect(ramp1.y,add1.u1) annotation(Line(points = {{36.1137,69.3069},{41.0184,69.3069},{41.0184,47.8076},{51.2294,47.8076},{51.2294,47.6526}}));
end dcdc_characteristic;

