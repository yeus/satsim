model thermal_element
  annotation(Diagram(), Icon(graphics={Rectangle(visible=true, origin={-0.6878,-1.238}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.HorizontalCylinder, extent={{-94.6355,-59.4223},{96.011,61.8982}}),Text(visible=true, origin={1.2507,10.38}, lineColor={0,0,255}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-101.2507,50.7781},{98.7493,108.4618}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, extent={{-114.0,-60.0},{114.0,-20.0}}, textString="G=%G", fontName="Arial"),Text(visible=true, extent={{-114.347,-100.522},{113.653,-60.5215}}, textString="C=%C", fontName="Arial"),Text(visible=true, lineColor={0,0,255}, fillColor={0,0,255}, extent={{-3.0,-2.0},{0.0,9.0}}, textString="thermal element", fontSize=16, fontName="Arial")}, coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-100.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={-102.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(visible=true, transformation(origin={100.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={102.0,-2.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductorrechts(G=G/2) annotation(Placement(visible=true, transformation(origin={52.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C=C) annotation(Placement(visible=true, transformation(origin={-0.0,52.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductorlinks(G=G/2) annotation(Placement(visible=true, transformation(origin={-50.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  replaceable parameter MaterialDatabase.Material material "Material from MaterialDataBase" annotation(choicesAllMatching=true);
  parameter Modelica.SIunits.Area A "QuerschnittstflÃ¤che des Materials/Kontaktes";
  parameter Modelica.SIunits.Length x "LÃ¤nge des Materials in Richtung der WÃ¤rmeausbreitung";
protected 
  parameter Modelica.SIunits.HeatCapacity C=A*x*material.d*material.c "Heat capacity of element (= cp*m)" annotation(Placement(visible=true, transformation(origin={-26.5971,-26.5971}, extent={{-12,-12},{12,12}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G=A*material.k/x "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={24.4842,-27.2352}, extent={{-12,-12},{12,12}}, rotation=0)));
equation 
  connect(thermalconductorrechts.port_a,heatcapacitor1.port) annotation(Line(visible=true, origin={31.03,-0.266}, points={{8.97,0.266},{8.97,40.266},{-31.03,40.266},{-31.03,40.266}}));
  connect(thermalconductorrechts.port_b,port_b) annotation(Line(visible=true, origin={82.0,0.0}, points={{-18.0,0.0},{18.0,0.0}}, color={191,0,0}));
  connect(thermalConductorlinks.port_a,port_a) annotation(Line(visible=true, origin={-80.0,0.0}, points={{20.0,0.0},{-20.0,0.0}}, color={191,0,0}));
  connect(heatcapacitor1.port,thermalConductorlinks.port_b) annotation(Line(visible=true, origin={-26.6667,26.6667}, points={{26.6667,13.3333},{-13.3333,13.3333},{-13.3333,-26.6667}}, color={191,0,0}));
end thermal_element;
