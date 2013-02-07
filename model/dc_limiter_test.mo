model dc_limiter_test
  dcmodel.DCtoDCModel dctodcmodel1(Pout = 10, eff = 0.95, Vinmax = 50, Vinmin = 7, Vref = 5) annotation(Placement(visible = true, transformation(origin = {-24.8939,7.07214}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-51.2023,-37.9066}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12) annotation(Placement(visible = true, transformation(origin = {38.4724,6.22349}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 5, freqHz = 10) annotation(Placement(visible = true, transformation(origin = {-87.1287,-14.1443}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 10) annotation(Placement(visible = true, transformation(origin = {-86.2801,22.0651}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-48.9392,39.604}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 0.00000001) annotation(Placement(visible = true, transformation(origin = {-77.7935,50.9194}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(inductor1.n,resistor2.p) annotation(Line(points = {{-65.7935,50.9194},{-65.6294,50.9194},{-65.6294,39.8868},{-60.9392,39.8868},{-60.9392,39.604}}));
  connect(inductor1.p,constantvoltage1.p) annotation(Line(points = {{-89.7935,50.9194},{-91.0891,50.9194},{-91.0891,34.512},{-86.2801,34.512},{-86.2801,34.0651}}));
  connect(resistor2.n,dctodcmodel1.p) annotation(Line(points = {{-36.9392,39.604},{-37.3409,39.604},{-37.3409,12.5647},{-36.8342,12.5647}}));
  connect(sinevoltage1.p,constantvoltage1.n) annotation(Line(points = {{-87.1287,-2.14427},{-86.8458,-2.14427},{-86.8458,10.0651},{-86.2801,10.0651}}));
  connect(sinevoltage1.n,ground1.p) annotation(Line(points = {{-87.1287,-26.1443},{-50.9194,-26.1443},{-50.9194,-25.9066},{-51.2023,-25.9066}}));
  connect(dctodcmodel1.n,dctodcmodel1.n1) annotation(Line(points = {{-12.7546,1.02238},{-12.7298,1.02238},{-12.7298,-8.76945},{-36.4922,-8.76945},{-36.4922,0.783584},{-36.7944,0.783584}}));
  connect(resistor1.p,dctodcmodel1.p1) annotation(Line(points = {{38.4724,18.2235},{8.48656,18.2235},{8.48656,12.7298},{-12.8343,12.7298},{-12.8343,12.6045}}));
  connect(dctodcmodel1.n,resistor1.n) annotation(Line(points = {{-12.7546,1.02238},{4.52617,1.02238},{4.52617,-5.65771},{38.4724,-5.65771},{38.4724,-5.77651}}));
  connect(ground1.p,dctodcmodel1.n1) annotation(Line(points = {{-51.2023,-25.9066},{-51.2023,0.565771},{-36.7944,0.565771},{-36.7944,0.783584}}));
end dc_limiter_test;

