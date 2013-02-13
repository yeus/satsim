package solar_power
  model solarcell_simple_characteristic
    extends Modelica.Icons.Example;
    Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {38.5987,-59.042}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763,52.0374}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {38.1913,52.3255}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(exprgenerator1.y,variableresistor1.R) annotation(Line(points = {{66.5825,-42.6184},{72.161,-42.6184},{72.161,52.657},{51.3913,52.657},{51.3913,52.3255}}));
    connect(variableresistor1.n,ground1.p) annotation(Line(points = {{38.1913,40.3255},{38.5525,40.3255},{38.5525,-47.042},{38.5987,-47.042}}));
    annotation(experiment(StopTime = 1), Diagram(), Icon());
  end solarcell_simple_characteristic;
  block Exprgenerator "Generate exponential signal"
    import Modelica.Blocks.Interfaces;
    parameter Real alpha = 1;
    parameter Real beta = 1;
    extends Interfaces.SO;
  equation
    //y = alpha * exp(beta * time);exp function
    y = exp(alpha * time) - 1;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
  end Exprgenerator;
  model solarcell_charactristic2
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {35.0778,65.3465}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-4.61025,-17.7746}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    dcmodel.DCtoDCModel dctodcmodel1(Vinmax = 100, Vref = 5, Pout = 50, Vinmin = 5.5, eff = 0.85) annotation(Placement(visible = true, transformation(origin = {-2.26308,22.3479}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
    Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 5, width = 2000, period = 5000, falling = 5) annotation(Placement(visible = true, transformation(origin = {-80.0566,7.63791}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-39.3211,7.63791}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {36.1311,6.871}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(trapezoid1.y,solarcell1.E_s) annotation(Line(points = {{-66.8566,7.63791},{-47.8076,7.63791},{-47.8076,7.48577},{-47.8409,7.48577}}));
    connect(const.y,variableresistor1.R) annotation(Line(points = {{48.2778,65.3465},{63.3663,65.3465},{63.3663,7.07214},{49.3311,7.07214},{49.3311,6.871}}));
    connect(dctodcmodel1.p1,variableresistor1.p) annotation(Line(points = {{9.79656,27.8803},{36.4922,27.8803},{36.4922,18.871},{36.1311,18.871}}));
    connect(solarcell1.n,dctodcmodel1.p) annotation(Line(points = {{-39.3211,19.6379},{-39.0382,19.6379},{-39.0382,28.5714},{-14.2034,28.5714},{-14.2034,27.8405}}));
    connect(dctodcmodel1.n1,ground1.p) annotation(Line(points = {{9.8364,15.652},{10.4668,15.652},{10.4668,-5.09194},{-4.61025,-5.09194},{-4.61025,-5.7746}}));
    connect(dctodcmodel1.n,ground1.p) annotation(Line(points = {{-14.2595,15.4835},{-15.5587,15.4835},{-15.5587,-4.80905},{-4.61025,-4.80905},{-4.61025,-5.7746}}));
    connect(ground1.p,solarcell1.p) annotation(Line(points = {{-4.61025,-5.7746},{-4.61025,-4.80905},{-39.3211,-4.80905},{-39.3211,-4.36209}}));
    connect(variableresistor1.n,ground1.p) annotation(Line(points = {{36.1311,-5.129},{-4.52617,-5.129},{-4.52617,-5.7746},{-4.61025,-5.7746}}));
  end solarcell_charactristic2;
  model solarcell_characteristic
    extends Modelica.Icons.Example;
    Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {38.5987,-59.042}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763,52.0374}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {38.1913,52.3255}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-28.7743,52.5267}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  equation
    connect(const.y,solarcell1.E_s) annotation(Line(points = {{-59.6763,52.0374},{-37.6033,52.0374},{-37.6033,52.3746},{-37.2941,52.3746}}));
    connect(exprgenerator1.y,variableresistor1.R) annotation(Line(points = {{66.5825,-42.6184},{72.161,-42.6184},{72.161,52.657},{51.3913,52.657},{51.3913,52.3255}}));
    connect(solarcell1.p,variableresistor1.n) annotation(Line(points = {{-28.7743,40.5267},{38.4298,40.5267},{38.4298,40.3255},{38.1913,40.3255}}));
    connect(variableresistor1.n,ground1.p) annotation(Line(points = {{38.1913,40.3255},{38.5525,40.3255},{38.5525,-47.042},{38.5987,-47.042}}));
    connect(solarcell1.n,variableresistor1.p) annotation(Line(points = {{-28.7743,64.5267},{37.9867,64.5267},{37.9867,64.3255},{38.1913,64.3255}}));
    annotation(experiment(StopTime = 1), Diagram(), Icon());
  end solarcell_characteristic;
  model solarcell_characteristicV
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763,52.0374}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-3.55006,5.00759}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-7.43802,65.2893}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = -100) annotation(Placement(visible = true, transformation(origin = {35.9504,66.5289}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-28.7743,52.5267}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 300, duration = 1) annotation(Placement(visible = true, transformation(origin = {59.5041,54.9587}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(idealdiode1.p,solarcell1.n) annotation(Line(points = {{-19.438,65.2893},{-28.9256,65.2893},{-28.9256,64.5267},{-28.7743,64.5267}}));
    connect(constantvoltage1.p,idealdiode1.n) annotation(Line(points = {{23.9504,66.5289},{4.95868,66.5289},{4.95868,65.2893},{4.56198,65.2893}}));
    connect(constantvoltage1.n,rampvoltage1.p) annotation(Line(points = {{47.9504,66.5289},{59.5041,66.5289},{59.5041,66.9587},{59.5041,66.9587}}));
    connect(ground1.p,rampvoltage1.n) annotation(Line(points = {{-3.55006,17.0076},{-3.55006,40.4959},{59.5041,40.4959},{59.5041,42.9587}}));
    connect(solarcell1.p,ground1.p) annotation(Line(points = {{-28.7743,40.5267},{-3.71901,40.5267},{-3.71901,17.0076},{-3.55006,17.0076}}));
    connect(const.y,solarcell1.E_s) annotation(Line(points = {{-59.6763,52.0374},{-37.6033,52.0374},{-37.6033,52.3746},{-37.2941,52.3746}}));
    annotation(experiment(StopTime = 1), Diagram(), Icon());
  end solarcell_characteristicV;
  model solarcell_simple
    //todo Parameter auf model mappen.
    extends Modelica.Electrical.Analog.Interfaces.OnePort;
    import Modelica.SIunits;
    import Modelica.Constants.*;
    import Modelica.Blocks.*;
    annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{76.9449,-20.3678},{76.9449,-52.6167}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{63.3664,-35.6436},{90.2405,-35.6436}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-92.2207,-34.512},{-66.4781,-34.512}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), Diagram());
    Modelica.Electrical.Analog.Sources.SignalCurrent photoniccurrent annotation(Placement(visible = true, transformation(origin = {-41.3223,-4.54546}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    Modelica.Electrical.Analog.Semiconductors.Diode diode1 annotation(Placement(visible = true, transformation(origin = {-4.95902,-4.54958}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    parameter Real N_p = 100.0 "Numper of parallel solar cells per string" annotation(Placement(visible = true, transformation(origin = {68.595,65.2893}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cm²" annotation(Placement(visible = true, transformation(origin = {71.4876,69.4215}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter SIunits.Current I_mp = 160 "[A/m²] Maximum Powerpoint Current" annotation(Placement(visible = true, transformation(origin = {65.7025,64.4628}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage" annotation(Placement(visible = true, transformation(origin = {65.2893,57.0248}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter SIunits.Current I_sc = 168 "[A/m²] Short Circuit Current on Earth using solar Constant of " annotation(Placement(visible = true, transformation(origin = {63.6364,58.2645}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage" annotation(Placement(visible = true, transformation(origin = {69.0083,71.9008}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Real E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(visible = true, transformation(origin = {69.4215,65.7025}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    constant Real E0(final quantity = "Power", final unit = "W") = 1367.0 "Solarkonstante" annotation(Placement(visible = true, transformation(origin = {65.7025,66.1157}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    SIunits.CurrentDensity i_sc_actual annotation(Placement(visible = true, transformation(origin = {65.7025,66.1157}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation." annotation(Placement(visible = true, transformation(origin = {68.1818,62.3967}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real N_s = 25.0 "Number of series-connected solar cells per string" annotation(Placement(visible = true, transformation(origin = {69.8347,63.2231}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1) annotation(Placement(visible = true, transformation(origin = {36.7768,-4.95868}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  protected
    SIunits.Current i_sc = A_cell * N_p annotation(Placement(visible = true, transformation(origin = {69.4215,67.7686}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  equation
    connect(resistor1.p,n) annotation(Line(points = {{36.7768,7.04132},{98.7603,7.04132},{98.7603,0},{100,0}}));
    connect(diode1.p,resistor1.p) annotation(Line(points = {{-4.95902,7.45042},{36.3636,7.45042},{36.3636,7.04132},{36.7768,7.04132}}));
    connect(resistor1.n,diode1.n) annotation(Line(points = {{36.7768,-16.9587},{7.43802,-16.9587},{7.43802,-16.5496},{-4.95902,-16.5496}}));
    connect(photoniccurrent.p,p) annotation(Line(points = {{-41.3223,-16.5455},{-78.0992,-16.5455},{-78.0992,0.826446},{-100,0.826446},{-100,0}}));
    connect(photoniccurrent.n,diode1.p) annotation(Line(points = {{-41.3223,7.45454},{7.43802,7.45454},{7.43802,7.45042},{-4.95902,7.45042}}));
    connect(photoniccurrent.p,diode1.n) annotation(Line(points = {{-41.3223,-16.5455},{-29.7521,-16.5455},{-29.7521,-16.5496},{-4.95902,-16.5496}}));
    i_sc_actual = (i_sc * E_s) / E0;
    photoniccurrent.i = i_sc_actual;
  end solarcell_simple;
  model solarcell
    //Modell nach Handbuch für Raumfahrttechnik
    import Modelica.SIunits;
    import Modelica.Constants.*;
    import Modelica.Blocks.*;
    parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage";
    parameter SIunits.CurrentDensity I_sc = 168 "[A/m²] Short Circuit Current on Earth using solar Constant of ";
    parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage";
    parameter SIunits.CurrentDensity I_mp = 160 "[A/m²] Maximum Powerpoint Current";
    parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cm²";
    parameter Real N_p = 100.0 "Numper of parallel solar cells per string";
    parameter Real N_s = 25.0 "Number of series-connected solar cells per string";
    parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation.";
    SIunits.CurrentDensity I_sc_actual;
    Real C_a = (V_mp / V_oc - 1) / log(1 - I_mp / I_sc);
    Real C_b = (1 - I_mp / I_sc) * exp(-V_mp / (C_a * V_oc));
    constant Real E0(final quantity = "Power", final unit = "W") = 1367.0 "Solarkonstante";
    extends Modelica.Electrical.Analog.Interfaces.OnePort;
    annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{76.9449,-20.3678},{76.9449,-52.6167}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{63.3664,-35.6436},{90.2405,-35.6436}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-92.2207,-34.512},{-66.4781,-34.512}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), Diagram());
    Modelica.Blocks.Interfaces.RealInput E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(visible = true, transformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  protected
    SIunits.Voltage V_Sperr = 20;
    Real alpha = I_sc_actual * A_cell * N_p * (1 - C_b * (exp(-V_Sperr / (C_a * V_oc * N_s)) - 1));
    //um einen Diodendurchbruch zu simulieren
  equation
    I_sc_actual = (I_sc * E_s) / E0;
    i = if v < V_Sperr then I_sc_actual * A_cell * N_p * (1 - C_b * (exp(-v / (C_a * V_oc * N_s)) - 1)) else alpha + (v - V_Sperr) * 3;
    //i=10.0-0.01*(exp(v)-1);
  end solarcell;
end solar_power;

