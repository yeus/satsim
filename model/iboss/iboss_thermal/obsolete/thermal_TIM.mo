within iboss.iboss_thermal.obsolete;

model thermal_TIM "thermal interfacial material parameters (Conductance)"
  components.thermal_connector thermal_connector2 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  components.thermal_connector thermal_connector1 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -180), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_TIM_TSS(G = h_TSS * A_TSS) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(origin = {-0, 10}, extent = {{-6.1349, -6.1349}, {6.1349, 6.1349}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_MSS(G = h_MSS * A_MSS) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(origin = {-0, -10}, extent = {{-6.0931, -6.0931}, {6.0931, 6.0931}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_ESS(G = h_ESS * A_ESS) "Lumped thermal element transporting heat without storing it" annotation(Placement(transformation(origin = {0, -30}, extent = {{-6.1934, -6.1934}, {6.1934, 6.1934}})));
  parameter Real h_TSS(unit = "W/(m³·K)") = 300 "Heat transfer coefficient TSS - TSS";
  parameter Real h_MSS(unit = "W/(m³·K)") = 190 "Heat transfer coefficient MSS - MSS";
  parameter Real h_ESS(unit = "W/(m³·K)") = 240 "Heat transfer coefficient ESS - ESS";
  parameter Modelica.SIunits.Emissivity eps_Rad = 0.5 "Emmisivity of the radiator";
  parameter Real ViewFactor_Rad = 0.2 "Viewfactor of Radiator";
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation Radiator(Gr = ViewFactor_Rad * A_Rad * 1 / (2 / eps_Rad - 1)) "Lumped thermal element for radiation heat transfer" annotation(Placement(transformation(origin = {0, 30}, extent = {{-6.25, -6.25}, {6.25, 6.25}})));
  parameter Modelica.SIunits.Area A_ESS(unit = "m2") = 0.0002 "Querschnittsflaeche der ESS";
  parameter Modelica.SIunits.Area A_TSS(unit = "m2") = 0.05 "Querschnittsflaeche der TSS";
  parameter Modelica.SIunits.Area A_MSS(unit = "m2") = 0.005 "Querschnittsflaeche der MSS";
  parameter Modelica.SIunits.Area A_Rad(unit = "m2") = 0.1048 "Querschnittsflaeche des Panels";
equation
  connect(Radiator.port_b, thermal_connector1.Rad) annotation(Line(points = {{6.3, 30}, {11.3, 30}, {35, 30}, {35, 0}, {40, 0}}, color = {191, 0, 0}, visible = true, origin = {19.5679, 5.309}));
  connect(thermal_connector2.Rad, Radiator.port_a) annotation(Line(points = {{-40, 0}, {-35, 0}, {-11.3, 0}, {-11.3, 30}, {-6.3, 30}}, color = {191, 0, 0}, visible = true, origin = {-26.4466, 22.485}));
  connect(thermal_connector2.TSS, Conductance_TIM_TSS.port_a) annotation(Line(points = {{-40, 0}, {-35, 0}, {-11, 0}, {-11, 10}, {-6, 10}}, color = {191, 0, 0}, visible = true, origin = {-15.2265, 6.2513}));
  connect(Conductance_TIM_TSS.port_b, thermal_connector1.TSS) annotation(Line(points = {{6, 10}, {11, 10}, {35, 10}, {35, 0}, {40, 0}}, color = {191, 0, 0}, visible = true, origin = {24.159, 3.7486}));
  connect(thermal_connector2.MSS, Conductance_MSS.port_a) annotation(Line(points = {{-40, 0}, {-35, 0}, {-11, 0}, {-11, -10}, {-6, -10}}, color = {191, 0, 0}, visible = true, origin = {-15.1875, -6.2673}));
  connect(thermal_connector1.MSS, Conductance_MSS.port_b) annotation(Line(points = {{40, 0}, {35, 0}, {11, 0}, {11, -10}, {6, -10}}, color = {191, 0, 0}, visible = true, origin = {15.1875, -3.7327}));
  connect(thermal_connector2.ESS, Conductance_ESS.port_a) annotation(Line(points = {{-40, 0}, {-35, 0}, {-11.3, 0}, {-11.3, -30}, {-6.3, -30}}, color = {191, 0, 0}, visible = true, origin = {-26.3625, -22.5122}));
  connect(thermal_connector1.ESS, Conductance_ESS.port_b) annotation(Line(points = {{40, 0}, {35, 0}, {11.3, 0}, {11.3, -30}, {6.3, -30}}, color = {191, 0, 0}, visible = true, origin = {19.4949, -5.2927}));
  annotation(Icon(coordinateSystem(grid = {10, 10}), graphics = {Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.CrossDiag, extent = {{-20, -100}, {20, 100}}, visible = true, origin = {-80, 0}), Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.CrossDiag, extent = {{-20, -100}, {20, 100}}, visible = true, origin = {80, 0}), Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-40, -100}, {40, 100}}, visible = true), Text(textString = "%name", textStyle = {TextStyle.Bold}, fillPattern = FillPattern.Solid, extent = {{-100.0603, -40}, {100.0603, 40}}, visible = true, origin = {-0, 0.0603}, rotation = 90)}), Diagram(coordinateSystem(extent = {{-105, -74}, {105, 74}}, grid = {5, 5})), experiment(StopTime = 1, StartTime = 0));
end thermal_TIM;