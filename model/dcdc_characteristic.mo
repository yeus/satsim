model dcdc_characteristic
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-36.7751,-39.8868}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(Diagram(graphics = {Line(points = {{25.7426,63.3663}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {65.6294,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {22.9137,69.3069}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {22.9138,35.9265}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal_simple dctodcmodel1(Vinmax = 100, Vref = 5, Pout = 10, Vinmin = 5.5, eff = 0.85) annotation(Placement(visible = true, transformation(origin = {-34.512,12.1641}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {50.0707,-6.50636}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(visible = true, transformation(origin = {-78.5311,-4.30002}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {12.447,-24.8939}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(dctodcmodel1.n1,ground1.p) annotation(Line(points = {{-22.4125,5.46817},{-22.0651,5.46817},{-22.0651,-20.3678},{-36.7751,-20.3678},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
  connect(dctodcmodel1.n,ground1.p) annotation(Line(points = {{-46.5085,5.29961},{-46.959,5.29961},{-46.959,-19.5191},{-36.7751,-19.5191},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
  connect(dctodcmodel1.p1,variableresistor1.p) annotation(Line(points = {{-22.4524,17.6964},{-1.9802,17.6964},{-1.9802,5.65771},{50.0707,5.65771},{50.0707,5.49364}}));
  connect(constantvoltage1.p,dctodcmodel1.p) annotation(Line(points = {{-78.5311,7.69998},{-78.0764,7.69998},{-78.0764,18.1047},{-46.4523,18.1047},{-46.4523,17.6566}}));
  connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{-36.7751,-27.8868},{-36.7751,-25.1768},{-78.925,-25.1768},{-78.925,-16.3},{-78.5311,-16.3}}));
  connect(resistor1.n,ground1.p) annotation(Line(points = {{0.447,-24.8939},{-36.7751,-24.8939},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
  connect(variableresistor1.n,resistor1.p) annotation(Line(points = {{50.0707,-18.5064},{50.0707,-18.5064},{50.0707,-24.8939},{24.447,-24.8939},{24.447,-24.8939}}));
  connect(add1.y,variableresistor1.R) annotation(Line(points = {{78.8294,40.4526},{84.2999,40.4526},{84.2999,-6.50636},{63.2707,-6.50636},{63.2707,-6.50636}}));
  connect(const.y,add1.u2) annotation(Line(points = {{36.1138,35.9265},{49.7878,35.9265},{49.7878,33.2526},{51.2294,33.2526}}));
  connect(ramp1.y,add1.u1) annotation(Line(points = {{36.1137,69.3069},{40.4526,69.3069},{40.4526,47.5248},{51.2294,47.5248},{51.2294,47.6526}}));
end dcdc_characteristic;

