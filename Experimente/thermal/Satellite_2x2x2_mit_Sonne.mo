model Satellite_2x2x2_mit_Sonne
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  BuildingBlock_thermal buildingBlock_thermal1 annotation(Placement(visible=true, transformation(origin={-89.9997,-31.5473}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal2 annotation(Placement(visible=true, transformation(origin={-89.9997,-88.4326}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal3 annotation(Placement(visible=true, transformation(origin={-28.4937,-31.5473}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal4 annotation(Placement(visible=true, transformation(origin={-28.4937,-88.7104}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM1 annotation(Placement(visible=true, transformation(origin={-58.4937,-88.5329}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM2 annotation(Placement(visible=true, transformation(origin={-58.4937,-31.5473}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM3 annotation(Placement(visible=true, transformation(origin={-90.028,-61.5473}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  thermal_TIM thermal_TIM4 annotation(Placement(visible=true, transformation(origin={-28.4937,-59.464}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  BuildingBlock_thermal buildingBlock_thermal5 annotation(Placement(visible=true, transformation(origin={55.0,91.9599}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal6 annotation(Placement(visible=true, transformation(origin={127.4871,90.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal7 annotation(Placement(visible=true, transformation(origin={55.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal8 annotation(Placement(visible=true, transformation(origin={130.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM5 annotation(Placement(visible=true, transformation(origin={90.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM6 annotation(Placement(visible=true, transformation(origin={90.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM7 annotation(Placement(visible=true, transformation(origin={50.0,62.9218}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  thermal_TIM thermal_TIM8 annotation(Placement(visible=true, transformation(origin={125.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  thermal_TIM thermal_TIM9 annotation(Placement(visible=true, transformation(origin={-2.1438,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM10 annotation(Placement(visible=true, transformation(origin={25.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM11 annotation(Placement(visible=true, transformation(origin={1.5062,-21.8474}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM12 annotation(Placement(visible=true, transformation(origin={26.6896,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={-117.9192,-32.338}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={-85.7858,-26.7539}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={-120.0,-87.2145}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={-81.6065,-83.0614}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector2 annotation(Placement(visible=true, transformation(origin={21.6795,90.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={15.3975,86.4834}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector3 annotation(Placement(visible=true, transformation(origin={20.0,37.392}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={12.5379,34.8422}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow1 annotation(Placement(visible=true, transformation(origin={-101.7078,87.1851}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Sources.Pulse pulse1(amplitude=350, period=5400, width=66) annotation(Placement(visible=true, transformation(origin={-135.0,87.5349}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector4 annotation(Placement(visible=true, transformation(origin={40.0,115.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={39.1975,115.6607}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector6 annotation(Placement(visible=true, transformation(origin={63.0667,115.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={57.5491,115.4087}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector5 annotation(Placement(visible=true, transformation(origin={113.2417,117.8833}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={78.5732,112.8889}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector7 annotation(Placement(visible=true, transformation(origin={140.0,117.7396}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={95.1431,112.1329}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr=0.088) annotation(Placement(visible=true, transformation(origin={35.0,141.9844}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation2(Gr=0.088) annotation(Placement(visible=true, transformation(origin={65.0,141.8167}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation3(Gr=0.088) annotation(Placement(visible=true, transformation(origin={110.0,140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation4(Gr=0.088) annotation(Placement(visible=true, transformation(origin={140.0,140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=3) annotation(Placement(visible=true, transformation(origin={86.9156,180.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation5(Gr=0.088) annotation(Placement(visible=true, transformation(origin={146.7167,-16.772}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-450)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation6(Gr=0.088) annotation(Placement(visible=true, transformation(origin={118.2833,-16.6095}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation7(Gr=0.088) annotation(Placement(visible=true, transformation(origin={81.3625,-14.4928}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation8(Gr=0.088) annotation(Placement(visible=true, transformation(origin={53.2833,-14.4928}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature2(T=3) annotation(Placement(visible=true, transformation(origin={103.2833,-49.4928}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  thermal_connector thermal_connector8 annotation(Placement(visible=true, transformation(origin={55.0,8.2903}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={36.5844,7.8955}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector10 annotation(Placement(visible=true, transformation(origin={120.0,5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={79.2265,5.7116}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector11 annotation(Placement(visible=true, transformation(origin={147.1167,5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={98.3502,7.2235}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector9 annotation(Placement(visible=true, transformation(origin={80.0,7.0556}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={54.0451,6.7196}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector12 annotation(Placement(visible=true, transformation(origin={-107.1778,-115.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={-63.4287,-114.9048}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector13 annotation(Placement(visible=true, transformation(origin={-80.0,-115.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={-46.7995,-116.2487}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector14 annotation(Placement(visible=true, transformation(origin={-43.3917,-115.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={-29.22,-110.2011}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector15 annotation(Placement(visible=true, transformation(origin={-17.4083,-115.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={-6.4141,-111.209}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation9(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-108.3028,-140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-450)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation10(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-81.7028,-140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-450)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation11(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-45.0,-140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation12(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-15.0,-140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature3(T=3) annotation(Placement(visible=true, transformation(origin={-57.8556,-176.7417}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  thermal_connector thermal_connector16 annotation(Placement(visible=true, transformation(origin={-110.0,-2.0044}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={-73.6978,-1.909}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector17 annotation(Placement(visible=true, transformation(origin={-82.0234,-2.8062}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={-55.6108,-2.6726}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector18 annotation(Placement(visible=true, transformation(origin={-55.0,-2.8062}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={-37.2539,-2.6726}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector19 annotation(Placement(visible=true, transformation(origin={-28.3965,-3.3965}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={-20.7866,-3.4361}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation13(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-110.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation14(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-80.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation15(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-50.0,28.4729}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation16(Gr=0.088) annotation(Placement(visible=true, transformation(origin={-25.0,28.3104}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature4(T=3) annotation(Placement(visible=true, transformation(origin={-65.0,62.4417}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=30) annotation(Placement(visible=true, transformation(origin={-167.1496,-42.1938}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow2(Q_flow=20) annotation(Placement(visible=true, transformation(origin={-167.5694,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow3(Q_flow=24) annotation(Placement(visible=true, transformation(origin={-165.0,-95.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow4(Q_flow=80) annotation(Placement(visible=true, transformation(origin={-170.0,-12.4274}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow5(Q_flow=20) annotation(Placement(visible=true, transformation(origin={175.0,92.6042}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow6(Q_flow=40) annotation(Placement(visible=true, transformation(origin={172.5915,71.7582}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow7(Q_flow=15) annotation(Placement(visible=true, transformation(origin={175.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow8(Q_flow=100) annotation(Placement(visible=true, transformation(origin={171.7645,28.1723}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
equation 
  connect(fixedHeatFlow3.port,buildingBlock_thermal2.port_b) annotation(Line(visible=true, origin={-112.756,-91.7163}, points={{-42.244,-3.2837},{9.7438,-3.2837},{9.7438,3.2837},{22.7563,3.2837}}, color={191,0,0}));
  connect(fixedHeatFlow2.port,buildingBlock_thermal4.port_b) annotation(Line(visible=true, origin={-67.2689,-79.3552}, points={{-90.3005,9.3552},{25.7627,9.3552},{25.7627,-9.3552},{38.7752,-9.3552}}, color={191,0,0}));
  connect(fixedHeatFlow1.port,buildingBlock_thermal3.port_b) annotation(Line(visible=true, origin={-67.164,-36.8706}, points={{-89.9857,-5.3232},{25.6577,-5.3232},{25.6577,5.3232},{38.6702,5.3232}}, color={191,0,0}));
  connect(fixedHeatFlow4.port,buildingBlock_thermal1.port_b) annotation(Line(visible=true, origin={-114.006,-21.9874}, points={{-45.994,9.56},{10.9938,9.56},{10.9938,-9.56},{24.0063,-9.56}}, color={191,0,0}));
  connect(fixedHeatFlow8.port,buildingBlock_thermal8.port_b) annotation(Line(visible=true, origin={144.4474,29.0862}, points={{17.3171,-0.9138},{-1.4349,-0.9138},{-1.4349,0.9138},{-14.4474,0.9138}}, color={191,0,0}));
  connect(fixedHeatFlow7.port,buildingBlock_thermal7.port_b) annotation(Line(visible=true, origin={89.0062,40.0}, points={{75.9938,10.0},{-20.9937,10.0},{-20.9937,-10.0},{-34.0062,-10.0}}, color={191,0,0}));
  connect(buildingBlock_thermal6.port_b,fixedHeatFlow6.port) annotation(Line(visible=true, origin={152.3154,80.8791}, points={{-24.8283,9.1209},{7.2761,9.1209},{7.2761,-9.1209},{10.2761,-9.1209}}, color={191,0,0}));
  connect(fixedHeatFlow5.port,buildingBlock_thermal5.port_b) annotation(Line(visible=true, origin={89.0062,92.282}, points={{75.9938,0.3221},{-20.9937,0.3221},{-20.9937,-0.3221},{-34.0062,-0.3221}}, color={191,0,0}));
  connect(buildingBlock_thermal3.thermal_connector_yp,thermal_connector19) annotation(Line(visible=true, origin={-28.4451,-14.4342}, points={{-0.0486,-7.1131},{-0.0486,-1.9623},{0.0486,-1.9623},{0.0486,11.0377}}));
  connect(buildingBlock_thermal3.thermal_connector_zp,thermal_connector18) annotation(Line(visible=true, origin={-44.7469,-14.9915}, points={{10.2531,-10.5559},{10.2531,-0.8147},{-10.2531,-0.8147},{-10.2531,12.1853}}));
  connect(buildingBlock_thermal1.thermal_connector_yp,thermal_connector17) annotation(Line(visible=true, origin={-86.0115,-13.9915}, points={{-3.9882,-7.5559},{-3.9882,-1.8147},{3.9882,-1.8147},{3.9882,11.1853}}));
  connect(buildingBlock_thermal1.thermal_connector_zp,thermal_connector16) annotation(Line(visible=true, origin={-102.9998,-14.3901}, points={{7.0002,-11.1572},{7.0002,-0.6143},{-7.0002,-0.6143},{-7.0002,12.3857}}));
  connect(bodyRadiation16.port_a,thermal_connector19.Rad) annotation(Line(visible=true, origin={-33.7289,9.8097}, points={{8.7289,8.5007},{8.7289,5.5007},{-7.6676,5.5007},{-7.6676,-9.751},{-2.1227,-9.751}}, color={191,0,0}));
  connect(bodyRadiation15.port_a,thermal_connector18.Rad) annotation(Line(visible=true, origin={-59.691,10.1433}, points={{9.691,8.3296},{9.691,5.3296},{-8.309,5.3296},{-8.309,-9.4944},{-2.7641,-9.4944}}, color={191,0,0}));
  connect(bodyRadiation14.port_a,thermal_connector17.Rad) annotation(Line(visible=true, origin={-87.905,11.0596}, points={{7.905,8.9404},{7.905,5.9404},{-7.1183,5.9404},{-7.1183,-10.4106},{-1.5735,-10.4106}}, color={191,0,0}));
  connect(bodyRadiation13.port_a,thermal_connector16.Rad) annotation(Line(visible=true, origin={-116.691,11.3803}, points={{6.691,8.6197},{6.691,5.6197},{-6.309,5.6197},{-6.309,-9.9296},{-0.7641,-9.9296}}, color={191,0,0}));
  connect(bodyRadiation16.port_b,fixedTemperature4.port) annotation(Line(visible=true, origin={-45.0,47.4026}, points={{20.0,-9.0922},{20.0,2.0266},{-20.0,2.0266},{-20.0,5.0391}}, color={191,0,0}));
  connect(bodyRadiation15.port_b,fixedTemperature4.port) annotation(Line(visible=true, origin={-57.5,47.4432}, points={{7.5,-8.9703},{7.5,1.9859},{-7.5,1.9859},{-7.5,4.9984}}, color={191,0,0}));
  connect(bodyRadiation14.port_b,fixedTemperature4.port) annotation(Line(visible=true, origin={-72.5,47.825}, points={{-7.5,-7.825},{-7.5,1.6042},{7.5,1.6042},{7.5,4.6167}}, color={191,0,0}));
  connect(bodyRadiation13.port_b,fixedTemperature4.port) annotation(Line(visible=true, origin={-87.5,47.825}, points={{-22.5,-7.825},{-22.5,1.6042},{22.5,1.6042},{22.5,4.6167}}, color={191,0,0}));
  connect(pulse1.y,prescribedHeatFlow1.Q_flow) annotation(Line(visible=true, origin={-116.2809,87.36}, points={{-7.7191,0.1749},{1.573,0.1749},{1.573,-0.1749},{4.573,-0.1749}}, color={0,0,127}));
  connect(thermal_connector3.Rad,prescribedHeatFlow1.port) annotation(Line(visible=true, origin={-47.2068,50.6182}, points={{63.7516,-20.6814},{63.7516,-26.2262},{-41.5011,-26.2262},{-41.5011,36.5669},{-44.5011,36.5669}}, color={191,0,0}));
  connect(thermal_connector2.Rad,prescribedHeatFlow1.port) annotation(Line(visible=true, origin={-46.5349,82.183}, points={{64.7593,0.3618},{64.7593,-5.183},{-42.1729,-5.183},{-42.1729,5.0021},{-45.1729,5.0021}}, color={191,0,0}));
  connect(thermal_connector1.Rad,prescribedHeatFlow1.port) annotation(Line(visible=true, origin={-116.721,-26.2137}, points={{-6.7342,-68.4559},{-6.7342,-74.0008},{-18.279,-74.0008},{-18.279,66.2137},{25.0132,66.2137},{25.0132,113.3988}}, color={191,0,0}));
  connect(prescribedHeatFlow1.port,thermal_connector.Rad) annotation(Line(visible=true, origin={-110.8265,12.1226}, points={{19.1187,75.0625},{22.1187,45.6938},{22.1187,6.2219},{-26.4041,6.2219},{-26.4041,-51.9157},{-10.5479,-51.9157}}, color={191,0,0}));
  connect(buildingBlock_thermal2.thermal_connector_zp,thermal_connector12) annotation(Line(visible=true, origin={-101.5887,-100.3582}, points={{5.5891,17.9255},{5.5891,-1.6418},{-5.5891,-1.6418},{-5.5891,-14.6418}}));
  connect(buildingBlock_thermal2.thermal_connector_yn,thermal_connector13) annotation(Line(visible=true, origin={-84.9998,-104.3582}, points={{-4.9998,5.9255},{-4.9998,2.3582},{4.9998,2.3582},{4.9998,-10.6418}}));
  connect(buildingBlock_thermal4.thermal_connector_zp,thermal_connector14) annotation(Line(visible=true, origin={-38.9427,-100.4276}, points={{4.449,17.7172},{4.449,-1.5724},{-4.449,-1.5724},{-4.449,-14.5724}}));
  connect(buildingBlock_thermal4.thermal_connector_yn,thermal_connector15) annotation(Line(visible=true, origin={-22.951,-104.4276}, points={{-5.5427,5.7172},{-5.5427,2.4276},{5.5427,2.4276},{5.5427,-10.5724}}));
  connect(bodyRadiation12.port_a,thermal_connector15.Rad) annotation(Line(visible=true, origin={-10.554,-124.9821}, points={{-4.446,-5.0179},{-4.446,-4.0179},{4.1456,-4.0179},{4.1456,6.5269},{0.6008,6.5269}}, color={191,0,0}));
  connect(bodyRadiation11.port_a,thermal_connector14.Rad) annotation(Line(visible=true, origin={-38.144,-124.9821}, points={{-6.856,-5.0179},{-6.856,-4.0179},{5.7523,-4.0179},{5.7523,6.5269},{2.2075,6.5269}}, color={191,0,0}));
  connect(bodyRadiation10.port_a,thermal_connector13.Rad) annotation(Line(visible=true, origin={-74.7901,-124.9821}, points={{-6.9127,-5.0179},{-6.9127,-4.0179},{5.7901,-4.0179},{5.7901,6.5269},{2.2452,6.5269}}, color={191,0,0}));
  connect(bodyRadiation9.port_a,thermal_connector12.Rad) annotation(Line(visible=true, origin={-101.7367,-124.9821}, points={{-6.566,-5.0179},{-6.566,-4.0179},{5.559,-4.0179},{5.559,6.5269},{2.0141,6.5269}}, color={191,0,0}));
  connect(bodyRadiation12.port_b,fixedTemperature3.port) annotation(Line(visible=true, origin={-36.4278,-161.05}, points={{21.4278,11.05},{21.4278,-2.6792},{-21.4278,-2.6792},{-21.4278,-5.6917}}, color={191,0,0}));
  connect(bodyRadiation11.port_b,fixedTemperature3.port) annotation(Line(visible=true, origin={-51.4278,-161.05}, points={{6.4278,11.05},{6.4278,-2.6792},{-6.4278,-2.6792},{-6.4278,-5.6917}}, color={191,0,0}));
  connect(bodyRadiation10.port_b,fixedTemperature3.port) annotation(Line(visible=true, origin={-69.7792,-161.05}, points={{-11.9236,11.05},{-11.9236,-2.6792},{11.9236,-2.6792},{11.9236,-5.6917}}, color={191,0,0}));
  connect(bodyRadiation9.port_b,fixedTemperature3.port) annotation(Line(visible=true, origin={-83.0792,-161.05}, points={{-25.2236,11.05},{-25.2236,-2.6792},{25.2236,-2.6792},{25.2236,-5.6917}}, color={191,0,0}));
  connect(buildingBlock_thermal8.thermal_connector_zn,thermal_connector11) annotation(Line(visible=true, origin={141.5583,15.25}, points={{-5.5583,8.75},{-5.5583,0.75},{5.5583,0.75},{5.5583,-10.25}}));
  connect(buildingBlock_thermal8.thermal_connector_yn,thermal_connector10) annotation(Line(visible=true, origin={125.0,14.25}, points={{5.0,5.75},{5.0,1.75},{-5.0,1.75},{-5.0,-9.25}}));
  connect(bodyRadiation5.port_a,thermal_connector11.Rad) annotation(Line(visible=true, origin={149.335,-1.2274}, points={{-2.6184,-5.5445},{-2.6184,2.7723},{5.2368,2.7723}}, color={191,0,0}));
  connect(bodyRadiation6.port_a,thermal_connector10.Rad) annotation(Line(visible=true, origin={121.3406,-1.1733}, points={{-3.0573,-5.4362},{-3.0573,2.7181},{6.1145,2.7181}}, color={191,0,0}));
  connect(bodyRadiation7.port_a,thermal_connector9.Rad) annotation(Line(visible=true, origin={83.3934,0.9027}, points={{-2.0309,-5.3955},{-2.0309,2.6977},{4.0618,2.6977}}, color={191,0,0}));
  connect(buildingBlock_thermal7.thermal_connector_zn,thermal_connector9) annotation(Line(visible=true, origin={69.75,15.5278}, points={{-8.75,8.4722},{-0.75,8.4722},{-0.75,-8.4722},{10.25,-8.4722}}));
  connect(buildingBlock_thermal7.thermal_connector_yn,thermal_connector8) annotation(Line(visible=true, origin={55.0,14.1451}, points={{0.0,5.8549},{-0.0,-5.8549}}));
  connect(bodyRadiation8.port_a,thermal_connector8.Rad) annotation(Line(visible=true, origin={60.2044,-0.3616}, points={{-6.921,-4.1312},{-6.921,-3.1312},{5.7956,-3.1312},{5.7956,5.1968},{2.2508,5.1968}}, color={191,0,0}));
  connect(buildingBlock_thermal3.thermal_connector_zn,thermal_TIM10.thermal_connector) annotation(Line(visible=true, origin={42.5396,-50.3912}, points={{-65.0333,12.8439},{10.7438,-34.6088},{10.7438,34.6088},{-27.5396,60.3912}}));
  connect(thermal_TIM10.thermal_connector1,buildingBlock_thermal6.thermal_connector_zp) annotation(Line(visible=true, origin={121.1487,19.6561}, points={{-86.1487,-9.6561},{23.1155,-28.8912},{23.1155,28.8912},{0.3385,76.3439}}));
  connect(thermal_TIM12.thermal_connector1,buildingBlock_thermal8.thermal_connector_zp) annotation(Line(visible=true, origin={124.2833,-30.2693}, points={{-87.5938,10.2693},{22.4937,-18.8166},{22.4937,18.8166},{-0.2833,66.2693}}));
  connect(thermal_TIM11.thermal_connector1,buildingBlock_thermal7.thermal_connector_zp) annotation(Line(visible=true, origin={58.0333,-29.4527}, points={{-46.5271,7.6053},{13.7437,-18.0},{13.7437,18.0},{-9.0333,65.4527}}));
  connect(bodyRadiation8.port_b,fixedTemperature2.port) annotation(Line(visible=true, origin={78.2833,-34.2365}, points={{-25.0,9.7437},{-25.0,-2.2437},{25.0,-2.2437},{25.0,-5.2562}}, color={191,0,0}));
  connect(bodyRadiation7.port_b,fixedTemperature2.port) annotation(Line(visible=true, origin={92.3229,-34.2365}, points={{-10.9604,9.7437},{-10.9604,-2.2437},{10.9604,-2.2437},{10.9604,-5.2562}}, color={191,0,0}));
  connect(bodyRadiation6.port_b,fixedTemperature2.port) annotation(Line(visible=true, origin={110.7833,-34.7657}, points={{7.5,8.1562},{7.5,-1.7146},{-7.5,-1.7146},{-7.5,-4.7271}}, color={191,0,0}));
  connect(bodyRadiation5.port_b,fixedTemperature2.port) annotation(Line(visible=true, origin={125.0,-34.8063}, points={{21.7167,8.0344},{21.7167,-1.674},{-21.7167,-1.674},{-21.7167,-4.6865}}, color={191,0,0}));
  connect(thermal_TIM9.thermal_connector1,buildingBlock_thermal5.thermal_connector_zp) annotation(Line(visible=true, origin={39.2531,50.51}, points={{-31.3969,-40.51},{-37.7469,14.49},{34.2406,14.49},{9.7469,47.4498}}));
  connect(buildingBlock_thermal1.thermal_connector_zn,thermal_TIM9.thermal_connector) annotation(Line(visible=true, origin={-30.6581,-23.1739}, points={{-53.3416,-14.3735},{-21.8353,23.6667},{18.5144,33.1739}}));
  connect(buildingBlock_thermal4.thermal_connector_zn,thermal_TIM12.thermal_connector) annotation(Line(visible=true, origin={27.0125,-69.9837}, points={{-49.5062,-24.7267},{-18.0,28.8433},{-10.3229,49.9837}}));
  connect(buildingBlock_thermal2.thermal_connector_zn,thermal_TIM11.thermal_connector) annotation(Line(visible=true, origin={-27.3248,-68.8023}, points={{-56.6749,-25.6303},{-25.1686,29.2951},{18.831,46.9549}}));
  connect(bodyRadiation3.port_b,fixedTemperature1.port) annotation(Line(visible=true, origin={98.4578,163.4938}, points={{11.5422,-13.4938},{11.5422,3.4938},{-11.5422,3.4938},{-11.5422,6.5062}}, color={191,0,0}));
  connect(thermal_connector5.Rad,bodyRadiation3.port_a) annotation(Line(visible=true, origin={106.054,126.1354}, points={{-0.2675,-4.7969},{-3.8123,-4.7969},{-3.8123,2.8646},{3.946,2.8646},{3.946,3.8646}}, color={191,0,0}));
  connect(bodyRadiation4.port_b,fixedTemperature1.port) annotation(Line(visible=true, origin={113.4578,163.4938}, points={{26.5422,-13.4938},{26.5422,3.4938},{-26.5422,3.4938},{-26.5422,6.5062}}, color={191,0,0}));
  connect(bodyRadiation2.port_b,fixedTemperature1.port) annotation(Line(visible=true, origin={75.9578,163.9479}, points={{-10.9578,-12.1313},{-10.9578,3.0396},{10.9578,3.0396},{10.9578,6.0521}}, color={191,0,0}));
  connect(bodyRadiation1.port_b,fixedTemperature1.port) annotation(Line(visible=true, origin={60.9578,163.9898}, points={{-25.9578,-12.0055},{-25.9578,2.9977},{25.9578,2.9977},{25.9578,6.0102}}, color={191,0,0}));
  connect(thermal_connector7.Rad,bodyRadiation4.port_a) annotation(Line(visible=true, origin={134.109,126.0779}, points={{-1.5641,-4.8832},{-5.109,-4.8832},{-5.109,2.9221},{5.891,2.9221},{5.891,3.9221}}, color={191,0,0}));
  connect(thermal_connector6.Rad,bodyRadiation2.port_a) annotation(Line(visible=true, origin={57.149,125.2721}, points={{-1.5375,-6.8169},{-7.0823,-6.8169},{-7.0823,3.5446},{7.851,3.5446},{7.851,6.5446}}, color={191,0,0}));
  connect(thermal_connector4.Rad,bodyRadiation1.port_a) annotation(Line(visible=true, origin={31.309,125.3727}, points={{1.2359,-6.9175},{-4.309,-6.9175},{-4.309,3.6117},{3.691,3.6117},{3.691,6.6117}}, color={191,0,0}));
  connect(thermal_connector7,buildingBlock_thermal6.thermal_connector_zn) annotation(Line(visible=true, origin={136.7436,101.9411}, points={{3.2564,15.7984},{3.2564,1.0714},{-3.2564,1.0714},{-3.2564,-17.9411}}, color={255,0,0}));
  connect(buildingBlock_thermal6.thermal_connector_yp,thermal_connector5) annotation(Line(visible=true, origin={120.3644,106.9125}, points={{7.1227,-6.9125},{7.1227,-2.0292},{-7.1227,-2.0292},{-7.1227,10.9708}}));
  connect(buildingBlock_thermal5.thermal_connector_zn,thermal_connector6) annotation(Line(visible=true, origin={62.0333,102.24}, points={{-1.0333,-16.2801},{-1.0333,1.76},{1.0333,1.76},{1.0333,12.76}}));
  connect(buildingBlock_thermal5.thermal_connector_yp,thermal_connector4) annotation(Line(visible=true, origin={50.0,110.6533}, points={{5.0,-8.6934},{5.0,4.3467},{-10.0,4.3467}}));
  connect(buildingBlock_thermal2.thermal_connector_xn,thermal_connector1) annotation(Line(visible=true, origin={-108.4999,-87.8236}, points={{8.5003,-0.6091},{1.4999,-0.6091},{1.4999,0.6091},{-11.5001,0.6091}}));
  connect(buildingBlock_thermal1.thermal_connector_xn,thermal_connector) annotation(Line(visible=true, origin={-106.9393,-31.9426}, points={{6.9397,0.3953},{2.0201,0.3953},{2.0201,-0.3953},{-10.9799,-0.3953}}));
  connect(buildingBlock_thermal7.thermal_connector_xn,thermal_connector3) annotation(Line(visible=true, origin={32.75,33.696}, points={{12.25,-3.696},{0.25,-3.696},{0.25,3.696},{-12.75,3.696}}));
  connect(thermal_connector2,buildingBlock_thermal5.thermal_connector_xn) annotation(Line(visible=true, origin={37.6636,90.9799}, points={{-15.9841,-0.9799},{4.3239,-0.9799},{4.3239,0.9799},{7.3364,0.9799}}, color={255,0,0}));
  connect(buildingBlock_thermal1.thermal_connector_yn,thermal_TIM3.thermal_connector) annotation(Line(visible=true, origin={-90.0138,-47.5411}, points={{0.0141,5.9937},{0.0141,-0.9937},{-0.0141,-0.9937},{-0.0141,-4.0063}}));
  connect(buildingBlock_thermal1.thermal_connector_xp,thermal_TIM2.thermal_connector) annotation(Line(visible=true, origin={-74.2467,-31.5473}, points={{-5.753,0.0},{5.753,0.0}}));
  connect(thermal_TIM2.thermal_connector1,buildingBlock_thermal3.thermal_connector_xn) annotation(Line(visible=true, origin={-21.8985,-4.2492}, points={{-26.5953,-27.2981},{-23.6838,-27.2981},{-20.0907,-27.2981},{-16.5953,-27.2981}}));
  connect(buildingBlock_thermal3.thermal_connector_yn,thermal_TIM4.thermal_connector) annotation(Line(visible=true, origin={-28.4937,-45.5057}, points={{0.0,3.9583},{0.0,-3.9583}}));
  connect(thermal_TIM4.thermal_connector1,buildingBlock_thermal4.thermal_connector_yp) annotation(Line(visible=true, origin={3.6027,-77.0813}, points={{-32.0965,7.6173},{-32.0965,5.534},{-32.0965,3.2449},{-32.0965,0.534},{-32.0965,-1.6291}}));
  connect(buildingBlock_thermal4.thermal_connector_xn,thermal_TIM1.thermal_connector1) annotation(Line(visible=true, origin={-24.3973,-92.8513}, points={{-14.0965,4.1409},{-14.0965,4.3184},{-16.6119,4.3184},{-19.0965,4.3184},{-24.0965,4.3184}}));
  connect(thermal_TIM1.thermal_connector,buildingBlock_thermal2.thermal_connector_xp) annotation(Line(visible=true, origin={-75.6169,-88.4828}, points={{7.1232,-0.0502},{-1.3702,-0.0502},{-1.3702,0.0502},{-4.3827,0.0502}}));
  connect(buildingBlock_thermal2.thermal_connector_yp,thermal_TIM3.thermal_connector1) annotation(Line(visible=true, origin={-90.0138,-74.7749}, points={{0.0141,-3.6577},{0.0141,0.2151},{-0.0141,0.2151},{-0.0141,3.2276}}));
  connect(thermal_TIM5.thermal_connector,buildingBlock_thermal5.thermal_connector_xp) annotation(Line(visible=true, origin={70.2562,90.9799}, points={{9.7438,-0.9799},{-2.2437,-0.9799},{-2.2437,0.9799},{-5.2562,0.9799}}));
  connect(buildingBlock_thermal6.thermal_connector_xn,thermal_TIM5.thermal_connector1) annotation(Line(visible=true, origin={108.7436,90.0}, points={{8.7436,0.0},{-8.7436,0.0}}));
  connect(thermal_TIM8.thermal_connector,buildingBlock_thermal6.thermal_connector_yn) annotation(Line(visible=true, origin={126.2436,75.9938}, points={{-1.2436,-5.9938},{-1.2436,0.9937},{1.2436,0.9937},{1.2436,4.0062}}));
  connect(buildingBlock_thermal8.thermal_connector_yp,thermal_TIM8.thermal_connector1) annotation(Line(visible=true, origin={127.5,45.9937}, points={{2.5,-5.9937},{2.5,0.9937},{-2.5,0.9937},{-2.5,4.0063}}));
  connect(thermal_TIM6.thermal_connector1,buildingBlock_thermal8.thermal_connector_xn) annotation(Line(visible=true, origin={110.0,30.0}, points={{-10.0,0.0},{10.0,0.0}}));
  connect(buildingBlock_thermal7.thermal_connector_xp,thermal_TIM6.thermal_connector) annotation(Line(visible=true, origin={72.5,30.0}, points={{-7.5,-0.0},{7.5,0.0}}));
  connect(thermal_TIM7.thermal_connector1,buildingBlock_thermal7.thermal_connector_yp) annotation(Line(visible=true, origin={52.5,44.7367}, points={{-2.5,8.1851},{-2.5,-1.7242},{2.5,-1.7242},{2.5,-4.7367}}));
  connect(buildingBlock_thermal5.thermal_connector_yn,thermal_TIM7.thermal_connector) annotation(Line(visible=true, origin={52.5,76.6876}, points={{2.5,5.2723},{2.5,-0.7533},{-2.5,-0.7533},{-2.5,-3.7658}}));
end Satellite_2x2x2_mit_Sonne;
