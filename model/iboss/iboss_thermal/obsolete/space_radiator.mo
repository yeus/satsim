within iboss.iboss_thermal.obsolete;

model space_radiator
  parameter Modelica.SIunits.Area effective_area_Rad = 0.1448 "Flaeche des Radiators tbd";
  parameter Modelica.SIunits.Area effective_area_TSS = 0.005 "Flaeche der thermalen Schnittstelle tbd";
  parameter Modelica.SIunits.Area effective_area_MSS = 0.005 "Flaeche der mechanischen Schnittstelle tbd";
  parameter Modelica.SIunits.Area effective_area_ESS = 0.0002 "Flaeche der elektrischen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_Rad = 0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
  parameter Modelica.SIunits.Emissivity epsilon_TSS = 0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_MSS = 0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_ESS = 0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature BlackSky(T = 3) annotation(Placement(transformation(origin = {-149, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad(Gr = epsilon_Rad * effective_area_Rad) annotation(Placement(transformation(origin = {0, -60}, extent = {{-10, -10}, {10, 10}})));
  components.thermal_connector thermal_connector1 annotation(Placement(transformation(origin = {81.25, 0}, extent = {{-48.75, -48.75}, {48.75, 48.75}}, rotation = -180), iconTransformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS(Gr = epsilon_TSS * effective_area_TSS) annotation(Placement(transformation(origin = {0, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS(Gr = epsilon_MSS * effective_area_MSS) annotation(Placement(transformation(origin = {-0, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_ESS(Gr = epsilon_ESS * effective_area_ESS) annotation(Placement(transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(bodyRadiation_MSS.port_b, thermal_connector1.MSS) annotation(Line(points = {{10, 20}, {15, 20}, {76, 20}, {76, 0}, {81, 0}}, color = {191, 0, 0}, visible = true, origin = {33.2613, 16.178}));
  connect(bodyRadiation_TSS.port_b, thermal_connector1.TSS) annotation(Line(points = {{10, -20}, {15, -20}, {76, -20}, {76, 0}, {81, 0}}, color = {191, 0, 0}, visible = true, origin = {33.2984, -16.1003}));
  connect(bodyRadiation_Rad.port_b, thermal_connector1.Rad) annotation(Line(points = {{10, -60}, {15, -60}, {76, -60}, {76, 0}, {81, 0}}, color = {191, 0, 0}, visible = true, origin = {46.2708, -52.1146}));
  connect(bodyRadiation_ESS.port_b, thermal_connector1.ESS) annotation(Line(points = {{10, 60}, {15, 60}, {76, 60}, {76, 0}, {81, 0}}, color = {191, 0, 0}, visible = true, origin = {45.9531, 52.2469}));
  connect(BlackSky.port, bodyRadiation_ESS.port_a) annotation(Line(points = {{-139, 0}, {-134, 0}, {-15, 0}, {-15, 60}, {-10, 60}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(BlackSky.port, bodyRadiation_MSS.port_a) annotation(Line(points = {{-139, 0}, {-134, 0}, {-15, 0}, {-15, 20}, {-10, 20}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(BlackSky.port, bodyRadiation_TSS.port_a) annotation(Line(points = {{-139, 0}, {-134, 0}, {-15, 0}, {-15, -20}, {-10, -20}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(BlackSky.port, bodyRadiation_Rad.port_a) annotation(Line(points = {{-139, 0}, {-134, 0}, {-15, 0}, {-15, -60}, {-10, -60}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(grid = {10, 10}), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, visible = true), Text(textString = "Radiator", textStyle = {TextStyle.Bold}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -24.3695}, {100, 24.3695}}, visible = true, origin = {0, 75.6305})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, grid = {5, 5})), experiment(StopTime = 1, StartTime = 0));
end space_radiator;