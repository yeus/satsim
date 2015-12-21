within iboss.iboss_thermal.components;

model thermal_conductor_A "thermal_conductor_A.mo"
  surface_properties_in surface_properties1 "optical properties of the outer surface of the side panel" annotation(Placement(transformation(extent = {{-95, -10}, {-75, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  surface_properties_in surface_properties2 "optical properties of the outer surface of the side panel" annotation(Placement(transformation(extent = {{25, -5}, {45, 15}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  parameter Boolean set_surface_area = false "Set the size of the contact surface manual.";
  parameter Boolean TIM = true "true for connection of two surfaces, false for one block";
  parameter Modelica.SIunits.Area A_set if set_surface_area and TIM "face surface contact area";
  parameter Real h_contact(unit = "W/(m²·K)") = 300 if TIM "Heat transfer coefficient";
  ThermalVairableResistor thermalVariableResistor1(R = if TIM then R_T else 0) annotation(Placement(transformation(extent = {{-30, 20}, {-10, 40}})));
protected
  discrete Real R_T = if set_surface_area then 1 / (h_contact * A_set) else if surface_properties1.A < surface_properties2.A then 1 / (h_contact * surface_properties1.A) else 1 / (h_contact * surface_properties2.A) if TIM;
equation
  connect(thermalVariableResistor1.port_b, surface_properties2.thermal_port) annotation(Line(points = {{-10, 30}, {-5, 30}, {30, 30}, {30, 5}, {35, 5}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalVariableResistor1.port_a, surface_properties1.thermal_port) annotation(Line(points = {{-30, 30}, {-35, 30}, {-80, 30}, {-80, 0}, {-85, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(graphics = {Rectangle(pattern = LinePattern.None, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Forward, extent = {{-90, 70}, {90, -70}}), Line(points = {{-90, 70}, {-90, -70}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{90, 70}, {90, -70}}, color = {0, 0, 0}, thickness = 0.5), Text(textString = "%name", extent = {{-150, 115}, {150, 75}}), Text(textString = "R=%R", lineColor = {0, 0, 0}, extent = {{-150, -75}, {150, -105}})}), Diagram(graphics = {Line(points = {{-80, 0}, {80, 0}}, color = {255, 0, 0}, arrow = {Arrow.None, Arrow.Filled}, thickness = 0.5), Text(textString = "Q_flow", lineColor = {255, 0, 0}, extent = {{-100, -20}, {100, -40}}), Text(textString = "dT = port_a.T - port_b.T", lineColor = {0, 0, 0}, extent = {{-100, 40}, {100, 20}})}), Documentation(info = "<HTML>
<p>
This is a model for transport of heat without storing it, same as the
<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ThermalConductor\">ThermalConductor</a>
but using the thermal resistance instead of the thermal conductance as a parameter.
This is advantageous for series connections of ThermalResistors,
especially if it shall be allowed that a ThermalResistance is defined to be zero (i.e. no temperature difference).
</p>
</html>"), experiment(StopTime = 1, StartTime = 0));
end thermal_conductor_A;