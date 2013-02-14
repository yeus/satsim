model dcdc_characteristic
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-36.7751,-39.8868}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(Diagram(graphics = {Line(points = {{25.7426,63.3663}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {65.6294,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {22.9137,69.3069}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {22.9138,35.9265}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {-38.1895,14.1442}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {50.0707,-6.50636}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(visible = true, transformation(origin = {-78.5311,-4.30002}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {12.447,-24.8939}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(dcdc_ideal_simple1.p2,variableresistor1.p) annotation(Line(points = {{-26.1895,20.1442},{-5.09194,20.1442},{-5.09194,5.65771},{50.3536,5.65771},{50.3536,5.49364},{50.0707,5.49364}}));
  connect(ground1.p,dcdc_ideal_simple1.n2) annotation(Line(points = {{-36.7751,-27.8868},{-36.7751,-1.9802},{-26.0255,-1.9802},{-26.0255,8.14423},{-26.1895,8.14423}}));
  connect(dcdc_ideal_simple1.n1,ground1.p) annotation(Line(points = {{-50.1895,8.14423},{-50.0707,8.14423},{-50.0707,-1.9802},{-36.7751,-1.9802},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
  connect(constantvoltage1.p,dcdc_ideal_simple1.p1) annotation(Line(points = {{-78.5311,7.69998},{-78.3593,7.69998},{-78.3593,20.9335},{-50.1895,20.9335},{-50.1895,20.1442}}));
  connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{-36.7751,-27.8868},{-36.7751,-25.1768},{-78.925,-25.1768},{-78.925,-16.3},{-78.5311,-16.3}}));
  connect(resistor1.n,ground1.p) annotation(Line(points = {{0.447,-24.8939},{-36.7751,-24.8939},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
  connect(variableresistor1.n,resistor1.p) annotation(Line(points = {{50.0707,-18.5064},{50.0707,-18.5064},{50.0707,-24.8939},{24.447,-24.8939},{24.447,-24.8939}}));
  connect(add1.y,variableresistor1.R) annotation(Line(points = {{78.8294,40.4526},{84.2999,40.4526},{84.2999,-6.50636},{63.2707,-6.50636},{63.2707,-6.50636}}));
  connect(const.y,add1.u2) annotation(Line(points = {{36.1138,35.9265},{49.7878,35.9265},{49.7878,33.2526},{51.2294,33.2526}}));
  connect(ramp1.y,add1.u1) annotation(Line(points = {{36.1137,69.3069},{40.4526,69.3069},{40.4526,47.5248},{51.2294,47.5248},{51.2294,47.6526}}));
end dcdc_characteristic;

