package bb_catalogue
  model bb_solar
    extends buildingblock;
    annotation(experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001), Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {1.41448,-39.3211}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    solar_power.solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {13.5785,-5.94055}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.00000001) annotation(Placement(visible = true, transformation(origin = {-31.1174,-10.1839}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {221.308,-0.741443}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {221.308,-0.741443}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(u,solarcell1.E_s) annotation(Line(points = {{221.308,-0.741443},{115.983,-0.741443},{115.983,-6.22348},{5.05869,-6.22348},{5.05869,-6.09269}}));
    connect(capacitor1.p,solarcell1.n) annotation(Line(points = {{-31.1174,1.81612},{-31.1174,1.81612},{-31.1174,6.50636},{13.5785,6.50636},{13.5785,6.05945}}));
    connect(ground1.p,capacitor1.n) annotation(Line(points = {{1.41448,-27.3211},{1.41448,-26.5912},{-31.9661,-26.5912},{-31.9661,-22.1839},{-31.1174,-22.1839}}));
    connect(ground1.p,int_Xn.gnd) annotation(Line(points = {{1.41448,-27.3211},{1.41448,-26.3083},{-69.5898,-26.3083},{-69.5898,-6.11033},{-68.7185,-6.11033}}));
    connect(solarcell1.n,int_Xn.vcc) annotation(Line(points = {{13.5785,6.05945},{-69.024,6.05945},{-69.024,-2.17255},{-68.7524,-2.17255}}));
    connect(solarcell1.p,ground1.p) annotation(Line(points = {{13.5785,-17.9405},{13.2956,-17.9405},{13.2956,-27.157},{1.41448,-27.157},{1.41448,-27.3211}}));
  end bb_solar;
  model bb_battery
    extends buildingblock;
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {0.565801,-28.8543}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidvoltage1(V = 40, rising = 100, width = 1000, falling = 100, period = 3000) annotation(Placement(visible = true, transformation(origin = {-32.2489,-1.69732}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(trapezoidvoltage1.n,int_Xn.gnd) annotation(Line(points = {{-32.2489,-13.6973},{-68.7412,-13.6973},{-68.7412,-6.11033},{-68.7185,-6.11033}}));
    connect(int_Xn.vcc,trapezoidvoltage1.p) annotation(Line(points = {{-68.7524,-2.17255},{-68.1754,-2.17255},{-68.1754,10.4668},{-32.2489,10.4668},{-32.2489,10.3027}}));
    connect(trapezoidvoltage1.n,ground1.p) annotation(Line(points = {{-32.2489,-13.6973},{0.282885,-13.6973},{0.282885,-16.8543},{0.565801,-16.8543}}));
  end bb_battery;
  model bb_verbraucher
    extends buildingblock;
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1 annotation(Placement(visible = true, transformation(origin = {-20.9335,8.20368}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2(V_out = 3, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {-21.2164,31.9661}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {-20.6506,-20.3678}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-72.9845,-81.1881}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12.5) annotation(Placement(visible = true, transformation(origin = {32.8147,11.3154}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.0000001) annotation(Placement(visible = true, transformation(origin = {-73.2674,-47.2419}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 72) annotation(Placement(visible = true, transformation(origin = {31.6832,-25.7426}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 10.89) annotation(Placement(visible = true, transformation(origin = {33.9463,46.6761}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(resistor2.n,dcdc_ideal_simple_improved3.n2) annotation(Line(points = {{31.6832,-37.7426},{8.48656,-37.7426},{8.48656,-25.7426},{-9.48232,-25.7426},{-9.48232,-26.0028}}));
    connect(dcdc_ideal_simple_improved3.p2,resistor2.p) annotation(Line(points = {{-9.55022,-15.2758},{31.4003,-15.2758},{31.4003,-13.7426},{31.6832,-13.7426}}));
    connect(dcdc_ideal_simple_improved2.p2,resistor3.p) annotation(Line(points = {{-10.116,37.058},{-3.39463,37.058},{-3.39463,59.1231},{33.9463,59.1231},{33.9463,58.6761}}));
    connect(resistor3.n,dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{33.9463,34.6761},{2.54597,34.6761},{2.54597,26.3083},{-10.0481,26.3083},{-10.0481,26.331}}));
    connect(int_Xn.gnd,dcdc_ideal_simple_improved3.n1) annotation(Line(points = {{-68.7185,-6.11033},{-47.5248,-6.11033},{-47.5248,-25.4597},{-31.785,-25.4597},{-31.785,-25.2221}}));
    connect(int_Xn.gnd,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-68.7185,-6.11033},{-47.8076,-6.11033},{-47.8076,26.8741},{-32.3508,26.8741},{-32.3508,27.1117}}));
    connect(dcdc_ideal_simple_improved3.p1,int_Xn.vcc) annotation(Line(points = {{-31.7171,-15.3437},{-56.2942,-15.3437},{-56.2942,-2.26308},{-68.7524,-2.26308},{-68.7524,-2.17255}}));
    connect(capacitor1.n,ground1.p) annotation(Line(points = {{-73.2674,-59.2419},{-72.9845,-59.2419},{-72.9845,-69.1881},{-72.9845,-69.1881}}));
    connect(capacitor1.p,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-73.2674,-35.2419},{-47.2418,-35.2419},{-47.2418,3.34937},{-32.0679,3.34937}}));
    connect(int_Xn.vcc,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-68.7524,-2.17255},{-56.86,-2.17255},{-56.86,37.058},{-32.2829,37.058},{-32.2829,36.9901}}));
    connect(dcdc_ideal_simple_improved1.n1,int_Xn.gnd) annotation(Line(points = {{-32.0679,3.34937},{-47.5248,3.34937},{-47.5248,-6.50636},{-68.7185,-6.50636},{-68.7185,-6.11033}}));
    connect(int_Xn.vcc,dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-68.7524,-2.17255},{-56.2942,-2.17255},{-56.2942,13.8614},{-32,13.8614},{-32,13.2277}}));
    connect(resistor1.p,dcdc_ideal_simple_improved1.p2) annotation(Line(points = {{32.8147,23.3154},{9.33522,23.3154},{9.33522,13.2956},{-9.8331,13.2956},{-9.8331,13.2956}}));
    connect(dcdc_ideal_simple_improved1.n2,resistor1.n) annotation(Line(points = {{-9.76521,2.5686},{7.92079,2.5686},{7.92079,-1.41443},{32.8147,-1.41443},{32.8147,-0.684582}}));
  end bb_verbraucher;
end bb_catalogue;

