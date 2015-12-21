within iboss.iboss_thermal.components;

model tank_2x2x2 "tank_2x2x2.mo"
  parameter Boolean propellant = true;
  surface_properties_out surface_properties_out_100zn "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(extent = {{200, 60}, {220, 80}}), iconTransformation(extent = {{188.3, 141.7}, {208.3, 161.7}})));
  surface_properties_out surface_properties_out_000zn annotation(Placement(transformation(extent = {{180, 60}, {200, 80}}), iconTransformation(extent = {{188.3, 91.7}, {208.3, 111.7}})));
  surface_properties_out surface_properties_out_110zn annotation(Placement(transformation(extent = {{200, 80}, {220, 100}}), iconTransformation(extent = {{88.3, 191.7}, {108.3, 211.7}})));
  surface_properties_out surface_properties_out_010zn annotation(Placement(transformation(extent = {{180, 80}, {200, 100}}), iconTransformation(extent = {{138.3, 191.7}, {158.3, 211.7}})));
  surface_properties_out surface_properties_out_110yp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(extent = {{35, 70}, {55, 90}}), iconTransformation(extent = {{-61.7, 191.7}, {-41.7, 211.7}})));
  surface_properties_out surface_properties_out_111yp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(extent = {{15, 70}, {35, 90}}), iconTransformation(extent = {{-161.7, 191.7}, {-141.7, 211.7}})));
  surface_properties_out surface_properties_out_010yp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(extent = {{35, 90}, {55, 110}}), iconTransformation(extent = {{-11.7, 191.7}, {8.300000000000001, 211.7}})));
  surface_properties_out surface_properties_out_011yp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(transformation(extent = {{15, 90}, {35, 110}}), iconTransformation(extent = {{-111.7, 191.7}, {-91.7, 211.7}})));
  surface_properties_out surface_properties_out_000xn annotation(Placement(transformation(extent = {{-125, -35}, {-105, -15}}), iconTransformation(extent = {{-211.7, -8.300000000000001}, {-191.7, 11.7}})));
  surface_properties_out surface_properties_out_001xn annotation(Placement(transformation(extent = {{-145, -35}, {-125, -15}}), iconTransformation(extent = {{-211.7, 91.7}, {-191.7, 111.7}})));
  surface_properties_out surface_properties_out_010xn annotation(Placement(transformation(extent = {{-125, -15}, {-105, 5}}), iconTransformation(extent = {{-191.7, 41.7}, {-211.7, 61.7}})));
  surface_properties_out surface_properties_out_011xn annotation(Placement(transformation(extent = {{-145, -15}, {-125, 5}}), iconTransformation(extent = {{-211.7, 141.7}, {-191.7, 161.7}})));
  surface_properties_out surface_properties_out_101yn annotation(Placement(transformation(extent = {{20, -200}, {40, -180}}), iconTransformation(extent = {{138.3, -208.3}, {158.3, -188.3}})));
  surface_properties_out surface_properties_out_001yn annotation(Placement(transformation(extent = {{0, -200}, {20, -180}}), iconTransformation(extent = {{88.3, -208.3}, {108.3, -188.3}})));
  surface_properties_out surface_properties_out_100yn annotation(Placement(transformation(extent = {{20, -180}, {40, -160}}), iconTransformation(extent = {{38.3, -208.3}, {58.3, -188.3}})));
  surface_properties_out surface_properties_out_000yn annotation(Placement(transformation(extent = {{0, -180}, {20, -160}}), iconTransformation(extent = {{-11.7, -208.3}, {8.300000000000001, -188.3}})));
  surface_properties_out surface_properties_out_101zp annotation(Placement(transformation(extent = {{-115, -210}, {-95, -190}}), iconTransformation(extent = {{-161.7, -208.3}, {-141.7, -188.3}})));
  surface_properties_out surface_properties_out_001zp annotation(Placement(transformation(extent = {{-135, -210}, {-115, -190}}), iconTransformation(extent = {{-111.7, -208.3}, {-91.7, -188.3}})));
  surface_properties_out surface_properties_out_111zp annotation(Placement(transformation(extent = {{-115, -190}, {-95, -170}}), iconTransformation(extent = {{-211.7, -108.3}, {-191.7, -88.3}})));
  surface_properties_out surface_properties_out_011zp annotation(Placement(transformation(extent = {{-135, -190}, {-115, -170}}), iconTransformation(extent = {{-211.7, -158.3}, {-191.7, -138.3}})));
  surface_properties_out surface_properties_out_101xp annotation(Placement(transformation(extent = {{260, -30}, {280, -10}}), iconTransformation(extent = {{188.3, -108.3}, {208.3, -88.3}})));
  surface_properties_out surface_properties_out_100xp annotation(Placement(transformation(extent = {{240, -30}, {260, -10}}), iconTransformation(extent = {{188.3, -8.300000000000001}, {208.3, 11.7}})));
  surface_properties_out surface_properties_out_111xp annotation(Placement(transformation(extent = {{260, -10}, {280, 10}}), iconTransformation(extent = {{188.3, -158.3}, {208.3, -138.3}})));
  Tankwand tankwand_xn annotation(Placement(transformation(extent = {{-90, -31}, {-44, 15}})));
  Tankwand tankwand_yp annotation(Placement(transformation(extent = {{10, 14}, {56, 60}})));
  Tankwand tankwand_xp annotation(Placement(transformation(extent = {{115, -51}, {161, -5}})));
  Tankwand tankwand_yn annotation(Placement(transformation(extent = {{-5, -146}, {41, -100}})));
  Tankwand tankwand_zn annotation(Placement(transformation(extent = {{120, 44}, {166, 90}})));
  Tankwand tankwand_zp annotation(Placement(transformation(extent = {{-120, -151}, {-74, -105}})));
  thermal_conductor_A thermal_conductor_000xn_000zn(TIM = false) annotation(Placement(transformation(extent = {{-20, 50}, {0, 70}})));
  thermal_conductor_A thermal_conductor_010xn_010zn(TIM = false) annotation(Placement(transformation(extent = {{-20, 75}, {0, 95}})));
  thermal_conductor_A thermal_conductor_000xn_000yn(TIM = false) annotation(Placement(transformation(extent = {{-40, -60}, {-20, -40}})));
  thermal_conductor_A thermal_conductor_001xn_001yn(TIM = false) annotation(Placement(transformation(extent = {{-40, -85}, {-20, -65}})));
  thermal_conductor_A thermal_conductor_000yn_000zn(TIM = false) annotation(Placement(transformation(extent = {{130, 0}, {150, 20}})));
  thermal_conductor_A thermal_conductor_100yn_100zn(TIM = false) annotation(Placement(transformation(extent = {{130, 25}, {150, 45}})));
  thermal_conductor_A thermal_conductor_110xp_110zn(TIM = false) annotation(Placement(transformation(extent = {{165, 30}, {185, 50}})));
  thermal_conductor_A thermal_conductor_100xp_100zn(TIM = false) annotation(Placement(transformation(extent = {{165, 5}, {185, 25}})));
  thermal_conductor_A thermal_conductor_100xp_100yn(TIM = false) annotation(Placement(transformation(extent = {{110, -90}, {130, -70}})));
  thermal_conductor_A thermal_conductor_101xp_101yn(TIM = false) annotation(Placement(transformation(extent = {{110, -115}, {130, -95}})));
  thermal_conductor_A thermal_conductor_101yn_101zp(TIM = false) annotation(Placement(transformation(extent = {{-50, -130}, {-30, -110}})));
  thermal_conductor_A thermal_conductor_001yn_001zp(TIM = false) annotation(Placement(transformation(extent = {{-50, -110}, {-30, -90}})));
  thermal_conductor_A thermal_conductor_101xp_101zp(TIM = false) annotation(Placement(transformation(extent = {{65, -125}, {85, -105}})));
  thermal_conductor_A thermal_conductor_111xp_111zp(TIM = false) annotation(Placement(transformation(extent = {{65, -100}, {85, -80}})));
  thermal_conductor_A thermal_conductor_001xn_001zp(TIM = false) annotation(Placement(transformation(extent = {{-80, -75}, {-60, -55}})));
  thermal_conductor_A thermal_conductor_011xn_011zp(TIM = false) annotation(Placement(transformation(extent = {{-80, -55}, {-60, -35}})));
  thermal_conductor_A thermal_conductor_011xn_011yp(TIM = false) annotation(Placement(transformation(extent = {{-15, 25}, {5, 45}})));
  thermal_conductor_A thermal_conductor_010xn_010yp(TIM = false) annotation(Placement(transformation(extent = {{-15, 5}, {5, 25}})));
  thermal_conductor_A thermal_conductor_111xp_111yp(TIM = false) annotation(Placement(transformation(extent = {{60, 25}, {80, 45}})));
  thermal_conductor_A thermal_conductor_110xp_110yp(TIM = false) annotation(Placement(transformation(extent = {{60, 5}, {80, 25}})));
  thermal_conductor_A thermal_conductor_111yp_111zp(TIM = false) annotation(Placement(transformation(extent = {{-115, 40}, {-95, 60}})));
  thermal_conductor_A thermal_conductor_011yp_011zp(TIM = false) annotation(Placement(transformation(extent = {{-115, 20}, {-95, 40}})));
  thermal_conductor_A thermal_conductor_110yp_110zn(TIM = false) annotation(Placement(transformation(extent = {{70, 80}, {90, 100}})));
  thermal_conductor_A thermal_conductor_010yp_010zn(TIM = false) annotation(Placement(transformation(extent = {{70, 60}, {90, 80}})));
  surface_properties_out surface_properties_out_110xp annotation(Placement(transformation(extent = {{240, -10}, {260, 10}}), iconTransformation(extent = {{188.3, -58.3}, {208.3, -38.3}})));
  thermal_element thermal_elementpropellant_011(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{-5, -60}, {15, -40}})));
  thermal_element thermal_elementpropellant_111(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{25, -60}, {45, -40}})));
  thermal_element thermal_elementpropellant_001(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{-5, -85}, {15, -65}})));
  thermal_element thermal_elementpropellant_101(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{25, -85}, {45, -65}})));
  thermal_element thermal_elementpropellant_010(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{45, -20}, {65, 0}})));
  thermal_element thermal_elementpropellant_110(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{75, -20}, {95, 0}})));
  thermal_element thermal_elementpropellant_000(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{45, -45}, {65, -25}})));
  thermal_element thermal_elementpropellant_100(material(k = 0.597, c = 4184, d = 1000), x = 0.3, y = 0.3, z = 0.3) if propellant annotation(Placement(transformation(extent = {{75, -45}, {95, -25}})));
