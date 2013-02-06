model test_2panele
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1(C_ESS=10, C_MSS=1000, C_TSS=100, G_ESS=0, G_MSS=0, G_TSS=100) annotation(Placement(visible=true, transformation(origin={-27.3894,30.3266}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-720)));
  thermal_TIM thermal_TIM1(G_ESS=0, G_MSS=0, G_TIM_TSS=300) annotation(Placement(visible=true, transformation(origin={3.0658,30.6533}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-720)));
  Schnittstelle schnittstelle2(C_ESS=10, C_MSS=1000, C_TSS=100, G_MSS=0, G_TSS=100, G_ESS=0) annotation(Placement(visible=true, transformation(origin={30.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-1260)));
  thermal_element panel_links(C=1000, G=300) annotation(Placement(visible=true, transformation(origin={-75.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-720)));
  thermal_element thermal_element2(C=1000, G=300) annotation(Placement(visible=true, transformation(origin={65.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-720)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=100) annotation(Placement(visible=true, transformation(origin={-120.0,26.9961}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-1080)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=300) annotation(Placement(visible=true, transformation(origin={105.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-900)));
equation 
  connect(schnittstelle1.thermal_connector,thermal_TIM1.thermal_connector) annotation(Line(visible=true, origin={-10.8673,30.9723}, rotation=-630, points={{-0.1476,10.2344},{0.9331,-0.1476},{0.9331,0.1476},{0.1476,-8.3681}}));
  connect(panel_links.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={-45.8169,30.7907}, rotation=-630, points={{-0.24,19.0868},{5.3623,-0.24},{5.3623,0.24},{0.24,-8.3623}}, color={191,0,0}));
  connect(schnittstelle2.port_a,thermal_element2.port_a) annotation(Line(visible=true, origin={49.7835,29.9157}, rotation=-630, points={{-0.6197,9.7183},{2.2165,-0.6197},{2.2165,0.6197},{0.6197,-5.2853}}, color={191,0,0}));
  connect(thermal_TIM1.thermal_connector1,schnittstelle2.thermal_connector) annotation(Line(visible=true, origin={16.2249,30.2792}, rotation=-630, points={{0.7773,9.0374},{0.7751,0.7773},{0.7751,-0.7773},{-0.7773,-7.4873}}));
  connect(fixedHeatFlow1.port,panel_links.port_a) annotation(Line(visible=true, origin={-92.7328,31.2657}, rotation=-630, points={{-4.2696,17.2672},{4.7328,0.7304},{4.7328,-0.7304},{-0.7304,-7.8016}}, color={191,0,0}));
  connect(fixedTemperature1.port,thermal_element2.port_b) annotation(Line(visible=true, origin={81.5722,30.2753}, rotation=-630, points={{-0.2753,-13.4278},{-3.4759,-0.2753},{-3.4759,0.2753},{0.2753,6.4759}}, color={191,0,0}));
end test_2panele;
