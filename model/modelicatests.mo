package modelicatests
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
  model tabletest
    Modelica.Blocks.Sources.Ramp ramp1(duration = 10) annotation(Placement(visible = true, transformation(origin = {-63.9659,11.9403}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(visible = true, transformation(origin = {30.2772,-14.9254}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable1D combitable1ds1(table = [0.0,0.5;0.9,3.0;1.0,4.0], columns = {2,3}, n = 1) annotation(Placement(visible = true, transformation(origin = {-14.9254,11.5139}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {47.3968,-64.2729}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {30.8797,-43.447}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  equation
    connect(resistor1.n,signalvoltage1.n) annotation(Line(points = {{40.8797,-43.447},{47.0377,-43.447},{47.0377,-14.3627},{40.5745,-14.3627},{40.5745,-14.3627}}));
    connect(resistor1.n,ground1.p) annotation(Line(points = {{40.8797,-43.447},{46.6786,-43.447},{46.6786,-54.5781},{46.6786,-54.5781}}));
    connect(signalvoltage1.p,resistor1.p) annotation(Line(points = {{20.2772,-14.9254},{6.10413,-14.9254},{6.10413,-44.1652},{20.4668,-44.1652},{20.4668,-44.1652}}));
    connect(combitable1ds1.y[1],signalvoltage1.v) annotation(Line(points = {{-3.9254,11.5139},{30.1616,11.5139},{30.1616,-7.18133},{30.1616,-7.18133}}));
    connect(ramp1.y,combitable1ds1.u[1]) annotation(Line(points = {{-52.9659,11.9403},{-27.6481,11.9403},{-27.6481,10.772},{-27.6481,10.772}}));
    annotation(experiment(StartTime = 0.0, StopTime = 10.0, Tolerance = 0.0001));
  end tabletest;
  model noise
    //uniform noise
    Integer x(start = 0);
    parameter Integer m = 4294967296 "=2^32";
    parameter Integer a = 214013;
    parameter Integer c = 2531011;
  algorithm
    //x:=mod(a * integer(time) + c, m); //LCG Noise
    when sample(0, 0.01) then
          x:=mod(a * pre(x) + c, m);    
    end when;
    annotation(experiment(StartTime = 0.0, StopTime = 20.0, Tolerance = 0.000001));
  end noise;
end modelicatests;
