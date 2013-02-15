model radiatortest
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C=1000) annotation(Placement(visible=true, transformation(origin={-85.0,47.3637}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor2(C=1000) annotation(Placement(visible=true, transformation(origin={0.0,48.3436}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor3(C=1000) annotation(Placement(visible=true, transformation(origin={80.0,46.7104}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr=0.128) annotation(Placement(visible=true, transformation(origin={-45.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation2(Gr=0.128) annotation(Placement(visible=true, transformation(origin={40.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(Q_flow=100) annotation(Placement(visible=true, transformation(origin={-130.0,37.5926}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=293) annotation(Placement(visible=true, transformation(origin={113.215,32.6646}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
equation 
  connect(heatCapacitor1.port,fixedHeatFlow1.port) annotation(Line(visible=true, origin={-104.8,36.2552}, points={{19.8,1.1084},{19.8,-1.8916},{-12.2,-1.8916},{-12.2,1.3373},{-15.2,1.3373}}, color={191,0,0}));
  connect(bodyRadiation1.port_a,heatCapacitor1.port) annotation(Line(visible=true, origin={-68.2,37.2182}, points={{13.2,2.7818},{10.2,2.7818},{10.2,-2.8545},{-16.8,-2.8545},{-16.8,0.1455}}, color={191,0,0}));
  connect(heatCapacitor2.port,bodyRadiation1.port_b) annotation(Line(visible=true, origin={-19.8,37.8062}, points={{19.8,0.5374},{19.8,-2.4626},{-12.2,-2.4626},{-12.2,2.1938},{-15.2,2.1938}}, color={191,0,0}));
  connect(bodyRadiation2.port_a,heatCapacitor2.port) annotation(Line(visible=true, origin={16.8,37.8062}, points={{13.2,2.1938},{10.2,2.1938},{10.2,-2.4626},{-16.8,-2.4626},{-16.8,0.5374}}, color={191,0,0}));
  connect(heatCapacitor3.port,bodyRadiation2.port_b) annotation(Line(visible=true, origin={63.2,36.8262}, points={{16.8,-0.1158},{16.8,-3.1158},{-10.2,-3.1158},{-10.2,3.1738},{-13.2,3.1738}}, color={191,0,0}));
  connect(fixedTemperature1.port,heatCapacitor3.port) annotation(Line(visible=true, origin={87.7383,34.0132}, points={{15.4767,-1.3486},{-7.7383,-1.3486},{-7.7383,2.6972}}, color={191,0,0}));
end radiatortest;
