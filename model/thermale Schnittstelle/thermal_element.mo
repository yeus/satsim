model thermal_element
  annotation(Diagram(), Icon(graphics={Rectangle(visible=true, origin={-0.6878,-1.238}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.HorizontalCylinder, extent={{-94.6355,-59.4223},{96.011,61.8982}}),Text(visible=true, origin={82.8171,1.2507}, rotation=90, lineColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{-101.2507,52.8171},{98.7493,112.8171}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, lineColor={0,0,255}, fillColor={0,0,255}, extent={{-3.0,-2.0},{0.0,9.0}}, textString="thermal element", fontSize=16, fontName="Arial")}, coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-60.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={-102.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(visible=true, transformation(origin={60.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={100.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductorrechts(G=G/2) annotation(Placement(visible=true, transformation(origin={20.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C=C) annotation(Placement(visible=true, transformation(origin={0.0,30.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorlinks(G=G/2) annotation(Placement(visible=true, transformation(origin={-20.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
  parameter Modelica.SIunits.Area A "QuerschnittstflÃ¤che des Materials/Kontaktes";
  parameter Modelica.SIunits.Length x "LÃ¤nge des Materials in Richtung der WÃ¤rmeausbreitung";
protected 
  parameter Modelica.SIunits.ThermalConductance G=A*material.k/x "Constant thermal conductance of material";
  parameter Modelica.SIunits.HeatCapacity C=A*x*material.d*material.c "Heat capacity of element (= cp*m)";
equation 
  connect(thermalconductorrechts.port_b,port_b) annotation(Line(visible=true, origin={46.0,0.0}, points={{-14.0,0.0},{14.0,-0.0}}, color={191,0,0}));
  connect(thermalConductorlinks.port_a,port_a) annotation(Line(visible=true, origin={-45.0,-0.0}, points={{15.0,0.0},{-15.0,-0.0}}, color={191,0,0}));
  connect(thermalconductorrechts.port_a,heatcapacitor1.port) annotation(Line(visible=true, origin={2.6667,6.0}, points={{5.3333,-6.0},{-2.6667,-6.0},{-2.6667,12.0}}, color={191,0,0}));
  connect(thermalConductorlinks.port_b,heatcapacitor1.port) annotation(Line(visible=true, origin={-3.3333,6.0}, points={{-6.6667,-6.0},{3.3333,-6.0},{3.3333,12.0}}, color={191,0,0}));
end thermal_element;
