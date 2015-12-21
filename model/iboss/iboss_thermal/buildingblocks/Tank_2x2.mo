within iboss.iboss_thermal.buildingblocks;

model Tank_2x2 "Tank_2x2.mo"
  iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_xp annotation(Placement(transformation(extent = {{75, -15}, {95, 5}})));
  iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_xn annotation(Placement(transformation(origin = {-35, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_yn annotation(Placement(transformation(origin = {25, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_yp annotation(Placement(transformation(origin = {30, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_zn annotation(Placement(transformation(extent = {{100, 75}, {120, 95}})));
  iboss.iboss_thermal.Panel_5x5.components.Tank_2x2_Panel tank_2x2_Panel_zp annotation(Placement(transformation(origin = {-70, -85}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Panel_5x5.components.thermal_2_conductor thermal_2_conductor1 annotation(Placement(transformation(extent = {{-25, 60}, {-5, 70}})));
  Panel_5x5.components.thermal_2_conductor thermal_2_conductor2 annotation(Placement(transformation(extent = {{60, 60}, {80, 70}})));
  Panel_5x5.components.thermal_2_conductor thermal_2_conductor3 annotation(Placement(transformation(extent = {{60, -70}, {80, -60}})));
  Panel_5x5.components.thermal_2_conductor thermal_2_conductor4 annotation(Placement(transformation(extent = {{-30, -70}, {-10, -60}})));
equation
  connect(thermal_2_conductor1.thermal_connector_side_r, tank_2x2_Panel_yp.thermal_connector_2_yp) annotation(Line(points = {{-5, 65}, {0, 65}, {15, 65}, {20, 65}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor1.thermal_connector_side_l, tank_2x2_Panel_xn.thermal_connector_2_yn) annotation(Line(points = {{-25, 65}, {-30, 65}, {-35, 65}, {-35, 10}, {-35, 5}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor2.thermal_connector_side_l, tank_2x2_Panel_yp.thermal_connector_2_yn) annotation(Line(points = {{60, 65}, {55, 65}, {45, 65}, {40, 65}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor2.thermal_connector_side_r, tank_2x2_Panel_xp.thermal_connector_2_yp) annotation(Line(points = {{80, 65}, {85, 65}, {85, 10}, {85, 5}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor3.thermal_connector_side_r, tank_2x2_Panel_xp.thermal_connector_2_yn) annotation(Line(points = {{80, -65}, {85, -65}, {85, -20}, {85, -15}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor3.thermal_connector_side_l, tank_2x2_Panel_yn.thermal_connector_2_yp) annotation(Line(points = {{60, -65}, {55, -65}, {40, -65}, {35, -65}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor4.thermal_connector_side_r, tank_2x2_Panel_yn.thermal_connector_2_yn) annotation(Line(points = {{-10, -65}, {-5, -65}, {10, -65}, {15, -65}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_2_conductor4.thermal_connector_side_l, tank_2x2_Panel_xn.thermal_connector_2_yp) annotation(Line(points = {{-30, -65}, {-35, -65}, {-35, -20}, {-35, -15}}, color = {0, 0, 0}, thickness = 0.0625));
end Tank_2x2;