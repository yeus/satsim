model thermal_Panel_with_Interface "Seitenpanel mit Schnittstelle"
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1 annotation(Placement(visible=true, transformation(origin={-10.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_element BuildingBlock_Panel annotation(Placement(visible=true, transformation(origin={-41.5072,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-147.3668,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-99.2369,-0.586}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(BuildingBlock_Panel.port_a,port_a) annotation(Line(visible=true, origin={-116.8847,0.2677}, points={{65.4463,0.2677},{-17.4821,0.2677},{-17.4821,-0.2677},{-30.4821,-0.2677}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={-24.4016,0.6273}, points={{-7.0093,-0.0767},{1.3364,-0.0767},{1.3364,0.0767},{4.3364,0.0767}}, color={191,0,0}));
end thermal_Panel_with_Interface;
