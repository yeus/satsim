model thermal_TIM "thermal interfacial material parameters (Conductance)"
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={-60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-55.6508,4.6664}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_TIM_TSS(G=G_TIM_TSS) annotation(Placement(visible=true, transformation(origin={0.0,21.1349}, extent={{-6.1349,-6.1349},{6.1349,6.1349}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_MSS(G=G_MSS) annotation(Placement(visible=true, transformation(origin={0.0,0.0}, extent={{-6.0931,-6.0931},{6.0931,6.0931}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Conductance_ESS(G=G_ESS) annotation(Placement(visible=true, transformation(origin={-0.0,-20.0}, extent={{-6.1934,-6.1934},{6.1934,6.1934}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={41.2168,4.0317}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_TIM_TSS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={-32.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_MSS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={0.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  parameter Modelica.SIunits.ThermalConductance G_ESS "Constant thermal conductance of material" annotation(Placement(visible=true, transformation(origin={32.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
equation 
  connect(Conductance_MSS.port_a,thermal_connector.MSS) annotation(Line(visible=true, origin={-29.9613,0.0}, points={{23.8682,0.0},{-23.8682,-0.0}}, color={191,0,0}));
  connect(Conductance_ESS.port_b,thermal_connector1.TSS) annotation(Line(visible=true, origin={38.7705,-12.1974}, points={{-32.5771,-7.8026},{1.2295,-7.8026},{1.2295,4.7891},{15.059,4.7891},{15.059,6.027}}, color={191,0,0}));
  connect(Conductance_MSS.port_b,thermal_connector1.MSS) annotation(Line(visible=true, origin={29.9613,0.0}, points={{-23.8682,0.0},{23.8682,-0.0}}, color={191,0,0}));
  connect(Conductance_TIM_TSS.port_b,thermal_connector1.ESS) annotation(Line(visible=true, origin={38.7588,11.6881}, points={{-32.6239,9.4468},{1.2412,9.4468},{1.2412,-6.6881},{15.0707,-6.6881},{15.0707,-5.5176}}, color={191,0,0}));
  connect(Conductance_ESS.port_a,thermal_connector.ESS) annotation(Line(visible=true, origin={-35.183,-11.1992}, points={{28.9896,-8.8008},{1.7705,-8.8008},{1.7705,5.6898},{-17.059,5.6898},{-18.6465,5.0287}}, color={191,0,0}));
  connect(Conductance_TIM_TSS.port_a,thermal_connector.TSS) annotation(Line(visible=true, origin={-24.6254,15.0}, points={{18.4905,6.1349},{-8.7926,6.1349},{-8.7926,-8.8295},{-29.2041,-8.8295}}, color={191,0,0}));
end thermal_TIM;
