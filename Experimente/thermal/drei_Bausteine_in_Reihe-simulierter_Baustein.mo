model drei_Bausteine_in_Reihe
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=100) annotation(Placement(visible=true, transformation(origin={-120.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=293) annotation(Placement(visible=true, transformation(origin={125.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  thermal_TIM thermal_TIM1(G_TIM_TSS=160, G_MSS=0, G_ESS=0) annotation(Placement(visible=true, transformation(origin={-42.7906,68.269}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM2(G_ESS=0, G_MSS=0, G_TIM_TSS=160) annotation(Placement(visible=true, transformation(origin={40.0,67.9424}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal1 annotation(Placement(visible=true, transformation(origin={-88.017,70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal2 annotation(Placement(visible=true, transformation(origin={-2.6132,72.4177}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  BuildingBlock_thermal buildingBlock_thermal3 annotation(Placement(visible=true, transformation(origin={80.0,70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(buildingBlock_thermal3.port_b,fixedTemperature1.port) annotation(Line(visible=true, origin={91.6667,43.3333}, points={{-11.6667,26.6667},{-11.6667,-13.3333},{23.3333,-13.3333}}, color={191,0,0}));
  connect(thermal_TIM2.thermal_connector1,buildingBlock_thermal3.thermal_connector_xn) annotation(Line(visible=true, origin={63.4937,68.9712}, points={{-13.4937,-1.0288},{3.4937,-1.0288},{3.4937,1.0288},{6.5063,1.0288}}));
  connect(buildingBlock_thermal2.thermal_connector_xp,thermal_TIM2.thermal_connector) annotation(Line(visible=true, origin={22.8405,70.18}, points={{-15.4536,2.2377},{4.147,2.2377},{4.147,-2.2377},{7.1595,-2.2377}}));
  connect(thermal_TIM1.thermal_connector1,buildingBlock_thermal2.thermal_connector_xn) annotation(Line(visible=true, origin={-19.1638,70.3434}, points={{-13.6269,-2.0743},{3.5381,-2.0743},{3.5381,2.0743},{6.5506,2.0743}}));
  connect(buildingBlock_thermal1.thermal_connector_xp,thermal_TIM1.thermal_connector) annotation(Line(visible=true, origin={-60.6035,69.1345}, points={{-17.4135,0.8655},{4.8003,0.8655},{4.8003,-0.8655},{7.8128,-0.8655}}));
  connect(buildingBlock_thermal1.port_b,fixedHeatFlow1.port) annotation(Line(visible=true, origin={-95.3447,23.3333}, points={{7.3277,46.6667},{7.3277,-23.3333},{-14.6553,-23.3333}}, color={191,0,0}));
end drei_Bausteine_in_Reihe;
