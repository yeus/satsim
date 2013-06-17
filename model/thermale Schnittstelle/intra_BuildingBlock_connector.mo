model intra_BuildingBlock_connector "intra_BuildingBlock_connector"
  // CP: 65001
  // SimulationX Version: 3.5.706.23 x64
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConnector_contact(G = G_c) annotation(Placement(transformation(origin = {2,-2}, extent = {{-12,-12},{12,12}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr = Gr) annotation(Placement(transformation(origin = {0,30}, extent = {{-10,-10},{10,10}})));
  parameter Real Gr(unit = "m2") = 0 "Net radiation conductance between two surfaces (see docu)" annotation(Placement(transformation(origin = {-11.8294,-26.4099}, extent = {{-12,-12},{12,12}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(transformation(origin = {-60,0}, extent = {{-12,-12},{12,12}}), iconTransformation(origin = {-100,-0}, extent = {{-12,-12},{12,12}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(origin = {60,-0}, extent = {{-12,-12},{12,12}}), iconTransformation(origin = {100,0}, extent = {{-12,-12},{12,12}})));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(Placement(visible = true, transformation(origin = {-46.7675,-45.9422}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Modelica.SIunits.Area A_cross_Panel = 0.004 "Querschnittsflaeche des Aussenpanels" annotation(Placement(visible = true, transformation(origin = {5.22696,-68.5007}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_c = 0.00003 "Thermal Insulance of TSS Surfaces" annotation(Placement(visible = true, transformation(origin = {-26.4099,-75.3783}, extent = {{-12,-12},{12,12}}, rotation = 0)));
protected
  parameter Modelica.SIunits.ThermalConductance G_c = A_cross_Panel / ThermalInsulance_c "Constant thermal conductance of the contact surfaces" annotation(Placement(visible = true, transformation(origin = {42.0908,-32.1871}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(thermalConnector_contact.port_a,port_a) annotation(Line(points = {{-10,-2},{-15,-2},{-55,-2},{-55,0},{-60,0}}, color = {191,0,0}, thickness = 0.0625));
  connect(bodyradiation1.port_a,port_a) annotation(Line(points = {{-10,30},{-15,30},{-55,30},{-55,0},{-60,0}}, color = {191,0,0}, thickness = 0.0625));
  connect(bodyradiation1.port_b,port_b) annotation(Line(points = {{10,30},{15,30},{55,30},{55,0},{60,0}}, color = {191,0,0}, thickness = 0.0625));
  connect(thermalConnector_contact.port_b,port_b) annotation(Line(points = {{14,-2},{19,-2},{55,-2},{55,0},{60,0}}, color = {191,0,0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, grid = {10,10}), graphics = {Rectangle(pattern = LinePattern.Dash, lineColor = {255,0,0}, fillColor = {255,255,255}, extent = {{-94.6355,-39.1837},{96.011,40.8163}}, visible = true, origin = {0,-0.8163}),Text(textString = "T", fontSize = 24, fillColor = {0,0,255}, extent = {{-3.0261,-1.9257},{0,8.2531}}, visible = true),Text(textString = "%name", fillPattern = FillPattern.Solid, extent = {{-101.2507,52.8171},{98.7493,112.817}}, visible = true, origin = {82.817,1.2507}, rotation = 90)}), experiment(StopTime = 1, StartTime = 0));
end intra_BuildingBlock_connector;

