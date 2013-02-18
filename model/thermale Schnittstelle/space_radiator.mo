model space_radiator
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, fillPattern=FillPattern.Solid, extent={{-100.0,-100.0},{100.0,100.0}}),Text(visible=true, origin={0.0,75.6305}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-100.0,-24.3695},{100.0,24.3695}}, textString="Radiator", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Fläche des Radiators tbd";
  parameter Modelica.SIunits.Area effective_area_TSS=0.005 "Fläche der thermalen Schnittstelle tbd";
  parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Fläche der mechanischen Schnittstelle tbd";
  parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Fläche der elektrischen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_Rad=0.56 "Emmisionskoeffizient des Radiators tbd";
  parameter Modelica.SIunits.Emissivity epsilon_TSS=0.1 "Emmisionskoeffizient der thermalen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_MSS=0.4 "Emmisionskoeffizient der mechanischen Schnittstelle tbd";
  parameter Modelica.SIunits.Emissivity epsilon_ESS=0.3 "Emmisionskoeffizient der elektrischen Schnittstelle tbd Materialdatenbank";
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature BlackSky(T=0) annotation(Placement(visible=true, transformation(origin={-125.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad(Gr=epsilon_Rad*effective_area_Rad) annotation(Placement(visible=true, transformation(origin={0.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={90.0,0.0}, extent={{-47.5,-47.5},{47.5,47.5}}, rotation=-180), iconTransformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS(Gr=epsilon_TSS*effective_area_TSS) annotation(Placement(visible=true, transformation(origin={0.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS(Gr=epsilon_MSS*effective_area_MSS) annotation(Placement(visible=true, transformation(origin={-0.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_ESS(Gr=epsilon_ESS*effective_area_ESS) annotation(Placement(visible=true, transformation(origin={0.0,58.1662}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(bodyRadiation_ESS.port_b,thermal_connector1.ESS) annotation(Line(visible=true, origin={26.9872,46.9825}, points={{-16.9872,11.1837},{-14.5747,11.1837},{-14.5747,-11.1837},{46.1366,-11.1837}}, color={191,0,0}));
  connect(bodyRadiation_MSS.port_b,thermal_connector1.MSS) annotation(Line(visible=true, origin={40.5591,16.0196}, points={{-30.5591,3.9804},{-1.0591,3.9804},{-1.0591,-3.9804},{32.6773,-3.9804}}, color={191,0,0}));
  connect(bodyRadiation_TSS.port_b,thermal_connector1.TSS) annotation(Line(visible=true, origin={40.5952,-15.9439}, points={{-30.5952,-4.0561},{-1.0952,-4.0561},{-1.0952,4.0561},{32.7856,4.0561}}, color={191,0,0}));
  connect(bodyRadiation_Rad.port_b,thermal_connector1.Rad) annotation(Line(visible=true, origin={28.397,-47.706}, points={{-18.397,-12.294},{-13.397,-12.294},{-13.397,12.294},{45.191,12.294}}, color={191,0,0}));
  connect(bodyRadiation_ESS.port_a,BlackSky.port) annotation(Line(visible=true, origin={-87.2438,29.0831}, points={{77.2438,29.0831},{-24.7438,29.0831},{-24.7438,-29.0831},{-27.7563,-29.0831}}, color={191,0,0}));
  connect(bodyRadiation_MSS.port_a,BlackSky.port) annotation(Line(visible=true, origin={-87.2438,10.0}, points={{77.2438,10.0},{-24.7438,10.0},{-24.7438,-10.0},{-27.7563,-10.0}}, color={191,0,0}));
  connect(bodyRadiation_TSS.port_a,BlackSky.port) annotation(Line(visible=true, origin={-87.2438,-10.0}, points={{77.2438,-10.0},{-24.7438,-10.0},{-24.7438,10.0},{-27.7563,10.0}}, color={191,0,0}));
  connect(bodyRadiation_Rad.port_a,BlackSky.port) annotation(Line(visible=true, origin={-87.2438,-30.0}, points={{77.2438,-30.0},{-24.7438,-30.0},{-24.7438,30.0},{-27.7563,30.0}}, color={191,0,0}));
end space_radiator;
