within iboss.iboss_thermal.Panel_5x5.multi_connector;

connector thermal_connector_side_2 "Verbindungselement fuer mehr als eine Schnittstelle"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  Interfaces.HeatPort_a port_0;
  Interfaces.HeatPort_a port_1;
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(textString = "2", lineColor = {0, 0, 0}, extent = {{-99, 96.7}, {97.7, -100}})}));
end thermal_connector_side_2;