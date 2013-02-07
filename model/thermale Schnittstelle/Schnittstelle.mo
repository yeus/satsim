model Schnittstelle
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-30.0,-100.0},{30.0,100.0}}),Text(visible=true, origin={-0.0,118.8654}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0,-18.8654},{100.0,18.8654}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={-1.0444,-55.0}, fillPattern=FillPattern.Solid, extent={{-123.2401,-15.0},{123.2401,15.0}}, textString="MSS: C=%C_MSS; G=%G_MSS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={-0.1741,-25.0}, fillPattern=FillPattern.Solid, extent={{-122.7179,-15.0},{122.7179,15.0}}, textString="ESS: C=%C_ESS; G=%G_ESS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={0.3481,-85.0}, fillPattern=FillPattern.Solid, extent={{-122.1957,-15.0},{122.1957,15.0}}, textString="TSS: C=%C_TSS; G=%G_TSS", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram());
  parameter Modelica.SIunits.ThermalConductance G_ESS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_MSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_TSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.HeatCapacity C_ESS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_MSS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_TSS "Heat capacity of element (= cp*m)";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-100.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={-28.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element ESS(C=C_ESS, G=G_ESS) annotation(Placement(visible=true, transformation(origin={0.0,40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element MSS(C=C_MSS, G=G_MSS) annotation(Placement(visible=true, transformation(origin={0.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element TSS(C=C_TSS, G=G_TSS) annotation(Placement(visible=true, transformation(origin={-0.0,-42.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={94.6299,0.0}, extent={{-22.5098,-22.5098},{22.5098,22.5098}}, rotation=-540), iconTransformation(origin={30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(TSS.port_b,thermal_connector.TSS) annotation(Line(visible=true, origin={53.5739,-24.7921}, points={{-41.3339,-17.4479},{-13.5739,-16.5472},{-13.5739,11.096},{34.3031,11.096},{34.3031,10.9025}}, color={191,0,0}));
  connect(port_a,TSS.port_a) annotation(Line(visible=true, origin={-74.3835,-32.543}, points={{-25.6165,32.543},{-25.6165,-7.457},{-5.6165,-7.457},{-5.6165,-8.8145},{62.1435,-9.457}}, color={191,0,0}));
  connect(ESS.port_b,thermal_connector.ESS) annotation(Line(visible=true, origin={53.5739,24.6452}, points={{-41.3339,15.1148},{-13.5739,15.1148},{-13.5739,-10.6378},{34.3031,-10.6378},{34.3031,-10.7556}}, color={191,0,0}));
  connect(MSS.port_b,thermal_connector.MSS) annotation(Line(visible=true, origin={59.5582,0.3304}, points={{-47.4426,0.3304},{9.5619,0.3304},{9.5619,-0.3304},{28.3188,-0.3304}}, color={191,0,0}));
  connect(port_a,ESS.port_a) annotation(Line(visible=true, origin={-74.3835,32.257}, points={{-25.6165,-32.257},{-25.6165,7.743},{-5.6165,7.743},{-5.6165,8.3855},{62.466,8.3855}}, color={191,0,0}));
  connect(MSS.port_a,port_a) annotation(Line(visible=true, origin={-70.4794,0.3212}, points={{58.5619,0.3212},{-14.5206,0.3212},{-14.5206,-0.3212},{-29.5206,-0.3212}}, color={191,0,0}));
end Schnittstelle;
