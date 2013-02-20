package dcmodel
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
  model dc_limiter_test
    extends Modelica.Icons.Example;
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-16.2777,18.9533}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 10, V_in_max = 100, slope = 5) annotation(Placement(visible = true, transformation(origin = {16.4074,3.9604}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {57.1428,5.9406}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
    Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 100, duration = 1) annotation(Placement(visible = true, transformation(origin = {-72.4187,7.92079}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(rampvoltage1.p,resistor2.p) annotation(Line(points = {{-72.4187,19.9208},{-28.8543,19.9208},{-28.8543,18.9533},{-28.2777,18.9533}}));
    connect(rampvoltage1.n,resistor3.n) annotation(Line(points = {{-72.4187,-4.07921},{-72.1358,-4.07921},{-72.1358,-13.2956},{-48.2726,-13.2956},{-48.2726,-13.0493}}));
    connect(dcdc_ideal_simple1.n2,dcdc_ideal_simple1.n1) annotation(Line(points = {{28.4074,-2.0396},{28.2885,-2.0396},{28.2885,-10.1839},{4.80905,-10.1839},{4.80905,-2.0396},{4.40736,-2.0396}}));
    connect(resistor1.p,dcdc_ideal_simple1.p2) annotation(Line(points = {{57.1428,17.9406},{39.3211,17.9406},{39.3211,10.1839},{28.4074,10.1839},{28.4074,9.9604}}));
    connect(dcdc_ideal_simple1.n2,resistor1.n) annotation(Line(points = {{28.4074,-2.0396},{34.7949,-2.0396},{34.7949,-6.78925},{57.1428,-6.78925},{57.1428,-6.0594}}));
    connect(dcdc_ideal_simple1.n1,resistor3.p) annotation(Line(points = {{4.40736,-2.0396},{4.52617,-2.0396},{4.52617,-13.0127},{-24.2726,-13.0127},{-24.2726,-13.0493}}));
    connect(resistor2.n,dcdc_ideal_simple1.p1) annotation(Line(points = {{-4.2777,18.9533},{4.52617,18.9533},{4.52617,9.9604},{4.40736,9.9604}}));
    connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
  end dc_limiter_test;
  model DCtoDCModel "DC/DC Converter Model nach Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
    model SignalCurrent "Generic current source using the input signal asource current"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      annotation(Diagram(), Icon(graphics = {Line(points = {{-88.2603,-0.282885},{-52.6167,-0.282885},{-48.3734,-0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-42.7157,46.6761},{47.8076,-49.505}}),Line(points = {{51.4851,0.282885},{89.1089,0.565771}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-0.565771,71.0042}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {-0.565771,71.0042}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    end SignalCurrent;
    class CCS
      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.372,71.0042},{91.372,-69.024}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-66.4781,34.2291},{66.4781,-29.703}}, textString = "CCS")}));
    equation
      i1 = 0;
    end CCS;
    annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668,68.1754},{76.3791,30.2687}}, textString = "%Vref V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC")}));
    Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    class LimPICont
      parameter Real Pout;
      parameter Real Vref;
      annotation(Diagram(), Icon(graphics = {Line(points = {{-80,78},{-80,-90}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{-80,90},{-88,68},{-72,68},{-80,90}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-90,-80},{82,-80}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{90,-80},{68,-72},{68,-88},{90,-80}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-80,-80},{-80,50},{-80,-20},{30,60},{80,60}}, rotation = 0, color = {0,0,127}, pattern = LinePattern.Solid, thickness = 0.25),Text(rotation = 0, lineColor = {192,192,192}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20,-20},{80,-60}}, textString = "LimPI")}));
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Gain Gain1(k = 10) annotation(Placement(visible = true, transformation(origin = {-22.3479,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Add Add1 annotation(Placement(visible = true, transformation(origin = {31.4003,5.09194}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref, k = 1) annotation(Placement(visible = true, transformation(origin = {-26.0255,-41.3013}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(Add1.y,y) annotation(Line(points = {{44.6003,5.09194},{91.372,5.09194},{91.372,5.65771},{99.5757,5.65771}}));
      connect(Gain1.u,u) annotation(Line(points = {{-36.7479,40.4526},{-48.9392,40.4526},{-48.9392,1.13154},{-97.3126,1.13154}}));
      connect(Gain1.y,Add1.u1) annotation(Line(points = {{-9.14795,40.4526},{0.848674,40.4526},{0.848674,12.2919},{17.0003,12.2919}}));
      connect(LimIntegrator1.u,u) annotation(Line(points = {{-40.4255,-41.3013},{-48.9392,-41.3013},{-48.9392,1.13154},{-97.3126,1.13154}}));
      connect(LimIntegrator1.y,Add1.u2) annotation(Line(points = {{-12.8255,-41.3013},{1.41445,-41.3013},{1.41445,-2.10806},{17.0003,-2.10806}}));
    end LimPICont;
    Real Iout annotation(Placement(visible = true, transformation(origin = {67.619,78.5277}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {67.4051,79.2675}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vref annotation(Placement(visible = true, transformation(origin = {70.3991,78.9255}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Pout annotation(Placement(visible = true, transformation(origin = {66.761,79.2079}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {68.5657,78.6802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real eff annotation(Placement(visible = true, transformation(origin = {67.5608,79.1375}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {-52.1354,79.2469}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = Pout / Vref, uMin = 0) annotation(Placement(visible = true, transformation(origin = {27.8677,79.723}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Constant1(k = Vref) annotation(Placement(visible = true, transformation(origin = {-80.6833,79.0128}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    LimPICont LimPI(Pout = Pout, Vref = Vref) annotation(Placement(visible = true, transformation(origin = {-16.2708,79.1807}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    CCS CCS1 annotation(Placement(visible = true, transformation(origin = {-13.4794,-3.13342}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-82.9539,32.7429}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {82.7203,25.0863}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    Modelica.Electrical.Analog.Basic.Resistor Rhk(R = 10000000) annotation(Placement(visible = true, transformation(origin = {-47.5463,-2.79786}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {95.9451,-7.11907}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    Modelica.Electrical.Analog.Basic.Capacitor Cin(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {-76.7755,-2.72419}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    SignalCurrent SignalCurrent1 annotation(Placement(visible = true, transformation(origin = {18.5897,-5.33737}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {61.2614,-6.05931}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Capacitor Cout(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {38.7774,-6.20137}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(Dout.n,Cout.p) annotation(Line(points = {{95.9451,4.88093},{89.6747,4.88093},{89.6747,5.79863},{38.7774,5.79863}}));
    connect(Dout.p,Cout.n) annotation(Line(points = {{95.9451,-19.1191},{76.662,-19.1191},{76.662,-18.2014},{38.7774,-18.2014}}));
    connect(Cout.n,Volt.n) annotation(Line(points = {{38.7774,-18.2014},{23.1966,-18.2014},{23.1966,-18.0593},{61.2614,-18.0593}}));
    connect(Volt.p,Cout.p) annotation(Line(points = {{61.2614,5.94069},{74.116,5.94069},{74.116,5.79863},{38.7774,5.79863}}));
    connect(Volt.p,Amp.p) annotation(Line(points = {{61.2614,5.94069},{57.1429,5.94069},{57.1429,13.0863},{82.7203,13.0863}}));
    connect(Feedback1.u2,Volt.v) annotation(Line(points = {{-52.1354,69.6469},{-52.1354,39.3211},{51.768,39.3211},{51.768,-6.05931},{49.2614,-6.05931}}));
    connect(Volt.n,n1) annotation(Line(points = {{61.2614,-18.0593},{63.0835,-18.0593},{63.0835,-55.7992},{100.829,-55.7992}}));
    connect(Limiter1.y,SignalCurrent1.u) annotation(Line(points = {{41.0677,79.723},{46.1103,79.723},{46.1103,-5.40527},{10.0692,-5.40527}}));
    connect(Dout.n,SignalCurrent1.n) annotation(Line(points = {{95.9451,4.88093},{95.6153,4.88093},{95.6153,6.66263},{18.5897,6.66263}}));
    connect(SignalCurrent1.p,Dout.p) annotation(Line(points = {{18.5897,-17.3374},{10.4668,-17.3374},{10.4668,-19.1191},{95.9451,-19.1191}}));
    connect(Cin.n,Rhk.n) annotation(Line(points = {{-76.7755,-14.7242},{-38.1895,-14.7242},{-38.1895,-14.7979},{-47.5463,-14.7979}}));
    connect(Rhk.p,Cin.p) annotation(Line(points = {{-47.5463,9.20214},{-62.2348,9.20214},{-62.2348,9.27581},{-76.7755,9.27581}}));
    connect(Cin.n,n) annotation(Line(points = {{-76.7755,-14.7242},{-76.0962,-14.7242},{-76.0962,-57.2039},{-99.9705,-57.2039}}));
    connect(Din.n,Cin.p) annotation(Line(points = {{-82.9539,20.7429},{-32.8147,20.7429},{-32.8147,9.27581},{-76.7755,9.27581}}));
    connect(CCS1.p2,Rhk.p) annotation(Line(points = {{-1.47945,2.86658},{1.69733,2.86658},{1.69733,9.20214},{-47.5463,9.20214}}));
    connect(CCS1.n2,Rhk.n) annotation(Line(points = {{-1.47945,-9.13342},{2.54599,-9.13342},{2.54599,-14.7979},{-47.5463,-14.7979}}));
    connect(CCS1.n1,n1) annotation(Line(points = {{-25.4794,-9.13342},{-37.6237,-9.13342},{-37.6237,-55.7992},{100.829,-55.7992}}));
    connect(CCS1.p1,p1) annotation(Line(points = {{-25.4794,2.86658},{-21.4993,2.86658},{-21.4993,46.1028},{100.497,46.1028}}));
    connect(Amp.n,p1) annotation(Line(points = {{82.7203,37.0863},{82.8854,37.0863},{82.8854,46.1028},{100.497,46.1028}}));
    connect(LimPI.y,Limiter1.u) annotation(Line(points = {{-4.32175,79.8596},{12.447,79.8596},{12.447,79.723},{13.4677,79.723}}));
    connect(Feedback1.y,LimPI.u) annotation(Line(points = {{-41.3354,79.2469},{-28.0057,79.2469},{-28.0057,79.3165},{-27.9484,79.3165}}));
    connect(Constant1.y,Feedback1.u1) annotation(Line(points = {{-67.4833,79.0128},{-62.5177,79.0128},{-62.5177,79.2469},{-61.7354,79.2469}}));
    connect(p,Din.p) annotation(Line(points = {{-99.5025,45.7711},{-83.1683,45.7711},{-83.1683,44.7429},{-82.9539,44.7429}}));
    Iout = Pout / Vref;
    CCS1.i2 = (CCS1.v1 * Amp.i) / ((CCS1.v2 + 0.0000000001) * eff);
    SignalCurrent1.i = if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.u else 0;
  end DCtoDCModel;
  model dcdc_ideal "DC/DC Converter Model nach Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
    //todo möglicherweise lässt sich hier noch etwas mit "smooth" machen?
    class CCS
      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.372,71.0042},{91.372,-69.024}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-66.4781,34.2291},{66.4781,-29.703}}, textString = "CCS")}));
    equation
      i1 = 0;
    end CCS;
    annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668,68.1754},{76.3791,30.2687}}, textString = "%Vref V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC")}));
    Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    class LimPICont
      parameter Real Pout;
      parameter Real Vref;
      parameter Real gain = 1;
      parameter Real gainI = 1;
      annotation(Diagram(), Icon(graphics = {Line(points = {{-80,78},{-80,-90}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{-80,90},{-88,68},{-72,68},{-80,90}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-90,-80},{82,-80}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{90,-80},{68,-72},{68,-88},{90,-80}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-80,-80},{-80,50},{-80,-20},{30,60},{80,60}}, rotation = 0, color = {0,0,127}, pattern = LinePattern.Solid, thickness = 0.25),Text(rotation = 0, lineColor = {192,192,192}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20,-20},{80,-60}}, textString = "LimPI")}));
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Gain Gain1(k = gain) annotation(Placement(visible = true, transformation(origin = {-22.3479,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Add Add1 annotation(Placement(visible = true, transformation(origin = {31.4003,5.09194}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref, k = gainI) annotation(Placement(visible = true, transformation(origin = {-26.0255,-41.3013}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(Add1.y,y) annotation(Line(points = {{44.6003,5.09194},{91.372,5.09194},{91.372,5.65771},{99.5757,5.65771}}));
      connect(Gain1.u,u) annotation(Line(points = {{-36.7479,40.4526},{-48.9392,40.4526},{-48.9392,1.13154},{-97.3126,1.13154}}));
      connect(Gain1.y,Add1.u1) annotation(Line(points = {{-9.14795,40.4526},{0.848674,40.4526},{0.848674,12.2919},{17.0003,12.2919}}));
      connect(LimIntegrator1.u,u) annotation(Line(points = {{-40.4255,-41.3013},{-48.9392,-41.3013},{-48.9392,1.13154},{-97.3126,1.13154}}));
      connect(LimIntegrator1.y,Add1.u2) annotation(Line(points = {{-12.8255,-41.3013},{1.41445,-41.3013},{1.41445,-2.10806},{17.0003,-2.10806}}));
    end LimPICont;
    Real Iout annotation(Placement(visible = true, transformation(origin = {67.619,78.5277}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {67.4051,79.2675}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vref annotation(Placement(visible = true, transformation(origin = {70.3991,78.9255}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Pout annotation(Placement(visible = true, transformation(origin = {66.761,79.2079}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {68.5657,78.6802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real eff annotation(Placement(visible = true, transformation(origin = {67.5608,79.1375}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {-52.1354,79.2469}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = Pout / Vref, uMin = 0) annotation(Placement(visible = true, transformation(origin = {27.8677,79.723}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    LimPICont LimPI(Pout = Pout, Vref = Vref, gain = 10, gainI = 1) annotation(Placement(visible = true, transformation(origin = {-16.2708,79.1807}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Logical.GreaterThreshold greaterthreshold1(threshold = Vinmin) annotation(Placement(visible = true, transformation(origin = {-27.7228,35.9264}, extent = {{-6.1579,-6.1579},{6.1579,6.1579}}, rotation = 0)));
    Modelica.Blocks.Logical.LessThreshold lessthreshold1(threshold = Vinmax) annotation(Placement(visible = true, transformation(origin = {-27.7228,20.6506}, extent = {{-6.1579,-6.1579},{6.1579,6.1579}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {6.78922,52.3338}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
    Modelica.Blocks.Logical.Nand nand1 annotation(Placement(visible = true, transformation(origin = {0,31.1174}, extent = {{-5.59809,-5.59809},{5.59809,5.59809}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Constant1(k = Vref) annotation(Placement(visible = true, transformation(origin = {-85.2095,79.2957}, extent = {{-6.77369,-6.77369},{6.77369,6.77369}}, rotation = 0)));
    CCS CCS1 annotation(Placement(visible = true, transformation(origin = {-13.4794,-12.1858}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {82.7203,25.0863}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {63.2416,-6.90797}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {41.0653,-5.98753}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor1 annotation(Placement(visible = true, transformation(origin = {-61.1033,-1.41443}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Electrical.Analog.Sources.SignalCurrent signalcurrent1 annotation(Placement(visible = true, transformation(origin = {23.4795,-5.9406}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-84.9341,27.0852}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    Modelica.Blocks.Logical.Switch switch1 annotation(Placement(visible = true, transformation(origin = {22.9137,28.8543}, extent = {{-6.1579,6.1579},{6.1579,-6.1579}}, rotation = -90)));
  equation
    connect(voltagesensor1.p,CCS1.p2) annotation(Line(points = {{-61.1033,10.5856},{-1.41443,10.5856},{-1.41443,-6.1858},{-1.4794,-6.1858}}));
    connect(CCS1.n1,n1) annotation(Line(points = {{-25.4794,-18.1858},{-37.6237,-18.1858},{-37.6237,-55.7992},{100.829,-55.7992}}));
    connect(CCS1.n2,n) annotation(Line(points = {{-1.4794,-18.1858},{-1.69731,-18.1858},{-1.69731,-23.4795},{-72.1358,-23.4795},{-72.1358,-57.1429},{-99.9705,-57.1429},{-99.9705,-57.2039}}));
    connect(CCS1.p1,p1) annotation(Line(points = {{-25.4794,-6.18575},{-40.4526,-6.18575},{-40.4526,46.1028},{100.497,46.1028}}));
    connect(switch1.y,signalcurrent1.i) annotation(Line(points = {{22.9137,22.0806},{22.9137,22.0806},{22.9137,12.1641},{5.65771,12.1641},{5.65771,-5.94059},{15.0795,-5.94059},{15.0795,-5.9406}}));
    connect(Constant1.y,Feedback1.u1) annotation(Line(points = {{-77.7584,79.2957},{-63.3663,79.2957},{-63.3663,79.2469},{-61.7354,79.2469}}));
    connect(nand1.y,switch1.u2) annotation(Line(points = {{6.1579,31.1174},{11.3154,31.1174},{11.3154,42.4328},{22.9137,42.4328},{22.9137,36.2438},{22.9137,36.2438}}));
    connect(greaterthreshold1.y,nand1.u1) annotation(Line(points = {{-20.9491,35.9264},{-13.2956,35.9264},{-13.2956,31.1174},{-6.71771,31.1174},{-6.71771,31.1174}}));
    connect(lessthreshold1.y,nand1.u2) annotation(Line(points = {{-20.9491,20.6506},{-13.5785,20.6506},{-13.5785,26.8741},{-6.71771,26.8741},{-6.71771,26.6389}}));
    connect(switch1.u3,Limiter1.y) annotation(Line(points = {{17.9874,36.2438},{18.1047,36.2438},{18.1047,57.1429},{45.8274,57.1429},{45.8274,79.7737},{41.0677,79.7737},{41.0677,79.723}}));
    connect(const.y,switch1.u1) annotation(Line(points = {{14.9854,52.3338},{27.4399,52.3338},{27.4399,36.2438},{27.8401,36.2438}}));
    connect(p,Din.p) annotation(Line(points = {{-99.5025,45.7711},{-83.1683,45.7711},{-83.1683,39.0852},{-84.9341,39.0852}}));
    connect(Din.n,voltagesensor1.p) annotation(Line(points = {{-84.9341,15.0852},{-61.3861,15.0852},{-61.3861,10.5856},{-61.1033,10.5856}}));
    connect(greaterthreshold1.u,voltagesensor1.v) annotation(Line(points = {{-35.1122,35.9264},{-48.6563,35.9264},{-48.6563,20.6506},{-72.4187,20.6506},{-72.4187,-1.41443},{-73.1033,-1.41443}}));
    connect(lessthreshold1.u,voltagesensor1.v) annotation(Line(points = {{-35.1122,20.6506},{-72.4187,20.6506},{-72.4187,-1.41443},{-73.1033,-1.41443}}));
    connect(signalcurrent1.p,Dout.p) annotation(Line(points = {{23.4795,-17.9406},{41.3013,-17.9406},{41.3013,-17.9875},{41.0653,-17.9875}}));
    connect(signalcurrent1.n,Dout.n) annotation(Line(points = {{23.4795,6.0594},{40.7355,6.0594},{40.7355,6.01247},{41.0653,6.01247}}));
    connect(voltagesensor1.n,n) annotation(Line(points = {{-61.1033,-13.4144},{-61.3861,-13.4144},{-61.3861,-57.1429},{-99.9705,-57.1429},{-99.9705,-57.2039}}));
    connect(Volt.p,Dout.n) annotation(Line(points = {{63.2416,5.09203},{41.3013,5.09203},{41.3013,6.01247},{41.0653,6.01247}}));
    connect(Dout.p,Volt.n) annotation(Line(points = {{41.0653,-17.9875},{63.3663,-17.9875},{63.3663,-18.908},{63.2416,-18.908}}));
    connect(Volt.p,Amp.p) annotation(Line(points = {{63.2416,5.09203},{62.8006,5.09203},{62.8006,13.0863},{82.7203,13.0863}}));
    connect(Volt.n,n1) annotation(Line(points = {{63.2416,-18.908},{63.0835,-18.908},{63.0835,-55.7992},{100.829,-55.7992}}));
    connect(Feedback1.u2,Volt.v) annotation(Line(points = {{-52.1354,69.6469},{-52.1354,39.3211},{51.768,39.3211},{51.768,-6.90797},{51.2416,-6.90797}}));
    connect(Amp.n,p1) annotation(Line(points = {{82.7203,37.0863},{82.8854,37.0863},{82.8854,46.1028},{100.497,46.1028}}));
    connect(LimPI.y,Limiter1.u) annotation(Line(points = {{-4.32175,79.8596},{12.447,79.8596},{12.447,79.723},{13.4677,79.723}}));
    connect(Feedback1.y,LimPI.u) annotation(Line(points = {{-41.3354,79.2469},{-28.0057,79.2469},{-28.0057,79.3165},{-27.9484,79.3165}}));
    Iout = Pout / Vref;
    CCS1.i2 = smooth(0, (CCS1.v1 * Amp.i) / ((CCS1.v2 + 0.0000001) * eff));
    //SignalCurrent1.i = smooth(0, if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.u else 0);
  end dcdc_ideal;
  connector Powerconnector_out
    annotation(Icon(graphics = {Polygon(points = {{-38.7553,84.2999},{34.7949,84.5827},{89.1089,3.9604},{40.4526,-86.2801},{-41.5842,-87.4116},{-88.826,6.78925},{-38.7553,84.2999}}, rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25)}), Diagram(graphics = {Polygon(points = {{-20.3678,42.7157},{22.0651,42.4328},{41.867,9.33522},{22.6308,-31.4003},{-24.0453,-31.1174},{-44.6959,5.37482},{-45.5446,7.63791},{-20.3678,42.7157}}, rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-58.8402,74.9646},{61.1033,49.7878}}, textString = "Power Connector")}));
    output Modelica.SIunits.Power power;
  end Powerconnector_out;
  connector Powerconnector_in
    annotation(Icon(graphics = {Polygon(points = {{-38.7553,84.2999},{34.7949,84.5827},{89.1089,3.9604},{40.4526,-86.2801},{-41.5842,-87.4116},{-88.826,6.78925},{-38.7553,84.2999}}, rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25)}), Diagram(graphics = {Polygon(points = {{-20.3678,42.7157},{22.0651,42.4328},{41.867,9.33522},{22.6308,-31.4003},{-24.0453,-31.1174},{-44.6959,5.37482},{-45.5446,7.63791},{-20.3678,42.7157}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-58.8402,74.9646},{61.1033,49.7878}}, textString = "Power Connector")}));
    input Modelica.SIunits.Power power;
  end Powerconnector_in;
  model DCtoPower "generic ideal DC/DC Converter with Power Output"
    parameter Modelica.SIunits.Voltage V_in_max;
    parameter Modelica.SIunits.Voltage V_in_min;
    parameter Real eff = 0.85;
    parameter Integer m(min = 1) = 3 "Number of Power Outputs";
    Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-100.141,38.4724}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.141,38.4724}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.9774,80.3395},{98.1612,-79.7737}})}));
    Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-100.141,-39.604}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.141,-39.604}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    dcmodel.Powerconnector_out power_out[m] annotation(Placement(visible = true, transformation(origin = {100.99,-0.848656}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.99,-0.848656}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.SIunits.Voltage v(start = 0);
    Modelica.SIunits.Current i(start = 0);
    Modelica.SIunits.Power powersum(start = 1);
  equation
    v = p.v - n.v;
    0 = p.i + n.i;
    i = p.i;
    powersum = sum(power_out.power);
    i = if v > V_in_min and v < V_in_max then powersum / (v * eff) else 0;
  end DCtoPower;
  model dcdc_ideal_simple
    //todo möglicherweise lässt sich hier noch etwas mit "smooth" machen?
    import Modelica.Constants.pi;
    annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668,68.1754},{76.3791,30.2687}}, textString = "%Vref V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC")}), Diagram());
    extends Modelica.Electrical.Analog.Interfaces.TwoPort;
    parameter Real eff annotation(Placement(visible = true, transformation(origin = {71.521,-76.3754}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Modelica.SIunits.Voltage V_out = 5;
    parameter Modelica.SIunits.Voltage V_in_min = 6.5;
    parameter Modelica.SIunits.Voltage V_in_max = 100;
    parameter Real slope = 2;
  equation
    if v1 < V_in_max and v1 > V_in_min + slope * 0.5 then
      v2 = V_out;
      i1 = (-i2 * v2) / v1;
    elseif v1 >= V_in_min - slope * 0.5 then
      v2 = smooth(1, V_out * (sin(((v1 - V_in_min - slope * 0.5) * pi * 0.5) / slope * 2 + pi * 0.5) + 1) * 0.5);
      i1 = (-i2 * v2) / v1;
    else
      v2 = 0;
      i1 = 0;
    end if;
    /*if v1 < V_in_max and v1 > V_in_min then
    v2 = V_out;
    i1 = (-i2 * v2) / v1;
  elseif v1 >= V_in_min - slope then
    v2 = V_out / slope * (v1 - V_in_min + slope);
    i1 = (-i2 * v2) / v1;
  else
    v2 = 0;
    i1 = 0;
  end if;*/
  end dcdc_ideal_simple;
end dcmodel;

