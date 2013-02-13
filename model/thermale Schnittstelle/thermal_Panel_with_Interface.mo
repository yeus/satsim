model thermal_Panel_with_Interface "Seitenpanel mit Schnittstelle"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.VerticalCylinder, extent={{-10.0,-100.0},{10.0,100.0}}),Rectangle(visible=true, origin={10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-50.0},{10.0,50.0}}),Text(visible=true, origin={-10.0,135.6661}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0,-20.0},{100.0,20.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS) annotation(Placement(visible=true, transformation(origin={-10.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_element BuildingBlock_Panel(C=C_Panel, G=G_Panel) annotation(Placement(visible=true, transformation(origin={-41.5072,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-147.3668,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={70.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_TSS=2500 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-48.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_MSS=33 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-16.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_ESS=1 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={16.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_Panel=7500 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={49.0,78.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_TSS=230 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={-48.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_MSS=130 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={-16.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_ESS=15 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={16.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.HeatCapacity C_Panel=380 "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={49.0,51.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Real Gr_Rad(unit="m2")=0.01 "Net radiation conductance between two surfaces (see docu) tbd";
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation Radiator(Gr=Gr_Rad) annotation(Placement(visible=true, transformation(origin={-10.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(schnittstelle1.TSS_IF,thermal_connector.TSS) annotation(Line(visible=true, origin={45.1253,-3.7514}, points={{-45.1253,-1.2486},{11.8747,-1.2486},{11.8747,1.2487},{21.3759,1.2487}}, color={191,0,0}));
  connect(schnittstelle1.MSS_IF,thermal_connector.MSS) annotation(Line(visible=true, origin={45.0846,1.2362}, points={{-45.2172,-1.2984},{11.9154,-1.2984},{11.9154,1.2984},{21.3863,1.2984}}, color={191,0,0}));
  connect(schnittstelle1.ESS_IF,thermal_connector.ESS) annotation(Line(visible=true, origin={27.7788,8.7073}, points={{-27.7788,-3.7073},{-24.7788,-3.7073},{-24.7788,4.2927},{38.6683,4.2927},{38.6683,-1.1707}}, color={191,0,0}));
  connect(thermal_connector.Rad,Radiator.port_b) annotation(Line(visible=true, origin={44.3632,-42.4851}, points={{22.1816,35.0299},{22.1816,-17.515},{-44.3632,-17.515}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_b,Radiator.port_a) annotation(Line(visible=true, origin={-24.3268,-30.1}, points={{-6.9804,29.9},{1.3268,29.9},{1.3268,-29.9},{4.3268,-29.9}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_a,port_a) annotation(Line(visible=true, origin={-99.537,0.0}, points={{47.8298,0.0},{-47.8298,0.0}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={-22.5268,-0.1}, points={{-8.7804,-0.1},{-0.4732,-0.1},{-0.4732,0.1},{9.7268,0.1}}, color={191,0,0}));
end thermal_Panel_with_Interface;
