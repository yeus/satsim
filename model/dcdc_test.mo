model dc_limiter_test
  dcmodel.dcdc_ideal dctodcmodel1(Pout = 10, eff = 0.95, Vinmax = 50, Vinmin = 7, Vref = 5) annotation(Placement(visible = true, transformation(origin = {1.41445,6.78925}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-32.5319,-38.1895}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12) annotation(Placement(visible = true, transformation(origin = {57.1428,5.9406}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 10, freqHz = 0.001) annotation(Placement(visible = true, transformation(origin = {-68.4583,-14.4272}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(sinevoltage1.p,dctodcmodel1.p) annotation(Line(points = {{-68.4583,-2.4272},{-68.7412,-2.4272},{-68.7412,13.0127},{-10.5259,13.0127},{-10.5259,12.2818}}));
  connect(dctodcmodel1.n1,resistor1.n) annotation(Line(points = {{13.5139,0.093351},{13.5785,0.093351},{13.5785,-6.50636},{57.1428,-6.50636},{57.1428,-6.0594}}));
  connect(ground1.p,dctodcmodel1.n1) annotation(Line(points = {{-32.5319,-26.1895},{-32.5319,-19.2362},{13.5785,-19.2362},{13.5785,0.093351},{13.5139,0.093351}}));
  connect(ground1.p,dctodcmodel1.n) annotation(Line(points = {{-32.5319,-26.1895},{-32.5319,-25.4597},{-32.5318,-25.4597},{-32.5318,-0.0752131},{-10.582,-0.0752131}}));
  connect(sinevoltage1.n,ground1.p) annotation(Line(points = {{-68.4583,-26.4272},{-32.249,-26.4272},{-32.249,-26.1895},{-32.5319,-26.1895}}));
  connect(resistor1.p,dctodcmodel1.p1) annotation(Line(points = {{57.1428,17.9406},{23.7624,17.9406},{23.7624,11.8812},{13.4741,11.8812},{13.4741,12.3216}}));
end dc_limiter_test;

