model dc_limiter
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  parameter Modelica.SIunits.Resistance Ron(final min = 0) = 0.00001 "Forward state-on differential resistance (closed diode resistance)";
  parameter Modelica.SIunits.Conductance Goff(final min = 0) = 0.00001 "Backward state-off conductance (opened diode conductance)";
  parameter Modelica.SIunits.Voltage Imax(final min = 0, start = 2) "Forward threshold voltage";
  Boolean off(start = true) "Switching state";
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6747,73.8331},{89.9576,-89.6747}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-70.4385,59.6888},{71.0042,14.4272}}, textString = "DC Limit"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-76.3791,-9.33522},{75.5304,-81.1881}}, textString = "%Imax A")}));
protected
  Real s(start = 0, final unit = "1") "Auxiliary variable for actual position on the ideal diode characteristic";
  /* s = 0: knee point
     s < 0: below knee point, diode conducting
     s > 0: above knee point, diode locking */
  constant Modelica.SIunits.Voltage unitVoltage = 1 annotation(HideResult = true);
  constant Modelica.SIunits.Current unitCurrent = 1 annotation(HideResult = true);
equation
  off = s < 0;
  v = s * unitCurrent * (if off then Ron else 1) + Ron * Imax;
  i = s * unitVoltage * (if off then 1 else Goff) + Imax;
end dc_limiter;

