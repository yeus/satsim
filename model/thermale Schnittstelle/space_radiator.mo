model space_radiator
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, fillPattern=FillPattern.Solid, extent={{-100.0,-100.0},{100.0,100.0}}),Text(visible=true, origin={0.0,-77.5877}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-100.0,-22.4123},{100.0,22.4123}}, textString="Area=%effective_area", fontName="Arial"),Text(visible=true, origin={0.0,-31.4583}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-100.0,-21.4583},{100.0,21.4583}}, textString="epsilon=%epsilon", fontName="Arial"),Text(visible=true, origin={0.0,75.6305}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-100.0,-24.3695},{100.0,24.3695}}, textString="Radiator", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  parameter Real effective_area=0.4*0.4 "von der Sonne beleuchtete Fläche";
  parameter Real epsilon(final min=Modelica.Constants.small, final max=1)=0.05 "Emmisionskoeffizient";
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=0) annotation(Placement(visible=true, transformation(origin={-80.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr=epsilon*effective_area) annotation(Placement(visible=true, transformation(origin={-46.8345,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={0.0,13.4635}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=0) annotation(Placement(visible=true, transformation(origin={-50.0,85.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=0) annotation(Placement(visible=true, transformation(origin={-50.0,58.2083}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G=0) annotation(Placement(visible=true, transformation(origin={-50.0,37.3944}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(thermal_connector.TSS,thermalConductor3.port_b) annotation(Line(visible=true, origin={-29.3747,24.1776}, points={{25.8759,-13.2168},{-7.6253,-13.2168},{-7.6253,13.2168},{-10.6253,13.2168}}, color={191,0,0}));
  connect(thermal_connector.MSS,thermalConductor2.port_b) annotation(Line(visible=true, origin={-15.6861,44.1382}, points={{12.1569,-28.1402},{12.1569,14.0701},{-24.3139,14.0701}}, color={191,0,0}));
  connect(thermalConductor1.port_b,thermal_connector.ESS) annotation(Line(visible=true, origin={-15.7019,63.6667}, points={{-24.2981,21.3333},{12.149,21.3333},{12.149,-42.6666}}, color={191,0,0}));
  connect(bodyRadiation1.port_b,thermal_connector.Rad) annotation(Line(visible=true, origin={-14.5816,2.0028}, points={{-22.2529,-2.0028},{11.1265,-2.0028},{11.1265,4.0055}}, color={191,0,0}));
  connect(fixedTemperature1.port,bodyRadiation1.port_a) annotation(Line(visible=true, origin={-63.4173,0.0}, points={{-6.5827,0.0},{6.5827,0.0}}, color={191,0,0}));
end space_radiator;
