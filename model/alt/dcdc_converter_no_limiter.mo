model dcdc_converter_no_dclimiter
  // Dokumentation: http://en.wikipedia.org/wiki/Buck_converter
  // http://de.wikipedia.org/wiki/Gleichspannungswandler
  import Modelica.SIunits;
  parameter Real efficiency(start = 0.85) "DCDC Effizienz (in realen Systemen variiert die Effizienz)";
  parameter SIunits.Voltage V_out = 5 "Output Voltage";
  annotation(Diagram(), Icon(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-109.477,-43.8473},{-13.5785,-73.5502}}, textString = "GND"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-93.635,66.1951},{-31.6831,35.3606}}, textString = "V_in"),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-93.3522,76.0962},{94.7666,-75.5304}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-72.4186,12.1642},{65.9124,-21.7821}}, textString = "%name"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-7.92079,80.3395},{97.0297,19.802}}, textString = "%V_out V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{15.8416,-44.413},{87.9774,-75.2475}}, textString = "GND")}));
  extends Modelica.Electrical.Analog.Interfaces.TwoPort;
protected
  SIunits.Voltage V_in_min = V_out + 1;
equation
  i1 = (i2 * v2) / (v1 * efficiency);
end dcdc_converter_no_dclimiter;

