connector thermal_connector "Verbindungselement für mehr als eine Schnittstelle"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  annotation(defaultComponentName="thermal_connector", Icon(graphics={Rectangle(rotation=0, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.CrossDiag, lineThickness=1, extent={{-100,100},{100,-100}})}), Diagram(graphics={Text(visible=true, fillPattern=FillPattern.Solid, extent={{-102.764,-162.343},{97.2356,-102.343}}, textString="%name", fontName="Arial"),Rectangle(visible=true, origin={-28.2763,-5.171}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, lineThickness=1, extent={{-30.7109,-23.1268},{27.2635,33.4688}}),Text(visible=true, origin={61.705,61.705}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-17.1201,-5.9154},{17.1201,5.9154}}, textString="TSS", fontName="Arial"),Text(visible=true, origin={61.705,0.0}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-12.9755,-6.8676},{12.9755,6.8676}}, textString="MSS", fontName="Arial"),Text(visible=true, origin={61.705,-61.705}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-13.598,-6.3627},{13.598,6.3627}}, textString="ESS", fontName="Arial")}, coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a TSS annotation(Placement(visible=true, transformation(origin={30,61.7046}, extent={{-28.2954,-28.2954},{28.2954,28.2954}}, rotation=0), iconTransformation(origin={61.705,61.705}, extent={{-28.295,-28.295},{28.295,28.295}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a MSS annotation(Placement(visible=true, transformation(origin={30,0.0}, extent={{-28.2954,-28.2954},{28.2954,28.2954}}, rotation=0), iconTransformation(origin={61.705,0.0}, extent={{-28.295,-28.295},{28.295,28.295}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a ESS annotation(Placement(visible=true, transformation(origin={30,-61.7046}, extent={{-28.2954,-28.2954},{28.2954,28.2954}}, rotation=0), iconTransformation(origin={61.705,-61.705}, extent={{-28.295,-28.295},{28.295,28.295}}, rotation=0)));
end thermal_connector;
