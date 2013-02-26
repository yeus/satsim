model intra_BuildingBlock_connector "intra_BuildingBlock_connector"
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConnector_contact(G=G_c) annotation(Placement(transformation(origin={30.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), visible=true));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConector_parallel(G=G_p) annotation(Placement(transformation(origin={-30.0,0.0}, extent={{-12.2757,-12.2757},{12.2757,12.2757}}, rotation=0), visible=true));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr=Gr) annotation(Placement(visible=true, transformation(origin={0.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Real Gr(unit="m2") "Net radiation conductance between two surfaces (see docu)" annotation(Placement(transformation(origin={-11.8294,-26.4099}, extent={{-12,-12},{12,12}})));
  parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_c "Thermal Insulance of TSS Surfaces";
  parameter Modelica.SIunits.Area A_cross_Panel=0.004 "Querschnittsflaeche des Aussenpanels";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(transformation(origin={-100,0}, extent={{-12,-12},{12,12}}), iconTransformation(origin={-99.3122,5.3535}, extent={{-12,-12},{12,12}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(transformation(origin={100,0}, extent={{-12,-12},{12,12}}), iconTransformation(origin={100.963,5.5062}, extent={{-12,-12},{12,12}})));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
  parameter Modelica.SIunits.Area A_p "QuerschnittstflÃ¤che des Materials/Kontaktes";
  parameter Modelica.SIunits.Length x_p "LÃ¤nge des Materials in Richtung der WÃ¤rmeausbreitung";
protected 
  parameter Modelica.SIunits.ThermalConductance G_p=A_p*material.k/x_p "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-28.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_c=A_cross_Panel/ThermalInsulance_c "Constant thermal conductance of the contact surfaces" annotation(Placement(transformation(origin={28.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), visible=true));
equation 
  connect(port_a,bodyradiation1.port_a) annotation(Line(points={{-100,0},{-58.0468,0},{-58.0468,30.1821},{-23.0041,30},{-10,30}}));
  connect(thermalConector_parallel.port_a,port_a) annotation(Line(visible=true, origin={-71.1379,0.0}, points={{28.8621,0.0},{-28.8621,0.0}}, color={191,0,0}));
  connect(thermalConector_parallel.port_b,thermalConnector_contact.port_a) annotation(Line(visible=true, origin={0.1379,0.0}, points={{-17.8621,0.0},{17.8621,0.0}}, color={191,0,0}));
  connect(thermalConnector_contact.port_b,port_b) annotation(Line(visible=true, points={{42.0,0.0},{51.6716,0.0},{73.7721,0.0},{100.0,0.0}}));
  connect(bodyradiation1.port_b,port_b) annotation(Line(visible=true, points={{10.0,30.0},{60.0,30.0},{60.0,0.0},{100.0,0.0}}));
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, grid={10,10}), graphics={Rectangle(pattern=LinePattern.Dash, lineColor={255,0,0}, fillColor={255,255,255}, extent={{-94.6355,-59.4223},{96.011,61.8982}}, visible=true),Text(textString="%name", extent={{-141.751,52.8171},{138.249,112.817}}, visible=true, origin={1.751,47.1829}),Text(textString="G=%G_c", fillPattern=FillPattern.Solid, extent={{-113.9,-59.6039},{114.1,-19.6039}}, visible=true, origin={-0.1,9.6039}),Text(textString="Gr=%Gr", extent={{-111.699,-99.4938},{116.301,-59.4938}}, visible=true),Text(textString="T", fontSize=24, fillColor={0,0,255}, extent={{-3.0261,-1.9257},{0,8.2531}}, visible=true),Text(textString="G=%G_p", fillPattern=FillPattern.Solid, extent={{-113.9,-59.6039},{114.1,-19.6039}}, visible=true, origin={-0.1,77.8989})}));
end intra_BuildingBlock_connector;
