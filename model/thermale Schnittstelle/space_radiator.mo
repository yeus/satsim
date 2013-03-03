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
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature BlackSky(T=3) annotation(Placement(visible=true, transformation(origin={-60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_Rad(Gr=epsilon_Rad*effective_area_Rad) annotation(Placement(visible=true, transformation(origin={0.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={81.25,0.0}, extent={{-48.75,-48.75},{48.75,48.75}}, rotation=-180), iconTransformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_TSS(Gr=epsilon_TSS*effective_area_TSS) annotation(Placement(visible=true, transformation(origin={0.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_MSS(Gr=epsilon_MSS*effective_area_MSS) annotation(Placement(visible=true, transformation(origin={-0.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_ESS(Gr=epsilon_ESS*effective_area_ESS) annotation(Placement(visible=true, transformation(origin={0.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(bodyRadiation_MSS.port_b,thermal_connector1.MSS) annotation(Line(visible=true, origin={33.2613,16.178}, points={{-23.2613,3.822},{-3.7613,3.822},{-3.7613,-3.822},{30.784,-3.822}}, color={191,0,0}));
  connect(bodyRadiation_MSS.port_a,BlackSky.port) annotation(Line(visible=true, origin={-38.4937,10.0}, points={{28.4937,10.0},{-8.4937,10.0},{-8.4937,-10.0},{-11.5062,-10.0}}, color={191,0,0}));
  connect(bodyRadiation_TSS.port_b,thermal_connector1.TSS) annotation(Line(visible=true, origin={33.2984,-16.1003}, points={{-23.2984,-3.8997},{-3.7984,-3.8997},{-3.7984,3.8997},{30.8951,3.8997}}, color={191,0,0}));
  connect(bodyRadiation_TSS.port_a,BlackSky.port) annotation(Line(visible=true, origin={-38.4937,-10.0}, points={{28.4937,-10.0},{-8.4937,-10.0},{-8.4937,10.0},{-11.5062,10.0}}, color={191,0,0}));
  connect(bodyRadiation_Rad.port_b,thermal_connector1.Rad) annotation(Line(visible=true, origin={46.2708,-52.1146}, points={{-36.2708,-7.8854},{18.1354,-7.8854},{18.1354,15.7708}}, color={191,0,0}));
  connect(bodyRadiation_Rad.port_a,BlackSky.port) annotation(Line(visible=true, origin={-38.4937,-30.0}, points={{28.4937,-30.0},{-8.4937,-30.0},{-8.4937,30.0},{-11.5062,30.0}}, color={191,0,0}));
  connect(bodyRadiation_ESS.port_b,thermal_connector1.ESS) annotation(Line(visible=true, origin={45.9531,52.2469}, points={{-35.9531,7.7531},{17.9766,7.7531},{17.9766,-15.5061}}, color={191,0,0}));
  connect(bodyRadiation_ESS.port_a,BlackSky.port) annotation(Line(visible=true, origin={-38.4937,30.0}, points={{28.4937,30.0},{-8.4937,30.0},{-8.4937,-30.0},{-11.5062,-30.0}}, color={191,0,0}));
end space_radiator;
