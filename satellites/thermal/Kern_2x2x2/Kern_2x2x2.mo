model Kern_2x2x2 "Kern_2x2x2.mo"
<<<<<<< HEAD
  // CP: 65001
  // SimulationX Version: 3.6.5.34033 x64
  Modelica.Blocks.Tables.CombiTable1Ds Power_Verosim(tableOnFile = true, tableName = "geo_simx", fileName = "/home/sim/ibosssim/satellites/thermal/Kern_2x2x2/geo_simx.txt", verboseRead = true, columns = 2:103, smoothness = .Modelica.Blocks.Types.Smoothness.ConstantSegments) annotation(Placement(transformation(extent = {{-100, 80}, {-80, 100}})));
  Modelica.Blocks.Sources.Clock clock1 annotation(Placement(transformation(extent = {{-135, 80}, {-115, 100}})));
  iboss.iboss_thermal.buildingblocks.BB_Tank_2x2x2 bb_tank_2x2x21(propellant = false) annotation(Placement(transformation(origin = {220, -120}, extent = {{-50, -45}, {10, 10}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_n110 annotation(Placement(transformation(extent = {{-20, -116}, {1, -95}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_n100 annotation(Placement(transformation(extent = {{-20, -181}, {1, -160}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_xn_n111 annotation(Placement(transformation(extent = {{-95, -121}, {-74, -100}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_xn_n101 annotation(Placement(transformation(extent = {{-95, -181}, {-74, -160}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_n111_011 annotation(Placement(transformation(extent = {{20, -120}, {40, -100}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_n101_001 annotation(Placement(transformation(extent = {{20, -175}, {40, -155}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_n110_010 annotation(Placement(transformation(extent = {{50, -115}, {70, -95}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_n100_000 annotation(Placement(transformation(extent = {{50, -170}, {70, -150}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_xn_00_01 annotation(Placement(transformation(origin = {-85, -140}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_xn_10_11 annotation(Placement(transformation(origin = {-5, -140}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_xn_01_11 annotation(Placement(transformation(extent = {{-55, -115}, {-35, -95}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_xn_00_10 annotation(Placement(transformation(extent = {{-55, -180}, {-35, -160}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n111_xn annotation(Placement(transformation(extent = {{-130, -105}, {-110, -85}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n111_yp annotation(Placement(transformation(origin = {-85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n111_zp annotation(Placement(transformation(extent = {{-130, -140}, {-110, -120}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n101_xn annotation(Placement(transformation(extent = {{-130, -180}, {-110, -160}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n101_zp annotation(Placement(transformation(extent = {{-130, -210}, {-110, -190}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n101_yn annotation(Placement(transformation(origin = {-80, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n110_xn annotation(Placement(transformation(extent = {{-55, -90}, {-35, -70}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n110_yp annotation(Placement(transformation(origin = {-10, -75}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n110_zn annotation(Placement(transformation(origin = {30, -85}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n100_xn annotation(Placement(transformation(extent = {{-55, -205}, {-35, -185}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n100_yn annotation(Placement(transformation(origin = {-10, -205}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n100_zn annotation(Placement(transformation(origin = {25, -140}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_1n10 annotation(Placement(transformation(extent = {{185, -311}, {206, -290}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_1n11 annotation(Placement(transformation(extent = {{185, -376}, {206, -355}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_0n10 annotation(Placement(transformation(extent = {{110, -316}, {131, -295}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_0n11 annotation(Placement(transformation(extent = {{110, -381}, {131, -360}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_0n10_000 annotation(Placement(transformation(origin = {125, -190}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.BB_connector bB_connector_0n11_001 annotation(Placement(transformation(origin = {115, -230}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.BB_connector bB_connector_1n10_100 annotation(Placement(transformation(origin = {185, -190}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.BB_connector bB_connector_1n11_101 annotation(Placement(transformation(origin = {175, -230}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.BB_connector bB_connector_zp_00_01 annotation(Placement(transformation(origin = {120, -335}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_zp_10_11 annotation(Placement(transformation(origin = {200, -335}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_zp_01_11 annotation(Placement(transformation(extent = {{150, -310}, {170, -290}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_zp_00_10 annotation(Placement(transformation(extent = {{150, -375}, {170, -355}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n10_xn annotation(Placement(transformation(extent = {{75, -310}, {95, -290}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n10_zn annotation(Placement(transformation(origin = {140, -275}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n10_yn annotation(Placement(transformation(origin = {150, -330}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n11_xn annotation(Placement(transformation(extent = {{75, -375}, {95, -355}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n11_zp annotation(Placement(transformation(extent = {{75, -400}, {95, -380}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n11_yn annotation(Placement(transformation(origin = {125, -405}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n10_zn annotation(Placement(transformation(origin = {215, -265}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n10_xp annotation(Placement(transformation(origin = {240, -295}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n10_yn annotation(Placement(transformation(origin = {225, -320}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n11_zp annotation(Placement(transformation(extent = {{155, -405}, {175, -385}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n11_yn annotation(Placement(transformation(origin = {200, -400}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n11_xp annotation(Placement(transformation(origin = {235, -365}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_211 annotation(Placement(transformation(extent = {{375, -111}, {396, -90}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_201 annotation(Placement(transformation(extent = {{375, -181}, {396, -160}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_210 annotation(Placement(transformation(extent = {{445, -111}, {466, -90}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_200 annotation(Placement(transformation(extent = {{445, -176}, {466, -155}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_210_110 annotation(Placement(transformation(origin = {270, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.BB_connector bB_connector_200_100 annotation(Placement(transformation(origin = {270, -145}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.BB_connector bB_connector_211_111 annotation(Placement(transformation(origin = {305, -95}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.BB_connector bB_connector_201_101 annotation(Placement(transformation(origin = {310, -150}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.BB_connector bB_connector_xp_00_01 annotation(Placement(transformation(origin = {450, -135}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_xp_10_11 annotation(Placement(transformation(origin = {385, -135}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_xp_01_11 annotation(Placement(transformation(extent = {{410, -100}, {430, -80}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_xp_00_10 annotation(Placement(transformation(extent = {{415, -175}, {435, -155}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_210_xp annotation(Placement(transformation(origin = {495, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_210_yp annotation(Placement(transformation(origin = {455, -55}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_210_zn annotation(Placement(transformation(origin = {490, -65}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_201_zp annotation(Placement(transformation(extent = {{335, -195}, {355, -175}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_201_yn annotation(Placement(transformation(origin = {385, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_201_xp annotation(Placement(transformation(origin = {410, -195}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_211_xp annotation(Placement(transformation(origin = {415, -125}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_211_yp annotation(Placement(transformation(origin = {390, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_211_zp annotation(Placement(transformation(extent = {{340, -125}, {360, -105}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_200_yn annotation(Placement(transformation(origin = {455, -200}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_200_xp annotation(Placement(transformation(origin = {495, -175}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_200_zn annotation(Placement(transformation(origin = {495, -145}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_000_zn annotation(Placement(transformation(extent = {{355, 5}, {375, 25}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_100_zn annotation(Placement(transformation(extent = {{385, 5}, {405, 25}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_010_zn annotation(Placement(transformation(extent = {{415, 5}, {435, 25}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_110_zn annotation(Placement(transformation(extent = {{445, 5}, {465, 25}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_001_zp annotation(Placement(transformation(extent = {{-80, -340}, {-60, -320}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_101_zp annotation(Placement(transformation(extent = {{-50, -340}, {-30, -320}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_011_zp annotation(Placement(transformation(extent = {{-20, -340}, {0, -320}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_111_zp annotation(Placement(transformation(extent = {{10, -340}, {30, -320}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_121 annotation(Placement(transformation(extent = {{215, -11}, {236, 10}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_120 annotation(Placement(transformation(extent = {{215, 54}, {236, 75}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_021 annotation(Placement(transformation(extent = {{145, -16}, {166, 5}})));
  iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_020 annotation(Placement(transformation(extent = {{145, 49}, {166, 70}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_021_011 annotation(Placement(transformation(origin = {150, -85}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_020_010 annotation(Placement(transformation(origin = {160, -60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_121_111 annotation(Placement(transformation(origin = {195, -85}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_120_110 annotation(Placement(transformation(origin = {210, -60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_zn_00_01 annotation(Placement(transformation(origin = {155, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_zn_10_11 annotation(Placement(transformation(origin = {230, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.BB_connector bB_connector_zn_01_11 annotation(Placement(transformation(extent = {{180, 55}, {200, 75}})));
  iboss.iboss_thermal.components.BB_connector bB_connector_zn_00_10 annotation(Placement(transformation(extent = {{180, -10}, {200, 10}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_020_yp annotation(Placement(transformation(origin = {150, 90}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_020_zn annotation(Placement(transformation(origin = {175, 90}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_020_xn annotation(Placement(transformation(extent = {{110, 50}, {130, 70}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_021_yp annotation(Placement(transformation(extent = {{105, 0}, {125, 20}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_021_xn annotation(Placement(transformation(extent = {{105, -25}, {125, -5}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_021_zp annotation(Placement(transformation(extent = {{105, -50}, {125, -30}})));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_120_yp annotation(Placement(transformation(origin = {225, 95}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_120_zn annotation(Placement(transformation(origin = {255, 95}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_120_xp annotation(Placement(transformation(origin = {265, 65}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_121_zp annotation(Placement(transformation(origin = {215, -35}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB121_yp annotation(Placement(transformation(origin = {265, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_121_xp annotation(Placement(transformation(origin = {270, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain Area_reduction_zp(k = 0.25) annotation(Placement(transformation(extent = {{-120, -325}, {-100, -305}})));
  Modelica.Blocks.Math.Gain Area_reduction_zn(k = 0.25) annotation(Placement(transformation(extent = {{310, 25}, {330, 45}})));
equation
  connect(bB_connector_xn_10_11.thermal_connector_opt_prop_in2, BB_n100.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{-5.7, -147}, {-5.7, -152}, {-5.7, -155.3}, {-8, -155.3}, {-8, -160.3}}, thickness = 0.0625));
  connect(BB_n100.thermal_connector_opt_prop_out_zp, bB_connector_xn_00_10.thermal_connector_opt_prop_in2) annotation(Line(points = {{-19.7, -182.3}, {-24.7, -182.3}, {-33, -182.3}, {-33, -170.7}, {-38, -170.7}}, thickness = 0.0625));
  connect(BB_n110.thermal_connector_opt_prop_out_zp, bB_connector_xn_01_11.thermal_connector_opt_prop_in2) annotation(Line(points = {{-19.7, -117.3}, {-24.7, -117.3}, {-33, -117.3}, {-33, -105.7}, {-38, -105.7}}, thickness = 0.0625));
  connect(BB_n110.thermal_connector_opt_prop_out_yn, bB_connector_xn_10_11.thermal_connector_opt_prop_in1) annotation(Line(points = {{-6.3, -118.3}, {-6.3, -123.3}, {-6.3, -128.3}, {-5.3, -128.3}, {-5.3, -133.3}}, thickness = 0.0625));
  connect(bB_connector_xn_01_11.thermal_connector_opt_prop_in1, BB_xn_n111.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{-51.3, -105.7}, {-56.3, -105.7}, {-56.3, -96.3}, {-67.3, -96.3}, {-67.3, -101.3}}, thickness = 0.0625));
  connect(bB_connector_xn_00_01.thermal_connector_opt_prop_in1, BB_xn_n111.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{-85.3, -133.3}, {-85.3, -128.3}, {-81.3, -128.3}, {-81.3, -123.3}}, thickness = 0.0625));
  connect(bB_connector_xn_00_01.thermal_connector_opt_prop_in2, BB_xn_n101.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{-85.7, -147}, {-85.7, -152}, {-85.7, -155.3}, {-83, -155.3}, {-83, -160.3}}, thickness = 0.0625));
  connect(bB_connector_xn_00_10.thermal_connector_opt_prop_in1, BB_xn_n101.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{-51.3, -170.7}, {-56.3, -170.7}, {-56.3, -156.3}, {-67.3, -156.3}, {-67.3, -161.3}}, thickness = 0.0625));
  connect(bB_connector_xp_00_01.thermal_connector_opt_prop_in1, BB_210.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{449.7, -128.3}, {449.7, -123.3}, {449.7, -118.3}, {458.7, -118.3}, {458.7, -113.3}}, thickness = 0.0625));
  connect(BB_211.thermal_connector_opt_prop_out_yn, bB_connector_xp_10_11.thermal_connector_opt_prop_in1) annotation(Line(points = {{388.7, -113.3}, {388.7, -118.3}, {388.7, -123.3}, {384.7, -123.3}, {384.7, -128.3}}, thickness = 0.0625));
  connect(bB_connector_xp_10_11.thermal_connector_opt_prop_in2, BB_201.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{384.3, -142}, {384.3, -147}, {384.3, -155.3}, {387, -155.3}, {387, -160.3}}, thickness = 0.0625));
  connect(bB_connector_xp_00_01.thermal_connector_opt_prop_in2, BB_200.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{449.3, -142}, {449.3, -147}, {449.3, -150.3}, {457, -150.3}, {457, -155.3}}, thickness = 0.0625));
  connect(bB_connector_n101_001.thermal_connector_opt_prop_in1, BB_xn_n101.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{23.7, -165.7}, {18.7, -165.7}, {-60, -165.7}, {-60, -171}, {-65, -171}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_001xn, bB_connector_n101_001.thermal_connector_opt_prop_in2) annotation(Line(points = {{170, -132}, {165, -132}, {42, -132}, {42, -165.7}, {37, -165.7}}, thickness = 0.0625));
  connect(bB_connector_n100_000.thermal_connector_opt_prop_in1, BB_n100.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{53.7, -160.7}, {48.7, -160.7}, {15, -160.7}, {15, -171}, {10, -171}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_000xn, bB_connector_n100_000.thermal_connector_opt_prop_in2) annotation(Line(points = {{170, -143}, {165, -143}, {72, -143}, {72, -160.7}, {67, -160.7}}, thickness = 0.0625));
  connect(bB_connector_n111_011.thermal_connector_opt_prop_in1, BB_xn_n111.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{23.7, -110.7}, {18.7, -110.7}, {-60, -110.7}, {-60, -111}, {-65, -111}}, thickness = 0.0625));
  connect(bB_connector_n111_011.thermal_connector_opt_prop_in2, bb_tank_2x2x21.thermal_connector_opt_prop_out_011xn) annotation(Line(points = {{37, -110.7}, {42, -110.7}, {165, -110.7}, {165, -126.3}, {170, -126.3}}, thickness = 0.0625));
  connect(BB_n110.thermal_connector_opt_prop_out_xp, bB_connector_n110_010.thermal_connector_opt_prop_in1) annotation(Line(points = {{10, -106}, {15, -106}, {48.7, -106}, {48.7, -105.7}, {53.7, -105.7}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_010xn, bB_connector_n110_010.thermal_connector_opt_prop_in2) annotation(Line(points = {{170, -137.7}, {165, -137.7}, {72, -137.7}, {72, -105.7}, {67, -105.7}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_110xp, bB_connector_210_110.thermal_connector_opt_prop_in2) annotation(Line(points = {{230, -137.7}, {235, -137.7}, {258, -137.7}, {258, -99.3}, {263, -99.3}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_111xp, bB_connector_211_111.thermal_connector_opt_prop_in2) annotation(Line(points = {{230, -148.7}, {235, -148.7}, {293, -148.7}, {293, -94.3}, {298, -94.3}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_101xp, bB_connector_201_101.thermal_connector_opt_prop_in2) annotation(Line(points = {{230, -143}, {235, -143}, {298, -143}, {298, -149.3}, {303, -149.3}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_100xp, bB_connector_200_100.thermal_connector_opt_prop_in2) annotation(Line(points = {{230, -132}, {235, -132}, {258, -132}, {258, -144.3}, {263, -144.3}}, thickness = 0.0625));
  connect(bB_connector_121_111.thermal_connector_opt_prop_in2, bb_tank_2x2x21.thermal_connector_opt_prop_out_111yp) annotation(Line(points = {{194.3, -92}, {194.3, -97}, {194.3, -105}, {188, -105}, {188, -110}}, thickness = 0.0625));
  connect(bB_connector_021_011.thermal_connector_opt_prop_in2, bb_tank_2x2x21.thermal_connector_opt_prop_out_011yp) annotation(Line(points = {{149.3, -92}, {149.3, -97}, {149.3, -105}, {194, -105}, {194, -110}}, thickness = 0.0625));
  connect(bB_connector_120_110.thermal_connector_opt_prop_in2, bb_tank_2x2x21.thermal_connector_opt_prop_out_110yp) annotation(Line(points = {{209.3, -67}, {209.3, -72}, {209.3, -105}, {200, -105}, {200, -110}}, thickness = 0.0625));
  connect(bB_connector_020_010.thermal_connector_opt_prop_in2, bb_tank_2x2x21.thermal_connector_opt_prop_out_010yp) annotation(Line(points = {{159.3, -67}, {159.3, -72}, {159.3, -105}, {206, -105}, {206, -110}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_101yn, bB_connector_1n11_101.thermal_connector_opt_prop_in2) annotation(Line(points = {{212, -165}, {212, -170}, {212, -218}, {175.7, -218}, {175.7, -223}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_000yn, bB_connector_0n10_000.thermal_connector_opt_prop_in2) annotation(Line(points = {{194, -165}, {194, -170}, {194, -178}, {125.7, -178}, {125.7, -183}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_100yn, bB_connector_1n10_100.thermal_connector_opt_prop_in2) annotation(Line(points = {{200, -165}, {200, -170}, {200, -178}, {185.7, -178}, {185.7, -183}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_001yn, bB_connector_0n11_001.thermal_connector_opt_prop_in2) annotation(Line(points = {{206, -165}, {206, -170}, {206, -218}, {115.7, -218}, {115.7, -223}}, thickness = 0.0625));
  connect(bB_connector_210_110.thermal_connector_opt_prop_in1, BB_210.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{276.7, -99.7}, {281.7, -99.7}, {436, -99.7}, {436, -100.7}, {441, -100.7}}, thickness = 0.0625));
  connect(bB_connector_211_111.thermal_connector_opt_prop_in1, BB_211.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{311.7, -94.7}, {316.7, -94.7}, {366, -94.7}, {366, -100.7}, {371, -100.7}}, thickness = 0.0625));
  connect(BB_210.thermal_connector_opt_prop_out_zp, bB_connector_xp_01_11.thermal_connector_opt_prop_in2) annotation(Line(points = {{445.3, -112.3}, {440.3, -112.3}, {432, -112.3}, {432, -90.7}, {427, -90.7}}, thickness = 0.0625));
  connect(BB_211.thermal_connector_opt_prop_out_zn, bB_connector_xp_01_11.thermal_connector_opt_prop_in1) annotation(Line(points = {{402.7, -91.3}, {402.7, -86.3}, {405.7, -86.3}, {405.7, -90.7}, {408.7, -90.7}, {413.7, -90.7}}, thickness = 0.0625));
  connect(BB_201.thermal_connector_opt_prop_out_zn, bB_connector_xp_00_10.thermal_connector_opt_prop_in1) annotation(Line(points = {{402.7, -161.3}, {402.7, -156.3}, {408, -156.3}, {408, -165.7}, {413.7, -165.7}, {418.7, -165.7}}, thickness = 0.0625));
  connect(bB_connector_xp_00_10.thermal_connector_opt_prop_in2, BB_200.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{432, -165.7}, {437, -165.7}, {440.3, -165.7}, {440.3, -177.3}, {445.3, -177.3}}, thickness = 0.0625));
  connect(bB_connector_200_100.thermal_connector_opt_prop_in1, BB_200.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{276.7, -144.7}, {281.7, -144.7}, {436, -144.7}, {436, -165.7}, {441, -165.7}}, thickness = 0.0625));
  connect(bB_connector_201_101.thermal_connector_opt_prop_in1, BB_201.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{316.7, -149.7}, {321.7, -149.7}, {366, -149.7}, {366, -170.7}, {371, -170.7}}, thickness = 0.0625));
  connect(bB_connector_0n11_001.thermal_connector_opt_prop_in1, BB_0n11.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{115.3, -236.7}, {115.3, -241.7}, {115.3, -355.3}, {122, -355.3}, {122, -360.3}}, thickness = 0.0625));
  connect(bB_connector_0n10_000.thermal_connector_opt_prop_in1, BB_0n10.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{125.3, -196.7}, {125.3, -201.7}, {125.3, -290.3}, {122, -290.3}, {122, -295.3}}, thickness = 0.0625));
  connect(bB_connector_1n11_101.thermal_connector_opt_prop_in1, BB_1n11.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{175.3, -236.7}, {175.3, -241.7}, {175.3, -350.3}, {197, -350.3}, {197, -355.3}}, thickness = 0.0625));
  connect(bB_connector_1n10_100.thermal_connector_opt_prop_in1, BB_1n10.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{185.3, -196.7}, {185.3, -201.7}, {185.3, -285.3}, {197, -285.3}, {197, -290.3}}, thickness = 0.0625));
  connect(BB_1n11.thermal_connector_opt_prop_out_zn, bB_connector_zp_10_11.thermal_connector_opt_prop_in2) annotation(Line(points = {{212.7, -356.3}, {212.7, -351.3}, {212.7, -347}, {199.3, -347}, {199.3, -342}}, thickness = 0.0625));
  connect(bB_connector_zp_10_11.thermal_connector_opt_prop_in1, BB_1n10.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{199.7, -328.3}, {199.7, -323.3}, {180.3, -323.3}, {180.3, -312.3}, {185.3, -312.3}}, thickness = 0.0625));
  connect(BB_0n11.thermal_connector_opt_prop_out_zn, bB_connector_zp_00_01.thermal_connector_opt_prop_in2) annotation(Line(points = {{137.7, -361.3}, {137.7, -356.3}, {137.7, -347}, {119.3, -347}, {119.3, -342}}, thickness = 0.0625));
  connect(bB_connector_zp_00_01.thermal_connector_opt_prop_in1, BB_0n10.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{119.7, -328.3}, {119.7, -323.3}, {105.3, -323.3}, {105.3, -317.3}, {110.3, -317.3}}, thickness = 0.0625));
  connect(BB_0n11.thermal_connector_opt_prop_out_xp, bB_connector_zp_00_10.thermal_connector_opt_prop_in1) annotation(Line(points = {{140, -371}, {145, -371}, {148.7, -371}, {148.7, -365.7}, {153.7, -365.7}}, thickness = 0.0625));
  connect(bB_connector_zp_00_10.thermal_connector_opt_prop_in2, BB_1n11.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{167, -365.7}, {172, -365.7}, {176, -365.7}, {181, -365.7}}, thickness = 0.0625));
  connect(BB_0n10.thermal_connector_opt_prop_out_xp, bB_connector_zp_01_11.thermal_connector_opt_prop_in1) annotation(Line(points = {{140, -306}, {145, -306}, {148.7, -306}, {148.7, -300.7}, {153.7, -300.7}}, thickness = 0.0625));
  connect(bB_connector_zp_01_11.thermal_connector_opt_prop_in2, BB_1n10.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{167, -300.7}, {172, -300.7}, {176, -300.7}, {181, -300.7}}, thickness = 0.0625));
  connect(bB_connector_120_110.thermal_connector_opt_prop_in1, BB_120.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{209.7, -53.3}, {209.7, -48.3}, {209.7, 46.7}, {228.7, 46.7}, {228.7, 51.7}}, thickness = 0.0625));
  connect(bB_connector_020_010.thermal_connector_opt_prop_in1, BB_020.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{159.7, -53.3}, {159.7, -48.3}, {159.7, 41.7}, {158.7, 41.7}, {158.7, 46.7}}, thickness = 0.0625));
  connect(bB_connector_021_011.thermal_connector_opt_prop_in1, BB_021.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{149.7, -78.3}, {149.7, -73.3}, {149.7, -23.3}, {158.7, -23.3}, {158.7, -18.3}}, thickness = 0.0625));
  connect(bB_connector_121_111.thermal_connector_opt_prop_in1, BB_121.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{194.7, -78.3}, {194.7, -73.3}, {194.7, -18.3}, {228.7, -18.3}, {228.7, -13.3}}, thickness = 0.0625));
  connect(BB_021.thermal_connector_opt_prop_out_zn, bB_connector_zn_00_01.thermal_connector_opt_prop_in2) annotation(Line(points = {{172.7, 3.7}, {172.7, 8.699999999999999}, {172.7, 18}, {154.3, 18}, {154.3, 23}}, thickness = 0.0625));
  connect(bB_connector_zn_00_01.thermal_connector_opt_prop_in1, BB_020.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{154.7, 36.7}, {154.7, 41.7}, {140.3, 41.7}, {140.3, 47.7}, {145.3, 47.7}}, thickness = 0.0625));
  connect(BB_121.thermal_connector_opt_prop_out_zn, bB_connector_zn_10_11.thermal_connector_opt_prop_in2) annotation(Line(points = {{242.7, 8.699999999999999}, {242.7, 13.7}, {242.7, 18}, {229.3, 18}, {229.3, 23}}, thickness = 0.0625));
  connect(bB_connector_zn_10_11.thermal_connector_opt_prop_in1, BB_120.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{229.7, 36.7}, {229.7, 41.7}, {210.3, 41.7}, {210.3, 52.7}, {215.3, 52.7}}, thickness = 0.0625));
  connect(BB_020.thermal_connector_opt_prop_out_xp, bB_connector_zn_01_11.thermal_connector_opt_prop_in1) annotation(Line(points = {{175, 59}, {180, 59}, {180, 61.7}, {178.7, 61.7}, {178.7, 64.3}, {183.7, 64.3}}, thickness = 0.0625));
  connect(bB_connector_zn_01_11.thermal_connector_opt_prop_in2, BB_120.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{197, 64.3}, {202, 64.3}, {206, 64.3}, {211, 64.3}}, thickness = 0.0625));
  connect(BB_021.thermal_connector_opt_prop_out_xp, bB_connector_zn_00_10.thermal_connector_opt_prop_in1) annotation(Line(points = {{175, -6}, {180, -6}, {180, -3.3}, {178.7, -3.3}, {178.7, -0.7}, {183.7, -0.7}}, thickness = 0.0625));
  connect(bB_connector_zn_00_10.thermal_connector_opt_prop_in2, BB_121.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{197, -0.7}, {202, -0.7}, {206, -0.7}, {211, -0.7}}, thickness = 0.0625));
  connect(env_BB_020_xn.thermal_connector_opt_prop_in1, BB_020.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{130, 60}, {135, 60}, {136, 60}, {136, 59.3}, {141, 59.3}}, thickness = 0.0625));
  connect(env_BB_020_yp.thermal_connector_opt_prop_in1, BB_020.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{150, 80}, {150, 75}, {150, 74.7}, {157, 74.7}, {157, 69.7}}, thickness = 0.0625));
  connect(env_BB_020_zn.thermal_connector_opt_prop_in1, BB_020.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{175, 80}, {175, 75}, {175, 73.7}, {172.7, 73.7}, {172.7, 68.7}}, thickness = 0.0625));
  connect(env_BB_120_yp.thermal_connector_opt_prop_in1, BB_120.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{225, 85}, {225, 80}, {225, 79.7}, {227, 79.7}, {227, 74.7}}, thickness = 0.0625));
  connect(env_BB_120_zn.thermal_connector_opt_prop_in1, BB_120.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{255, 85}, {255, 80}, {255, 78.7}, {242.7, 78.7}, {242.7, 73.7}}, thickness = 0.0625));
  connect(env_BB_120_xp.thermal_connector_opt_prop_in1, BB_120.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{255, 65}, {250, 65}, {250, 64}, {245, 64}}, thickness = 0.0625));
  connect(env_BB121_yp.thermal_connector_opt_prop_in1, BB_121.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{255, 25}, {250, 25}, {227, 25}, {227, 14.7}, {227, 9.699999999999999}}, thickness = 0.0625));
  connect(env_BB_121_zp.thermal_connector_opt_prop_in1, BB_121.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{215, -25}, {215, -20}, {210.3, -20}, {210.3, -12.3}, {215.3, -12.3}}, thickness = 0.0625));
  connect(env_BB_121_xp.thermal_connector_opt_prop_in1, BB_121.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{260, 0}, {255, 0}, {250, 0}, {250, -1}, {245, -1}}, thickness = 0.0625));
  connect(env_BB_021_yp.thermal_connector_opt_prop_in1, BB_021.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{125, 10}, {130, 10}, {157, 10}, {157, 9.699999999999999}, {157, 4.7}}, thickness = 0.0625));
  connect(env_BB_021_xn.thermal_connector_opt_prop_in1, BB_021.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{125, -15}, {130, -15}, {136, -15}, {136, -5.7}, {141, -5.7}}, thickness = 0.0625));
  connect(env_BB_021_zp.thermal_connector_opt_prop_in1, BB_021.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{125, -40}, {130, -40}, {140.3, -40}, {140.3, -17.3}, {145.3, -17.3}}, thickness = 0.0625));
  connect(env_BB_n111_yp.thermal_connector_opt_prop_in1, BB_xn_n111.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{-85, -90}, {-85, -95}, {-85, -95.3}, {-83, -95.3}, {-83, -100.3}}, thickness = 0.0625));
  connect(BB_xn_n111.thermal_connector_opt_prop_out_xn, env_BB_n111_xn.thermal_connector_opt_prop_in1) annotation(Line(points = {{-99, -110.7}, {-104, -110.7}, {-105, -110.7}, {-105, -95}, {-110, -95}}, thickness = 0.0625));
  connect(env_BB_n111_zp.thermal_connector_opt_prop_in1, BB_xn_n111.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{-110, -130}, {-105, -130}, {-99.7, -130}, {-99.7, -122.3}, {-94.7, -122.3}}, thickness = 0.0625));
  connect(BB_xn_n101.thermal_connector_opt_prop_out_xn, env_BB_n101_xn.thermal_connector_opt_prop_in1) annotation(Line(points = {{-99, -170.7}, {-104, -170.7}, {-105, -170.7}, {-105, -170}, {-110, -170}}, thickness = 0.0625));
  connect(BB_xn_n101.thermal_connector_opt_prop_out_zp, env_BB_n101_zp.thermal_connector_opt_prop_in1) annotation(Line(points = {{-94.7, -182.3}, {-99.7, -182.3}, {-105, -182.3}, {-105, -200}, {-110, -200}}, thickness = 0.0625));
  connect(env_BB_n101_yn.thermal_connector_opt_prop_in1, BB_xn_n101.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{-80, -200}, {-80, -195}, {-80, -188.3}, {-81.3, -188.3}, {-81.3, -183.3}}, thickness = 0.0625));
  connect(env_BB_n100_xn.thermal_connector_opt_prop_in1, BB_n100.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{-35, -195}, {-30, -195}, {-29, -195}, {-29, -170.7}, {-24, -170.7}}, thickness = 0.0625));
  connect(env_BB_n100_yn.thermal_connector_opt_prop_in1, BB_n100.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{-10, -195}, {-10, -190}, {-10, -188.3}, {-6.3, -188.3}, {-6.3, -183.3}}, thickness = 0.0625));
  connect(env_BB_n100_zn.thermal_connector_opt_prop_in1, BB_n100.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{15, -140}, {10, -140}, {7.7, -140}, {7.7, -156.3}, {7.7, -161.3}}, thickness = 0.0625));
  connect(env_BB_n110_zn.thermal_connector_opt_prop_in1, BB_n110.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{20, -85}, {15, -85}, {7.7, -85}, {7.7, -91.3}, {7.7, -96.3}}, thickness = 0.0625));
  connect(env_BB_n110_yp.thermal_connector_opt_prop_in1, BB_n110.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{-10, -85}, {-10, -90}, {-10, -90.3}, {-8, -90.3}, {-8, -95.3}}, thickness = 0.0625));
  connect(env_BB_n110_xn.thermal_connector_opt_prop_in1, BB_n110.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{-35, -80}, {-30, -80}, {-29, -80}, {-29, -105.7}, {-24, -105.7}}, thickness = 0.0625));
  connect(env_BB_1n11_zp.thermal_connector_opt_prop_in1, BB_1n11.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{175, -395}, {180, -395}, {180.3, -395}, {180.3, -377.3}, {185.3, -377.3}}, thickness = 0.0625));
  connect(env_BB_1n11_yn.thermal_connector_opt_prop_in1, BB_1n11.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{200, -390}, {200, -385}, {200, -383.3}, {198.7, -383.3}, {198.7, -378.3}}, thickness = 0.0625));
  connect(env_BB_1n11_xp.thermal_connector_opt_prop_in1, BB_1n11.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{225, -365}, {220, -365}, {220, -366}, {215, -366}}, thickness = 0.0625));
  connect(env_BB_0n11_yn.thermal_connector_opt_prop_in1, BB_0n11.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{125, -395}, {125, -390}, {125, -388.3}, {123.7, -388.3}, {123.7, -383.3}}, thickness = 0.0625));
  connect(env_BB_0n11_xn.thermal_connector_opt_prop_in1, BB_0n11.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{95, -365}, {100, -365}, {101, -365}, {101, -370.7}, {106, -370.7}}, thickness = 0.0625));
  connect(env_BB_0n11_zp.thermal_connector_opt_prop_in1, BB_0n11.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{95, -390}, {100, -390}, {105.3, -390}, {105.3, -382.3}, {110.3, -382.3}}, thickness = 0.0625));
  connect(env_BB_1n10_zn.thermal_connector_opt_prop_in1, BB_1n10.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{215, -275}, {215, -280}, {215, -286.3}, {212.7, -286.3}, {212.7, -291.3}}, thickness = 0.0625));
  connect(env_BB_1n10_xp.thermal_connector_opt_prop_in1, BB_1n10.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{230, -295}, {225, -295}, {220, -295}, {220, -301}, {215, -301}}, thickness = 0.0625));
  connect(env_BB_1n10_yn.thermal_connector_opt_prop_in1, BB_1n10.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{215, -320}, {210, -320}, {198.7, -320}, {198.7, -318.3}, {198.7, -313.3}}, thickness = 0.0625));
  connect(env_BB_0n10_xn.thermal_connector_opt_prop_in1, BB_0n10.thermal_connector_opt_prop_out_xn) annotation(Line(points = {{95, -300}, {100, -300}, {101, -300}, {101, -305.7}, {106, -305.7}}, thickness = 0.0625));
  connect(env_BB_0n10_zn.thermal_connector_opt_prop_in1, BB_0n10.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{140, -285}, {140, -290}, {140, -291.3}, {137.7, -291.3}, {137.7, -296.3}}, thickness = 0.0625));
  connect(env_BB_0n10_yn.thermal_connector_opt_prop_in1, BB_0n10.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{140, -330}, {135, -330}, {123.7, -330}, {123.7, -323.3}, {123.7, -318.3}}, thickness = 0.0625));
  connect(env_BB_211_zp.thermal_connector_opt_prop_in1, BB_211.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{360, -115}, {365, -115}, {370.3, -115}, {370.3, -112.3}, {375.3, -112.3}}, thickness = 0.0625));
  connect(env_BB_211_yp.thermal_connector_opt_prop_in1, BB_211.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{390, -80}, {390, -85}, {390, -85.3}, {387, -85.3}, {387, -90.3}}, thickness = 0.0625));
  connect(env_BB_211_xp.thermal_connector_opt_prop_in1, BB_211.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{415, -115}, {415, -110}, {415, -101}, {410, -101}, {405, -101}}, thickness = 0.0625));
  connect(env_BB_210_xp.thermal_connector_opt_prop_in1, BB_210.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{485, -100}, {480, -100}, {480, -101}, {475, -101}}, thickness = 0.0625));
  connect(env_BB_210_zn.thermal_connector_opt_prop_in1, BB_210.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{490, -75}, {490, -80}, {490, -86.3}, {472.7, -86.3}, {472.7, -91.3}}, thickness = 0.0625));
  connect(env_BB_210_yp.thermal_connector_opt_prop_in1, BB_210.thermal_connector_opt_prop_out_yp) annotation(Line(points = {{455, -65}, {455, -70}, {455, -85.3}, {457, -85.3}, {457, -90.3}}, thickness = 0.0625));
  connect(env_BB_200_zn.thermal_connector_opt_prop_in1, BB_200.thermal_connector_opt_prop_out_zn) annotation(Line(points = {{485, -145}, {480, -145}, {472.7, -145}, {472.7, -151.3}, {472.7, -156.3}}, thickness = 0.0625));
  connect(env_BB_200_xp.thermal_connector_opt_prop_in1, BB_200.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{485, -175}, {480, -175}, {480, -166}, {475, -166}}, thickness = 0.0625));
  connect(env_BB_200_yn.thermal_connector_opt_prop_in1, BB_200.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{455, -190}, {455, -185}, {455, -183.3}, {458.7, -183.3}, {458.7, -178.3}}, thickness = 0.0625));
  connect(env_BB_201_xp.thermal_connector_opt_prop_in1, BB_201.thermal_connector_opt_prop_out_xp) annotation(Line(points = {{410, -185}, {410, -180}, {410, -171}, {405, -171}}, thickness = 0.0625));
  connect(env_BB_201_yn.thermal_connector_opt_prop_in1, BB_201.thermal_connector_opt_prop_out_yn) annotation(Line(points = {{385, -200}, {385, -195}, {385, -188.3}, {388.7, -188.3}, {388.7, -183.3}}, thickness = 0.0625));
  connect(env_BB_201_zp.thermal_connector_opt_prop_in1, BB_201.thermal_connector_opt_prop_out_zp) annotation(Line(points = {{355, -185}, {360, -185}, {370.3, -185}, {370.3, -182.3}, {375.3, -182.3}}, thickness = 0.0625));
  connect(Area_reduction_zp.y, env_BB_001_zp.u) annotation(Line(points = {{-99, -315}, {-94, -315}, {-85, -315}, {-85, -330}, {-80, -330}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Area_reduction_zp.y, env_BB_101_zp.u) annotation(Line(points = {{-99, -315}, {-94, -315}, {-55, -315}, {-55, -330}, {-50, -330}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Area_reduction_zp.y, env_BB_011_zp.u) annotation(Line(points = {{-99, -315}, {-94, -315}, {-25, -315}, {-25, -330}, {-20, -330}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Area_reduction_zp.y, env_BB_111_zp.u) annotation(Line(points = {{-99, -315}, {-94, -315}, {5, -315}, {5, -330}, {10, -330}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_111zp, env_BB_111_zp.thermal_connector_opt_prop_in1) annotation(Line(points = {{170, -154}, {165, -154}, {35, -154}, {35, -330}, {30, -330}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_011zp, env_BB_011_zp.thermal_connector_opt_prop_in1) annotation(Line(points = {{170, -159.7}, {165, -159.7}, {5, -159.7}, {5, -330}, {0, -330}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_101zp, env_BB_101_zp.thermal_connector_opt_prop_in1) annotation(Line(points = {{176, -165}, {176, -170}, {176, -330}, {-25, -330}, {-30, -330}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_001zp, env_BB_001_zp.thermal_connector_opt_prop_in1) annotation(Line(points = {{182, -165}, {182, -170}, {182, -330}, {-55, -330}, {-60, -330}}, thickness = 0.0625));
  connect(Area_reduction_zn.y, env_BB_110_zn.u) annotation(Line(points = {{331, 35}, {336, 35}, {440, 35}, {440, 15}, {445, 15}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Area_reduction_zn.y, env_BB_010_zn.u) annotation(Line(points = {{331, 35}, {336, 35}, {410, 35}, {410, 15}, {415, 15}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_110zn, env_BB_110_zn.thermal_connector_opt_prop_in1) annotation(Line(points = {{218, -110}, {218, -105}, {470, -105}, {470, 15}, {465, 15}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_010zn, env_BB_010_zn.thermal_connector_opt_prop_in1) annotation(Line(points = {{224, -110}, {224, -105}, {440, -105}, {440, 15}, {435, 15}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_100zn, env_BB_100_zn.thermal_connector_opt_prop_in1) annotation(Line(points = {{230, -115.3}, {235, -115.3}, {410, -115.3}, {410, 15}, {405, 15}}, thickness = 0.0625));
  connect(bb_tank_2x2x21.thermal_connector_opt_prop_out_000zn, env_BB_000_zn.thermal_connector_opt_prop_in1) annotation(Line(points = {{230, -121}, {235, -121}, {380, -121}, {380, 15}, {375, 15}}, thickness = 0.0625));
  connect(Area_reduction_zp.u, Power_Verosim.y[1]) annotation(Line(points = {{-122, -315}, {-127, -315}, {-127, -112.7}, {-74, -112.7}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Area_reduction_zn.u, Power_Verosim.y[1]) annotation(Line(points = {{308, 35}, {303, 35}, {-74, 35}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_201_zp.u, Power_Verosim.y[40]) annotation(Line(points = {{335, -185}, {330, -185}, {-74, -185}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_201_yn.u, Power_Verosim.y[41]) annotation(Line(points = {{385, -220}, {385, -225}, {155.7, -225}, {155.7, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_201_xp.u, Power_Verosim.y[42]) annotation(Line(points = {{410, -205}, {410, -210}, {168, -210}, {168, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_200_yn.u, Power_Verosim.y[43]) annotation(Line(points = {{455, -210}, {455, -215}, {190.7, -215}, {190.7, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_200_xp.u, Power_Verosim.y[44]) annotation(Line(points = {{505, -175}, {510, -175}, {510, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_200_zn.u, Power_Verosim.y[45]) annotation(Line(points = {{505, -145}, {510, -145}, {510, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_210_yp.u, Power_Verosim.y[37]) annotation(Line(points = {{455, -45}, {455, -40}, {455, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_210_zn.u, Power_Verosim.y[39]) annotation(Line(points = {{490, -55}, {490, -50}, {490, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_210_xp.u, Power_Verosim.y[38]) annotation(Line(points = {{505, -100}, {510, -100}, {510, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_211_xp.u, Power_Verosim.y[46]) annotation(Line(points = {{415, -135}, {415, -140}, {170.7, -140}, {170.7, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_211_yp.u, Power_Verosim.y[47]) annotation(Line(points = {{390, -60}, {390, -55}, {390, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_211_zp.u, Power_Verosim.y[48]) annotation(Line(points = {{340, -115}, {335, -115}, {-74, -115}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_0n10_yn.u, Power_Verosim.y[18]) annotation(Line(points = {{160, -330}, {165, -330}, {165, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_0n10_zn.u, Power_Verosim.y[16]) annotation(Line(points = {{140, -265}, {140, -260}, {140, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_0n10_xn.u, Power_Verosim.y[17]) annotation(Line(points = {{75, -300}, {70, -300}, {-74, -300}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_1n10_yn.u, Power_Verosim.y[15]) annotation(Line(points = {{235, -320}, {240, -320}, {240, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_1n10_xp.u, Power_Verosim.y[14]) annotation(Line(points = {{250, -295}, {255, -295}, {255, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_1n10_zn.u, Power_Verosim.y[13]) annotation(Line(points = {{215, -255}, {215, -250}, {215, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_0n11_zp.u, Power_Verosim.y[20]) annotation(Line(points = {{75, -390}, {70, -390}, {-74, -390}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_0n11_xn.u, Power_Verosim.y[19]) annotation(Line(points = {{75, -365}, {70, -365}, {-74, -365}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_0n11_yn.u, Power_Verosim.y[21]) annotation(Line(points = {{125, -415}, {125, -420}, {25.7, -420}, {25.7, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_1n11_xp.u, Power_Verosim.y[24]) annotation(Line(points = {{245, -365}, {250, -365}, {250, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_1n11_yn.u, Power_Verosim.y[23]) annotation(Line(points = {{200, -410}, {200, -415}, {63, -415}, {63, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_1n11_zp.u, Power_Verosim.y[22]) annotation(Line(points = {{155, -395}, {150, -395}, {-74, -395}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n110_xn.u, Power_Verosim.y[7]) annotation(Line(points = {{-55, -80}, {-60, -80}, {-74, -80}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n110_yp.u, Power_Verosim.y[8]) annotation(Line(points = {{-10, -65}, {-10, -60}, {-10, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n110_zn.u, Power_Verosim.y[9]) annotation(Line(points = {{40, -85}, {45, -85}, {45, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n100_zn.u, Power_Verosim.y[12]) annotation(Line(points = {{35, -140}, {40, -140}, {40, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n100_yn.u, Power_Verosim.y[11]) annotation(Line(points = {{-10, -215}, {-10, -220}, {-42, -220}, {-42, 90}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n100_xn.u, Power_Verosim.y[10]) annotation(Line(points = {{-55, -195}, {-60, -195}, {-74, -195}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n101_yn.u, Power_Verosim.y[6]) annotation(Line(points = {{-80, -220}, {-80, -225}, {-74, -225}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n101_zp.u, Power_Verosim.y[5]) annotation(Line(points = {{-130, -200}, {-135, -200}, {-135, -55}, {-74, -55}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n101_xn.u, Power_Verosim.y[4]) annotation(Line(points = {{-130, -170}, {-135, -170}, {-135, -40}, {-74, -40}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n111_zp.u, Power_Verosim.y[3]) annotation(Line(points = {{-130, -130}, {-135, -130}, {-135, -20}, {-74, -20}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_n111_xn.u, Power_Verosim.y[2]) annotation(Line(points = {{-130, -95}, {-135, -95}, {-135, -2.7}, {-74, -2.7}, {-74, 90}, {-79, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_n111_yp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {-74, 12.7}, {-85, 12.7}, {-85, -65}, {-85, -70}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_021_zp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {100, 90}, {100, -40}, {105, -40}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_021_xn.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {100, 90}, {100, -15}, {105, -15}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_021_yp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {100, 90}, {100, 10}, {105, 10}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_121_xp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {285, 90}, {285, 0}, {280, 0}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_121_zp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {-74, -50}, {215, -50}, {215, -45}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB121_yp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {280, 90}, {280, 25}, {275, 25}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_120_xp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {280, 90}, {280, 65}, {275, 65}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_120_zn.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {-74, 110}, {255, 110}, {255, 105}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_120_yp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {-74, 110}, {225, 110}, {225, 105}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_020_zn.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {-74, 105}, {175, 105}, {175, 100}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_020_yp.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {-74, 105}, {150, 105}, {150, 100}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(Power_Verosim.y[1], env_BB_020_xn.u) annotation(Line(points = {{-79, 90}, {-74, 90}, {105, 90}, {105, 60}, {110, 60}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(clock1.y, Power_Verosim.u) annotation(Line(points = {{-114, 90}, {-109, 90}, {-107, 90}, {-102, 90}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_000_zn.u, Area_reduction_zn.y) annotation(Line(points = {{355, 15}, {350, 15}, {336, 15}, {336, 35}, {331, 35}}, color = {0, 0, 127}, thickness = 0.0625));
  connect(env_BB_100_zn.u, Area_reduction_zn.y) annotation(Line(points = {{385, 15}, {380, 15}, {336, 15}, {336, 35}, {331, 35}}, color = {0, 0, 127}, thickness = 0.0625));
  annotation(experiment(StopTime = 86000, StartTime = 0));
end Kern_2x2x2;
=======
	Modelica.Blocks.Tables.CombiTable1Ds Power_Verosim(
		tableOnFile=true,
		tableName="geo_simx",
		fileName="E:\\geo_simx.txt",
		verboseRead=true,
		columns=2:103,
		smoothness=.Modelica.Blocks.Types.Smoothness.ConstantSegments) annotation(Placement(transformation(extent={{-100,80},{-80,100}})));
	Modelica.Blocks.Sources.Clock clock1 annotation(Placement(transformation(extent={{-135,80},{-115,100}})));
	iboss.iboss_thermal.buildingblocks.BB_Tank_2x2x2 BB_tank2x2x2_000(propellant=false) annotation(Placement(transformation(
		origin={220,-120},
		extent={{-50,-45},{10,10}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_n110 annotation(Placement(transformation(extent={{-20,-116},{1,-95}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_n100 annotation(Placement(transformation(extent={{-20,-181},{1,-160}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_n111 annotation(Placement(transformation(extent={{-95,-121},{-74,-100}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_n101 annotation(Placement(transformation(extent={{-95,-181},{-74,-160}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_n111_011 annotation(Placement(transformation(extent={{20,-120},{40,-100}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_n101_001 annotation(Placement(transformation(extent={{20,-175},{40,-155}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_n110_010 annotation(Placement(transformation(extent={{50,-115},{70,-95}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_n100_000 annotation(Placement(transformation(extent={{50,-170},{70,-150}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_xn_00_01 annotation(Placement(transformation(
		origin={-85,-140},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_xn_10_11 annotation(Placement(transformation(
		origin={-5,-140},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_xn_01_11 annotation(Placement(transformation(extent={{-55,-115},{-35,-95}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_xn_00_10 annotation(Placement(transformation(extent={{-55,-180},{-35,-160}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n111_xn annotation(Placement(transformation(extent={{-130,-105},{-110,-85}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n111_yp annotation(Placement(transformation(
		origin={-85,-80},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n111_zp annotation(Placement(transformation(extent={{-130,-140},{-110,-120}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n101_xn annotation(Placement(transformation(extent={{-130,-180},{-110,-160}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n101_zp annotation(Placement(transformation(extent={{-130,-210},{-110,-190}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n101_yn annotation(Placement(transformation(
		origin={-80,-210},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n110_xn annotation(Placement(transformation(extent={{-55,-90},{-35,-70}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n110_yp annotation(Placement(transformation(
		origin={-10,-75},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n110_zn annotation(Placement(transformation(
		origin={30,-85},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n100_xn annotation(Placement(transformation(extent={{-55,-205},{-35,-185}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n100_yn annotation(Placement(transformation(
		origin={-10,-205},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_n100_zn annotation(Placement(transformation(
		origin={25,-140},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_1n10 annotation(Placement(transformation(extent={{185,-311},{206,-290}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_1n11 annotation(Placement(transformation(extent={{185,-376},{206,-355}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_0n10 annotation(Placement(transformation(extent={{110,-316},{131,-295}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_0n11 annotation(Placement(transformation(extent={{110,-381},{131,-360}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_0n10_000 annotation(Placement(transformation(
		origin={125,-190},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.BB_connector bB_connector_0n11_001 annotation(Placement(transformation(
		origin={115,-230},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.BB_connector bB_connector_1n10_100 annotation(Placement(transformation(
		origin={185,-190},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.BB_connector bB_connector_1n11_101 annotation(Placement(transformation(
		origin={175,-230},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.BB_connector bB_connector_zp_00_01 annotation(Placement(transformation(
		origin={120,-335},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_zp_10_11 annotation(Placement(transformation(
		origin={200,-335},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_zp_01_11 annotation(Placement(transformation(extent={{150,-310},{170,-290}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_zp_00_10 annotation(Placement(transformation(extent={{150,-375},{170,-355}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n10_xn annotation(Placement(transformation(extent={{75,-310},{95,-290}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n10_zn annotation(Placement(transformation(
		origin={140,-275},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n10_yn annotation(Placement(transformation(
		origin={150,-330},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n11_xn annotation(Placement(transformation(extent={{75,-375},{95,-355}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n11_zp annotation(Placement(transformation(extent={{75,-400},{95,-380}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_0n11_yn annotation(Placement(transformation(
		origin={125,-405},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n10_zn annotation(Placement(transformation(
		origin={215,-265},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n10_xp annotation(Placement(transformation(
		origin={240,-295},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n10_yn annotation(Placement(transformation(
		origin={225,-320},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n11_zp annotation(Placement(transformation(extent={{155,-405},{175,-385}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n11_yn annotation(Placement(transformation(
		origin={200,-400},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_1n11_xp annotation(Placement(transformation(
		origin={235,-365},
		extent={{-10,-10},{10,10}},
		rotation=180)));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_211 annotation(Placement(transformation(extent={{375,-111},{396,-90}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_201 annotation(Placement(transformation(extent={{375,-181},{396,-160}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_210 annotation(Placement(transformation(extent={{445,-111},{466,-90}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_200 annotation(Placement(transformation(extent={{445,-176},{466,-155}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_210_110 annotation(Placement(transformation(
		origin={270,-100},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.BB_connector bB_connector_200_100 annotation(Placement(transformation(
		origin={270,-145},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.BB_connector bB_connector_211_111 annotation(Placement(transformation(
		origin={305,-95},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.BB_connector bB_connector_201_101 annotation(Placement(transformation(
		origin={310,-150},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.BB_connector bB_connector_xp_00_01 annotation(Placement(transformation(
		origin={450,-135},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_xp_10_11 annotation(Placement(transformation(
		origin={385,-135},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_xp_01_11 annotation(Placement(transformation(extent={{410,-100},{430,-80}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_xp_00_10 annotation(Placement(transformation(extent={{415,-175},{435,-155}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_210_xp annotation(Placement(transformation(
		origin={495,-100},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_210_yp annotation(Placement(transformation(
		origin={455,-55},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_210_zn annotation(Placement(transformation(
		origin={490,-65},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_201_zp annotation(Placement(transformation(extent={{335,-195},{355,-175}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_201_yn annotation(Placement(transformation(
		origin={385,-210},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_201_xp annotation(Placement(transformation(
		origin={410,-195},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_211_xp annotation(Placement(transformation(
		origin={415,-125},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_211_yp annotation(Placement(transformation(
		origin={390,-70},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_211_zp annotation(Placement(transformation(extent={{340,-125},{360,-105}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_200_yn annotation(Placement(transformation(
		origin={455,-200},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_200_xp annotation(Placement(transformation(
		origin={495,-175},
		extent={{-10,-10},{10,10}},
		rotation=180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_200_zn annotation(Placement(transformation(
		origin={495,-145},
		extent={{-10,-10},{10,10}},
		rotation=180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_000_zn annotation(Placement(transformation(extent={{355,5},{375,25}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_100_zn annotation(Placement(transformation(extent={{385,5},{405,25}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_010_zn annotation(Placement(transformation(extent={{415,5},{435,25}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_110_zn annotation(Placement(transformation(extent={{445,5},{465,25}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_001_zp annotation(Placement(transformation(extent={{-80,-340},{-60,-320}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_101_zp annotation(Placement(transformation(extent={{-50,-340},{-30,-320}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_011_zp annotation(Placement(transformation(extent={{-20,-340},{0,-320}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_111_zp annotation(Placement(transformation(extent={{10,-340},{30,-320}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_121 annotation(Placement(transformation(extent={{215,-11},{236,10}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_120 annotation(Placement(transformation(extent={{215,54},{236,75}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_021 annotation(Placement(transformation(extent={{145,-16},{166,5}})));
	iboss.iboss_thermal.buildingblocks.BB_opt_prop BB_020 annotation(Placement(transformation(extent={{145,49},{166,70}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_021_011 annotation(Placement(transformation(
		origin={150,-85},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_020_010 annotation(Placement(transformation(
		origin={160,-60},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_121_111 annotation(Placement(transformation(
		origin={195,-85},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_120_110 annotation(Placement(transformation(
		origin={210,-60},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_zn_00_01 annotation(Placement(transformation(
		origin={155,30},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_zn_10_11 annotation(Placement(transformation(
		origin={230,30},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.BB_connector bB_connector_zn_01_11 annotation(Placement(transformation(extent={{180,55},{200,75}})));
	iboss.iboss_thermal.components.BB_connector bB_connector_zn_00_10 annotation(Placement(transformation(extent={{180,-10},{200,10}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_020_yp annotation(Placement(transformation(
		origin={150,90},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_020_zn annotation(Placement(transformation(
		origin={175,90},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_020_xn annotation(Placement(transformation(extent={{110,50},{130,70}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_021_yp annotation(Placement(transformation(extent={{105,0},{125,20}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_021_xn annotation(Placement(transformation(extent={{105,-25},{125,-5}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_021_zp annotation(Placement(transformation(extent={{105,-50},{125,-30}})));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_120_yp annotation(Placement(transformation(
		origin={225,95},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_120_zn annotation(Placement(transformation(
		origin={255,95},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_120_xp annotation(Placement(transformation(
		origin={265,65},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_121_zp annotation(Placement(transformation(
		origin={215,-35},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB121_yp annotation(Placement(transformation(
		origin={265,25},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	iboss.iboss_thermal.components.environment_opt_prop_external_Verosim env_BB_121_xp annotation(Placement(transformation(
		origin={270,0},
		extent={{-10,-10},{10,10}},
		rotation=180)));
	Modelica.Blocks.Math.Gain Area_reduction_zp(k=0.25) annotation(Placement(transformation(extent={{-120,-325},{-100,-305}})));
	Modelica.Blocks.Math.Gain Area_reduction_zn(k=0.25) annotation(Placement(transformation(extent={{310,25},{330,45}})));
	equation
		connect(bB_connector_xn_10_11.thermal_connector_opt_prop_in2,BB_n100.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{-5.7,-147},{-5.7,-152},{-5.7,-155.3},{-8,-155.3},{-8,-160.3}},
			thickness=0.0625));
		connect(BB_n100.thermal_connector_opt_prop_out_zp,bB_connector_xn_00_10.thermal_connector_opt_prop_in2) annotation(Line(
			points={{-19.7,-182.3},{-24.7,-182.3},{-33,-182.3},{-33,-170.7},{-38,-170.7}},
			thickness=0.0625));
		
		
		
		
		connect(BB_n110.thermal_connector_opt_prop_out_zp,bB_connector_xn_01_11.thermal_connector_opt_prop_in2) annotation(Line(
			points={{-19.7,-117.3},{-24.7,-117.3},{-33,-117.3},{-33,-105.7},{-38,-105.7}},
			thickness=0.0625));
		connect(BB_n110.thermal_connector_opt_prop_out_yn,bB_connector_xn_10_11.thermal_connector_opt_prop_in1) annotation(Line(
			points={{-6.3,-118.3},{-6.3,-123.3},{-6.3,-128.3},{-5.3,-128.3},{-5.3,-133.3}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		connect(bB_connector_xp_00_01.thermal_connector_opt_prop_in1,BB_210.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{449.7,-128.3},{449.7,-123.3},{449.7,-118.3},{458.7,-118.3},{458.7,-113.3}},
			thickness=0.0625));
		
		
		connect(BB_211.thermal_connector_opt_prop_out_yn,bB_connector_xp_10_11.thermal_connector_opt_prop_in1) annotation(Line(
			points={{388.7,-113.3},{388.7,-118.3},{388.7,-123.3},{384.7,-123.3},{384.7,-128.3}},
			thickness=0.0625));
		
		connect(bB_connector_xp_10_11.thermal_connector_opt_prop_in2,BB_201.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{384.3,-142},{384.3,-147},{384.3,-155.3},{387,-155.3},{387,-160.3}},
			thickness=0.0625));
		
		connect(bB_connector_xp_00_01.thermal_connector_opt_prop_in2,BB_200.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{449.3,-142},{449.3,-147},{449.3,-150.3},{457,-150.3},{457,-155.3}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		connect(bB_connector_n100_000.thermal_connector_opt_prop_in1,BB_n100.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{53.7,-160.7},{48.7,-160.7},{15,-160.7},{15,-171},{10,-171}},
			thickness=0.0625));
		
		
		
		connect(BB_n110.thermal_connector_opt_prop_out_xp,bB_connector_n110_010.thermal_connector_opt_prop_in1) annotation(Line(
			points={{10,-106},{15,-106},{48.7,-106},{48.7,-105.7},{53.7,-105.7}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		connect(bB_connector_210_110.thermal_connector_opt_prop_in1,BB_210.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{276.7,-99.7},{281.7,-99.7},{436,-99.7},{436,-100.7},{441,-100.7}},
			thickness=0.0625));
		
		connect(bB_connector_211_111.thermal_connector_opt_prop_in1,BB_211.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{311.7,-94.7},{316.7,-94.7},{366,-94.7},{366,-100.7},{371,-100.7}},
			thickness=0.0625));
		
		connect(BB_210.thermal_connector_opt_prop_out_zp,bB_connector_xp_01_11.thermal_connector_opt_prop_in2) annotation(Line(
			points={{445.3,-112.3},{440.3,-112.3},{432,-112.3},{432,-90.7},{427,-90.7}},
			thickness=0.0625));
		connect(BB_211.thermal_connector_opt_prop_out_zn,bB_connector_xp_01_11.thermal_connector_opt_prop_in1) annotation(Line(
			points={{402.7,-91.3},{402.7,-86.3},{405.7,-86.3},{405.7,-90.7},{408.7,-90.7},{413.7,
			-90.7}},
			thickness=0.0625));
		
		
		connect(BB_201.thermal_connector_opt_prop_out_zn,bB_connector_xp_00_10.thermal_connector_opt_prop_in1) annotation(Line(
			points={{402.7,-161.3},{402.7,-156.3},{408,-156.3},{408,-165.7},{413.7,-165.7},{418.7,
			-165.7}},
			thickness=0.0625));
		connect(bB_connector_xp_00_10.thermal_connector_opt_prop_in2,BB_200.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{432,-165.7},{437,-165.7},{440.3,-165.7},{440.3,-177.3},{445.3,-177.3}},
			thickness=0.0625));
		connect(bB_connector_200_100.thermal_connector_opt_prop_in1,BB_200.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{276.7,-144.7},{281.7,-144.7},{436,-144.7},{436,-165.7},{441,-165.7}},
			thickness=0.0625));
		connect(bB_connector_201_101.thermal_connector_opt_prop_in1,BB_201.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{316.7,-149.7},{321.7,-149.7},{366,-149.7},{366,-170.7},{371,-170.7}},
			thickness=0.0625));
		
		
		
		
		
		
		connect(bB_connector_0n11_001.thermal_connector_opt_prop_in1,BB_0n11.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{115.3,-236.7},{115.3,-241.7},{115.3,-355.3},{122,-355.3},{122,-360.3}},
			thickness=0.0625));
		connect(bB_connector_0n10_000.thermal_connector_opt_prop_in1,BB_0n10.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{125.3,-196.7},{125.3,-201.7},{125.3,-290.3},{122,-290.3},{122,-295.3}},
			thickness=0.0625));
		connect(bB_connector_1n11_101.thermal_connector_opt_prop_in1,BB_1n11.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{175.3,-236.7},{175.3,-241.7},{175.3,-350.3},{197,-350.3},{197,-355.3}},
			thickness=0.0625));
		connect(bB_connector_1n10_100.thermal_connector_opt_prop_in1,BB_1n10.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{185.3,-196.7},{185.3,-201.7},{185.3,-285.3},{197,-285.3},{197,-290.3}},
			thickness=0.0625));
		connect(BB_1n11.thermal_connector_opt_prop_out_zn,bB_connector_zp_10_11.thermal_connector_opt_prop_in2) annotation(Line(
			points={{212.7,-356.3},{212.7,-351.3},{212.7,-347},{199.3,-347},{199.3,-342}},
			thickness=0.0625));
		connect(bB_connector_zp_10_11.thermal_connector_opt_prop_in1,BB_1n10.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{199.7,-328.3},{199.7,-323.3},{180.3,-323.3},{180.3,-312.3},{185.3,-312.3}},
			thickness=0.0625));
		connect(BB_0n11.thermal_connector_opt_prop_out_zn,bB_connector_zp_00_01.thermal_connector_opt_prop_in2) annotation(Line(
			points={{137.7,-361.3},{137.7,-356.3},{137.7,-347},{119.3,-347},{119.3,-342}},
			thickness=0.0625));
		connect(bB_connector_zp_00_01.thermal_connector_opt_prop_in1,BB_0n10.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{119.7,-328.3},{119.7,-323.3},{105.3,-323.3},{105.3,-317.3},{110.3,-317.3}},
			thickness=0.0625));
		connect(BB_0n11.thermal_connector_opt_prop_out_xp,bB_connector_zp_00_10.thermal_connector_opt_prop_in1) annotation(Line(
			points={{140,-371},{145,-371},{148.7,-371},{148.7,-365.7},{153.7,-365.7}},
			thickness=0.0625));
		connect(bB_connector_zp_00_10.thermal_connector_opt_prop_in2,BB_1n11.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{167,-365.7},{172,-365.7},{176,-365.7},{181,-365.7}},
			thickness=0.0625));
		connect(BB_0n10.thermal_connector_opt_prop_out_xp,bB_connector_zp_01_11.thermal_connector_opt_prop_in1) annotation(Line(
			points={{140,-306},{145,-306},{148.7,-306},{148.7,-300.7},{153.7,-300.7}},
			thickness=0.0625));
		connect(bB_connector_zp_01_11.thermal_connector_opt_prop_in2,BB_1n10.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{167,-300.7},{172,-300.7},{176,-300.7},{181,-300.7}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		connect(bB_connector_120_110.thermal_connector_opt_prop_in1,BB_120.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{209.7,-53.3},{209.7,-48.3},{209.7,46.7},{228.7,46.7},{228.7,51.7}},
			thickness=0.0625));
		connect(bB_connector_020_010.thermal_connector_opt_prop_in1,BB_020.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{159.7,-53.3},{159.7,-48.3},{159.7,41.7},{158.7,41.7},{158.7,46.7}},
			thickness=0.0625));
		connect(bB_connector_021_011.thermal_connector_opt_prop_in1,BB_021.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{149.7,-78.3},{149.7,-73.3},{149.7,-23.3},{158.7,-23.3},{158.7,-18.3}},
			thickness=0.0625));
		connect(bB_connector_121_111.thermal_connector_opt_prop_in1,BB_121.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{194.7,-78.3},{194.7,-73.3},{194.7,-18.3},{228.7,-18.3},{228.7,-13.3}},
			thickness=0.0625));
		connect(BB_021.thermal_connector_opt_prop_out_zn,bB_connector_zn_00_01.thermal_connector_opt_prop_in2) annotation(Line(
			points={{172.7,3.7},{172.7,8.699999999999999},{172.7,18},{154.3,18},{154.3,23}},
			thickness=0.0625));
		connect(bB_connector_zn_00_01.thermal_connector_opt_prop_in1,BB_020.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{154.7,36.7},{154.7,41.7},{140.3,41.7},{140.3,47.7},{145.3,47.7}},
			thickness=0.0625));
		connect(BB_121.thermal_connector_opt_prop_out_zn,bB_connector_zn_10_11.thermal_connector_opt_prop_in2) annotation(Line(
			points={{242.7,8.699999999999999},{242.7,13.7},{242.7,18},{229.3,18},{229.3,23}},
			thickness=0.0625));
		connect(bB_connector_zn_10_11.thermal_connector_opt_prop_in1,BB_120.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{229.7,36.7},{229.7,41.7},{210.3,41.7},{210.3,52.7},{215.3,52.7}},
			thickness=0.0625));
		connect(BB_020.thermal_connector_opt_prop_out_xp,bB_connector_zn_01_11.thermal_connector_opt_prop_in1) annotation(Line(
			points={{175,59},{180,59},{180,61.7},{178.7,61.7},{178.7,64.3},{183.7,
			64.3}},
			thickness=0.0625));
		connect(bB_connector_zn_01_11.thermal_connector_opt_prop_in2,BB_120.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{197,64.3},{202,64.3},{206,64.3},{211,64.3}},
			thickness=0.0625));
		connect(BB_021.thermal_connector_opt_prop_out_xp,bB_connector_zn_00_10.thermal_connector_opt_prop_in1) annotation(Line(
			points={{175,-6},{180,-6},{180,-3.3},{178.7,-3.3},{178.7,-0.7},{183.7,
			-0.7}},
			thickness=0.0625));
		connect(bB_connector_zn_00_10.thermal_connector_opt_prop_in2,BB_121.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{197,-0.7},{202,-0.7},{206,-0.7},{211,-0.7}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		connect(env_BB_020_xn.thermal_connector_opt_prop_in1,BB_020.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{130,60},{135,60},{136,60},{136,59.3},{141,59.3}},
			thickness=0.0625));
		
		connect(env_BB_020_yp.thermal_connector_opt_prop_in1,BB_020.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{150,80},{150,75},{150,74.7},{157,74.7},{157,69.7}},
			thickness=0.0625));
		
		connect(env_BB_020_zn.thermal_connector_opt_prop_in1,BB_020.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{175,80},{175,75},{175,73.7},{172.7,73.7},{172.7,68.7}},
			thickness=0.0625));
		
		connect(env_BB_120_yp.thermal_connector_opt_prop_in1,BB_120.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{225,85},{225,80},{225,79.7},{227,79.7},{227,74.7}},
			thickness=0.0625));
		
		connect(env_BB_120_zn.thermal_connector_opt_prop_in1,BB_120.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{255,85},{255,80},{255,78.7},{242.7,78.7},{242.7,73.7}},
			thickness=0.0625));
		
		connect(env_BB_120_xp.thermal_connector_opt_prop_in1,BB_120.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{255,65},{250,65},{250,64},{245,64}},
			thickness=0.0625));
		
		connect(env_BB121_yp.thermal_connector_opt_prop_in1,BB_121.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{255,25},{250,25},{227,25},{227,14.7},{227,9.699999999999999}},
			thickness=0.0625));
		
		
		
		
		
		connect(env_BB_121_zp.thermal_connector_opt_prop_in1,BB_121.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{215,-25},{215,-20},{210.3,-20},{210.3,-12.3},{215.3,-12.3}},
			thickness=0.0625));
		
		connect(env_BB_121_xp.thermal_connector_opt_prop_in1,BB_121.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{260,0},{255,0},{250,0},{250,-1},{245,-1}},
			thickness=0.0625));
		
		connect(env_BB_021_yp.thermal_connector_opt_prop_in1,BB_021.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{125,10},{130,10},{157,10},{157,9.699999999999999},{157,4.7}},
			thickness=0.0625));
		
		connect(env_BB_021_xn.thermal_connector_opt_prop_in1,BB_021.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{125,-15},{130,-15},{136,-15},{136,-5.7},{141,-5.7}},
			thickness=0.0625));
		
		connect(env_BB_021_zp.thermal_connector_opt_prop_in1,BB_021.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{125,-40},{130,-40},{140.3,-40},{140.3,-17.3},{145.3,-17.3}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		
		connect(env_BB_n100_xn.thermal_connector_opt_prop_in1,BB_n100.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{-35,-195},{-30,-195},{-29,-195},{-29,-170.7},{-24,-170.7}},
			thickness=0.0625));
		
		connect(env_BB_n100_yn.thermal_connector_opt_prop_in1,BB_n100.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{-10,-195},{-10,-190},{-10,-188.3},{-6.3,-188.3},{-6.3,-183.3}},
			thickness=0.0625));
		
		connect(env_BB_n100_zn.thermal_connector_opt_prop_in1,BB_n100.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{15,-140},{10,-140},{7.7,-140},{7.7,-156.3},{7.7,-161.3}},
			thickness=0.0625));
		
		connect(env_BB_n110_zn.thermal_connector_opt_prop_in1,BB_n110.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{20,-85},{15,-85},{7.7,-85},{7.7,-91.3},{7.7,-96.3}},
			thickness=0.0625));
		
		connect(env_BB_n110_yp.thermal_connector_opt_prop_in1,BB_n110.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{-10,-85},{-10,-90},{-10,-90.3},{-8,-90.3},{-8,-95.3}},
			thickness=0.0625));
		
		connect(env_BB_n110_xn.thermal_connector_opt_prop_in1,BB_n110.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{-35,-80},{-30,-80},{-29,-80},{-29,-105.7},{-24,-105.7}},
			thickness=0.0625));
		
		connect(env_BB_1n11_zp.thermal_connector_opt_prop_in1,BB_1n11.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{175,-395},{180,-395},{180.3,-395},{180.3,-377.3},{185.3,-377.3}},
			thickness=0.0625));
		
		connect(env_BB_1n11_yn.thermal_connector_opt_prop_in1,BB_1n11.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{200,-390},{200,-385},{200,-383.3},{198.7,-383.3},{198.7,-378.3}},
			thickness=0.0625));
		
		connect(env_BB_1n11_xp.thermal_connector_opt_prop_in1,BB_1n11.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{225,-365},{220,-365},{220,-366},{215,-366}},
			thickness=0.0625));
		
		
		
		
		
		connect(env_BB_0n11_yn.thermal_connector_opt_prop_in1,BB_0n11.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{125,-395},{125,-390},{125,-388.3},{123.7,-388.3},{123.7,-383.3}},
			thickness=0.0625));
		
		connect(env_BB_0n11_xn.thermal_connector_opt_prop_in1,BB_0n11.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{95,-365},{100,-365},{101,-365},{101,-370.7},{106,-370.7}},
			thickness=0.0625));
		
		connect(env_BB_0n11_zp.thermal_connector_opt_prop_in1,BB_0n11.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{95,-390},{100,-390},{105.3,-390},{105.3,-382.3},{110.3,-382.3}},
			thickness=0.0625));
		
		connect(env_BB_1n10_zn.thermal_connector_opt_prop_in1,BB_1n10.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{215,-275},{215,-280},{215,-286.3},{212.7,-286.3},{212.7,-291.3}},
			thickness=0.0625));
		
		connect(env_BB_1n10_xp.thermal_connector_opt_prop_in1,BB_1n10.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{230,-295},{225,-295},{220,-295},{220,-301},{215,-301}},
			thickness=0.0625));
		
		connect(env_BB_1n10_yn.thermal_connector_opt_prop_in1,BB_1n10.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{215,-320},{210,-320},{198.7,-320},{198.7,-318.3},{198.7,-313.3}},
			thickness=0.0625));
		
		connect(env_BB_0n10_xn.thermal_connector_opt_prop_in1,BB_0n10.thermal_connector_opt_prop_out_xn) annotation(Line(
			points={{95,-300},{100,-300},{101,-300},{101,-305.7},{106,-305.7}},
			thickness=0.0625));
		
		connect(env_BB_0n10_zn.thermal_connector_opt_prop_in1,BB_0n10.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{140,-285},{140,-290},{140,-291.3},{137.7,-291.3},{137.7,-296.3}},
			thickness=0.0625));
		
		connect(env_BB_0n10_yn.thermal_connector_opt_prop_in1,BB_0n10.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{140,-330},{135,-330},{123.7,-330},{123.7,-323.3},{123.7,-318.3}},
			thickness=0.0625));
		
		connect(env_BB_211_zp.thermal_connector_opt_prop_in1,BB_211.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{360,-115},{365,-115},{370.3,-115},{370.3,-112.3},{375.3,-112.3}},
			thickness=0.0625));
		
		connect(env_BB_211_yp.thermal_connector_opt_prop_in1,BB_211.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{390,-80},{390,-85},{390,-85.3},{387,-85.3},{387,-90.3}},
			thickness=0.0625));
		
		
		
		connect(env_BB_211_xp.thermal_connector_opt_prop_in1,BB_211.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{415,-115},{415,-110},{415,-101},{410,-101},{405,-101}},
			thickness=0.0625));
		
		connect(env_BB_210_xp.thermal_connector_opt_prop_in1,BB_210.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{485,-100},{480,-100},{480,-101},{475,-101}},
			thickness=0.0625));
		
		connect(env_BB_210_zn.thermal_connector_opt_prop_in1,BB_210.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{490,-75},{490,-80},{490,-86.3},{472.7,-86.3},{472.7,-91.3}},
			thickness=0.0625));
		
		connect(env_BB_210_yp.thermal_connector_opt_prop_in1,BB_210.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{455,-65},{455,-70},{455,-85.3},{457,-85.3},{457,-90.3}},
			thickness=0.0625));
		
		connect(env_BB_200_zn.thermal_connector_opt_prop_in1,BB_200.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{485,-145},{480,-145},{472.7,-145},{472.7,-151.3},{472.7,-156.3}},
			thickness=0.0625));
		
		connect(env_BB_200_xp.thermal_connector_opt_prop_in1,BB_200.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{485,-175},{480,-175},{480,-166},{475,-166}},
			thickness=0.0625));
		
		connect(env_BB_200_yn.thermal_connector_opt_prop_in1,BB_200.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{455,-190},{455,-185},{455,-183.3},{458.7,-183.3},{458.7,-178.3}},
			thickness=0.0625));
		
		connect(env_BB_201_xp.thermal_connector_opt_prop_in1,BB_201.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{410,-185},{410,-180},{410,-171},{405,-171}},
			thickness=0.0625));
		
		connect(env_BB_201_yn.thermal_connector_opt_prop_in1,BB_201.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{385,-200},{385,-195},{385,-188.3},{388.7,-188.3},{388.7,-183.3}},
			thickness=0.0625));
		
		connect(env_BB_201_zp.thermal_connector_opt_prop_in1,BB_201.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{355,-185},{360,-185},{370.3,-185},{370.3,-182.3},{375.3,-182.3}},
			thickness=0.0625));
		
		connect(Area_reduction_zp.y,env_BB_001_zp.u) annotation(Line(
			points={{-99,-315},{-94,-315},{-85,-315},{-85,-330},{-80,-330}},
			color={0,0,127},
			thickness=0.0625));
		connect(Area_reduction_zp.y,env_BB_101_zp.u) annotation(Line(
			points={{-99,-315},{-94,-315},{-55,-315},{-55,-330},{-50,-330}},
			color={0,0,127},
			thickness=0.0625));
		connect(Area_reduction_zp.y,env_BB_011_zp.u) annotation(Line(
			points={{-99,-315},{-94,-315},{-25,-315},{-25,-330},{-20,-330}},
			color={0,0,127},
			thickness=0.0625));
		connect(Area_reduction_zp.y,env_BB_111_zp.u) annotation(Line(
			points={{-99,-315},{-94,-315},{5,-315},{5,-330},{10,-330}},
			color={0,0,127},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		connect(Area_reduction_zn.y,env_BB_110_zn.u) annotation(Line(
			points={{331,35},{336,35},{440,35},{440,15},{445,15}},
			color={0,0,127},
			thickness=0.0625));
		connect(Area_reduction_zn.y,env_BB_010_zn.u) annotation(Line(
			points={{331,35},{336,35},{410,35},{410,15},{415,15}},
			color={0,0,127},
			thickness=0.0625));
		
		
		
		
		connect(Area_reduction_zp.u,Power_Verosim.y[1]) annotation(Line(
			points={{-122,-315},{-127,-315},{-127,-112.7},{-74,-112.7},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(Area_reduction_zn.u,Power_Verosim.y[1]) annotation(Line(
			points={{308,35},{303,35},{-74,35},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_201_zp.u,Power_Verosim.y[40]) annotation(Line(
			points={{335,-185},{330,-185},{-74,-185},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_201_yn.u,Power_Verosim.y[41]) annotation(Line(
			points={{385,-220},{385,-225},{155.7,-225},{155.7,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_201_xp.u,Power_Verosim.y[42]) annotation(Line(
			points={{410,-205},{410,-210},{168,-210},{168,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_200_yn.u,Power_Verosim.y[43]) annotation(Line(
			points={{455,-210},{455,-215},{190.7,-215},{190.7,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_200_xp.u,Power_Verosim.y[44]) annotation(Line(
			points={{505,-175},{510,-175},{510,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_200_zn.u,Power_Verosim.y[45]) annotation(Line(
			points={{505,-145},{510,-145},{510,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_210_yp.u,Power_Verosim.y[37]) annotation(Line(
			points={{455,-45},{455,-40},{455,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_210_zn.u,Power_Verosim.y[39]) annotation(Line(
			points={{490,-55},{490,-50},{490,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_210_xp.u,Power_Verosim.y[38]) annotation(Line(
			points={{505,-100},{510,-100},{510,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_211_xp.u,Power_Verosim.y[46]) annotation(Line(
			points={{415,-135},{415,-140},{170.7,-140},{170.7,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_211_yp.u,Power_Verosim.y[47]) annotation(Line(
			points={{390,-60},{390,-55},{390,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_211_zp.u,Power_Verosim.y[48]) annotation(Line(
			points={{340,-115},{335,-115},{-74,-115},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_0n10_yn.u,Power_Verosim.y[18]) annotation(Line(
			points={{160,-330},{165,-330},{165,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_0n10_zn.u,Power_Verosim.y[16]) annotation(Line(
			points={{140,-265},{140,-260},{140,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_0n10_xn.u,Power_Verosim.y[17]) annotation(Line(
			points={{75,-300},{70,-300},{-74,-300},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_1n10_yn.u,Power_Verosim.y[15]) annotation(Line(
			points={{235,-320},{240,-320},{240,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_1n10_xp.u,Power_Verosim.y[14]) annotation(Line(
			points={{250,-295},{255,-295},{255,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_1n10_zn.u,Power_Verosim.y[13]) annotation(Line(
			points={{215,-255},{215,-250},{215,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_0n11_zp.u,Power_Verosim.y[20]) annotation(Line(
			points={{75,-390},{70,-390},{-74,-390},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_0n11_xn.u,Power_Verosim.y[19]) annotation(Line(
			points={{75,-365},{70,-365},{-74,-365},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_0n11_yn.u,Power_Verosim.y[21]) annotation(Line(
			points={{125,-415},{125,-420},{25.7,-420},{25.7,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_1n11_xp.u,Power_Verosim.y[24]) annotation(Line(
			points={{245,-365},{250,-365},{250,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_1n11_yn.u,Power_Verosim.y[23]) annotation(Line(
			points={{200,-410},{200,-415},{63,-415},{63,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_1n11_zp.u,Power_Verosim.y[22]) annotation(Line(
			points={{155,-395},{150,-395},{-74,-395},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n110_xn.u,Power_Verosim.y[7]) annotation(Line(
			points={{-55,-80},{-60,-80},{-74,-80},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n110_yp.u,Power_Verosim.y[8]) annotation(Line(
			points={{-10,-65},{-10,-60},{-10,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n110_zn.u,Power_Verosim.y[9]) annotation(Line(
			points={{40,-85},{45,-85},{45,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n100_zn.u,Power_Verosim.y[12]) annotation(Line(
			points={{35,-140},{40,-140},{40,90},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n100_yn.u,Power_Verosim.y[11]) annotation(Line(
			points={{-10,-215},{-10,-220},{-42,-220},{-42,90},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n100_xn.u,Power_Verosim.y[10]) annotation(Line(
			points={{-55,-195},{-60,-195},{-74,-195},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n101_yn.u,Power_Verosim.y[6]) annotation(Line(
			points={{-80,-220},{-80,-225},{-74,-225},{-74,90},{-79,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n101_zp.u,Power_Verosim.y[5]) annotation(Line(
			points={{-130,-200},{-135,-200},{-135,-55},{-74,-55},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n101_xn.u,Power_Verosim.y[4]) annotation(Line(
			points={{-130,-170},{-135,-170},{-135,-40},{-74,-40},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n111_zp.u,Power_Verosim.y[3]) annotation(Line(
			points={{-130,-130},{-135,-130},{-135,-20},{-74,-20},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n111_xn.u,Power_Verosim.y[2]) annotation(Line(
			points={{-130,-95},{-135,-95},{-135,-2.7},{-74,-2.7},{-74,90},{-79,
			90}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_n111_yp.u) annotation(Line(
			points={{-79,90},{-74,90},{-74,12.7},{-85,12.7},{-85,-65},{-85,
			-70}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_021_zp.u) annotation(Line(
			points={{-79,90},{-74,90},{100,90},{100,-40},{105,-40}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_021_xn.u) annotation(Line(
			points={{-79,90},{-74,90},{100,90},{100,-15},{105,-15}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_021_yp.u) annotation(Line(
			points={{-79,90},{-74,90},{100,90},{100,10},{105,10}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_121_xp.u) annotation(Line(
			points={{-79,90},{-74,90},{285,90},{285,0},{280,0}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_121_zp.u) annotation(Line(
			points={{-79,90},{-74,90},{-74,-50},{215,-50},{215,-45}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB121_yp.u) annotation(Line(
			points={{-79,90},{-74,90},{280,90},{280,25},{275,25}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_120_xp.u) annotation(Line(
			points={{-79,90},{-74,90},{280,90},{280,65},{275,65}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_120_zn.u) annotation(Line(
			points={{-79,90},{-74,90},{-74,110},{255,110},{255,105}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_120_yp.u) annotation(Line(
			points={{-79,90},{-74,90},{-74,110},{225,110},{225,105}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_020_zn.u) annotation(Line(
			points={{-79,90},{-74,90},{-74,105},{175,105},{175,100}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_020_yp.u) annotation(Line(
			points={{-79,90},{-74,90},{-74,105},{150,105},{150,100}},
			color={0,0,127},
			thickness=0.0625));
		connect(Power_Verosim.y[1],env_BB_020_xn.u) annotation(Line(
			points={{-79,90},{-74,90},{105,90},{105,60},{110,60}},
			color={0,0,127},
			thickness=0.0625));
		connect(clock1.y,Power_Verosim.u) annotation(Line(
			points={{-114,90},{-109,90},{-107,90},{-102,90}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_000_zn.u,Area_reduction_zn.y) annotation(Line(
			points={{355,15},{350,15},{336,15},{336,35},{331,35}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_100_zn.u,Area_reduction_zn.y) annotation(Line(
			points={{385,15},{380,15},{336,15},{336,35},{331,35}},
			color={0,0,127},
			thickness=0.0625));
		connect(env_BB_n111_zp.thermal_connector_opt_prop_in1,BB_n111.thermal_connector_opt_prop_out_zp) annotation(Line(
			points={{-110,-130},{-105,-130},{-99.7,-130},{-99.7,-122.3},{-94.7,-122.3}},
			thickness=0.0625));
		connect(BB_n111.thermal_connector_opt_prop_out_xn,env_BB_n111_xn.thermal_connector_opt_prop_in1) annotation(Line(
			points={{-99,-110.7},{-104,-110.7},{-105,-110.7},{-105,-95},{-110,-95}},
			thickness=0.0625));
		connect(env_BB_n111_yp.thermal_connector_opt_prop_in1,BB_n111.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{-85,-90},{-85,-95},{-85,-95.3},{-83,-95.3},{-83,-100.3}},
			thickness=0.0625));
		connect(bB_connector_n111_011.thermal_connector_opt_prop_in1,BB_n111.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{23.7,-110.7},{18.7,-110.7},{-60,-110.7},{-60,-111},{-65,-111}},
			thickness=0.0625));
		connect(bB_connector_xn_00_01.thermal_connector_opt_prop_in1,BB_n111.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{-85.3,-133.3},{-85.3,-128.3},{-81.3,-128.3},{-81.3,-123.3}},
			thickness=0.0625));
		connect(bB_connector_xn_01_11.thermal_connector_opt_prop_in1,BB_n111.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{-51.3,-105.7},{-56.3,-105.7},{-56.3,-96.3},{-67.3,-96.3},{-67.3,-101.3}},
			thickness=0.0625));
		connect(env_BB_n101_yn.thermal_connector_opt_prop_in1,BB_n101.thermal_connector_opt_prop_out_yn) annotation(Line(
			points={{-80,-200},{-80,-195},{-80,-188.3},{-81.3,-188.3},{-81.3,-183.3}},
			thickness=0.0625));
		connect(BB_n101.thermal_connector_opt_prop_out_zp,env_BB_n101_zp.thermal_connector_opt_prop_in1) annotation(Line(
			points={{-94.7,-182.3},{-99.7,-182.3},{-105,-182.3},{-105,-200},{-110,-200}},
			thickness=0.0625));
		connect(BB_n101.thermal_connector_opt_prop_out_xn,env_BB_n101_xn.thermal_connector_opt_prop_in1) annotation(Line(
			points={{-99,-170.7},{-104,-170.7},{-105,-170.7},{-105,-170},{-110,-170}},
			thickness=0.0625));
		connect(bB_connector_n101_001.thermal_connector_opt_prop_in1,BB_n101.thermal_connector_opt_prop_out_xp) annotation(Line(
			points={{23.7,-165.7},{18.7,-165.7},{-60,-165.7},{-60,-171},{-65,-171}},
			thickness=0.0625));
		connect(bB_connector_xn_00_10.thermal_connector_opt_prop_in1,BB_n101.thermal_connector_opt_prop_out_zn) annotation(Line(
			points={{-51.3,-170.7},{-56.3,-170.7},{-56.3,-156.3},{-67.3,-156.3},{-67.3,-161.3}},
			thickness=0.0625));
		connect(bB_connector_xn_00_01.thermal_connector_opt_prop_in2,BB_n101.thermal_connector_opt_prop_out_yp) annotation(Line(
			points={{-85.7,-147},{-85.7,-152},{-85.7,-155.3},{-83,-155.3},{-83,-160.3}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_000zn,env_BB_000_zn.thermal_connector_opt_prop_in1) annotation(Line(
			points={{230,-121},{235,-121},{380,-121},{380,15},{375,15}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_100zn,env_BB_100_zn.thermal_connector_opt_prop_in1) annotation(Line(
			points={{230,-115.3},{235,-115.3},{410,-115.3},{410,15},{405,15}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_010zn,env_BB_010_zn.thermal_connector_opt_prop_in1) annotation(Line(
			points={{224,-110},{224,-105},{440,-105},{440,15},{435,15}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_110zn,env_BB_110_zn.thermal_connector_opt_prop_in1) annotation(Line(
			points={{218,-110},{218,-105},{470,-105},{470,15},{465,15}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_001zp,env_BB_001_zp.thermal_connector_opt_prop_in1) annotation(Line(
			points={{182,-165},{182,-170},{182,-330},{-55,-330},{-60,-330}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_101zp,env_BB_101_zp.thermal_connector_opt_prop_in1) annotation(Line(
			points={{176,-165},{176,-170},{176,-330},{-25,-330},{-30,-330}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_011zp,env_BB_011_zp.thermal_connector_opt_prop_in1) annotation(Line(
			points={{170,-159.7},{165,-159.7},{5,-159.7},{5,-330},{0,-330}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_111zp,env_BB_111_zp.thermal_connector_opt_prop_in1) annotation(Line(
			points={{170,-154},{165,-154},{35,-154},{35,-330},{30,-330}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_001yn,bB_connector_0n11_001.thermal_connector_opt_prop_in2) annotation(Line(
			points={{206,-165},{206,-170},{206,-218},{115.7,-218},{115.7,-223}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_100yn,bB_connector_1n10_100.thermal_connector_opt_prop_in2) annotation(Line(
			points={{200,-165},{200,-170},{200,-178},{185.7,-178},{185.7,-183}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_000yn,bB_connector_0n10_000.thermal_connector_opt_prop_in2) annotation(Line(
			points={{194,-165},{194,-170},{194,-178},{125.7,-178},{125.7,-183}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_101yn,bB_connector_1n11_101.thermal_connector_opt_prop_in2) annotation(Line(
			points={{212,-165},{212,-170},{212,-218},{175.7,-218},{175.7,-223}},
			thickness=0.0625));
		connect(bB_connector_020_010.thermal_connector_opt_prop_in2,BB_tank2x2x2_000.thermal_connector_opt_prop_out_010yp) annotation(Line(
			points={{159.3,-67},{159.3,-72},{159.3,-105},{206,-105},{206,-110}},
			thickness=0.0625));
		connect(bB_connector_120_110.thermal_connector_opt_prop_in2,BB_tank2x2x2_000.thermal_connector_opt_prop_out_110yp) annotation(Line(
			points={{209.3,-67},{209.3,-72},{209.3,-105},{200,-105},{200,-110}},
			thickness=0.0625));
		connect(bB_connector_021_011.thermal_connector_opt_prop_in2,BB_tank2x2x2_000.thermal_connector_opt_prop_out_011yp) annotation(Line(
			points={{149.3,-92},{149.3,-97},{149.3,-105},{194,-105},{194,-110}},
			thickness=0.0625));
		connect(bB_connector_121_111.thermal_connector_opt_prop_in2,BB_tank2x2x2_000.thermal_connector_opt_prop_out_111yp) annotation(Line(
			points={{194.3,-92},{194.3,-97},{194.3,-105},{188,-105},{188,-110}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_100xp,bB_connector_200_100.thermal_connector_opt_prop_in2) annotation(Line(
			points={{230,-132},{235,-132},{258,-132},{258,-144.3},{263,-144.3}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_101xp,bB_connector_201_101.thermal_connector_opt_prop_in2) annotation(Line(
			points={{230,-143},{235,-143},{298,-143},{298,-149.3},{303,-149.3}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_111xp,bB_connector_211_111.thermal_connector_opt_prop_in2) annotation(Line(
			points={{230,-148.7},{235,-148.7},{293,-148.7},{293,-94.3},{298,-94.3}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_110xp,bB_connector_210_110.thermal_connector_opt_prop_in2) annotation(Line(
			points={{230,-137.7},{235,-137.7},{258,-137.7},{258,-99.3},{263,-99.3}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_010xn,bB_connector_n110_010.thermal_connector_opt_prop_in2) annotation(Line(
			points={{170,-137.7},{165,-137.7},{72,-137.7},{72,-105.7},{67,-105.7}},
			thickness=0.0625));
		connect(bB_connector_n111_011.thermal_connector_opt_prop_in2,BB_tank2x2x2_000.thermal_connector_opt_prop_out_011xn) annotation(Line(
			points={{37,-110.7},{42,-110.7},{165,-110.7},{165,-126.3},{170,-126.3}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_000xn,bB_connector_n100_000.thermal_connector_opt_prop_in2) annotation(Line(
			points={{170,-143},{165,-143},{72,-143},{72,-160.7},{67,-160.7}},
			thickness=0.0625));
		connect(BB_tank2x2x2_000.thermal_connector_opt_prop_out_001xn,bB_connector_n101_001.thermal_connector_opt_prop_in2) annotation(Line(
			points={{170,-132},{165,-132},{42,-132},{42,-165.7},{37,-165.7}},
			thickness=0.0625));
	annotation(
		experiment(
			StopTime=690000,
			StartTime=0));
end Kern_2x2x2;
>>>>>>> 594e8d02abf8803b6fae765ceb29b69a66b05f6e
