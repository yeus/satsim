model Doublethermal_Panel_with_2Interfaces "Seitenpanel mit Schnittstelle"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.VerticalCylinder, extent={{-10.0,-100.0},{10.0,100.0}}),Rectangle(visible=true, origin={10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-80.0},{10.0,80.0}}),Text(visible=true, origin={-10.0,135.6661}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0,-20.0},{100.0,20.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS) annotation(Placement(visible=true, transformation(origin={-10.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_element BuildingBlock_Panel(C=C_Panel, G=G_Panel) annotation(Placement(visible=true, transformation(origin={-41.5072,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-147.3668,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector2 annotation(Placement(visible=true, transformation(origin={70.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={30.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_TSS=2500 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-48.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_MSS=33 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-16.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_ESS=1 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={16.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_Panel=7500 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={49.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_TSS=230 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={-48.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_MSS=130 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={-16.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_ESS=15 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={16.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_Panel=380 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={49.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_p=130 "Constant thermal conductance of panel material parallel to main surface (near ro infinity if connected to main surface)" annotation(Placement(visible=true, transformation(origin={78.0,63.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element BuildingBlock_PanelDouble(C=C_Panel, G=G_Panel) annotation(Placement(visible=true, transformation(origin={-41.8,-72.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Schnittstelle schnittstelle2(C_ESS=C_ESS, C_MSS=C_MSS, C_TSS=C_TSS, G_ESS=G_ESS, G_MSS=G_MSS, G_TSS=G_TSS) annotation(Placement(visible=true, transformation(origin={-12.5793,-73.9367}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={68.5266,-77.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={30.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductionBetweenInterfaces(G=G_p) annotation(Placement(visible=true, transformation(origin={-28.0916,-35.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
equation 
  connect(thermal_connector2.Rad,BuildingBlock_Panel.port_b) annotation(Line(visible=true, origin={9.0336,-6.771}, points={{57.5112,-0.6841},{57.5112,-6.229},{-37.3408,-6.229},{-37.3408,6.571},{-40.3408,6.571}}, color={191,0,0}));
  connect(schnittstelle1.TSS_IF,thermal_connector2.TSS) annotation(Line(visible=true, origin={45.1253,-3.7514}, points={{-45.1253,-1.2486},{11.8747,-1.2486},{11.8747,1.2487},{21.3759,1.2487}}, color={191,0,0}));
  connect(schnittstelle1.MSS_IF,thermal_connector2.MSS) annotation(Line(visible=true, origin={45.0846,1.2362}, points={{-45.2172,-1.2984},{11.9154,-1.2984},{11.9154,1.2984},{21.3863,1.2984}}, color={191,0,0}));
  connect(schnittstelle1.ESS_IF,thermal_connector2.ESS) annotation(Line(visible=true, origin={27.7788,8.7073}, points={{-27.7788,-3.7073},{-24.7788,-3.7073},{-24.7788,4.2927},{38.6683,4.2927},{38.6683,-1.1707}}, color={191,0,0}));
  connect(port_a,BuildingBlock_PanelDouble.port_a) annotation(Line(visible=true, origin={-77.3417,-36.0}, points={{-70.0251,36.0},{22.3417,36.0},{22.3417,-36.0},{25.3417,-36.0}}, color={191,0,0}));
  connect(BuildingBlock_PanelDouble.port_b,thermalConductionBetweenInterfaces.port_b) annotation(Line(visible=true, origin={-29.2611,-63.1333}, points={{-2.3389,-9.0667},{1.1695,-9.0667},{1.1695,18.1333}}, color={191,0,0}));
  connect(thermalConductionBetweenInterfaces.port_a,BuildingBlock_Panel.port_b) annotation(Line(visible=true, origin={-29.1635,-8.4667}, points={{1.0719,-16.5333},{1.0719,8.2667},{-2.1437,8.2667}}, color={191,0,0}));
  connect(schnittstelle2.ESS_IF,thermal_connector1.ESS) annotation(Line(visible=true, origin={25.6419,-67.0674}, points={{-28.2212,-1.8694},{-25.2212,-1.8694},{-25.2212,3.0674},{39.3319,3.0674},{39.3319,-2.396}}, color={191,0,0}));
  connect(thermal_connector1.MSS,schnittstelle2.MSS_IF) annotation(Line(visible=true, origin={15.7817,-74.2322}, points={{49.2157,-0.2332},{-15.361,-0.2332},{-15.361,0.2332},{-18.4936,0.2332}}, color={191,0,0}));
  connect(schnittstelle2.TSS_IF,thermal_connector1.TSS) annotation(Line(visible=true, origin={43.3755,-79.2197}, points={{-45.9548,0.283},{12.1512,0.283},{12.1512,-0.283},{21.6524,-0.283}}, color={191,0,0}));
  connect(thermal_connector1.Rad,BuildingBlock_PanelDouble.port_b) annotation(Line(visible=true, origin={8.2686,-81.771}, points={{56.8029,-2.6841},{56.8029,-8.229},{-36.8686,-8.229},{-36.8686,9.571},{-39.8686,9.571}}, color={191,0,0}));
  connect(BuildingBlock_PanelDouble.port_b,schnittstelle2.port_a) annotation(Line(visible=true, origin={-24.5345,-73.0684}, points={{-7.0655,0.8684},{-1.0448,0.8684},{-1.0448,-0.8684},{9.1552,-0.8684}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_a,port_a) annotation(Line(visible=true, origin={-99.537,0.0}, points={{47.8298,0.0},{-47.8298,0.0}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={-22.5268,-0.1}, points={{-8.7804,-0.1},{-0.4732,-0.1},{-0.4732,0.1},{9.7268,0.1}}, color={191,0,0}));
end Doublethermal_Panel_with_2Interfaces;