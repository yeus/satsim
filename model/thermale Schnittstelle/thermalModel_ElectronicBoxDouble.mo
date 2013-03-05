model thermalModel_ElectronicBoxDouble "Zentraler Knoten des Bausteinmodells mit Schnittstelle zur Elektroniksimulation. Gibt die Elektrisch erzeugte Wärmeenergie wieder"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, lineColor={255,0,0}, fillColor={255,255,255}, pattern=LinePattern.Dot, fillPattern=FillPattern.Sphere, extent={{-100.0,-100.0},{100.0,100.0}}),Text(visible=true, origin={77.023,0.0}, fillPattern=FillPattern.Solid, extent={{-11.0499,-8.5595},{11.0499,8.5595}}, textString="xp", fontName="Arial"),Text(visible=true, origin={-75.1195,0.0}, fillPattern=FillPattern.Solid, extent={{-11.0499,-8.5595},{11.0499,8.5595}}, textString="xn", fontName="Arial"),Text(visible=true, origin={-25.0,78.5595}, fillPattern=FillPattern.Solid, extent={{-15.0,-8.5595},{15.0,8.5595}}, textString="ypxn", fontName="Arial"),Text(visible=true, origin={-60.0,34.8863}, fillPattern=FillPattern.Solid, extent={{-13.9556,-8.5595},{13.9556,8.5595}}, textString="zpxn", fontName="Arial"),Text(visible=true, origin={0.0,22.4068}, fillPattern=FillPattern.Solid, extent={{-50.0,-12.4068},{50.0,12.4068}}, textString="electrical power", fontName="Arial"),Text(visible=true, origin={-36.0444,56.6625}, fillPattern=FillPattern.Solid, extent={{-13.9556,-8.5595},{13.9556,8.5595}}, textString="zpxp", fontName="Arial"),Text(visible=true, origin={21.9912,78.5595}, fillPattern=FillPattern.Solid, extent={{-15.0,-8.5595},{15.0,8.5595}}, textString="ypxp", fontName="Arial"),Text(visible=true, origin={31.8969,-61.4405}, fillPattern=FillPattern.Solid, extent={{-13.9556,-8.5595},{13.9556,8.5595}}, textString="znxn", fontName="Arial"),Text(visible=true, origin={53.9556,-40.0}, fillPattern=FillPattern.Solid, extent={{-13.9556,-8.5595},{13.9556,8.5595}}, textString="znxp", fontName="Arial"),Text(visible=true, origin={27.2061,-81.4405}, fillPattern=FillPattern.Solid, extent={{-15.0,-8.5595},{15.0,8.5595}}, textString="ynxp", fontName="Arial"),Text(visible=true, origin={-20.0,-81.4405}, fillPattern=FillPattern.Solid, extent={{-15.0,-8.5595},{15.0,8.5595}}, textString="ynxn", fontName="Arial")}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xn annotation(Placement(visible=true, transformation(origin={-80.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_xp annotation(Placement(visible=true, transformation(origin={80.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ypxn annotation(Placement(visible=true, transformation(origin={-20.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-27.5027,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ynxn annotation(Placement(visible=true, transformation(origin={-20.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-20.0,-100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zpxn annotation(Placement(visible=true, transformation(origin={-80.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-80.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_znxp annotation(Placement(visible=true, transformation(origin={85.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={77.7549,-57.9112}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C=C) annotation(Placement(visible=true, transformation(origin={0.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b dissipationPower annotation(Placement(visible=true, transformation(origin={-55.0,-35.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zp(G=G/2) annotation(Placement(visible=true, transformation(origin={-50.0,51.9599}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ypxn(G=G/2) annotation(Placement(visible=true, transformation(origin={-20.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xp(G=G/2) annotation(Placement(visible=true, transformation(origin={40.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_xn(G=G/2) annotation(Placement(visible=true, transformation(origin={-40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ynxn(G=G/2) annotation(Placement(visible=true, transformation(origin={-20.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_znxp(G=G/2) annotation(Placement(visible=true, transformation(origin={60.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ypxp annotation(Placement(visible=true, transformation(origin={20.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={21.9667,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ypxp(G=G/2) annotation(Placement(visible=true, transformation(origin={20.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_ynxp annotation(Placement(visible=true, transformation(origin={20.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={27.435,-100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_ynxp(G=G/2) annotation(Placement(visible=true, transformation(origin={20.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_zpxp annotation(Placement(visible=true, transformation(origin={82.3868,75.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-58.4156,71.9929}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor_zpxp(G=G/2) annotation(Placement(visible=true, transformation(origin={55.0,35.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a EB_znxn annotation(Placement(visible=true, transformation(origin={-78.4414,-62.7392}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={56.7003,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorznxn(G=G/2) annotation(Placement(visible=true, transformation(origin={-65.0,-17.6646}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
  parameter Modelica.SIunits.Area A "QuerschnittstflÃ¤che des Materials/Kontaktes";
  parameter Modelica.SIunits.Length x "LÃ¤nge des Materials in Richtung der WÃ¤rmeausbreitung";
protected 
  parameter Modelica.SIunits.HeatCapacity C=A*x*material.d*material.c "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={-26.5971,-26.5971}, extent={{-12,-12},{12,12}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G=A*material.k/x "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={24.4842,-27.2352}, extent={{-12,-12},{12,12}}, rotation=0)));
equation 
  connect(thermalConductor_zpxp.port_b,EB_zpxp) annotation(Line(visible=true, origin={76.5912,48.3333}, points={{-11.5912,-13.3333},{5.7956,-13.3333},{5.7956,26.6667}}, color={191,0,0}));
  connect(thermalConductor_zp.port_a,EB_zpxn) annotation(Line(visible=true, origin={-73.3333,61.3066}, points={{13.3333,-9.3467},{-6.6667,-9.3467},{-6.6667,18.6934}}, color={191,0,0}));
  connect(thermalConductor_ynxn.port_b,EB_ynxn) annotation(Line(visible=true, origin={-20.0,-50.0}, points={{0.0,10.0},{0.0,-10.0}}, color={191,0,0}));
  connect(thermalConductor_znxp.port_b,EB_znxp) annotation(Line(visible=true, origin={80.0,-40.0}, points={{-10.0,10.0},{5.0,10.0},{5.0,-20.0}}, color={191,0,0}));
  connect(thermalConductorznxn.port_a,EB_znxn) annotation(Line(visible=true, origin={-77.2942,-32.6895}, points={{2.2942,15.0249},{-1.1471,15.0249},{-1.1471,-30.0497}}, color={191,0,0}));
  connect(thermalConductor_ynxp.port_b,EB_ynxp) annotation(Line(visible=true, origin={20.0,-50.0}, points={{0.0,10.0},{0.0,-10.0}}, color={191,0,0}));
  connect(thermalConductor_ypxp.port_a,EB_ypxp) annotation(Line(visible=true, origin={20.0,70.0}, points={{0.0,-10.0},{0.0,10.0}}, color={191,0,0}));
  connect(thermalConductor_ypxn.port_a,EB_ypxn) annotation(Line(visible=true, origin={-20.0,70.0}, points={{0.0,-10.0},{0.0,10.0}}, color={191,0,0}));
  connect(thermalConductorznxn.port_b,heatCapacitor1.port) annotation(Line(visible=true, origin={-18.3333,-11.7764}, points={{-36.6667,-5.8882},{18.3333,-5.8882},{18.3333,11.7764}}, color={191,0,0}));
  connect(heatCapacitor1.port,thermalConductor_zpxp.port_a) annotation(Line(visible=true, origin={25.8,12.8}, points={{-25.8,-12.8},{-25.8,-15.8},{16.2,-15.8},{16.2,22.2},{19.2,22.2}}, color={191,0,0}));
  connect(thermalConductor_znxp.port_a,heatCapacitor1.port) annotation(Line(visible=true, origin={16.6667,-20.0}, points={{33.3333,-10.0},{-16.6667,-10.0},{-16.6667,20.0}}, color={191,0,0}));
  connect(heatCapacitor1.port,thermalConductor_ynxp.port_a) annotation(Line(visible=true, origin={10.0,-13.5}, points={{-10.0,13.5},{-10.0,-3.5},{10.0,-3.5},{10.0,-6.5}}, color={191,0,0}));
  connect(thermalConductor_ynxn.port_a,heatCapacitor1.port) annotation(Line(visible=true, origin={-10.0,-6.5}, points={{-10.0,-13.5},{-10.0,3.5},{10.0,3.5},{10.0,6.5}}, color={191,0,0}));
  connect(heatCapacitor1.port,thermalConductor_ypxn.port_b) annotation(Line(visible=true, origin={-10.0,8.5}, points={{10.0,-8.5},{10.0,-11.5},{-10.0,-11.5},{-10.0,31.5}}, color={191,0,0}));
  connect(thermalConductor_ypxp.port_b,heatCapacitor1.port) annotation(Line(visible=true, origin={10.0,8.5}, points={{10.0,31.5},{10.0,-11.5},{-10.0,-11.5},{-10.0,-8.5}}, color={191,0,0}));
  connect(thermalConductor_xp.port_b,EB_xp) annotation(Line(visible=true, origin={65.0,0.0}, points={{-15.0,-0.0},{15.0,0.0}}, color={191,0,0}));
  connect(heatCapacitor1.port,thermalConductor_xp.port_a) annotation(Line(visible=true, origin={16.8,-1.2}, points={{-16.8,1.2},{-16.8,-1.8},{10.2,-1.8},{10.2,1.2},{13.2,1.2}}, color={191,0,0}));
  connect(thermalConductor_xn.port_a,EB_xn) annotation(Line(visible=true, origin={-65.0,0.0}, points={{15.0,0.0},{-15.0,-0.0}}, color={191,0,0}));
  connect(thermalConductor_xn.port_b,heatCapacitor1.port) annotation(Line(visible=true, origin={-16.8,-1.2}, points={{-13.2,1.2},{-10.2,1.2},{-10.2,-1.8},{16.8,-1.8},{16.8,1.2}}, color={191,0,0}));
  connect(thermalConductor_zp.port_b,heatCapacitor1.port) annotation(Line(visible=true, origin={-22.8,19.584}, points={{-17.2,32.3759},{-14.2,32.3759},{-14.2,-22.584},{22.8,-22.584},{22.8,-19.584}}, color={191,0,0}));
  connect(dissipationPower,heatCapacitor1.port) annotation(Line(visible=true, origin={-26.6667,-17.3285}, points={{-28.3333,-17.6715},{1.6667,0.3429},{26.6667,17.3285}}, color={191,0,0}));
end thermalModel_ElectronicBoxDouble;
