within iboss.iboss_thermal.Panel_5x5.multi_connector;

connector thermal_connector_Panel_2x2 "Verbindungselement fuer mehr als eine Schnittstelle"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  Interfaces.HeatPort_a port_00;
  Interfaces.HeatPort_a port_01;
  Interfaces.HeatPort_a port_10;
  Interfaces.HeatPort_a port_11;
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(textString = "2x2", lineColor = {255, 255, 255}, extent = {{-100, 96.7}, {96.7, -100}})}));
end thermal_connector_Panel_2x2;