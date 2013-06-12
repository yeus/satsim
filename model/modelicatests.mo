/*
* Developer : Thomas Meschede (Thomas.Meschede@ilr.tu-berlin.de)
* Date : 10/06/2013
* All code (c)2013 Technische Universität Berlin, ILR, Fachgebiet Raumfahrttechnik, all rights reserved
*/
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
end modelicatests;

