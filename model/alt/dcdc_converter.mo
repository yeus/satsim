model dcdc_converter "Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
  // Dokumentation: http://en.wikipedia.org/wiki/Buck_converter
  // http://de.wikipedia.org/wiki/Gleichspannungswandler
  import Modelica.SIunits;
  extends Modelica.Electrical.Analog.Interfaces.TwoPort;
  annotation(Diagram(), Icon(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-109.477,-43.8473},{-13.5785,-73.5502}}, textString = "GND"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-82.3196,20.0848},{-20.3677,-10.7497}}, textString = "V_in"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-7.35502,41.0184},{88.5432,-7.63788}}, textString = "%V_out"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{18.9533,-12.447},{69.0241,-29.703}}, textString = "V_out"),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-93.3522,76.0962},{94.7666,-75.5304}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-72.9844,77.5107},{65.3466,43.5644}}, textString = "%name")}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  parameter Modelica.SIunits.Current P_out = 10 "maximum Output Power" annotation(HideResult = true);
  parameter Modelica.SIunits.Voltage V_out = 5 "Output Voltage" annotation(HideResult = true);
  parameter Real efficiency(start = 0.85) "DCDC Effizienz (in realen Systemen variiert die Effizienz)" annotation(Placement(visible = true, transformation(origin = {0.565771,0.565771}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcdc_converter_no_dclimiter dcdc_converter_no_dclimiter1(efficiency = efficiency, V_out = V_out) annotation(Placement(visible = true, transformation(origin = {-20.3678,-0.565749}, extent = {{-21.2587,-21.2587},{21.2587,21.2587}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(Placement(visible = true, transformation(origin = {-35.3607,75.5304}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = V_out) annotation(Placement(visible = true, transformation(origin = {-68.4583,75.5304}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = P_out / V_out) annotation(Placement(visible = true, transformation(origin = {33.0976,75.8133}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Continuous.PI PI(T = 1) annotation(Placement(visible = true, transformation(origin = {-2.54597,75.8133}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode2 annotation(Placement(visible = true, transformation(origin = {-74.116,37.3409}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {-71.2871,-0.282886}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1) annotation(Placement(visible = true, transformation(origin = {-54.314,-0.565774}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {57.7086,1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor1 annotation(Placement(visible = true, transformation(origin = {80.6223,1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentsensor1 annotation(Placement(visible = true, transformation(origin = {80.6223,32.8147}, extent = {{10.9091,-10.9091},{-10.9091,10.9091}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {39.8869,2.26315}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalcurrent1 annotation(Placement(visible = true, transformation(origin = {19.802,1.9802}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(PI.u,feedback1.y) annotation(Line(points = {{-16.946,75.8133},{-24.8939,75.8133},{-24.8939,75.5304},{-24.5607,75.5304}}));
  connect(PI.y,limiter1.u) annotation(Line(points = {{10.654,75.8133},{18.9533,75.8133},{18.9533,75.8133},{18.6976,75.8133}}));
  connect(limiter1.y,signalcurrent1.i) annotation(Line(points = {{46.2976,75.8133},{51.768,75.8133},{51.768,39.604},{11.0325,39.604},{11.0325,1.9802},{11.402,1.9802}}));
  connect(feedback1.u2,voltagesensor1.v) annotation(Line(points = {{-35.3607,65.9304},{-35.3607,27.4399},{67.0438,27.4399},{67.0438,1.69731},{68.6223,1.69731}}));
  connect(const.y,feedback1.u1) annotation(Line(points = {{-55.2583,75.5304},{-46.1103,75.5304},{-46.1103,75.5304},{-44.9607,75.5304}}));
  connect(idealdiode1.n,signalcurrent1.n) annotation(Line(points = {{39.8869,14.2631},{19.802,14.2631},{19.802,13.9802},{19.802,13.9802}}));
  connect(signalcurrent1.p,idealdiode1.p) annotation(Line(points = {{19.802,-10.0198},{40.1697,-10.0198},{40.1697,-9.73685},{39.8869,-9.73685}}));
  connect(idealdiode1.p,capacitor2.n) annotation(Line(points = {{39.8869,-9.73685},{57.4257,-9.73685},{57.4257,-10.3027},{57.7086,-10.3027}}));
  connect(idealdiode1.n,capacitor2.p) annotation(Line(points = {{39.8869,14.2631},{57.4257,14.2631},{57.4257,13.6973},{57.7086,13.6973}}));
  connect(currentsensor1.n,p2) annotation(Line(points = {{80.6223,43.7238},{80.6223,43.7238},{80.6223,50.3536},{100,50.3536},{100,50}}));
  connect(currentsensor1.p,voltagesensor1.p) annotation(Line(points = {{80.6223,21.9056},{80.6223,21.9056},{80.6223,13.6973},{80.6223,13.6973}}));
  connect(voltagesensor1.n,n2) annotation(Line(points = {{80.6223,-10.3027},{80.6223,-10.3027},{80.6223,-50.3536},{100,-50.3536},{100,-50}}));
  connect(capacitor2.n,voltagesensor1.n) annotation(Line(points = {{57.7086,-10.3027},{80.0566,-10.3027},{80.0566,-10.3027},{80.6223,-10.3027}}));
  connect(voltagesensor1.p,capacitor2.p) annotation(Line(points = {{80.6223,13.6973},{57.7086,13.6973},{57.7086,13.6973},{57.7086,13.6973}}));
  connect(dcdc_converter_no_dclimiter1.p2,p2) annotation(Line(points = {{0.89087,10.0636},{1.13154,10.0636},{1.13154,50.3536},{100,50.3536},{100,50}}));
  connect(dcdc_converter_no_dclimiter1.n2,n2) annotation(Line(points = {{0.89087,-11.1951},{1.69731,-11.1951},{1.69731,-50.3536},{100,-50.3536},{100,-50}}));
  connect(dcdc_converter_no_dclimiter1.n1,resistor1.n) annotation(Line(points = {{-41.6265,-11.1951},{-54.314,-11.1951},{-54.314,-12.5658},{-54.314,-12.5658}}));
  connect(dcdc_converter_no_dclimiter1.p1,resistor1.p) annotation(Line(points = {{-41.6265,10.0636},{-54.0311,10.0636},{-54.0311,11.4342},{-54.314,11.4342}}));
  connect(capacitor1.p,resistor1.p) annotation(Line(points = {{-71.2871,11.7171},{-54.314,11.7171},{-54.314,11.4342},{-54.314,11.4342}}));
  connect(resistor1.n,capacitor1.n) annotation(Line(points = {{-54.314,-12.5658},{-65.3465,-12.5658},{-65.3465,-12.2829},{-71.2871,-12.2829}}));
  connect(capacitor1.n,n1) annotation(Line(points = {{-71.2871,-12.2829},{-82.3197,-12.2829},{-82.3197,-50.6365},{-100,-50.6365},{-100,-50}}));
  connect(idealdiode2.n,capacitor1.p) annotation(Line(points = {{-74.116,25.3409},{-73.8331,25.3409},{-73.8331,11.5983},{-71.2871,11.5983},{-71.2871,11.7171}}));
  connect(p1,idealdiode2.p) annotation(Line(points = {{-100,50},{-74.6818,50},{-74.6818,49.3409},{-74.116,49.3409}}));
end dcdc_converter;

