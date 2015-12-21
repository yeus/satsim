within iboss.iboss_thermal.components;

model BB_connector "BB_connector.mo"
  thermal_connector_opt_prop_in thermal_connector_opt_prop_in1 annotation(Placement(transformation(extent = {{-75, -15}, {-55, 5}})));
  thermal_connector_opt_prop_in thermal_connector_opt_prop_in2 annotation(Placement(transformation(origin = {70, -5}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  thermal_conductor_A thermal_conductor_MSS(h_contact = 100) annotation(Placement(transformation(extent = {{-10, -15}, {10, 5}})));
  thermal_radiation_A thermal_radiation_rad annotation(Placement(transformation(extent = {{-10, -40}, {10, -20}})));
  thermal_conductor_A thermal_conductor_TSS annotation(Placement(transformation(extent = {{-10, 10}, {10, 30}})));
equation
  connect(thermal_conductor_TSS.surface_properties1, thermal_connector_opt_prop_in1.TSS) annotation(Line(points = {{-10, 20}, {-15, 20}, {-60, 20}, {-60, -5}, {-65, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_MSS.surface_properties1, thermal_connector_opt_prop_in1.MSS) annotation(Line(points = {{-10, -5}, {-15, -5}, {-60, -5}, {-65, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_radiation_rad.surface_properties1, thermal_connector_opt_prop_in1.Rad) annotation(Line(points = {{-10, -30}, {-15, -30}, {-60, -30}, {-60, -5}, {-65, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_TSS.surface_properties2, thermal_connector_opt_prop_in2.TSS) annotation(Line(points = {{10, 20}, {15, 20}, {65, 20}, {65, -5}, {70, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_MSS.surface_properties2, thermal_connector_opt_prop_in2.MSS) annotation(Line(points = {{10, -5}, {15, -5}, {65, -5}, {70, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_radiation_rad.surface_properties2, thermal_connector_opt_prop_in2.Rad) annotation(Line(points = {{10, -30}, {15, -30}, {65, -30}, {65, -5}, {70, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(grid = {10, 10}), graphics = {Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.CrossDiag, extent = {{-20, -100}, {20, 100}}, visible = true, origin = {-80, 0}), Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.CrossDiag, extent = {{-20, -100}, {20, 100}}, visible = true, origin = {80, 0}), Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-40, -100}, {40, 100}}, visible = true), Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100.0603, -40}, {100.0603, 40}}, visible = true, origin = {-0, 0.0603}, rotation = 90)}), Diagram(coordinateSystem(extent = {{-105, -74}, {105, 74}}, grid = {5, 5})), experiment(StopTime = 1, StartTime = 0));
end BB_connector;