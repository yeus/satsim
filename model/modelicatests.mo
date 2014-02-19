package modelicatests
  /*
* Developer : Thomas Meschede (Thomas.Meschede@ilr.tu-berlin.de)
* Date : 10/06/2013
* All code (c)2013 Technische Universität Berlin, ILR, Fachgebiet Raumfahrttechnik, all rights reserved
*/
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
  model simplependulum
    inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-72.0362,-1.67937}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper2(d = 0.1) annotation(Placement(visible = true, transformation(origin = {-31.9961,35.4135}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(phi.start = 3.14159 / 2.0, n = {0,0,1}, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-28.3295,-1.25318}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body1(m = 0.5, r_CM = {0,0,0}) annotation(Placement(visible = true, transformation(origin = {46.4644,-0.839688}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0,-0.2,0}) annotation(Placement(visible = true, transformation(origin = {11.1437,-0.879765}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  equation
    connect(fixedtranslation1.frame_b,body1.frame_a) annotation(Line(points = {{21.1437,-0.879765},{36.0704,-0.879765},{36.0704,-0.293255},{36.0704,-0.293255}}));
    connect(revolute1.frame_b,fixedtranslation1.frame_a) annotation(Line(points = {{-18.3295,-1.25318},{0.58651,-1.25318},{0.58651,-1.17302},{0.58651,-1.17302}}));
    connect(world.frame_b,revolute1.frame_a) annotation(Line(points = {{-62.0362,-1.67937},{-38.1232,-1.67937},{-38.1232,-0.879765},{-38.1232,-0.879765}}));
    connect(revolute1.axis,damper2.flange_b) annotation(Line(points = {{-28.3295,8.74682},{-13.6628,9.04008},{-13.6628,35.7067},{-22.3294,35.7067},{-22.3294,35.4135}}));
    connect(damper2.flange_a,revolute1.support) annotation(Line(points = {{-41.9961,35.4135},{-45.6628,35.4135},{-45.6628,8.74682},{-34.9961,8.74682},{-34.3295,8.74682}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end simplependulum;
  model Kreisel
    inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-70.6666,-2.99997}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodycylinder1 annotation(Placement(visible = true, transformation(origin = {-3.66667,-4}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Polygon(origin = {-5.1492,-15.9409}, fillColor = {192,192,255}, fillPattern = FillPattern.VerticalCylinder, points = {{-25.8508,50.9409},{51.1492,-19.0591},{-50.8508,-50.7258},{-25.8508,50.9409}}),Polygon(origin = {31.3167,27.9803}, fillPattern = FillPattern.Solid, points = {{-31.6501,-20.3137},{15.3499,33.6863},{31.6833,16.6863},{-17.3167,-33.647},{-31.6501,-20.3137}}),Polygon(origin = {-4.36176,0.25555}, fillColor = {0,128,0}, fillPattern = FillPattern.Solid, points = {{-30.3049,53.4111},{66.3618,-39.9222},{26.6951,-74.9222},{-66.3049,12.4111},{-30.3049,53.4111}})}));
  end Kreisel;
  model OpticalWireless
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 120) annotation(Placement(visible = true, transformation(origin = {-49.711,-20.2312}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 120) annotation(Placement(visible = true, transformation(origin = {-16.7052,-20.7514}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.0000000001) annotation(Placement(visible = true, transformation(origin = {13.5838,-48.2659}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C = 0.0000000001) annotation(Placement(visible = true, transformation(origin = {12.4855,-8.90173}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {53.4682,-36.9942}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 5) annotation(Placement(visible = true, transformation(origin = {-51.4451,73.4104}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Semiconductors.NPN npn1 annotation(Placement(visible = true, transformation(origin = {-51.1561,29.4798}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  equation
    connect(capacitor1.n,ground1.p) annotation(Line(points = {{23.5838,-48.2659},{33.237,-48.8439},{32.948,-26.8786},{53.7572,-27.4566},{53.4682,-26.9942}}));
    connect(capacitor2.n,ground1.p) annotation(Line(points = {{22.4855,-8.90173},{53.4682,-8.90173},{53.4682,-26.9942},{53.4682,-26.9942}}));
    connect(resistor2.n,capacitor2.p) annotation(Line(points = {{-16.7052,-10.7514},{-16.7052,-8.3815},{2.48555,-8.3815},{2.48555,-8.90173}}));
    connect(resistor2.p,capacitor1.p) annotation(Line(points = {{-16.7052,-30.7514},{-16.4162,-48.5549},{-15.7803,-48.8439},{3.58381,-48.2659}}));
    connect(resistor1.n,resistor2.n) annotation(Line(points = {{-49.711,-10.2312},{-49.711,-10.9827},{-16.4162,-10.9827},{-16.7052,-10.7514}}));
    connect(resistor1.p,resistor2.p) annotation(Line(points = {{-49.711,-30.2312},{-49.711,-31.5029},{-16.4162,-31.5029},{-16.7052,-30.7514}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end OpticalWireless;
  model Transistortest
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-12.1387,71.0983}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {42.7746,-5.49133}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 5) annotation(Placement(visible = true, transformation(origin = {45.6647,71.3873}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 0.1, freqHz = 10) annotation(Placement(visible = true, transformation(origin = {-57.5145,19.0751}, extent = {{10,-10},{-10,10}}, rotation = 90)));
    Modelica.Electrical.Analog.Semiconductors.PNP pnp1 annotation(Placement(visible = true, transformation(origin = {-20.2312,36.7052}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-10.4046,17.6301}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  equation
    connect(resistor2.n,ground1.p) annotation(Line(points = {{-10.4046,7.63006},{-10.4046,4.62428},{42.7746,4.62428},{42.7746,4.62428}}));
    connect(pnp1.E,resistor2.p) annotation(Line(points = {{-10.2312,31.7052},{-9.82659,31.7052},{-9.82659,27.4566},{-9.82659,27.4566}}));
    connect(resistor1.n,pnp1.C) annotation(Line(points = {{-12.1387,61.0983},{-12.1387,41.6185},{-9.82659,41.6185},{-9.82659,41.6185}}));
    connect(sinevoltage1.p,pnp1.B) annotation(Line(points = {{-57.5145,29.0751},{-57.5145,36.7052},{-30.3468,36.7052},{-30.3468,36.7052}}));
    connect(sinevoltage1.n,ground1.p) annotation(Line(points = {{-57.5145,9.07514},{-57.5145,4.91329},{42.7746,4.91329},{42.7746,4.91329}}));
    connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{45.6647,61.3873},{45.6647,4.91329},{42.4855,4.91329},{42.4855,4.91329}}));
    connect(resistor1.p,constantvoltage1.p) annotation(Line(points = {{-12.1387,81.0983},{-12.1387,87.5723},{45.6647,87.5723},{45.6647,81.2139},{45.6647,81.2139}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end Transistortest;
  model Capacitortest
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-26.0606,-30.6061}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.1, v(start = 100)) annotation(Placement(visible = true, transformation(origin = {-53.6364,3.33333}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {10.303,5.75758}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  equation
    connect(ground1.p,capacitor1.n) annotation(Line(points = {{-26.0606,-20.6061},{-53.3333,-20.6061},{-53.3333,-6.36364},{-53.3333,-6.36364}}));
    connect(resistor1.n,ground1.p) annotation(Line(points = {{10.303,-4.24242},{10.303,-20.303},{-26.3636,-20.303},{-26.3636,-20.303}}));
    connect(capacitor1.p,resistor1.p) annotation(Line(points = {{-53.6364,13.3333},{-53.6364,32.7273},{10.303,32.7273},{10.303,15.4545},{10.303,15.4545}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end Capacitortest;
  model variableresistortest
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {12.4242,-24.8485}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {8.78788,36.0606}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1 annotation(Placement(visible = true, transformation(origin = {8.78788,8.48485}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(visible = true, transformation(origin = {-31.8182,35.7576}, extent = {{10,-10},{-10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.VariableResistor vr1 annotation(Placement(visible = true, transformation(origin = {-31.2121,66.9697}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  equation
    connect(vr1.n,signalvoltage1.n) annotation(Line(points = {{-41.2121,66.9697},{-47.2727,66.9697},{-47.2727,35.7576},{-41.8182,35.7576},{-41.8182,35.7576}}));
    connect(vr1.p,signalvoltage1.p) annotation(Line(points = {{-21.2121,66.9697},{-16.9697,66.9697},{-16.9697,35.4545},{-21.8182,35.4545},{-21.8182,35.4545}}));
    signalvoltage1.v = sin(time * 0.001);
    vr1.R = 100000.0 / (1 + exp(-100.0 * signalvoltage1.v));
    connect(signalvoltage1.n,ground1.p) annotation(Line(points = {{-41.8182,35.7576},{-52.4242,35.7576},{-52.4242,-15.1515},{12.1212,-15.1515},{12.1212,-15.1515}}));
    connect(signalvoltage1.p,capacitor1.p) annotation(Line(points = {{-21.8182,35.7576},{-15.1515,35.7576},{-15.1515,8.48485},{-0.606061,8.48485},{-0.606061,8.48485}}));
    connect(signalvoltage1.p,resistor1.p) annotation(Line(points = {{-21.8182,35.7576},{-1.51515,35.7576},{-1.51515,35.7576},{-1.51515,35.7576}}));
    connect(ground1.p,capacitor1.n) annotation(Line(points = {{12.4242,-14.8485},{24.2424,-14.8485},{24.2424,8.78788},{18.4848,8.78788},{18.4848,8.78788}}));
    connect(resistor1.n,ground1.p) annotation(Line(points = {{18.7879,36.0606},{33.3333,36.0606},{33.3333,-15.1515},{12.4242,-15.1515},{12.4242,-15.1515}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end variableresistortest;
  model pChannelMOSFETtest
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 500) annotation(Placement(visible = true, transformation(origin = {-30.6358,26.0116}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.5) annotation(Placement(visible = true, transformation(origin = {65.896,13.8728}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 100) annotation(Placement(visible = true, transformation(origin = {-71.6763,10.9827}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {41.0405,-82.659}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.00000001) annotation(Placement(visible = true, transformation(origin = {24.5665,25.1445}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.PulseVoltage pulsevoltage1(V = 50, width = 50, period = 1.0) annotation(Placement(visible = true, transformation(origin = {-47.1098,-40.4624}, extent = {{10,-10},{-10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 500) annotation(Placement(visible = true, transformation(origin = {-5.20231,-3.75723}, extent = {{10,-10},{-10,10}}, rotation = 90)));
    Modelica.Electrical.Analog.Semiconductors.NMOS nmos1 annotation(Placement(visible = true, transformation(origin = {-16.7889,-35.5491}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Semiconductors.PMOS pmos1 annotation(Placement(visible = true, transformation(origin = {-13.2948,58.9595}, extent = {{-10,-10},{10,10}}, rotation = 90)));
  equation
    connect(pmos1.S,resistor3.p) annotation(Line(points = {{-8.2948,68.9595},{-8.2948,69.9213},{65.8268,69.9213},{65.8268,24.252},{65.8268,24.252}}));
    connect(pmos1.B,pmos1.D) annotation(Line(points = {{-13.2948,68.9595},{-13.2948,83.7795},{-18.2677,83.7795},{-18.2677,69.6063},{-18.2677,69.6063}}));
    connect(resistor1.p,constantvoltage1.p) annotation(Line(points = {{-40.6358,26.0116},{-71.811,26.0116},{-71.811,21.4173},{-71.811,21.4173}}));
    connect(pmos1.D,resistor1.p) annotation(Line(points = {{-18.2948,68.9595},{-18.2948,70.2362},{-40.9449,70.2362},{-40.9449,25.8268},{-40.9449,25.8268}}));
    connect(resistor1.n,pmos1.G) annotation(Line(points = {{-20.6358,26.0116},{0,26.0116},{0,48.8439},{-18.2948,48.9595},{-8.2948,48.9595}}));
    connect(capacitor1.p,pmos1.G) annotation(Line(points = {{14.5665,25.1445},{0,25.1445},{0,48.8439},{-18.2948,48.9595},{-8.2948,48.9595}}));
    connect(nmos1.B,nmos1.S) annotation(Line(points = {{-6.78895,-35.5491},{1.25984,-35.5491},{1.25984,-40.6299},{-6.29921,-40.6299},{-6.29921,-40.6299}}));
    connect(nmos1.D,resistor2.n) annotation(Line(points = {{-6.78895,-30.5491},{-5.03937,-30.5491},{-5.03937,-13.8583},{-5.03937,-13.8583}}));
    connect(nmos1.S,ground1.p) annotation(Line(points = {{-6.78895,-40.5491},{40.9449,-40.5491},{40.9449,-73.0709},{40.9449,-73.0709}}));
    connect(pulsevoltage1.p,nmos1.G) annotation(Line(points = {{-37.1098,-40.4624},{-26.3006,-40.4624},{-26.7889,-40.5491},{-26.7889,-40.5491}}));
    connect(resistor2.p,resistor1.n) annotation(Line(points = {{-5.20231,6.24277},{-5.20231,26.1417},{-21.1024,26.1417},{-21.1024,26.1417}}));
    connect(capacitor1.n,resistor3.p) annotation(Line(points = {{34.5665,25.1445},{65.5118,25.1445},{65.5118,24.5669},{65.5118,24.5669}}));
    connect(pulsevoltage1.n,constantvoltage1.n) annotation(Line(points = {{-57.1098,-40.4624},{-71.9653,-40.4624},{-71.9653,0.982659},{-71.6763,0.982659}}));
    connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{41.0405,-72.659},{-71.9653,-72.659},{-71.9653,0.578035},{-71.9653,0.578035}}));
    connect(resistor3.n,ground1.p) annotation(Line(points = {{65.896,3.87283},{65.896,-27.1676},{40.7514,-72.659},{41.0405,-72.659}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 20.0, Tolerance = 0.000001));
  end pChannelMOSFETtest;
  model efunc
    Real x(start = 1.0);
  equation
    x = der(x);
  end efunc;
  model freemotiontest
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity) annotation(Placement(visible = true, transformation(origin = {-60,60}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body1(m = 1.0, r_0(start = {0,0.6,0})) annotation(Placement(visible = true, transformation(origin = {20,60}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end freemotiontest;
  model pgwpm2test
    extends Modelica.Icons.Example;
    model PointMass = Modelica.Mechanics.MultiBody.Parts.PointMass(m = 1, sphereColor = {255,0,0}) "Point mass used at all places of this example";
    PointMass pointMass1(r_0(start = {3,0,0}, each fixed = true), v_0(start = {0,0,-1}, each fixed = true)) annotation(Placement(transformation(extent = {{60,-10},{80,10}}, rotation = 0)));
    PointMass pointMass2 annotation(Placement(transformation(extent = {{-60,-10},{-40,10}}, rotation = 0)));
    PointMass pointMass3(v_0(start = {0,0,-1}, each fixed = true)) annotation(Placement(transformation(extent = {{60,20},{80,40}}, rotation = 0)));
    PointMass pointMass4 annotation(Placement(transformation(extent = {{-50,-40},{-30,-20}}, rotation = 0)));
    PointMass pointMass5 annotation(Placement(transformation(extent = {{0,80},{20,100}}, rotation = 0)));
    PointMass pointMass6 annotation(Placement(transformation(extent = {{0,-100},{20,-80}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {1,0,0}) annotation(Placement(transformation(extent = {{20,-10},{40,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-1,0,0}) annotation(Placement(transformation(extent = {{0,-10},{-20,10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0,1,0}) annotation(Placement(transformation(extent = {{20,20},{40,40}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0,-1,0}) annotation(Placement(transformation(extent = {{0,-40},{-20,-20}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {0,0,1}) annotation(Placement(transformation(origin = {10,60}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0,0,-1}) annotation(Placement(transformation(origin = {10,-60}, extent = {{10,-10},{-10,10}}, rotation = 90)));
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity, mue = 5) annotation(Placement(transformation(extent = {{-80,60},{-60,80}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion annotation(Placement(transformation(extent = {{-40,60},{-20,80}}, rotation = 0)));
  equation
    connect(fixedTranslation1.frame_a,fixedTranslation.frame_a) annotation(Line(points = {{0,0},{20,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation1.frame_a,fixedTranslation2.frame_a) annotation(Line(points = {{0,0},{10,0},{10,30},{20,30}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation3.frame_a,fixedTranslation.frame_a) annotation(Line(points = {{0,-30},{10,-30},{10,0},{20,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation1.frame_a,fixedTranslation4.frame_a) annotation(Line(points = {{0,0},{10,0},{10,50}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation5.frame_a,fixedTranslation.frame_a) annotation(Line(points = {{10,-50},{10,0},{20,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation2.frame_b,pointMass3.frame_a) annotation(Line(points = {{40,30},{70,30}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation3.frame_b,pointMass4.frame_a) annotation(Line(points = {{-20,-30},{-40,-30}}, color = {95,95,95}, thickness = 0.5));
    connect(pointMass5.frame_a,fixedTranslation4.frame_b) annotation(Line(points = {{10,90},{10,70}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation5.frame_b,pointMass6.frame_a) annotation(Line(points = {{10,-70},{10,-90}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation.frame_b,pointMass1.frame_a) annotation(Line(points = {{40,0},{70,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation1.frame_b,pointMass2.frame_a) annotation(Line(points = {{-20,0},{-50,0}}, color = {95,95,95}, thickness = 0.5));
    connect(world.frame_b,freeMotion.frame_a) annotation(Line(points = {{-60,70},{-40,70}}, color = {95,95,95}, thickness = 0.5));
    connect(freeMotion.frame_b,fixedTranslation1.frame_a) annotation(Line(points = {{-20,70},{-10,70},{-10,20},{10,20},{10,0},{0,0}}, color = {95,95,95}, thickness = 0.5));
  end pgwpm2test;
  model PointGravityWithPointMasses2 "Rigidly connected point masses in a point gravity field"
    extends Modelica.Icons.Example;
    PointMass pointMass1(r_0(start = {3,0,0}, fixed = true), v_0(start = {0,0,-1}, fixed = true)) annotation(Placement(transformation(extent = {{60,-10},{80,10}})));
    PointMass pointMass2 annotation(Placement(transformation(extent = {{-60,-10},{-40,10}})));
    PointMass pointMass3(r_0(start = {2,1,0}), v_0(start = {0,0,-1}, fixed = true)) annotation(Placement(transformation(extent = {{60,20},{80,40}})));
    PointMass pointMass4 annotation(Placement(transformation(extent = {{-50,-40},{-30,-20}})));
    PointMass pointMass5 annotation(Placement(transformation(extent = {{0,80},{20,100}})));
    PointMass pointMass6 annotation(Placement(transformation(extent = {{0,-100},{20,-80}})));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {1,0,0}) annotation(Placement(transformation(extent = {{20,-10},{40,10}})));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-1,0,0}) annotation(Placement(transformation(extent = {{0,-10},{-20,10}})));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0,1,0}) annotation(Placement(transformation(extent = {{20,20},{40,40}})));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0,-1,0}) annotation(Placement(transformation(extent = {{0,-40},{-20,-20}})));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {0,0,1}) annotation(Placement(transformation(origin = {10,60}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0,0,-1}) annotation(Placement(transformation(origin = {10,-60}, extent = {{10,-10},{-10,10}}, rotation = 90)));
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity, mue = 5) annotation(Placement(transformation(extent = {{-80,60},{-60,80}})));
    Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion annotation(Placement(transformation(extent = {{-40,60},{-20,80}})));
    model PointMass = Modelica.Mechanics.MultiBody.Parts.PointMass(m = 1, sphereColor = {255,0,0}) "Point mass used at all places of this example";
  equation
    connect(fixedTranslation1.frame_a,fixedTranslation.frame_a) annotation(Line(points = {{0,0},{20,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation1.frame_a,fixedTranslation2.frame_a) annotation(Line(points = {{0,0},{10,0},{10,30},{20,30}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation3.frame_a,fixedTranslation.frame_a) annotation(Line(points = {{0,-30},{10,-30},{10,0},{20,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation1.frame_a,fixedTranslation4.frame_a) annotation(Line(points = {{0,0},{10,0},{10,50}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation5.frame_a,fixedTranslation.frame_a) annotation(Line(points = {{10,-50},{10,0},{20,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation2.frame_b,pointMass3.frame_a) annotation(Line(points = {{40,30},{70,30}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation3.frame_b,pointMass4.frame_a) annotation(Line(points = {{-20,-30},{-40,-30}}, color = {95,95,95}, thickness = 0.5));
    connect(pointMass5.frame_a,fixedTranslation4.frame_b) annotation(Line(points = {{10,90},{10,70}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation5.frame_b,pointMass6.frame_a) annotation(Line(points = {{10,-70},{10,-90}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation.frame_b,pointMass1.frame_a) annotation(Line(points = {{40,0},{70,0}}, color = {95,95,95}, thickness = 0.5));
    connect(fixedTranslation1.frame_b,pointMass2.frame_a) annotation(Line(points = {{-20,0},{-50,0}}, color = {95,95,95}, thickness = 0.5));
    connect(world.frame_b,freeMotion.frame_a) annotation(Line(points = {{-60,70},{-40,70}}, color = {95,95,95}, thickness = 0.5));
    connect(freeMotion.frame_b,fixedTranslation1.frame_a) annotation(Line(points = {{-20,70},{-10,70},{-10,20},{10,20},{10,0},{0,0}}, color = {95,95,95}, thickness = 0.5));
  end PointGravityWithPointMasses2;
  package bus_simulation
    expandable connector EngineBus
    end EngineBus;
    block Sensor
      RealOutput speed;
      // Output, ie., non-input
    equation
      speed = sin(time);
    end Sensor;
    block Actuator
      RealInput speed;
      // Input
    end Actuator;
    model Engine
      EngineBus bus;
      Sensor sensor;
      Actuator actuator;
    equation
      connect(bus.speed,sensor.speed);
      // provides the non-input from sensor.speed
      connect(bus.speed,actuator.speed);
    end Engine;
  end bus_simulation;
end modelicatests;

