model intra_BuildingBlock_connector "intra_BuildingBlock_connector"
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConnector_contact(G=G_c) annotation(Placement(transformation(origin={22.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), visible=true));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConector_parallel(G=G_p) annotation(Placement(transformation(origin={-20.0,0.0}, extent={{-12.2757,-12.2757},{12.2757,12.2757}}, rotation=0), visible=true));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr=Gr) annotation(Placement(visible=true, transformation(origin={0.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Real Gr(unit="m2") "Net radiation conductance between two surfaces (see docu)" annotation(Placement(transformation(origin={-11.8294,-26.4099}, extent={{-12,-12},{12,12}})));
  parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_c "Thermal Insulance of TSS Surfaces";
  parameter Modelica.SIunits.Area A_cross_Panel=0.004 "Querschnittsflaeche des Aussenpanels";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(transformation(origin={-60.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={-100.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), visible=true));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(origin={60.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={100.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), visible=true));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
  parameter Modelica.SIunits.Area A_p "QuerschnittstflÃ¤che des Materials/Kontaktes";
  parameter Modelica.SIunits.Length x_p "LÃ¤nge des Materials in Richtung der WÃ¤rmeausbreitung";
protected 
  parameter Modelica.SIunits.ThermalConductance G_p=A_p*material.k/x_p "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_c=A_cross_Panel/ThermalInsulance_c "Constant thermal conductance of the contact surfaces";
equation 
  connect(bodyradiation1.port_b,port_b) annotation(Line(visible=true, origin={40.0,15.0}, points={{-30.0,15.0},{5.0,15.0},{5.0,-15.0},{20.0,-15.0}}, color={191,0,0}));
  connect(thermalConnector_contact.port_b,port_b) annotation(Line(visible=true, origin={47.0,-0.0}, points={{-13.0,0.0},{13.0,-0.0}}, color={191,0,0}));
  connect(bodyradiation1.port_a,port_a) annotation(Line(visible=true, origin={-40.0,15.0}, points={{30.0,15.0},{-5.0,15.0},{-5.0,-15.0},{-20.0,-15.0}}, color={191,0,0}));
  connect(thermalConector_parallel.port_a,port_a) annotation(Line(visible=true, origin={-46.1379,0.0}, points={{13.8622,0.0},{-13.8622,-0.0}}, color={191,0,0}));
  connect(thermalConector_parallel.port_b,thermalConnector_contact.port_a) annotation(Line(visible=true, origin={1.1379,0.0}, points={{-8.8621,0.0},{8.8621,-0.0}}, color={191,0,0}));
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, grid={10,10}, preserveAspectRatio=true, initialScale=0.1), graphics={Rectangle(visible=true, origin={0.0,-0.8163}, lineColor={255,0,0}, fillColor={255,255,255}, pattern=LinePattern.Dash, extent={{-94.6355,-39.1837},{96.011,40.8163}}),Text(visible=true, fillColor={0,0,255}, extent={{-3.0261,-1.9257},{0.0,8.2531}}, textString="T", fontSize=24, fontName="Arial"),Text(visible=true, origin={82.817,1.2507}, rotation=90, fillPattern=FillPattern.Solid, extent={{-101.2507,52.8171},{98.7493,112.817}}, textString="%name", fontName="Arial")}));
end intra_BuildingBlock_connector;
