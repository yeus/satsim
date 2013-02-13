model Schnittstelle
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-30.0,-100.0},{30.0,100.0}}),Text(visible=true, origin={0.0,118.8654}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0,-18.8654},{100.0,18.8654}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={6.7599,25.0}, fillPattern=FillPattern.Solid, extent={{-123.2401,-15.0},{123.2401,15.0}}, textString="MSS: C=%C_MSS; G=%G_MSS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={7.2821,75.0}, fillPattern=FillPattern.Solid, extent={{-122.7179,-15.0},{122.7179,15.0}}, textString="ESS: C=%C_ESS; G=%G_ESS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={6.2664,-25.0}, fillPattern=FillPattern.Solid, extent={{-122.1957,-15.0},{122.1957,15.0}}, textString="TSS: C=%C_TSS; G=%G_TSS", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram());
  parameter Modelica.SIunits.ThermalConductance G_ESS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_MSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_TSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.HeatCapacity C_ESS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_MSS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_TSS "Heat capacity of element (= cp*m)";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-100.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={-28.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element ESS(C=C_ESS, G=G_ESS) annotation(Placement(visible=true, transformation(origin={0.0,40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element MSS(C=C_MSS, G=G_MSS) annotation(Placement(visible=true, transformation(origin={0.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element TSS(C=C_TSS, G=G_TSS) annotation(Placement(visible=true, transformation(origin={-0.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a ESS_IF annotation(Placement(visible=true, transformation(origin={100.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={100.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a MSS_IF annotation(Placement(visible=true, transformation(origin={100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={98.674,-0.6225}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a TSS_IF annotation(Placement(visible=true, transformation(origin={100.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={100.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(port_a,ESS.port_a) annotation(Line(visible=true, origin={-74.3835,32.257}, points={{-25.6165,-32.257},{-25.6165,7.743},{-5.6165,7.743},{-5.6165,7.743},{62.1435,7.743}}, color={191,0,0}));
  connect(MSS.port_a,port_a) annotation(Line(visible=true, origin={-70.4794,0.3212}, points={{58.2394,-0.3212},{-14.5206,-0.3212},{-14.5206,-0.3212},{-29.5206,-0.3212}}, color={191,0,0}));
  connect(port_a,TSS.port_a) annotation(Line(visible=true, origin={-74.3835,-32.543}, points={{-25.6165,32.543},{-25.6165,-7.457},{-5.6165,-7.457},{-5.6165,-7.457},{62.1435,-7.457}}, color={191,0,0}));
  connect(TSS_IF,TSS.port_b) annotation(Line(visible=true, origin={35.68,-40.12}, points={{64.32,0.12},{-20.44,0.12},{-20.44,-0.12},{-23.44,-0.12}}, color={191,0,0}));
  connect(MSS.port_b,MSS_IF) annotation(Line(visible=true, origin={71.56,-0.12}, points={{-59.32,-0.12},{15.44,-0.12},{15.44,0.12},{28.44,0.12}}, color={191,0,0}));
  connect(ESS.port_b,ESS_IF) annotation(Line(visible=true, origin={71.56,39.88}, points={{-59.32,-0.12},{15.44,-0.12},{15.44,0.12},{28.44,0.12}}, color={191,0,0}));
end Schnittstelle;
