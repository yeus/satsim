within iboss.iboss_thermal.components;

model Panel_3x2_opt_prop "Panel_3x2_opt_prop.mo"
  thermal_connector_opt_prop_out thermal_connector_opt_prop_out_outer_zp00 annotation(Placement(transformation(extent = {{-110, -165}, {-90, -145}}), iconTransformation(extent = {{-105, -205}, {-85, -185}})));
  Panel_opt_prop Panel_BB_3x2_01 annotation(Placement(transformation(extent = {{-45, -16}, {-24, 5}})));
  Panel_opt_prop Panel_BB_3x2_11 annotation(Placement(transformation(extent = {{30, -16}, {51, 5}})));
  Panel_opt_prop Panel_BB_3x2_00 annotation(Placement(transformation(extent = {{-45, -86}, {-24, -65}})));
  Panel_opt_prop Panel_BB_3x2_10 annotation(Placement(transformation(extent = {{30, -86}, {51, -65}})));
  thermal_conductor_A thermal_conductor_A_00_10(TIM = false) annotation(Placement(transformation(extent = {{-5, -85}, {15, -65}})));
  thermal_conductor_A thermal_conductor_A_01_11(TIM = false) annotation(Placement(transformation(extent = {{-10, -15}, {10, 5}})));
  thermal_conductor_A thermal_conductor_A_10_11(TIM = false) annotation(Placement(transformation(origin = {40, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  thermal_conductor_A thermal_conductor_A_00_01(TIM = false) annotation(Placement(transformation(origin = {-35, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  thermal_connector_opt_prop_out thermal_connector_opt_prop_out_outer_zp01 annotation(Placement(transformation(extent = {{-110, -140}, {-90, -120}}), iconTransformation(extent = {{-105, -10}, {-85, 10}})));
  thermal_connector_opt_prop_out thermal_connector_opt_prop_out_outer_zp11 annotation(Placement(transformation(extent = {{-85, -140}, {-65, -120}}), iconTransformation(extent = {{105, -10}, {85, 10}})));
  thermal_connector_opt_prop_out thermal_connector_opt_prop_out_outer_zp10 annotation(Placement(transformation(extent = {{-85, -165}, {-65, -145}}), iconTransformation(extent = {{105, -205}, {85, -185}})));
  thermal_connector_opt_prop_out_inner thermal_connector_opt_prop_out_inner_zn00 annotation(Placement(transformation(extent = {{65, 40}, {85, 60}}), iconTransformation(extent = {{-40, -160}, {-60, -140}})));
  thermal_connector_opt_prop_out_inner thermal_connector_opt_prop_out_inner_zn01 annotation(Placement(transformation(extent = {{65, 65}, {85, 85}}), iconTransformation(extent = {{-40, 40}, {-60, 60}})));
  thermal_connector_opt_prop_out_inner thermal_connector_opt_prop_out_inner_zn11 annotation(Placement(transformation(extent = {{90, 65}, {110, 85}}), iconTransformation(extent = {{140, 40}, {160, 60}})));
  thermal_connector_opt_prop_out_inner thermal_connector_opt_prop_out_inner_zn10 annotation(Placement(transformation(extent = {{90, 40}, {110, 60}}), iconTransformation(extent = {{140, -160}, {160, -140}})));
  surface_properties_out surface_properties_out_00_xn annotation(Placement(transformation(origin = {-100, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-200, -200}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  surface_properties_out surface_properties_out_01_xn annotation(Placement(transformation(origin = {-100, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-200, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  surface_properties_out surface_properties_out_10_xp annotation(Placement(transformation(origin = {120, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 270), iconTransformation(origin = {200, -200}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  surface_properties_out surface_properties_out_11_xp annotation(Placement(transformation(origin = {120, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 270), iconTransformation(origin = {200, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  surface_properties_out surface_properties_out_10_yn annotation(Placement(transformation(origin = {40, -120}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {100, -300}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  surface_properties_out surface_properties_out_00_yn annotation(Placement(transformation(origin = {-35, -120}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -300}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  surface_properties_out surface_properties_out_12_yp annotation(Placement(transformation(origin = {40, 100}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 300}, extent = {{-10, -10}, {10, 10}})));
  surface_properties_out surface_properties_out_02_yp annotation(Placement(transformation(origin = {-35, 100}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 300}, extent = {{-10, -10}, {10, 10}})));
  Panel_opt_prop Panel_BB_3x2_02 annotation(Placement(transformation(extent = {{-45, 44}, {-24, 65}})));
  Panel_opt_prop Panel_BB_3x2_12 annotation(Placement(transformation(extent = {{30, 44}, {51, 65}})));
  thermal_conductor_A thermal_conductor_A_02_12(TIM = false) annotation(Placement(transformation(extent = {{-10, 45}, {10, 65}})));
  thermal_conductor_A thermal_conductor_A_11_12(TIM = false) annotation(Placement(transformation(origin = {40, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  thermal_conductor_A thermal_conductor_A_01_02(TIM = false) annotation(Placement(transformation(origin = {-35, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  surface_properties_out surface_properties_out_02_xn annotation(Placement(transformation(origin = {-100, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-200, 200}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  surface_properties_out surface_properties_out_12_xp2 annotation(Placement(transformation(origin = {120, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 270), iconTransformation(origin = {200, 200}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  thermal_connector_opt_prop_out_inner thermal_connector_opt_prop_out_inner_zn02 annotation(Placement(transformation(extent = {{65, 90}, {85, 110}}), iconTransformation(extent = {{-60, 240}, {-40, 260}})));
  thermal_connector_opt_prop_out_inner thermal_connector_opt_prop_out_inner_zn12 annotation(Placement(transformation(extent = {{90, 90}, {110, 110}}), iconTransformation(extent = {{140, 240}, {160, 260}})));
  thermal_connector_opt_prop_out thermal_connector_opt_prop_out_outer_zp02 annotation(Placement(transformation(extent = {{-110, -115}, {-90, -95}}), iconTransformation(extent = {{-105, 205}, {-85, 185}})));
  thermal_connector_opt_prop_out thermal_connector_opt_prop_out_outer_zp12 annotation(Placement(transformation(extent = {{-85, -135}, {-65, -115}}), iconTransformation(extent = {{105, 205}, {85, 185}})));
equation
  connect(Panel_BB_3x2_00.thermal_connector_inner_zn_multi, thermal_connector_opt_prop_out_inner_zn00) annotation(Line(points = {{-24.3, -70}, {-19.3, -70}, {70, -70}, {70, 50}, {75, 50}}, thickness = 0.0625));
  connect(Panel_BB_3x2_00.surface_properties_out_yn, surface_properties_out_00_yn) annotation(Line(points = {{-34.7, -85.7}, {-34.7, -90.7}, {-30, -90.7}, {-30, -120}, {-35, -120}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_00.surface_properties_out_xn, surface_properties_out_00_xn) annotation(Line(points = {{-45, -75.3}, {-50, -75.3}, {-95, -75.3}, {-95, -75}, {-100, -75}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_00.thermal_connector_out_zp_multi, thermal_connector_opt_prop_out_outer_zp00) annotation(Line(points = {{-40, -85.7}, {-40, -90.7}, {-40, -155}, {-95, -155}, {-100, -155}}, thickness = 0.0625));
  connect(Panel_BB_3x2_10.thermal_connector_inner_zn_multi, thermal_connector_opt_prop_out_inner_zn10) annotation(Line(points = {{50.7, -70}, {55.7, -70}, {95, -70}, {95, 50}, {100, 50}}, thickness = 0.0625));
  connect(Panel_BB_3x2_10.surface_properties_out_yn, surface_properties_out_10_yn) annotation(Line(points = {{40.3, -85.7}, {40.3, -90.7}, {45, -90.7}, {45, -120}, {40, -120}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_10.surface_properties_out_xp, surface_properties_out_10_xp) annotation(Line(points = {{50.7, -75.3}, {55.7, -75.3}, {115, -75.3}, {115, -75}, {120, -75}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_10.thermal_connector_out_zp_multi, thermal_connector_opt_prop_out_outer_zp10) annotation(Line(points = {{35, -85.7}, {35, -90.7}, {35, -155}, {-70, -155}, {-75, -155}}, thickness = 0.0625));
  connect(Panel_BB_3x2_01.thermal_connector_inner_zn_multi, thermal_connector_opt_prop_out_inner_zn01) annotation(Line(points = {{-24.3, 0}, {-19.3, 0}, {70, 0}, {70, 75}, {75, 75}}, thickness = 0.0625));
  connect(Panel_BB_3x2_01.surface_properties_out_xn, surface_properties_out_01_xn) annotation(Line(points = {{-45, -5.3}, {-50, -5.3}, {-95, -5.3}, {-95, -5}, {-100, -5}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_01.thermal_connector_out_zp_multi, thermal_connector_opt_prop_out_outer_zp01) annotation(Line(points = {{-40, -15.7}, {-40, -20.7}, {-40, -130}, {-95, -130}, {-100, -130}}, thickness = 0.0625));
  connect(Panel_BB_3x2_11.thermal_connector_inner_zn_multi, thermal_connector_opt_prop_out_inner_zn11) annotation(Line(points = {{50.7, 0}, {55.7, 0}, {95, 0}, {95, 75}, {100, 75}}, thickness = 0.0625));
  connect(Panel_BB_3x2_11.surface_properties_out_xp, surface_properties_out_11_xp) annotation(Line(points = {{50.7, -5.3}, {55.7, -5.3}, {115, -5.3}, {115, -5}, {120, -5}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_11.thermal_connector_out_zp_multi, thermal_connector_opt_prop_out_outer_zp11) annotation(Line(points = {{35, -15.7}, {35, -20.7}, {35, -130}, {-70, -130}, {-75, -130}}, thickness = 0.0625));
  connect(thermal_conductor_A_00_10.surface_properties2, Panel_BB_3x2_10.surface_properties_out_xn) annotation(Line(points = {{15, -75}, {20, -75}, {25, -75}, {25, -75.3}, {30, -75.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_00_10.surface_properties1, Panel_BB_3x2_00.surface_properties_out_xp) annotation(Line(points = {{-5, -75}, {-10, -75}, {-19.3, -75}, {-19.3, -75.3}, {-24.3, -75.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_01.surface_properties_out_yn, thermal_conductor_A_00_01.surface_properties1) annotation(Line(points = {{-34.7, -15.7}, {-34.7, -20.7}, {-34.7, -25}, {-35, -25}, {-35, -30}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_00_01.surface_properties2, Panel_BB_3x2_00.surface_properties_out_yp) annotation(Line(points = {{-35, -50}, {-35, -55}, {-35, -60}, {-34.7, -60}, {-34.7, -65}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_11.surface_properties_out_yn, thermal_conductor_A_10_11.surface_properties1) annotation(Line(points = {{40.3, -15.7}, {40.3, -20.7}, {40.3, -25}, {40, -25}, {40, -30}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_10_11.surface_properties2, Panel_BB_3x2_10.surface_properties_out_yp) annotation(Line(points = {{40, -50}, {40, -55}, {40, -60}, {40.3, -60}, {40.3, -65}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_01_11.surface_properties2, Panel_BB_3x2_11.surface_properties_out_xn) annotation(Line(points = {{10, -5}, {15, -5}, {25, -5}, {25, -5.3}, {30, -5.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_01_11.surface_properties1, Panel_BB_3x2_01.surface_properties_out_xp) annotation(Line(points = {{-10, -5}, {-15, -5}, {-19.3, -5}, {-19.3, -5.3}, {-24.3, -5.3}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_01.surface_properties_out_yp, thermal_conductor_A_01_02.surface_properties2) annotation(Line(points = {{-34.7, 5}, {-34.7, 10}, {-35, 10}, {-35, 15}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_11.surface_properties_out_yp, thermal_conductor_A_11_12.surface_properties2) annotation(Line(points = {{40.3, 5}, {40.3, 10}, {40, 10}, {40, 15}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_02.surface_properties_out_yn, thermal_conductor_A_01_02.surface_properties1) annotation(Line(points = {{-34.7, 44.3}, {-34.7, 39.3}, {-34.7, 40}, {-35, 40}, {-35, 35}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_12.surface_properties_out_yn, thermal_conductor_A_11_12.surface_properties1) annotation(Line(points = {{40.3, 44.3}, {40.3, 39.3}, {40.3, 40}, {40, 40}, {40, 35}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_02_12.surface_properties1, Panel_BB_3x2_02.surface_properties_out_xp) annotation(Line(points = {{-10, 55}, {-15, 55}, {-19.3, 55}, {-19.3, 54.7}, {-24.3, 54.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(thermal_conductor_A_02_12.surface_properties2, Panel_BB_3x2_12.surface_properties_out_xn) annotation(Line(points = {{10, 55}, {15, 55}, {25, 55}, {25, 54.7}, {30, 54.7}}, color = {255, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_02.surface_properties_out_xn, surface_properties_out_02_xn) annotation(Line(points = {{-45, 54.7}, {-50, 54.7}, {-95, 54.7}, {-95, 55}, {-100, 55}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_12.surface_properties_out_xp, surface_properties_out_12_xp2) annotation(Line(points = {{50.7, 54.7}, {55.7, 54.7}, {115, 54.7}, {115, 55}, {120, 55}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_02.surface_properties_out_yp, surface_properties_out_02_yp) annotation(Line(points = {{-34.7, 65}, {-34.7, 70}, {-30, 70}, {-30, 100}, {-35, 100}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_12.surface_properties_out_yp, surface_properties_out_12_yp) annotation(Line(points = {{40.3, 65}, {40.3, 70}, {45, 70}, {45, 100}, {40, 100}}, color = {0, 0, 0}, thickness = 0.0625));
  connect(Panel_BB_3x2_02.thermal_connector_out_zp_multi, thermal_connector_opt_prop_out_outer_zp02) annotation(Line(points = {{-40, 44.3}, {-40, 39.3}, {-40, -105}, {-95, -105}, {-100, -105}}, thickness = 0.0625));
  connect(Panel_BB_3x2_12.thermal_connector_out_zp_multi, thermal_connector_opt_prop_out_outer_zp12) annotation(Line(points = {{35, 44.3}, {35, 39.3}, {35, -105}, {-70, -105}, {-75, -105}}, thickness = 0.0625));
  connect(Panel_BB_3x2_12.thermal_connector_inner_zn_multi, thermal_connector_opt_prop_out_inner_zn12) annotation(Line(points = {{50.7, 60}, {55.7, 60}, {95, 60}, {95, 100}, {100, 100}}, thickness = 0.0625));
  connect(Panel_BB_3x2_02.thermal_connector_inner_zn_multi, thermal_connector_opt_prop_out_inner_zn02) annotation(Line(points = {{-24.3, 60}, {-19.3, 60}, {70, 60}, {70, 100}, {75, 100}}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-200.3, 101.3}, {6.3, -105.3}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {210, 180, 140}, fillPattern = FillPattern.Solid, extent = {{-29.3, -72}, {-166, 68}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{-71.7, -29.7}, {-125, 23.7}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-101.7, -1.3}, {-95, -8}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-199.6, -92.40000000000001}, {7, -299}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {210, 180, 140}, fillPattern = FillPattern.Solid, extent = {{-28.6, -265.7}, {-165.3, -125.7}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{-71, -223.4}, {-124.3, -170}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-101, -195}, {-94.3, -201.7}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-7.6, 101.6}, {199, -105}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {210, 180, 140}, fillPattern = FillPattern.Solid, extent = {{163.4, -71.7}, {26.7, 68.3}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{121, -29.4}, {67.7, 24}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{91, -1}, {97.7, -7.7}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-7.6, -92.40000000000001}, {199, -299}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {210, 180, 140}, fillPattern = FillPattern.Solid, extent = {{163.4, -265.7}, {26.7, -125.7}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{121, -223.4}, {67.7, -170}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{91, -195}, {97.7, -201.7}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-199.6, 299.6}, {7, 93}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {210, 180, 140}, fillPattern = FillPattern.Solid, extent = {{-28.6, 126.3}, {-165.3, 266.3}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{-71, 168.6}, {-124.3, 222}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-101, 197}, {-94.3, 190.3}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-6.9, 299.9}, {199.7, 93.3}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {210, 180, 140}, fillPattern = FillPattern.Solid, extent = {{164.1, 126.6}, {27.4, 266.6}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{121.7, 168.9}, {68.40000000000001, 222.3}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{91.7, 197.3}, {98.40000000000001, 190.6}})}), experiment(StopTime = 1, StartTime = 0));
end Panel_3x2_opt_prop;