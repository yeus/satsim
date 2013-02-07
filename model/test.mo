model test
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-58.0612,29.7164}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-45.93,-52.7844}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantCurrent constantcurrent1 annotation(Placement(visible = true, transformation(origin = {-59.9717,-16.1245}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 10) annotation(Placement(visible = true, transformation(origin = {-17.256,29.4201}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 10) annotation(Placement(visible = true, transformation(origin = {-16.1245,-15.2758}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3 annotation(Placement(visible = true, transformation(origin = {43.8472,29.1372}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {43.2815,-14.71}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Blocks.Sources.Constant const(k = 100) annotation(Placement(visible = true, transformation(origin = {15.5587,-70.4385}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(resistor3.p,solarcell1.n) annotation(Line(points = {{31.8472,29.1372},{21.2164,29.1372},{21.2164,-14.71},{31.2815,-14.71},{31.2815,-14.71}}));
  connect(solarcell1.p,resistor3.n) annotation(Line(points = {{55.2815,-14.71},{64.215,-14.71},{64.215,29.1372},{55.8472,29.1372},{55.8472,29.1372}}));
  connect(const.y,solarcell1.E_s) annotation(Line(points = {{28.7587,-70.4385},{43.2815,-70.4385},{43.2815,-23.2299},{43.4336,-23.2299}}));
  connect(resistor3.n,ground1.p) annotation(Line(points = {{55.8472,29.1372},{64.215,29.1372},{64.215,-36.7751},{-45.5446,-36.7751},{-45.5446,-40.7844},{-45.93,-40.7844}}));
  connect(resistor2.n,constantvoltage1.n) annotation(Line(points = {{-5.25601,29.4201},{-0.565771,29.4201},{-0.565771,-15.2758},{-4.12447,-15.2758},{-4.12447,-15.2758}}));
  connect(constantvoltage1.p,resistor2.p) annotation(Line(points = {{-28.1245,-15.2758},{-35.0778,-15.2758},{-35.0778,29.703},{-29.256,29.703},{-29.256,29.4201}}));
  connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{-4.12447,-15.2758},{3.39463,-15.2758},{3.39463,-36.7751},{-45.5446,-36.7751},{-45.5446,-40.7844},{-45.93,-40.7844}}));
  connect(resistor1.n,constantcurrent1.p) annotation(Line(points = {{-46.0612,29.7164},{-42.1499,29.7164},{-42.1499,-16.1245},{-47.9717,-16.1245},{-47.9717,-16.1245}}));
  connect(constantcurrent1.n,resistor1.p) annotation(Line(points = {{-71.9717,-16.1245},{-76.0962,-16.1245},{-76.0962,29.9859},{-70.0612,29.9859},{-70.0612,29.7164}}));
  connect(constantcurrent1.p,ground1.p) annotation(Line(points = {{-47.9717,-16.1245},{-45.8274,-16.1245},{-45.8274,-40.7844},{-45.93,-40.7844}}));
end test;

