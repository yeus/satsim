within iboss.iboss_thermal.components;

model intra_BuildingBlock_connector "intra_BuildingBlock_connector"
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConnector_contact(G = G_c) annotation(Placement(transformation(origin = {2, -2}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr = Gr) annotation(Placement(transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Gr(unit = "m2") = 0 "Net radiation conductance between two surfaces (see docu)" annotation(Placement(transformation(origin = {-11.8294, -26.4099}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(transformation(origin = {-60, 0}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-100, -0}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(origin = {60, -0}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {100, 0}, extent = {{-12, -12}, {12, 12}})));
  parameter Modelica.SIunits.Area A_cross_Panel = 0.004 "Querschnittsflaeche des Aussenpanels" annotation(Placement(transformation(origin = {5.22696, -68.5007}, extent = {{-12, -12}, {12, 12}})));
  parameter Real h_c(unit = "W/(mÂ²Â·K)") = 3000 "Heat transfer coefficient between surfaces in contact";
protected
  parameter Modelica.SIunits.ThermalConductance G_c = A_cross_Panel * h_c "Constant thermal conductance of the contact surfaces" annotation(Placement(transformation(origin = {42.0908, -32.1871}, extent = {{-12, -12}, {12, 12}})));
equation
  connect(thermalConnector_contact.port_a, port_a) annotation(Line(points = {{-10, -2}, {-15, -2}, {-55, -2}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyradiation1.port_a, port_a) annotation(Line(points = {{-10, 30}, {-15, 30}, {-55, 30}, {-55, 0}, {-60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(bodyradiation1.port_b, port_b) annotation(Line(points = {{10, 30}, {15, 30}, {55, 30}, {55, 0}, {60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermalConnector_contact.port_b, port_b) annotation(Line(points = {{14, -2}, {19, -2}, {55, -2}, {55, 0}, {60, 0}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(grid = {10, 10}), graphics = {Rectangle(pattern = LinePattern.Dash, lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, extent = {{-94.63549999999999, -39.1837}, {96.011, 40.8163}}, visible = true, origin = {0, -0.8163}), Text(textString = "T", fontSize = 24, fillColor = {0, 0, 255}, extent = {{-3.0261, -1.9257}, {0, 8.2531}}, visible = true), Text(textString = "%name", fillPattern = FillPattern.Solid, extent = {{-101.2507, 52.8171}, {98.74930000000001, 112.817}}, visible = true, origin = {82.81699999999999, 1.2507}, rotation = 90)}), experiment(StopTime = 1, StartTime = 0));
end intra_BuildingBlock_connector;