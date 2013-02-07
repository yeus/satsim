model thermal_Panel_with_Interface "Seitenpanel mit Schnittstelle"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.VerticalCylinder, extent={{-10.0,-100.0},{10.0,100.0}}),Rectangle(visible=true, origin={10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-50.0},{10.0,50.0}}),Text(visible=true, origin={0.0,120.0}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0,-20.0},{100.0,20.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS) annotation(Placement(visible=true, transformation(origin={-10.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_element BuildingBlock_Panel(C=C_Panel, G=G_Panel) annotation(Placement(visible=true, transformation(origin={-41.5072,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-147.3668,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={70.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={30.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_TSS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-48.0,-42.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_MSS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-16.0,-42.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_ESS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={16.0,-42.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_Panel "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={49.0,-42.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance C_TSS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-48.0,-69.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance C_MSS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-16.0,-69.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance C_ESS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={16.0,-69.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance C_Panel "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={49.0,-69.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
equation 
  connect(BuildingBlock_Panel.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={-22.5268,-0.1}, points={{-8.7804,-0.1},{-0.4732,-0.1},{-0.4732,0.1},{9.7268,0.1}}, color={191,0,0}));
  connect(schnittstelle1.thermal_connector,thermal_connector) annotation(Line(visible=true, origin={31.5,-0.0}, points={{-38.5,0.0},{38.5,-0.0}}));
  connect(BuildingBlock_Panel.port_a,port_a) annotation(Line(visible=true, origin={-99.537,-0.0}, points={{47.8298,-0.0},{-47.8298,0.0}}, color={191,0,0}));
end thermal_Panel_with_Interface;
