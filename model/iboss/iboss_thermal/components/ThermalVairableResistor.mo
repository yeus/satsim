within iboss.iboss_thermal.components;

model ThermalVairableResistor "Lumped thermal element transporting heat without storing it"
  extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
  discrete Modelica.SIunits.ThermalResistance R "Constant thermal resistance of material";
equation
  dT = R * Q_flow;
  annotation(Icon(graphics = {Rectangle(pattern = LinePattern.None, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Forward, extent = {{-90, 70}, {90, -70}}), Line(points = {{-90, 70}, {-90, -70}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{90, 70}, {90, -70}}, color = {0, 0, 0}, thickness = 0.5), Text(textString = "%name", extent = {{-150, 115}, {150, 75}}), Text(textString = "R=%R", lineColor = {0, 0, 0}, extent = {{-150, -75}, {150, -105}})}), Diagram(graphics = {Line(points = {{-80, 0}, {80, 0}}, color = {255, 0, 0}, arrow = {Arrow.None, Arrow.Filled}, thickness = 0.5), Text(textString = "Q_flow", lineColor = {255, 0, 0}, extent = {{-100, -20}, {100, -40}}), Text(textString = "dT = port_a.T - port_b.T", lineColor = {0, 0, 0}, extent = {{-100, 40}, {100, 20}})}), Documentation(info = "<HTML>
<p>
This is a model for transport of heat without storing it, same as the
<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ThermalConductor\">ThermalConductor</a>
but using the thermal resistance instead of the thermal conductance as a parameter.
This is advantageous for series connections of ThermalResistors,
especially if it shall be allowed that a ThermalResistance is defined to be zero (i.e. no temperature difference).
</p>
</html>"), experiment(StopTime = 1, StartTime = 0));
end ThermalVairableResistor;