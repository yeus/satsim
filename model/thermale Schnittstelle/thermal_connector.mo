connector thermal_connector "Verbindungselement für mehr als eine Schnittstelle"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  annotation(defaultComponentName="thermal_connector", Icon(graphics={Rectangle(visible=true, fillPattern=FillPattern.CrossDiag, lineThickness=1, extent={{-100.0,-100.0},{100.0,100.0}}),Text(visible=true, origin={-44.0817,85.1439}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-30.0,-15.1439},{30.0,15.1439}}, textString="Rad", fontName="Arial"),Text(visible=true, origin={46.7747,84.8561}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-30.0,-15.1439},{30.0,15.1439}}, textString="TSS", fontName="Arial"),Text(visible=true, origin={-44.0959,-85.1439}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-30.0,-15.1439},{30.0,15.1439}}, textString="MSS", fontName="Arial"),Text(visible=true, origin={47.1086,-85.1439}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-30.0,-15.1439},{30.0,15.1439}}, textString="ESS", fontName="Arial")}, coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})), Diagram(graphics={Text(visible=true, fillPattern=FillPattern.Solid, extent={{-102.764,-162.343},{97.2356,-102.343}}, textString="%name", fontName="Arial"),Rectangle(visible=true, origin={-28.2763,-5.171}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, lineThickness=1, extent={{-30.7109,-23.1268},{27.2635,33.4688}}),Text(visible=true, origin={70.0,24.0846}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-17.1201,-5.9154},{17.1201,5.9154}}, textString="TSS", fontName="Arial"),Text(visible=true, origin={70.0,-25.2132}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-12.9755,-6.8676},{12.9755,6.8676}}, textString="MSS", fontName="Arial"),Text(visible=true, origin={70.0,-76.3627}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-13.598,-6.3627},{13.598,6.3627}}, textString="ESS", fontName="Arial"),Text(visible=true, origin={70.0,74.0846}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-17.1201,-5.9154},{17.1201,5.9154}}, textString="Rad", fontName="Arial")}, coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a TSS annotation(Placement(visible=true, transformation(origin={34.9878,25.027}, extent={{-29.3849,-29.3849},{29.3849,29.3849}}, rotation=0), iconTransformation(origin={47.5754,49.0995}, extent={{-20.9005,-20.9005},{20.9005,20.9005}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a MSS annotation(Placement(visible=true, transformation(origin={35.2917,-25.3457}, extent={{-29.3775,-29.3775},{29.3775,29.3775}}, rotation=0), iconTransformation(origin={-44.5202,-48.8898}, extent={{-21.1102,-21.1102},{21.1102,21.1102}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a ESS annotation(Placement(visible=true, transformation(origin={35.5288,-75.3658}, extent={{-29.6146,-29.6146},{29.6146,29.6146}}, rotation=0), iconTransformation(origin={47.071,-48.8363}, extent={{-21.1637,-21.1637},{21.1637,21.1637}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a Rad annotation(Placement(visible=true, transformation(origin={34.5515,74.5515}, extent={{-28.326,-28.326},{28.326,28.326}}, rotation=0), iconTransformation(origin={-44.8506,49.0995}, extent={{-20.9005,-20.9005},{20.9005,20.9005}}, rotation=0)));
end thermal_connector;