model drei_Bausteine_in_Reihe
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  BuildingBlock_thermal buildingBlock_thermal1(G_aP=150, G_P_EB=300, G_Panel=14) annotation(Placement(visible=true, transformation(origin={-77.6016,29.1319}, extent={{-19.1319,-19.1319},{19.1319,19.1319}}, rotation=0)));
  thermal_TIM thermal_TIM1(G_TIM_TSS=150, G_ESS=0, G_MSS=0) annotation(Placement(visible=true, transformation(origin={-40.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal2(G_aP=150, G_P_EB=300, G_Panel=15) annotation(Placement(visible=true, transformation(origin={-0.0,30.0}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
  thermal_TIM thermal_TIM2(G_TIM_TSS=150, G_MSS=0, G_ESS=0) annotation(Placement(visible=true, transformation(origin={40.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal3(G_aP=150, G_P_EB=300, G_Panel=15) annotation(Placement(visible=true, transformation(origin={80.0,30.0}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=100) annotation(Placement(visible=true, transformation(origin={-120.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=293) annotation(Placement(visible=true, transformation(origin={125.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
equation 
  connect(fixedTemperature1.port,buildingBlock_thermal3.port_b) annotation(Line(visible=true, origin={97.5,30.0}, points={{17.5,0.0},{-17.5,0.0}}, color={191,0,0}));
  connect(fixedHeatFlow1.port,buildingBlock_thermal1.port_b) annotation(Line(visible=true, origin={-96.7791,14.566}, points={{-13.2209,-14.566},{-2.9783,-14.566},{-2.9783,14.566},{19.1775,14.566}}, color={191,0,0}));
  connect(thermal_TIM2.thermal_connector1,buildingBlock_thermal3.thermal_connector_xn) annotation(Line(visible=true, origin={55.0,30.0}, points={{-5.0,-0.0},{5.0,0.0}}));
  connect(buildingBlock_thermal2.thermal_connector_xp,thermal_TIM2.thermal_connector) annotation(Line(visible=true, origin={25.0,30.0}, points={{-5.0,0.0},{5.0,-0.0}}));
  connect(thermal_TIM1.thermal_connector1,buildingBlock_thermal2.thermal_connector_xn) annotation(Line(visible=true, origin={-25.0,30.0}, points={{-5.0,0.0},{5.0,0.0}}));
  connect(buildingBlock_thermal1.thermal_connector_xp,thermal_TIM1.thermal_connector) annotation(Line(visible=true, origin={-53.6237,29.566}, points={{-4.846,-0.434},{0.6112,-0.434},{0.6112,0.434},{3.6237,0.434}}));
end drei_Bausteine_in_Reihe;
