package dcmodel
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
end dcmodel;

