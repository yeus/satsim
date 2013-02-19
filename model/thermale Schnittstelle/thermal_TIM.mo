model thermal_TIM "thermal interfacial material parameters (Conductance)"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-80.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-20.0,-100.0},{20.0,100.0}}),Rectangle(visible=true, origin={80.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-20.0,-100.0},{20.0,100.0}}),Rectangle(visible=true, lineColor={255,0,0}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-40.0,-100.0},{40.0,100.0}}),Text(visible=true, origin={-0.0603,130.8813}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0603,-35.5277},{100.0603,35.5277}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={-0.1694,75.0}, fillPattern=FillPattern.Solid, extent={{-59.8306,-25.0},{59.8306,25.0}}, textString="G_TSS=%G_TIM_TSS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={0.1694,25.0}, fillPattern=FillPattern.Solid, extent={{-59.8306,-25.0},{59.8306,25.0}}, textString="G_MSS=%G_MSS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={-0.1694,-25.0}, fillPattern=FillPattern.Solid, extent={{-59.8306,-25.0},{59.8306,25.0}}, textString="G_ESS=%G_ESS", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={0.1694,-75.0}, fillPattern=FillPattern.Solid, extent={{-59.8306,-25.0},{59.8306,25.0}}, textString="Gr_Rad=%Gr_Rad", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  thermal_connector thermal_connector2 annotation(Placement(visible=true, transformation(origin={-60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_TIM_TSS(G=G_TIM_TSS) annotation(Placement(visible=true, transformation(origin={0.0,21.1349}, extent={{-6.1349,-6.1349},{6.1349,6.1349}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_MSS(G=G_MSS) annotation(Placement(visible=true, transformation(origin={0.0,0.0}, extent={{-6.0931,-6.0931},{6.0931,6.0931}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_ESS(G=G_ESS) annotation(Placement(visible=true, transformation(origin={-0.0,-20.0}, extent={{-6.1934,-6.1934},{6.1934,6.1934}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={100.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
  parameter Modelica.SIunits.ThermalConductance G_TIM_TSS=0 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-32.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_MSS=2 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={0.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_ESS=1 "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={32.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Real Gr_Rad(unit="m2")=0 "Net radiation conductance between two surfaces (see docu) tbd";
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation Radiator(Gr=Gr_Rad) annotation(Placement(visible=true, transformation(origin={0.0,45.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(Conductance_MSS.port_a,thermal_connector2.MSS) annotation(Line(visible=true, origin={-29.9613,0.0}, points={{23.8682,0.0},{-26.5095,-2.5346}}, color={191,0,0}));
  connect(Conductance_ESS.port_a,thermal_connector2.ESS) annotation(Line(visible=true, origin={-35.183,-11.1992}, points={{28.9896,-8.8008},{1.7705,-8.8008},{1.7705,5.6898},{-17.059,5.6898},{-21.2641,3.6626}}, color={191,0,0}));
  connect(Conductance_TIM_TSS.port_a,thermal_connector2.TSS) annotation(Line(visible=true, origin={-24.6254,15.0}, points={{18.4905,6.1349},{-8.7926,6.1349},{-8.7926,-8.8295},{-31.8758,-12.4973}}, color={191,0,0}));
  connect(thermal_connector2.Rad,Radiator.port_a) annotation(Line(visible=true, origin={-41.0299,32.4851}, points={{-15.5149,-25.0299},{-15.5149,12.5149},{31.0299,12.5149}}, color={191,0,0}));
  connect(Radiator.port_b,thermal_connector1.Rad) annotation(Line(visible=true, origin={29.8179,11.309}, points={{-19.8179,33.691},{-16.8179,33.691},{-16.8179,-24.309},{26.7269,-24.309},{26.7269,-18.7641}}, color={191,0,0}));
  connect(Conductance_TIM_TSS.port_b,thermal_connector1.TSS) annotation(Line(visible=true, origin={27.6809,2.0199}, points={{-21.546,19.115},{-18.546,19.115},{9.6253,2.9801},{22.3191,-4.5226},{28.8203,-4.5226}}, color={191,0,0}));
  connect(Conductance_MSS.port_b,thermal_connector1.MSS) annotation(Line(visible=true, origin={29.9613,0.0}, points={{-23.8682,0.0},{27.0387,0.0}}, color={191,0,0}));
  connect(Conductance_ESS.port_b,thermal_connector1.ESS) annotation(Line(visible=true, origin={27.716,-1.5659}, points={{-21.5226,-18.4341},{-18.5226,-18.4341},{-18.5226,14.5659},{29.284,14.5659},{29.284,7.7364}}, color={191,0,0}));
end thermal_TIM;
