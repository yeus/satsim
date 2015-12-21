within iboss.iboss_thermal.obsolete;

model VariableHeatFlow "VariableHeatFlow.mo"
  discrete Modelica.SIunits.HeatFlowRate Q_flow "Fixed heat flow rate at port";
  parameter Modelica.SIunits.Temperature T_ref = 293.15 "Reference temperature";
  parameter Modelica.SIunits.LinearTemperatureCoefficient alpha = 0 "Temperature coefficient of heat flow rate";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port annotation(Placement(transformation(extent = {{90, -10}, {110, 10}})));
equation
  port.Q_flow = -Q_flow * (1 + alpha * (port.T - T_ref));
  annotation(Icon(graphics = {Text(textString = "%name", extent = {{-150, 100}, {150, 60}}), Text(textString = "Q_flow=%Q_flow", lineColor = {0, 0, 0}, extent = {{-150, -55}, {150, -85}}), Line(points = {{-100, -20}, {48, -20}}, color = {191, 0, 0}, thickness = 0.5), Line(points = {{-100, 20}, {46, 20}}, color = {191, 0, 0}, thickness = 0.5), Polygon(points = {{40, 0}, {40, 40}, {70, 20}, {40, 0}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid), Polygon(points = {{40, -40}, {40, 0}, {70, -20}, {40, -40}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{70, 40}, {90, -40}})}), Diagram(graphics = {Text(textString = "Q_flow=const.", lineColor = {0, 0, 0}, extent = {{-100, 40}, {0, -36}}), Line(points = {{-48, -20}, {60, -20}}, color = {191, 0, 0}, thickness = 0.5), Line(points = {{-48, 20}, {60, 20}}, color = {191, 0, 0}, thickness = 0.5), Polygon(points = {{60, 0}, {60, 40}, {90, 20}, {60, 0}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid), Polygon(points = {{60, -40}, {60, 0}, {90, -20}, {60, -40}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid)}), Documentation(info = "<HTML>
<p>
This model allows a specified amount of heat flow rate to be \"injected\"
into a thermal system at a given port.  The constant amount of heat
flow rate Q_flow is given as a parameter. The heat flows into the
component to which the component FixedHeatFlow is connected,
if parameter Q_flow is positive.
</p>
<p>
If parameter alpha is &lt;&gt; 0, the heat flow is multiplied by (1 + alpha*(port.T - T_ref))
in order to simulate temperature dependent losses (which are given with respect to reference temperature T_ref).
</p>
</html>"), experiment(StopTime = 1, StartTime = 0));
end VariableHeatFlow;