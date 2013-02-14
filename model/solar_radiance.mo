model solar_radiance "Einwirkende Sonnenstrahlung auf Fläche A mit Absorptionsfaktor alpha"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Ellipse(visible=true, origin={0.1779,0.0}, fillColor={255,255,0}, fillPattern=FillPattern.Solid, extent={{-99.8221,-100.0},{99.8221,100.0}}),Text(visible=true, origin={-1.6091,112.8385}, fillPattern=FillPattern.Solid, extent={{-98.3909,-12.8385},{98.3909,12.8385}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={0.0,-51.6324}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="Period=%orbit_Period", fontName="Arial"),Text(visible=true, origin={0.0,-118.904}, fillPattern=FillPattern.Solid, extent={{-100.0,-18.904},{100.0,18.904}}, textString="Solar_constant=%solar_constant", fontName="Arial"),Text(visible=true, origin={0.0,-24.5134}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="percent_sun=%percent_sun", fontName="Arial"),Text(visible=true, origin={0.0,54.5134}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="alpha=%alpha", fontName="Arial"),Text(visible=true, origin={0.0,25.4866}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="Area=%effective_area", fontName="Arial")}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  parameter Real solar_constant=1372 "Solarkonstate in W/m²";
  parameter Modelica.SIunits.Time orbit_Period(final min=Modelica.Constants.small, start=1)=5400 "Time for one period";
  parameter Real percent_sun(final min=Modelica.Constants.small, final max=100)=66 "Width of pulse in % of period";
  parameter Real effective_area=0.4 "von der Sonne beleuchtete Fläche";
  parameter Real alpha(final min=Modelica.Constants.small, final max=1)=0.2 "Absorptionskoeffizient";
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power annotation(Placement(visible=true, transformation(origin={-40.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Sources.Pulse Orbit(width=percent_sun, amplitude=solar_constant*effective_area*alpha, period=orbit_Period) annotation(Placement(visible=true, transformation(origin={-80.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={-5.0,33.4056}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={-0.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=0) annotation(Placement(visible=true, transformation(origin={-80.0,46.6075}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=0) annotation(Placement(visible=true, transformation(origin={-80.0,95.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G=0) annotation(Placement(visible=true, transformation(origin={-80.0,72.2865}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(thermalConductor2.port_b,thermal_connector.TSS) annotation(Line(visible=true, origin={-28.9992,73.6343}, points={{-41.0008,21.3657},{20.5004,21.3657},{20.5004,-42.7314}}, color={191,0,0}));
  connect(thermalConductor3.port_b,thermal_connector.ESS) annotation(Line(visible=true, origin={-29.0353,61.8384}, points={{-40.9647,10.4481},{20.4824,10.4481},{20.4824,-20.8962}}, color={191,0,0}));
  connect(thermalConductor1.port_b,thermal_connector.MSS) annotation(Line(visible=true, origin={-28.6323,41.2738}, points={{-41.3677,5.3337},{10.6323,5.3337},{10.6323,-5.3337},{20.1031,-5.3337}}, color={191,0,0}));
  connect(Solar_Power.Q_flow,Orbit.y) annotation(Line(visible=true, origin={-59.5,20.0}, points={{9.5,0.0},{-9.5,0.0}}, color={0,0,127}));
  connect(thermal_connector.Rad,Solar_Power.port) annotation(Line(visible=true, origin={-15.6368,21.9835}, points={{7.1816,3.967},{7.1816,-1.9835},{-14.3632,-1.9835}}, color={191,0,0}));
end solar_radiance;
