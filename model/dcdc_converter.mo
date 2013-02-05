model dcdc_converter
  // Dokumentation: http://en.wikipedia.org/wiki/Buck_converter
  // http://de.wikipedia.org/wiki/Gleichspannungswandler
  import Modelica.SIunits;
  parameter Modelica.SIunits.Temperature T_ref = 300.15 "Reference temperature";
  parameter Real efficiency(start = 0.85) "DCDC Effizienz (in realen Systemen variiert die Effizienz)";
  parameter SIunits.Voltage V_out = 5 "Output Voltage";
  Real i1,i2,v1,v2;
  extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
  annotation(Diagram(), Icon(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-109.477,-43.8473},{-13.5785,-73.5502}}, textString = "GND"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-82.3196,20.0848},{-20.3677,-10.7497}}, textString = "V_in"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-7.35502,41.0184},{88.5432,-7.63788}}, textString = "%V_out"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{18.9533,-12.447},{69.0241,-29.703}}, textString = "V_out"),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-93.3522,76.0962},{94.7666,-75.5304}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-72.9844,77.5107},{65.3466,43.5644}}, textString = "%name")}));
  Modelica.Electrical.Analog.Interfaces.NegativePin gnd "Negative Pin, GND" annotation(Placement(visible = true, transformation(origin = {-61.3861,-87.9774}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-61.3861,-87.9774}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin p_in "Positive Pin, V_in" annotation(Placement(visible = true, transformation(origin = {-98.1617,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-98.1617,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin p_out "Positive Pin, V_out" annotation(Placement(visible = true, transformation(origin = {103.536,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {103.536,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  0 = p_in.i + p_out.i + gnd.i;
  i2 = p_out.i;
  i1 = p_in.i;
  v1 = p_in.v - gnd.v;
  v2 = p_out.v - gnd.v;
  if v1 > V_out + 1 then
    v2 = V_out;
    i1 * v1 * efficiency = i2 * v2;
  else
    v2 = 0;
    i1 = 0;
  end if;
  LossPower = abs(i1 * v1 * (1 - efficiency));
end dcdc_converter;