equation
  connect(thermal_conductor_000yn_000zn.surface_properties2, tankwand_yn.surface_properties_tank_01_yp) annotation(Line(points = {{150, 10}, {155, 10}, {155, -30}, {16.7, -30}, {16.7, -66}, {15.33332824707031, -100}}, color = {255, 0, 0}, thickness = 0.0625), AutoRoute = false);
  connect(thermal_conductor_000yn_000zn.surface_properties1, tankwand_zn.surface_properties_tank_00_yn) annotation(Line(points = {{130, 10}, {125, 10}, {125, 24.7}, {140.3, 24.7}, {140.3, 39.3}, {140.3, 44.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_100yn_100zn.surface_properties1, tankwand_zn.surface_properties_tank_10_yn) annotation(Line(points = {{130, 35}, {125, 35}, {125, 37}, {145.3, 37}, {145.3, 39.3}, {145.3, 44.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_100yn_100zn.surface_properties2, tankwand_yn.surface_properties_tank_11_yp) annotation(Line(points = {{150, 35}, {155, 35}, {155, -30}, {20.3, -30}, {20.3, -95}, {20.3, -100}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_110xp_110zn.surface_properties1, tankwand_zn.surface_properties_tank_11_xp) annotation(Line(points = {{165, 40}, {160, 40}, {160, 54.7}, {170.7, 54.7}, {170.7, 69.7}, {165.7, 69.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_100xp_100zn.surface_properties1, tankwand_zn.surface_properties_tank_10_xp) annotation(Line(points = {{165, 15}, {160, 15}, {160, 39.7}, {170.7, 39.7}, {170.7, 64.7}, {165.7, 64.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_110xp_110zn.surface_properties2, tankwand_xp.surface_properties_tank_01_xn) annotation(Line(points = {{185, 40}, {190, 40}, {190, 7.3}, {110, 7.3}, {110, -25.3}, {115, -25.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_100xp_100zn.surface_properties2, tankwand_xp.surface_properties_tank_00_xn) annotation(Line(points = {{185, 15}, {190, 15}, {190, -7.7}, {110, -7.7}, {110, -30.3}, {115, -30.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_100xp_100yn.surface_properties1, tankwand_yn.surface_properties_tank_11_xp) annotation(Line(points = {{110, -80}, {105, -80}, {45.7, -80}, {45.7, -120.3}, {40.7, -120.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_100xp_100yn.surface_properties2, tankwand_xp.surface_properties_tank_00_yn) annotation(Line(points = {{130, -80}, {135, -80}, {135.3, -80}, {135.3, -55.7}, {135.3, -50.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_101xp_101yn.surface_properties2, tankwand_xp.surface_properties_tank_10_yn) annotation(Line(points = {{130, -105}, {135, -105}, {140.3, -105}, {140.3, -55.7}, {140.3, -50.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_101xp_101yn.surface_properties1, tankwand_yn.surface_properties_tank_10_xp) annotation(Line(points = {{110, -105}, {105, -105}, {45.7, -105}, {45.7, -125.3}, {40.7, -125.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_001xn_001yn.surface_properties2, tankwand_yn.surface_properties_tank_00_xn) annotation(Line(points = {{-20, -75}, {-15, -75}, {-10, -75}, {-10, -125.3}, {-5, -125.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_000xn_000zn.surface_properties1, tankwand_xn.surface_properties_tank_10_xp) annotation(Line(points = {{-20, 60}, {-25, 60}, {-39.3, 60}, {-39.3, -10.3}, {-44.3, -10.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_010xn_010zn.surface_properties1, tankwand_xn.surface_properties_tank_11_xp) annotation(Line(points = {{-20, 85}, {-25, 85}, {-39.3, 85}, {-39.3, -5.3}, {-44.3, -5.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_101yn_101zp.surface_properties2, tankwand_yn.surface_properties_tank_10_yn) annotation(Line(points = {{-30, -120}, {-25, -120}, {-25, -150.7}, {20.3, -150.7}, {20.3, -145.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_101yn_101zp.surface_properties1, tankwand_zp.surface_properties_tank_00_yn) annotation(Line(points = {{-50, -120}, {-55, -120}, {-55, -155.7}, {-99.7, -155.7}, {-99.7, -150.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_001yn_001zp.surface_properties2, tankwand_yn.surface_properties_tank_00_yn) annotation(Line(points = {{-30, -100}, {-25, -100}, {-25, -150.7}, {15.3, -150.7}, {15.3, -145.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_001yn_001zp.surface_properties1, tankwand_zp.surface_properties_tank_10_yn) annotation(Line(points = {{-50, -100}, {-55, -100}, {-55, -155.7}, {-94.7, -155.7}, {-94.7, -150.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_101xp_101zp.surface_properties1, tankwand_zp.surface_properties_tank_00_xn) annotation(Line(points = {{65, -115}, {60, -115}, {-125, -115}, {-125, -130.3}, {-120, -130.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_101xp_101zp.surface_properties2, tankwand_xp.surface_properties_tank_10_xp) annotation(Line(points = {{85, -115}, {90, -115}, {165.7, -115}, {165.7, -30.3}, {160.7, -30.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_111xp_111zp.surface_properties1, tankwand_zp.surface_properties_tank_01_xn) annotation(Line(points = {{65, -90}, {60, -90}, {-125, -90}, {-125, -125.3}, {-120, -125.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_111xp_111zp.surface_properties2, tankwand_xp.surface_properties_tank_11_xp) annotation(Line(points = {{85, -90}, {90, -90}, {165.7, -90}, {165.7, -25.3}, {160.7, -25.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_000xn_000zn.surface_properties2, tankwand_zn.surface_properties_tank_00_xn) annotation(Line(points = {{0, 60}, {5, 60}, {115, 60}, {115, 64.7}, {120, 64.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_010xn_010zn.surface_properties2, tankwand_zn.surface_properties_tank_01_xn) annotation(Line(points = {{0, 85}, {5, 85}, {115, 85}, {115, 69.7}, {120, 69.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_000xn_000yn.surface_properties2, tankwand_yn.surface_properties_tank_01_xn) annotation(Line(points = {{-20, -50}, {-15, -50}, {-10, -50}, {-10, -120.3}, {-5, -120.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_000xn_000yn.surface_properties1, tankwand_xn.surface_properties_tank_10_yn) annotation(Line(points = {{-40, -50}, {-45, -50}, {-64.7, -50}, {-64.7, -35.7}, {-64.7, -30.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_001xn_001yn.surface_properties1, tankwand_xn.surface_properties_tank_00_yn) annotation(Line(points = {{-40, -75}, {-45, -75}, {-69.7, -75}, {-69.7, -35.7}, {-69.7, -30.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_001xn_001zp.surface_properties1, tankwand_zp.surface_properties_tank_10_xp) annotation(Line(points = {{-80, -65}, {-85, -65}, {-85, -97.7}, {-69.3, -97.7}, {-69.3, -130.3}, {-74.3, -130.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_001xn_001zp.surface_properties2, tankwand_xn.surface_properties_tank_00_xn) annotation(Line(points = {{-60, -65}, {-55, -65}, {-55, -37.7}, {-95, -37.7}, {-95, -10.3}, {-90, -10.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_011xn_011zp.surface_properties1, tankwand_zp.surface_properties_tank_11_xp) annotation(Line(points = {{-80, -45}, {-85, -45}, {-85, -85}, {-69.3, -85}, {-69.3, -125.3}, {-74.3, -125.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_011xn_011zp.surface_properties2, tankwand_xn.surface_properties_tank_01_xn) annotation(Line(points = {{-60, -45}, {-55, -45}, {-55, -25.3}, {-95, -25.3}, {-95, -5.3}, {-90, -5.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_011xn_011yp.surface_properties2, tankwand_yp.surface_properties_tank_00_yn) annotation(Line(points = {{5, 35}, {10, 35}, {10, 9.300000000000001}, {30.3, 9.300000000000001}, {30.3, 14.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_010xn_010yp.surface_properties2, tankwand_yp.surface_properties_tank_10_yn) annotation(Line(points = {{5, 15}, {10, 15}, {40, 15}, {40, 30}, {35.33332824707031, 14.33333587646484}}, color = {255, 0, 0}, thickness = 0.0625), AutoRoute = false);
  connect(thermal_conductor_010xn_010yp.surface_properties1, tankwand_xn.surface_properties_tank_11_yp) annotation(Line(points = {{-15, 15}, {-20, 15}, {-20, 20}, {-64.7, 20}, {-64.7, 15}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_011xn_011yp.surface_properties1, tankwand_xn.surface_properties_tank_01_yp) annotation(Line(points = {{-15, 35}, {-20, 35}, {-69.7, 35}, {-69.7, 20}, {-69.7, 15}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_110xp_110yp.surface_properties1, tankwand_yp.surface_properties_tank_11_yp) annotation(Line(points = {{60, 15}, {55, 15}, {55, 65}, {35.3, 65}, {35.3, 60}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_111xp_111yp.surface_properties1, tankwand_yp.surface_properties_tank_01_yp) annotation(Line(points = {{60, 35}, {55, 35}, {55, 65}, {30.3, 65}, {30.3, 60}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_110xp_110yp.surface_properties2, tankwand_xp.surface_properties_tank_01_yp) annotation(Line(points = {{80, 15}, {85, 15}, {135.3, 15}, {135.3, 0}, {135.3, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_111xp_111yp.surface_properties2, tankwand_xp.surface_properties_tank_11_yp) annotation(Line(points = {{80, 35}, {85, 35}, {140.3, 35}, {140.3, 0}, {140.3, -5}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_111yp_111zp.surface_properties2, tankwand_yp.surface_properties_tank_01_xn) annotation(Line(points = {{-95, 50}, {-90, 50}, {5, 50}, {5, 39.7}, {10, 39.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_011yp_011zp.surface_properties2, tankwand_yp.surface_properties_tank_00_xn) annotation(Line(points = {{-95, 30}, {-90, 30}, {5, 30}, {5, 34.7}, {10, 34.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_111yp_111zp.surface_properties1, tankwand_zp.surface_properties_tank_01_yp) annotation(Line(points = {{-115, 50}, {-120, 50}, {-120, -25}, {-99.7, -25}, {-99.7, -100}, {-99.7, -105}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_011yp_011zp.surface_properties1, tankwand_zp.surface_properties_tank_11_yp) annotation(Line(points = {{-115, 30}, {-120, 30}, {-120, -35}, {-94.7, -35}, {-94.7, -100}, {-94.7, -105}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_010yp_010zn.surface_properties1, tankwand_yp.surface_properties_tank_10_xp) annotation(Line(points = {{70, 70}, {65, 70}, {60.7, 70}, {60.7, 34.7}, {55.7, 34.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_110yp_110zn.surface_properties1, tankwand_yp.surface_properties_tank_11_xp) annotation(Line(points = {{70, 90}, {65, 90}, {60.7, 90}, {60.7, 39.7}, {55.7, 39.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_010yp_010zn.surface_properties2, tankwand_zn.surface_properties_tank_01_yp) annotation(Line(points = {{90, 70}, {95, 70}, {95, 95}, {140.3, 95}, {140.3, 90}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_110yp_110zn.surface_properties2, tankwand_zn.surface_properties_tank_11_yp) annotation(Line(points = {{90, 90}, {95, 90}, {95, 95}, {145.3, 95}, {145.3, 90}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_10_zp, surface_properties_out_001zp) annotation(Line(points = {{-120, -145.7}, {-125, -145.7}, {-125, -172.7}, {-120, -172.7}, {-120, -200}, {-125, -200}}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_01_zp, surface_properties_out_111zp) annotation(Line(points = {{-115, -150.7}, {-115, -155.7}, {-115, -180}, {-110, -180}, {-105, -180}}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_11_zp, surface_properties_out_011zp) annotation(Line(points = {{-110, -150.7}, {-110, -155.7}, {-110, -180}, {-120, -180}, {-125, -180}}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_01_zp, surface_properties_out_000yn) annotation(Line(points = {{0, -145.7}, {0, -150.7}, {0, -170}, {5, -170}, {10, -170}}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_00_zp, surface_properties_out_001yn) annotation(Line(points = {{-5, -135.7}, {-10, -135.7}, {-10, -190}, {5, -190}, {10, -190}}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_10_zp, surface_properties_out_101yn) annotation(Line(points = {{-5, -140.7}, {-10, -140.7}, {-10, -190}, {25, -190}, {30, -190}}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_11_zp, surface_properties_out_100yn) annotation(Line(points = {{5, -145.7}, {5, -150.7}, {5, -170}, {25, -170}, {30, -170}}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_10_zp, surface_properties_out_000xn) annotation(Line(points = {{-90, -25.7}, {-95, -25.7}, {-110, -25.7}, {-110, -25}, {-115, -25}}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_11_zp, surface_properties_out_010xn) annotation(Line(points = {{-80, -30.7}, {-80, -35.7}, {-95, -35.7}, {-95, -5}, {-110, -5}, {-115, -5}}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_00_zp, surface_properties_out_001xn) annotation(Line(points = {{-90, -20.7}, {-95, -20.7}, {-130, -20.7}, {-130, -25}, {-135, -25}}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_01_zp, surface_properties_out_011xn) annotation(Line(points = {{-85, -30.7}, {-85, -35.7}, {-107.3, -35.7}, {-107.3, -5}, {-130, -5}, {-135, -5}}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_00_zp, surface_properties_out_000zn) annotation(Line(points = {{120, 54.3}, {115, 54.3}, {115, 70}, {185, 70}, {190, 70}}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_10_zp, surface_properties_out_100zn) annotation(Line(points = {{120, 49.3}, {115, 49.3}, {115, 70}, {205, 70}, {210, 70}}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_11_zp, surface_properties_out_110zn) annotation(Line(points = {{130, 44.3}, {130, 39.3}, {167.3, 39.3}, {167.3, 90}, {205, 90}, {210, 90}}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_01_zp, surface_properties_out_111yp) annotation(Line(points = {{15, 14.3}, {15, 9.300000000000001}, {17, 9.300000000000001}, {17, 80}, {20, 80}, {25, 80}}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_00_zp, surface_properties_out_011yp) annotation(Line(points = {{10, 24.3}, {5, 24.3}, {5, 100}, {20, 100}, {25, 100}}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_10_zp, surface_properties_out_010yp) annotation(Line(points = {{10, 19.3}, {5, 19.3}, {5, 100}, {40, 100}, {45, 100}}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_11_zp, surface_properties_out_110yp) annotation(Line(points = {{20, 14.3}, {20, 9.300000000000001}, {30, 9.300000000000001}, {30, 80}, {40, 80}, {45, 80}}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_00_zp, surface_properties_out_100xp) annotation(Line(points = {{115, -40.7}, {110, -40.7}, {110, -20}, {245, -20}, {250, -20}}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_10_zp, surface_properties_out_101xp) annotation(Line(points = {{115, -45.7}, {110, -45.7}, {110, -20}, {265, -20}, {270, -20}}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_11_zp, surface_properties_out_111xp) annotation(Line(points = {{125, -50.7}, {125, -55.7}, {195, -55.7}, {195, 0}, {265, 0}, {270, 0}}, thickness = 0.0625));
  connect(surface_properties_out_010zn, tankwand_zn.surface_properties_tank_01_zp) annotation(Line(points = {{190, 90}, {185, 90}, {185, 39.3}, {125, 39.3}, {125, 44.3}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_00_zp, surface_properties_out_101zp) annotation(Line(points = {{-120, -140.7}, {-125, -140.7}, {-125, -200}, {-110, -200}, {-105, -200}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_01_zp, surface_properties_out_110xp) annotation(Line(points = {{120, -50.7}, {120, -55.7}, {182.3, -55.7}, {182.3, 0}, {245, 0}, {250, 0}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_011.port_b_xp, thermal_elementpropellant_111.port_a_xn) annotation(Line(points = {{15, -50}, {20, -50}, {19.7, -50}, {24.7, -50}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_011.port_a_yn, thermal_elementpropellant_001.port_b_yp) annotation(Line(points = {{5, -56}, {5, -61}, {5, -66}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_111.port_a_yn, thermal_elementpropellant_101.port_b_yp) annotation(Line(points = {{35, -56}, {35, -61}, {35, -66}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_101.port_a_xn, thermal_elementpropellant_001.port_b_xp) annotation(Line(points = {{24.7, -75}, {19.7, -75}, {20, -75}, {15, -75}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_000.port_b_xp, thermal_elementpropellant_100.port_a_xn) annotation(Line(points = {{65, -35}, {70, -35}, {69.7, -35}, {74.7, -35}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_010.port_b_xp, thermal_elementpropellant_110.port_a_xn) annotation(Line(points = {{65, -10}, {70, -10}, {69.7, -10}, {74.7, -10}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_110.port_a_yn, thermal_elementpropellant_100.port_b_yp) annotation(Line(points = {{85, -16}, {85, -21}, {85, -26}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_010.port_a_yn, thermal_elementpropellant_000.port_b_yp) annotation(Line(points = {{55, -16}, {55, -21}, {55, -26}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_111.port_a_zn, thermal_elementpropellant_110.port_b_zp) annotation(Line(points = {{40, -43.3}, {40, -38.3}, {40, -14.7}, {75, -14.7}, {80, -14.7}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_011.port_a_zn, thermal_elementpropellant_010.port_b_zp) annotation(Line(points = {{10, -43.3}, {10, -38.3}, {10, -14.7}, {45, -14.7}, {50, -14.7}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_101.port_a_zn, thermal_elementpropellant_100.port_b_zp) annotation(Line(points = {{40, -68.3}, {40, -63.3}, {40, -39.7}, {75, -39.7}, {80, -39.7}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(thermal_elementpropellant_001.port_a_zn, thermal_elementpropellant_000.port_b_zp) annotation(Line(points = {{10, -68.3}, {10, -63.3}, {10, -39.7}, {45, -39.7}, {50, -39.7}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_11_zn.thermal_port, thermal_elementpropellant_010.port_a_xn) annotation(Line(points = {{-54.3, 15}, {-54.3, 20}, {-7.3, 20}, {-7.3, -10}, {39.7, -10}, {44.7, -10}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_01_zn.thermal_port, thermal_elementpropellant_011.port_a_xn) annotation(Line(points = {{-49.3, 15}, {-49.3, 20}, {-30, 20}, {-30, -50}, {-10.3, -50}, {-5.3, -50}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_10_zn.thermal_port, thermal_elementpropellant_000.port_a_xn) annotation(Line(points = {{-44.3, 10}, {-39.3, 10}, {39.7, 10}, {39.7, -35}, {44.7, -35}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xn.surface_properties_tank_00_zn.thermal_port, thermal_elementpropellant_001.port_a_xn) annotation(Line(points = {{-44.3, 5}, {-39.3, 5}, {-10.3, 5}, {-10.3, -75}, {-5.3, -75}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_11_zn.thermal_port, thermal_elementpropellant_100.port_a_yn) annotation(Line(points = {{30.7, -100}, {30.7, -95}, {30.7, -46}, {85, -46}, {85, -41}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_01_zn.thermal_port, thermal_elementpropellant_000.port_a_yn) annotation(Line(points = {{35.7, -100}, {35.7, -95}, {35.7, -46}, {55, -46}, {55, -41}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_10_zn.thermal_port, thermal_elementpropellant_101.port_a_yn) annotation(Line(points = {{40.7, -105}, {45.7, -105}, {45.7, -95.7}, {35, -95.7}, {35, -86}, {35, -81}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yn.surface_properties_tank_00_zn.thermal_port, thermal_elementpropellant_001.port_a_yn) annotation(Line(points = {{40.7, -110}, {45.7, -110}, {45.7, -98}, {5, -98}, {5, -86}, {5, -81}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_11_zn.thermal_port, thermal_elementpropellant_110.port_a_zn) annotation(Line(points = {{155.7, 90}, {155.7, 95}, {90, 95}, {90, 1.7}, {90, -3.3}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_01_zn.thermal_port, thermal_elementpropellant_010.port_a_zn) annotation(Line(points = {{160.7, 90}, {160.7, 95}, {60, 95}, {60, 1.7}, {60, -3.3}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_10_zn.thermal_port, thermal_elementpropellant_100.port_a_zn) annotation(Line(points = {{165.7, 85}, {170.7, 85}, {170.7, 31}, {90, 31}, {90, -23.3}, {90, -28.3}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zn.surface_properties_tank_00_zn.thermal_port, thermal_elementpropellant_000.port_a_zn) annotation(Line(points = {{165.7, 80}, {170.7, 80}, {170.7, 28.3}, {60, 28.3}, {60, -23.3}, {60, -28.3}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_11_zn.thermal_port, thermal_elementpropellant_110.port_b_yp) annotation(Line(points = {{45.7, 60}, {45.7, 65}, {85, 65}, {85, 4}, {85, -1}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_01_zn.thermal_port, thermal_elementpropellant_111.port_b_yp) annotation(Line(points = {{50.7, 60}, {50.7, 65}, {35, 65}, {35, -36}, {35, -41}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_10_zn.thermal_port, thermal_elementpropellant_010.port_b_yp) annotation(Line(points = {{55.7, 55}, {60.7, 55}, {60.7, 29.7}, {55, 29.7}, {55, 4}, {55, -1}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_yp.surface_properties_tank_00_zn.thermal_port, thermal_elementpropellant_011.port_b_yp) annotation(Line(points = {{55.7, 50}, {60.7, 50}, {60.7, 7}, {5, 7}, {5, -36}, {5, -41}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_11_zn.thermal_port, thermal_elementpropellant_111.port_b_xp) annotation(Line(points = {{150.7, -5}, {150.7, 0}, {100.3, 0}, {100.3, -50}, {50, -50}, {45, -50}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_01_zn.thermal_port, thermal_elementpropellant_110.port_b_xp) annotation(Line(points = {{155.7, -5}, {155.7, 0}, {128, 0}, {128, -10}, {100, -10}, {95, -10}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_10_zn.thermal_port, thermal_elementpropellant_101.port_b_xp) annotation(Line(points = {{160.7, -10}, {165.7, -10}, {165.7, -75}, {50, -75}, {45, -75}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_xp.surface_properties_tank_00_zn.thermal_port, thermal_elementpropellant_100.port_b_xp) annotation(Line(points = {{160.7, -15}, {165.7, -15}, {165.7, -35}, {100, -35}, {95, -35}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_11_zn.thermal_port, thermal_elementpropellant_011.port_b_zp) annotation(Line(points = {{-84.3, -105}, {-84.3, -100}, {-84.3, -54.7}, {-5, -54.7}, {0, -54.7}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_01_zn.thermal_port, thermal_elementpropellant_111.port_b_zp) annotation(Line(points = {{-79.3, -105}, {-79.3, -100}, {-79.3, -54.7}, {25, -54.7}, {30, -54.7}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_10_zn.thermal_port, thermal_elementpropellant_001.port_b_zp) annotation(Line(points = {{-74.3, -110}, {-69.3, -110}, {-5, -110}, {-5, -79.7}, {0, -79.7}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(tankwand_zp.surface_properties_tank_00_zn.thermal_port, thermal_elementpropellant_101.port_b_zp) annotation(Line(points = {{-74.3, -115}, {-69.3, -115}, {25, -115}, {25, -79.7}, {30, -79.7}}, color = {0, 0, 0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-201.7, -201.7}, {201.7, 201.7}}), graphics = {Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.VerticalCylinder, extent = {{-153.3, 200}, {150, 96.7}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.VerticalCylinder, extent = {{-153.3, -53.3}, {150, -153.3}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.VerticalCylinder, extent = {{-152.9, 149.2}, {150.4, -104.1}})}), experiment(StopTime = 1, StartTime = 0));
end tank_2x2x2;