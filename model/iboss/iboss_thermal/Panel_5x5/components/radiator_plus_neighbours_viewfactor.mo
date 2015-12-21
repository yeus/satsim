within iboss.iboss_thermal.Panel_5x5.components;

model radiator_plus_neighbours_viewfactor "radiator_plus_neighbours_viewfactor.mo"
  parameter Real Gr_main(unit = "m2") = 0.2 * 0.0064 "Net radiation conductance between two surfaces (see docu)";
  parameter Real Gr_neighbour(unit = "m2") = 0.0406 * 0.0064 "Net radiation conductance between two surfaces (see docu)";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(transformation(extent = {{-85, 15}, {-65, 35}}), iconTransformation(extent = {{-110, -10}, {-90, 10}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_3 thermal_connector_side_3 annotation(Placement(transformation(extent = {{40, 15}, {60, 35}}), iconTransformation(extent = {{90, -10}, {110, 10}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr = Gr_neighbour) annotation(Placement(transformation(extent = {{-20, 55}, {0, 75}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation2(Gr = Gr_main) annotation(Placement(transformation(extent = {{-20, 15}, {0, 35}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation3(Gr = Gr_neighbour) annotation(Placement(transformation(extent = {{-20, -30}, {0, -10}})));
initial equation
  port_a.T = 293.15;
  thermal_connector_side_3.port_0.T = 293.15;
  thermal_connector_side_3.port_1.T = 293.15;
  thermal_connector_side_3.port_2.T = 293.15;
equation
  connect(bodyRadiation2.port_a, port_a) annotation(Line(points = {{-20, 25}, {-25, 25}, {-70, 25}, {-75, 25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyRadiation3.port_a, port_a) annotation(Line(points = {{-20, -20}, {-25, -20}, {-70, -20}, {-70, 25}, {-75, 25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyRadiation1.port_a, port_a) annotation(Line(points = {{-20, 65}, {-25, 65}, {-70, 65}, {-70, 25}, {-75, 25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyRadiation2.port_b, thermal_connector_side_3.port_1) annotation(Line(points = {{0, 25}, {5, 25}, {45, 25}, {50, 25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyRadiation1.port_b, thermal_connector_side_3.port_0) annotation(Line(points = {{0, 65}, {5, 65}, {45, 65}, {45, 25}, {50, 25}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyRadiation3.port_b, thermal_connector_side_3.port_2) annotation(Line(points = {{0, -20}, {5, -20}, {45, -20}, {45, 25}, {50, 25}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 3.5, extent = {{-99.90000000000001, 23.4}, {-79.7, -26.5}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 3.5, extent = {{78, 74}, {98.2, 24.1}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 3.5, extent = {{78.09999999999999, 24.2}, {98.3, -25.7}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 3.5, extent = {{78.2, -25.1}, {98.40000000000001, -75}}), Line(points = {{-75.5, 0}, {37.8, 0}, {37.8, 0}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.Filled}, thickness = 3.5, origin = {13.2, 39}, rotation = 17), Line(points = {{-56.6, -0.7}, {56.7, -0.7}, {56.7, -0.7}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.Filled}, thickness = 3.5), Line(points = {{-75.5, 0}, {37.8, 0}, {37.8, 0}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.Filled}, thickness = 3.5, origin = {13.6, -40.4}, rotation = -15), Line(points = {{50, 100}, {50, 80}, {43.3, 66.7}, {26.7, 53.3}, {10, 46.7}, {-6.7, 40}, {-30, 26.7}, {-43.3, 13.3}, {-46.7, 3.3}, {-43.3, -13.3}, {-30, -26.7}, {-10, -40}, {13.3, -50}, {30, -53.3}, {43.3, -66.7}, {46.7, -76.7}, {50, -90}, {50, -100}, {50, -100}}, pattern = LinePattern.Dash, color = {0, 0, 0}, smooth = Smooth.Bezier, thickness = 1.5), Text(textString = "%name", extent = {{-100, 133.3}, {100, 100}})}), experiment(StopTime = 1, StartTime = 0));
end radiator_plus_neighbours_viewfactor;