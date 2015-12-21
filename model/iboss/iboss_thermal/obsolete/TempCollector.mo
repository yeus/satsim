within iboss.iboss_thermal.obsolete;

model TempCollector "Collects m heat flows"
  parameter Integer m(min = 1) = 3 "Number of collected heat flows";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a[m] annotation(Placement(transformation(extent = {{-10, 110}, {10, 90}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}})));
equation
  port_b.T - sum(port_a.T) / m = 0;
  -port_a.Q_flow = fill(port_b.Q_flow, m) / m;
  annotation(Icon(graphics = {Text(textString = "%name", extent = {{-150, -30}, {150, -70}}), Text(textString = "m=%m", lineColor = {0, 0, 0}, extent = {{-150, 80}, {150, 50}}), Line(points = {{0, 90}, {0, 40}}, color = {181, 0, 0}), Rectangle(lineColor = {181, 0, 0}, fillColor = {181, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-60, 40}, {60, 30}}), Line(points = {{-60, 30}, {0, -30}, {0, -90}}, color = {181, 0, 0}), Line(points = {{0, -30}, {-20, 30}}, color = {181, 0, 0}), Line(points = {{0, -30}, {20, 30}}, color = {181, 0, 0}), Line(points = {{0, -30}, {60, 30}}, color = {181, 0, 0})}), Documentation(info = "<html>
		<p>
		This is a model to collect the heat flows from <i>m</i> heatports to one single heatport.
		</p>
		</html>"), experiment(StopTime = 1, StartTime = 0));
end TempCollector;