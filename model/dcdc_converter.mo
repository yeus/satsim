model dcdc_converter
  // Dokumentation: http://en.wikipedia.org/wiki/Buck_converter
  // http://de.wikipedia.org/wiki/Gleichspannungswandler
  import Modelica.SIunits;
  extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
  annotation(Diagram(), Icon(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-109.477,-43.8473},{-13.5785,-73.5502}}, textString = "GND"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-82.3196,20.0848},{-20.3677,-10.7497}}, textString = "V_in"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-7.35502,41.0184},{88.5432,-7.63788}}, textString = "%V_out"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{18.9533,-12.447},{69.0241,-29.703}}, textString = "V_out"),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-93.3522,76.0962},{94.7666,-75.5304}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-72.9844,77.5107},{65.3466,43.5644}}, textString = "%name")}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Interfaces.NegativePin gnd "Negative Pin, GND" annotation(Placement(visible = true, transformation(origin = {-61.3861,-87.9774}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-61.3861,-87.9774}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin p_in "Positive Pin, V_in" annotation(Placement(visible = true, transformation(origin = {-98.1617,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-98.1617,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin p_out "Positive Pin, V_out" annotation(Placement(visible = true, transformation(origin = {103.536,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {103.536,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Modelica.SIunits.Current I_out_max = 3 "maximum Output Current" annotation(Placement(visible = true, transformation(origin = {-21.4993,58.2744}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Modelica.SIunits.Voltage V_out = 5 "Output Voltage" annotation(Placement(visible = true, transformation(origin = {-9.05233,44.413}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Real efficiency(start = 0.85) "DCDC Effizienz (in realen Systemen variiert die Effizienz)" annotation(Placement(visible = true, transformation(origin = {-10.4668,42.9986}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Modelica.SIunits.Temperature T_ref = 300.15 "Reference temperature" annotation(Placement(visible = true, transformation(origin = {-6.78925,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcdc_converter_no_dclimiter dcdc_converter_no_dclimiter1(efficiency = efficiency, V_out = V_out) annotation(Placement(visible = true, transformation(origin = {-49.505,0.848656}, extent = {{-21.2587,-21.2587},{21.2587,21.2587}}, rotation = 0)));
  dc_limiter dc_limiter1(Imax = I_out_max) annotation(Placement(visible = true, transformation(origin = {27.157,1.41443}, extent = {{-21.2587,-21.2587},{21.2587,21.2587}}, rotation = 0)));
equation
  connect(dcdc_converter_no_dclimiter1.p_out,dc_limiter1.p) annotation(Line(points = {{-27.4946,1.26962},{5.37482,1.26962},{5.37482,1.41443},{5.8983,1.41443}}));
  connect(dc_limiter1.n,p_out) annotation(Line(points = {{48.4157,1.41443},{100.707,1.41443},{100.707,1.9802},{103.536,1.9802}}));
  connect(dcdc_converter_no_dclimiter1.gnd,gnd) annotation(Line(points = {{-62.5549,-17.8542},{-56.86,-17.8542},{-56.86,-56.0113},{-61.669,-56.0113},{-61.669,-87.9774},{-61.3861,-87.9774}}));
  connect(dcdc_converter_no_dclimiter1.p_in,p_in) annotation(Line(points = {{-70.3729,1.26962},{-95.3324,1.26962},{-95.3324,1.9802},{-98.1617,1.9802}}));
  LossPower = 10;
end dcdc_converter;

