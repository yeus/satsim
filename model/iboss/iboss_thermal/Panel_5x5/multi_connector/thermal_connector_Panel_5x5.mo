within iboss.iboss_thermal.Panel_5x5.multi_connector;

connector thermal_connector_Panel_5x5 "Verbindungselement fuer mehr als eine Schnittstelle"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  Interfaces.HeatPort_a port_00;
  Interfaces.HeatPort_a port_01;
  Interfaces.HeatPort_a port_02;
  Interfaces.HeatPort_a port_03;
  Interfaces.HeatPort_a port_04;
  Interfaces.HeatPort_a port_10;
  Interfaces.HeatPort_a port_11;
  Interfaces.HeatPort_a port_12;
  Interfaces.HeatPort_a port_13;
  Interfaces.HeatPort_a port_14;
  Interfaces.HeatPort_a port_20;
  Interfaces.HeatPort_a port_21;
  Interfaces.HeatPort_a port_22;
  Interfaces.HeatPort_a port_23;
  Interfaces.HeatPort_a port_24;
  Interfaces.HeatPort_a port_30;
  Interfaces.HeatPort_a port_31;
  Interfaces.HeatPort_a port_32;
  Interfaces.HeatPort_a port_33;
  Interfaces.HeatPort_a port_34;
  Interfaces.HeatPort_a port_40;
  Interfaces.HeatPort_a port_41;
  Interfaces.HeatPort_a port_42;
  Interfaces.HeatPort_a port_43;
  Interfaces.HeatPort_a port_44;
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(textString = "5x5", lineColor = {255, 255, 255}, extent = {{-100, 96.7}, {96.7, -100}})}));
end thermal_connector_Panel_5x5;