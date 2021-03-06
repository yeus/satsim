within iboss.iboss_thermal.obsolete;

model aborption "figures in the absorption of the radiation"
  components.thermal_connector thermal_connector_env "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(origin = {105, -5}, extent = {{10, 10}, {-10, -10}}, rotation = 180), iconTransformation(origin = {100, 0}, extent = {{-20, 20}, {20, -20}}, rotation = 270)));
  input Modelica.Blocks.Interfaces.RealInput u "'input Real' as connector" annotation(Placement(transformation(extent = {{-95, -30}, {-55, 10}}), iconTransformation(extent = {{-120, -20}, {-80, 20}})));
  parameter Modelica.SIunits.Area effective_area_total = 0.16 "Flaeche des Seitenpaneels";
  parameter Modelica.SIunits.Area effective_area_Rad = 0.1048 "Flaeche des Radiators";
  parameter Modelica.SIunits.Area effective_area_TSS = 0.05 "Flaeche der thermalen Schnittstelle";
  parameter Modelica.SIunits.Area effective_area_MSS = 0.005 "Flaeche der mechanischen Schnittstelle";
  parameter Modelica.SIunits.Area effective_area_ESS = 0.0002 "Flaeche der elektrischen Schnittstelle";
  parameter Modelica.SIunits.Emissivity alpha_Rad = 0.44 "Absorptionskoeffizient des Radiators";
  parameter Modelica.SIunits.Emissivity alpha_TSS = 0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
  parameter Modelica.SIunits.Emissivity alpha_MSS = 0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
  parameter Modelica.SIunits.Emissivity alpha_ESS = 0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
  parameter Modelica.SIunits.Emissivity epsilon_Rad = 0.5600000000000001 "Emmisionskoeffizient des Radiators tbd";
  parameter Modelica.SIunits.Emissivity epsilon_TSS = 0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_MSS = 0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_ESS = 0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_TSS annotation(Placement(transformation(extent = {{25, 25}, {45, 45}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_MSS annotation(Placement(transformation(extent = {{25, -5}, {45, 15}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_ESS annotation(Placement(transformation(extent = {{25, -35}, {45, -15}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow_Rad(alpha = 0) annotation(Placement(transformation(extent = {{25, -65}, {45, -45}})));
  Modelica.Blocks.Math.Gain factor_Rad(k = effective_area_Rad * alpha_Rad / effective_area_total) annotation(Placement(transformation(extent = {{-20, -65}, {0, -45}})));
  Modelica.Blocks.Math.Gain factor_TSS(k = effective_area_TSS * alpha_TSS / effective_area_total) annotation(Placement(transformation(extent = {{-20, 25}, {0, 45}})));
  Modelica.Blocks.Math.Gain factor_MSS(k = effective_area_MSS * alpha_MSS / effective_area_total) annotation(Placement(transformation(extent = {{-20, -5}, {0, 15}})));
  Modelica.Blocks.Math.Gain factor_ESS(k = effective_area_ESS * alpha_ESS / effective_area_total) annotation(Placement(transformation(extent = {{-20, -35}, {0, -15}})));
equation
  connect(factor_Rad.y, HeatFlow_Rad.Q_flow) annotation(Line(points = {{1, -55}, {6, -55}, {20, -55}, {25, -55}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(factor_ESS.y, HeatFlow_ESS.Q_flow) annotation(Line(points = {{1, -25}, {6, -25}, {20, -25}, {25, -25}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(factor_MSS.y, HeatFlow_MSS.Q_flow) annotation(Line(points = {{1, 5}, {6, 5}, {20, 5}, {25, 5}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(factor_TSS.y, HeatFlow_TSS.Q_flow) annotation(Line(points = {{1, 35}, {6, 35}, {20, 35}, {25, 35}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(HeatFlow_ESS.port, thermal_connector_env.ESS) annotation(Line(points = {{45, -25}, {50, -25}, {100, -25}, {100, -5}, {105, -5}}));
  connect(HeatFlow_MSS.port, thermal_connector_env.MSS) annotation(Line(points = {{45, 5}, {50, 5}, {100, 5}, {100, -5}, {105, -5}}));
  connect(HeatFlow_TSS.port, thermal_connector_env.TSS) annotation(Line(points = {{45, 35}, {50, 35}, {100, 35}, {100, -5}, {105, -5}}));
  connect(HeatFlow_Rad.port, thermal_connector_env.Rad) annotation(Line(points = {{45, -55}, {50, -55}, {100, -55}, {100, -5}, {105, -5}}));
  connect(factor_TSS.u, u) annotation(Line(points = {{-22, 35}, {-27, 35}, {-70, 35}, {-70, -10}, {-75, -10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(factor_MSS.u, u) annotation(Line(points = {{-22, 5}, {-27, 5}, {-70, 5}, {-70, -10}, {-75, -10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(factor_ESS.u, u) annotation(Line(points = {{-22, -25}, {-27, -25}, {-70, -25}, {-70, -10}, {-75, -10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(factor_Rad.u, u) annotation(Line(points = {{-22, -55}, {-27, -55}, {-70, -55}, {-70, -10}, {-75, -10}}, color = {0, 0, 127}, thickness = 0.0625));
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(textString = "VEROSIM", lineColor = {255, 0, 0}, extent = {{-100, 100}, {100, -100}})}), experiment(StopTime = 10, StartTime = 0));
end aborption;