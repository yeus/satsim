model Modell1_noEvent
  import iboss.*;
  import iboss.illumination.*;
  parameter illumination.LEO.Strahlungsleistung_3x3x3_LEO_EnMap_SunPointing orbit_illumination;
  iboss.iboss_thermal.components.environment_var_rad BB111nX(illumination = orbit_illumination.BB111nX, combiTable1Ds1(fileName = "E:\\Eigene Dateien\\iBOSS-2\\Gesamtsimulation_TuE\\ibosssim\\model\\iboss\\thermochrom_alpha_epsilon.txt")) annotation(Placement(transformation(extent = {{15, 20}, {35, 40}})));
  iboss.iboss_thermal.components.environment_var_rad BB111nY(illumination = orbit_illumination.BB111nY, combiTable1Ds1(fileName = "E:\\Eigene Dateien\\iBOSS-2\\Gesamtsimulation_TuE\\ibosssim\\model\\iboss\\thermochrom_alpha_epsilon.txt")) annotation(Placement(transformation(extent = {{50, -15}, {70, 5}})));
  iboss.iboss_thermal.components.environment_var_rad BB111pX(illumination = orbit_illumination.BB111pX, combiTable1Ds1(fileName = "E:\\Eigene Dateien\\iBOSS-2\\Gesamtsimulation_TuE\\ibosssim\\model\\iboss\\thermochrom_alpha_epsilon.txt")) annotation(Placement(transformation(extent = {{90, 40}, {110, 60}})));
  iboss.iboss_thermal.components.environment_var_rad BB111pZ(illumination = orbit_illumination.BB111pZ, combiTable1Ds1(fileName = "E:\\Eigene Dateien\\iBOSS-2\\Gesamtsimulation_TuE\\ibosssim\\model\\iboss\\thermochrom_alpha_epsilon.txt")) annotation(Placement(transformation(extent = {{15, -10}, {35, 10}})));
  iboss.iboss_thermal.components.environment_var_rad BB111nZ(illumination = orbit_illumination.BB111nZ, combiTable1Ds1(fileName = "E:\\Eigene Dateien\\iBOSS-2\\Gesamtsimulation_TuE\\ibosssim\\model\\iboss\\thermochrom_alpha_epsilon.txt")) annotation(Placement(transformation(extent = {{85, 70}, {105, 90}})));
  iboss.iboss_thermal.buildingblocks.BuildingBlock_thermal BB111(lower_Temp_boundary = 285, upper_Temp_boundary = 300) annotation(Placement(visible = true, transformation(origin = {65, 45}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  iboss.iboss_thermal.components.environment_var_rad BB111pY(illumination = orbit_illumination.BB111pY, combiTable1Ds1(fileName = "E:\\Eigene Dateien\\iBOSS-2\\Gesamtsimulation_TuE\\ibosssim\\model\\iboss\\thermochrom_alpha_epsilon.txt")) annotation(Placement(visible = true, transformation(origin = {40, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(BB111.thermal_connector_yp, BB111pY.thermal_connector_env) annotation(Line(points = {{65.1651, 59.8143}, {60.077, 59.8143}, {50, 70}, {50, 80}}));
  connect(BB111.thermal_connector_zp, BB111pZ.thermal_connector_env) annotation(Line(points = {{51.8776, 31.8363}, {44.4159, 31.8363}, {44.4159, -0.513479}, {35.6868, -0.513479}, {35.6868, -0.513479}}));
  connect(BB111.thermal_connector_yn, BB111nY.thermal_connector_env) annotation(Line(points = {{65.1651, 30.0619}, {78.56229999999999, 30.0619}, {78.56229999999999, -5.13479}, {69.8331, -5.13479}, {69.8331, -5.13479}}));
  connect(BB111pX.thermal_connector_env, BB111.thermal_connector_xp) annotation(Line(points = {{110, 50}, {79.846, 50}, {79.846, 45.4429}, {79.846, 45.4429}}));
  connect(BB111.thermal_connector_zn, BB111nZ.thermal_connector_env) annotation(Line(points = {{78.17570000000001, 58.1757}, {77.2786, 58.1757}, {77.2786, 67.009}, {105.52, 67.009}, {105.52, 78.819}, {105.52, 78.819}}));
  connect(BB111nX.thermal_connector_env, BB111.thermal_connector_xn) annotation(Line(points = {{35, 30}, {42.362, 30}, {42.362, 39.2811}, {50.0688, 44.5873}, {50.1032, 44.5873}}));
end Modell1_noEvent;