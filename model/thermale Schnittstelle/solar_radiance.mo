model solar_radiance "Einwirkende Sonnenstrahlung auf Fläche A mit Absorptionsfaktor alpha"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Ellipse(visible=true, origin={0.1779,0.0}, fillColor={255,255,0}, fillPattern=FillPattern.Solid, extent={{-99.8221,-100.0},{99.8221,100.0}}),Text(visible=true, origin={-1.6091,112.8385}, fillPattern=FillPattern.Solid, extent={{-98.3909,-12.8385},{98.3909,12.8385}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={0.0,-51.6324}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="Period=%orbit_Period", fontName="Arial"),Text(visible=true, origin={0.0,-118.904}, fillPattern=FillPattern.Solid, extent={{-100.0,-18.904},{100.0,18.904}}, textString="Solar_constant=%solar_constant", fontName="Arial"),Text(visible=true, origin={0.0,-24.5134}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="percent_sun=%percent_sun", fontName="Arial"),Text(visible=true, origin={0.0,54.5134}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="alpha=%alpha", fontName="Arial"),Text(visible=true, origin={0.0,25.4866}, fillPattern=FillPattern.Solid, extent={{-76.7744,-14.5134},{76.7744,14.5134}}, textString="Area=%effective_area", fontName="Arial")}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  parameter Real solar_constant=1372 "Solarkonstate in W/m²";
  parameter Modelica.SIunits.Time orbit_Period(final min=Modelica.Constants.small, start=1)=5400 "Time for one period";
  parameter Real percent_sun(final min=Modelica.Constants.small, final max=100)=66 "Width of pulse in % of period";
  parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Fläche des Radiators";
  parameter Modelica.SIunits.Area effective_area_TSS=0.01 "Fläche der thermalen Schnittstelle";
  parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Fläche der mechanischen Schnittstelle";
  parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Fläche der elektrischen Schnittstelle";
  parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
  parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
  parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
  parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_Rad annotation(Placement(visible=true, transformation(origin={-40.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_TSS annotation(Placement(visible=true, transformation(origin={-40.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_MSS annotation(Placement(visible=true, transformation(origin={-40.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_ESS annotation(Placement(visible=true, transformation(origin={-40.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Sources.Pulse Orbit_Rad(width=percent_sun, amplitude=solar_constant*effective_area_Rad*alpha_Rad, period=orbit_Period) annotation(Placement(visible=true, transformation(origin={-110.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Sources.Pulse Orbit_TSS(width=percent_sun, amplitude=solar_constant*effective_area_TSS*alpha_TSS, period=orbit_Period) annotation(Placement(visible=true, transformation(origin={-110.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Sources.Pulse Orbit_MSS(width=percent_sun, amplitude=solar_constant*effective_area_MSS*alpha_MSS, period=orbit_Period) annotation(Placement(visible=true, transformation(origin={-110.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Sources.Pulse Orbit_ESS(width=percent_sun, amplitude=solar_constant*effective_area_ESS*alpha_ESS, period=orbit_Period) annotation(Placement(visible=true, transformation(origin={-110.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector annotation(Placement(visible=true, transformation(origin={90.0,-0.0}, extent={{-42.5,-42.5},{42.5,42.5}}, rotation=-180), iconTransformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  space_radiator space_radiator1 annotation(Placement(visible=true, transformation(origin={90.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(Solar_Power_ESS.Q_flow,Orbit_ESS.y) annotation(Line(visible=true, origin={-74.5,50.0}, points={{24.5,0.0},{-24.5,0.0}}, color={0,0,127}));
  connect(Solar_Power_ESS.port,thermal_connector.ESS) annotation(Line(visible=true, origin={39.9335,44.0102}, points={{-69.9335,5.9898},{34.9668,5.9898},{34.9668,-11.9797}}, color={191,0,0}));
  connect(Solar_Power_MSS.Q_flow,Orbit_MSS.y) annotation(Line(visible=true, origin={-74.5,20.0}, points={{24.5,0.0},{-24.5,0.0}}, color={0,0,127}));
  connect(Solar_Power_MSS.port,thermal_connector.MSS) annotation(Line(visible=true, origin={33.5003,15.386}, points={{-63.5003,4.614},{10.9997,4.614},{10.9997,-4.614},{41.5008,-4.614}}, color={191,0,0}));
  connect(Solar_Power_TSS.port,thermal_connector.TSS) annotation(Line(visible=true, origin={33.5325,-15.3182}, points={{-63.5325,-4.6818},{10.9675,-4.6818},{10.9675,4.6818},{41.5976,4.6818}}, color={191,0,0}));
  connect(Orbit_TSS.y,Solar_Power_TSS.Q_flow) annotation(Line(visible=true, origin={-74.5,-20.0}, points={{-24.5,0.0},{24.5,0.0}}, color={0,0,127}));
  connect(Solar_Power_Rad.Q_flow,Orbit_Rad.y) annotation(Line(visible=true, origin={-74.5,-50.0}, points={{24.5,0.0},{-24.5,0.0}}, color={0,0,127}));
  connect(thermal_connector.Rad,Solar_Power_Rad.port) annotation(Line(visible=true, origin={40.2104,-43.8948}, points={{35.1052,12.2104},{35.1052,-6.1052},{-70.2104,-6.1052}}, color={191,0,0}));
  connect(space_radiator1.thermal_connector,thermal_connector) annotation(Line(visible=true, origin={90.0,-35.0}, points={{0.0,-35.0},{0.0,35.0}}));
end solar_radiance;
