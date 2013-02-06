model Schnittstelle
  annotation(Icon(), Diagram());
  parameter Modelica.SIunits.ThermalConductance G_ESS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_MSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_TSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.HeatCapacity C_ESS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_MSS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_TSS "Heat capacity of element (= cp*m)";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-100.652,7.04042}, extent={{-12,-12},{12,12}}, rotation=0), iconTransformation(origin={-100.652,7.04042}, extent={{-12,-12},{12,12}}, rotation=0)));
  thermal_element ESS(C=C_ESS, G=G_ESS) annotation(Placement(visible=true, transformation(origin={-13.5593,-35.9844}, extent={{-12,-12},{12,12}}, rotation=0)));
  thermal_element MSS(C=C_MSS, G=G_MSS) annotation(Placement(visible=true, transformation(origin={-13.8201,8.08344}, extent={{-12,-12},{12,12}}, rotation=0)));
  thermal_element TSS(C=C_TSS, G=G_TSS) annotation(Placement(visible=true, transformation(origin={-14.6023,49.5437}, extent={{-12,-12},{12,12}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={80.0,10.0}, extent={{-22.5098,-22.5098},{22.5098,22.5098}}, rotation=-540), iconTransformation(origin={62.8775,4.9804}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(ESS.port_b,thermal_connector.ESS) annotation(Line(visible=true, origin={42.9446,-72.2637}, points={{-44.3883,36.94},{-2.9446,36.94},{32.0726,36.94},{32.0726,96.1533},{23.1658,96.1533}}, color={191,0,0}));
  connect(MSS.port_b,thermal_connector.MSS) annotation(Line(visible=true, origin={43.3466,9.3721}, points={{-45.0511,-0.6279},{11.1436,-0.6279},{11.1436,0.6279},{22.7638,0.6279}}, color={191,0,0}));
  connect(TSS.port_b,thermal_connector.TSS) annotation(Line(visible=true, origin={26.1521,13.0999}, points={{-28.6389,37.1045},{-25.6389,37.1045},{-25.6389,-28.6097},{39.9583,-28.6097},{39.9583,-16.9895}}, color={191,0,0}));
  connect(TSS.port_a,port_a) annotation(Line(points={{-26.5198,50.1861},{-71.708,50.1861},{-71.708,8.60495},{-100.652,8.60495},{-100.652,7.04042}}));
  connect(MSS.port_a,port_a) annotation(Line(points={{-25.7375,8.72586},{-71.4472,8.72586},{-71.4472,8.60495},{-100.652,8.60495},{-100.652,7.04042}}));
  connect(ESS.port_a,port_a) annotation(Line(points={{-25.4768,-35.3419},{-71.708,-35.3419},{-71.708,8.60495},{-100.652,8.60495},{-100.652,7.04042}}));
end Schnittstelle;
