model Model1
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})), Diagram(coordinateSystem(extent={{-105.0,-74.0},{105.0,74.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,5}), graphics));
  solar_radiance solar_radiance1 annotation(Placement(visible=true, transformation(origin={-80.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_TIM thermal_TIM1(G_TIM_TSS=18) annotation(Placement(visible=true, transformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Batterie_Baustein_thermal batterie_Baustein_thermal1 annotation(Placement(visible=true, transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  space_radiator space_radiator1 annotation(Placement(visible=true, transformation(origin={80.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  space_radiator space_radiator2 annotation(Placement(visible=true, transformation(origin={-40.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  space_radiator space_radiator3 annotation(Placement(visible=true, transformation(origin={-40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  space_radiator space_radiator4 annotation(Placement(visible=true, transformation(origin={40.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  space_radiator space_radiator5 annotation(Placement(visible=true, transformation(origin={40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Solar_Baustein_thermal solar_Baustein_thermal1 annotation(Placement(visible=true, transformation(origin={-40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(solar_Baustein_thermal1.thermal_connector_yn,space_radiator3.thermal_connector1) annotation(Line(visible=true, origin={-40.0,-25.0}, points={{0.0,15.0},{0.0,-15.0}}));
  connect(solar_Baustein_thermal1.thermal_connector_xp,thermal_TIM1.thermal_connector2) annotation(Line(visible=true, origin={-20.0,0.0}, points={{-10.0,-0.0},{10.0,0.0}}));
  connect(space_radiator2.thermal_connector1,solar_Baustein_thermal1.thermal_connector_yp) annotation(Line(visible=true, origin={-40.0,25.0}, points={{0.0,15.0},{0.0,-15.0}}));
  connect(solar_radiance1.thermal_connector1,solar_Baustein_thermal1.thermal_connector_xn) annotation(Line(visible=true, origin={-65.0,0.0}, points={{-15.0,0.0},{15.0,-0.0}}));
  connect(batterie_Baustein_thermal1.thermal_connector_yn,space_radiator5.thermal_connector1) annotation(Line(visible=true, origin={40.0,-25.0}, points={{0.0,15.0},{0.0,-15.0}}));
  connect(batterie_Baustein_thermal1.thermal_connector_yp,space_radiator4.thermal_connector1) annotation(Line(visible=true, origin={40.0,25.0}, points={{0.0,-15.0},{0.0,15.0}}));
  connect(batterie_Baustein_thermal1.thermal_connector_xp,space_radiator1.thermal_connector1) annotation(Line(visible=true, origin={65.0,0.0}, points={{-15.0,0.0},{15.0,-0.0}}));
  connect(thermal_TIM1.thermal_connector1,batterie_Baustein_thermal1.thermal_connector_xn) annotation(Line(visible=true, origin={20.0,0.0}, points={{-10.0,0.0},{10.0,-0.0}}));
end Model1;
