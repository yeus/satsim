within iboss.iboss_thermal.Panel_5x5.multi_connector;

connector thermal_connector_Panel_3x3 "Verbindungselement fuer mehr als eine Schnittstelle"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  Interfaces.HeatPort_a port_00;
  Interfaces.HeatPort_a port_01;
  Interfaces.HeatPort_a port_02;
  Interfaces.HeatPort_a port_10;
  Interfaces.HeatPort_a port_11;
  Interfaces.HeatPort_a port_12;
  Interfaces.HeatPort_a port_20;
  Interfaces.HeatPort_a port_21;
  Interfaces.HeatPort_a port_22;
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(textString = "3x3", lineColor = {255, 255, 255}, extent = {{-100, 96.7}, {96.7, -100}})}));
end thermal_connector_Panel_3x3;