within iboss.iboss_thermal.Panel_5x5.components;

model Tank_2x2_Panel "Tank_2x2_Panel.mo"
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_2x2 thermal_connector_Panel_2x2_xn "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(extent = {{-55, -5}, {-35, 15}}), iconTransformation(extent = {{-110, -10}, {-90, 10}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_yp annotation(Placement(transformation(extent = {{25, 60}, {45, 80}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_yn annotation(Placement(transformation(extent = {{20, -90}, {40, -70}}), iconTransformation(extent = {{-10, -110}, {10, -90}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_zp annotation(Placement(transformation(extent = {{-45, -90}, {-25, -70}}), iconTransformation(extent = {{-60, -110}, {-40, -90}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_side_2 thermal_connector_2_zn annotation(Placement(transformation(extent = {{85, 60}, {105, 80}}), iconTransformation(extent = {{40, 90}, {60, 110}})));
  iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_000 annotation(Placement(transformation(extent = {{35, -35}, {75, 5}})));
  iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_010 annotation(Placement(transformation(extent = {{35, 10}, {75, 50}})));
  iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_001 annotation(Placement(transformation(extent = {{0, -55}, {40, -15}})));
  iboss.iboss_thermal.components.thermal_Panel_with_Interface_with_optical_properties Tank_BB_Panel_011 annotation(Placement(transformation(extent = {{0, -5}, {40, 35}})));
equation
  connect(Tank_BB_Panel_000.port_yp, Tank_BB_Panel_010.port_yn) annotation(Line(points = {{50, -8.300000000000001}, {50, -3.3}, {50, 17.7}, {51, 17.7}, {51, 22.7}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(Tank_BB_Panel_010.port_zp, Tank_BB_Panel_011.port_zn) annotation(Line(points = {{44, 22.7}, {39, 22.7}, {39, 26.7}, {23, 26.7}, {23, 21.7}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(Tank_BB_Panel_011.port_yn, Tank_BB_Panel_001.port_yp) annotation(Line(points = {{16, 7.7}, {16, 2.7}, {16, -23.3}, {15, -23.3}, {15, -28.3}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(Tank_BB_Panel_000.port_zp, Tank_BB_Panel_001.port_zn) annotation(Line(points = {{44, -22.3}, {39, -22.3}, {23, -22.3}, {23, -23.3}, {23, -28.3}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(Tank_BB_Panel_000.port_yn, thermal_connector_2_yn.port_0) annotation(Line(points = {{51, -22.3}, {51, -27.3}, {51, -80}, {35, -80}, {30, -80}}));
  connect(Tank_BB_Panel_001.port_yn, thermal_connector_2_yn.port_1) annotation(Line(points = {{16, -42.3}, {16, -47.3}, {16, -80}, {25, -80}, {30, -80}}));
  connect(Tank_BB_Panel_010.port_yp, thermal_connector_2_yp.port_0) annotation(Line(points = {{50, 36.7}, {50, 41.7}, {50, 70}, {40, 70}, {35, 70}}));
  connect(Tank_BB_Panel_011.port_yp, thermal_connector_2_yp.port_1) annotation(Line(points = {{15, 21.7}, {15, 26.7}, {15, 70}, {30, 70}, {35, 70}}));
  connect(Tank_BB_Panel_000.port_zn, thermal_connector_2_zn.port_0) annotation(Line(points = {{58, -8.300000000000001}, {58, -3.3}, {58, 70}, {90, 70}, {95, 70}}));
  connect(Tank_BB_Panel_010.port_zn, thermal_connector_2_zn.port_1) annotation(Line(points = {{58, 36.7}, {58, 41.7}, {58, 70}, {90, 70}, {95, 70}}));
  connect(Tank_BB_Panel_001.port_zp, thermal_connector_2_zp.port_0) annotation(Line(points = {{9, -42.3}, {4, -42.3}, {-30, -42.3}, {-30, -80}, {-35, -80}}));
  connect(Tank_BB_Panel_011.port_zp, thermal_connector_2_zp.port_1) annotation(Line(points = {{9, 7.7}, {4, 7.7}, {-30, 7.7}, {-30, -80}, {-35, -80}}));
  connect(Tank_BB_Panel_000.port_xn, thermal_connector_Panel_2x2_xn.port_00) annotation(Line(points = {{49, -15}, {44, -15}, {-40, -15}, {-40, 5}, {-45, 5}}));
  connect(Tank_BB_Panel_001.port_xn, thermal_connector_Panel_2x2_xn.port_01) annotation(Line(points = {{14, -35}, {9, -35}, {-40, -35}, {-40, 5}, {-45, 5}}));
  connect(Tank_BB_Panel_010.port_xn, thermal_connector_Panel_2x2_xn.port_10) annotation(Line(points = {{49, 30}, {44, 30}, {-40, 30}, {-40, 5}, {-45, 5}}));
  connect(Tank_BB_Panel_011.port_xn, thermal_connector_Panel_2x2_xn.port_11) annotation(Line(points = {{14, 15}, {9, 15}, {-40, 15}, {-40, 5}, {-45, 5}}));
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-23.3, 100}, {20, 0}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-23.1, 0.1}, {20.2, -99.90000000000001}}), Line(points = {{20, 0}, {-23.3, 0}}, color = {0, 0, 0}, thickness = 6), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 215, 0}, fillPattern = FillPattern.Solid, extent = {{16.7, 60}, {23.3, 40}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 215, 0}, fillPattern = FillPattern.Solid, extent = {{16.9, -40.2}, {23.5, -60.2}})}), experiment(StopTime = 1, StartTime = 0));
end Tank_2x2_Panel;