model BS2x2x2
  annotation(Diagram(), Icon());
  //Bausteine
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor111(C = 1000) annotation(Placement(visible = true, transformation(origin = {-80,40}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor211(C = 1000) annotation(Placement(visible = true, transformation(origin = {40,40}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor112(C = 1000) annotation(Placement(visible = true, transformation(origin = {-30,90}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor212(C = 1000) annotation(Placement(visible = true, transformation(origin = {90,90}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor122(C = 1000) annotation(Placement(visible = true, transformation(origin = {-30,-30}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor222(C = 1000) annotation(Placement(visible = true, transformation(origin = {90,-30}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  //Wärmeleitung
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor221222(G = 18) annotation(Placement(visible = true, transformation(origin = {70,-55}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor211212(G = 18) annotation(Placement(visible = true, transformation(origin = {70,55}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor121122(G = 18) annotation(Placement(visible = true, transformation(origin = {-50,-55}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor111211(G = 18) annotation(Placement(visible = true, transformation(origin = {-20,40}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor122222(G = 18) annotation(Placement(visible = true, transformation(origin = {30,-30}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor112212(G = 18) annotation(Placement(visible = true, transformation(origin = {30,90}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor111112(G = 18) annotation(Placement(visible = true, transformation(origin = {-55,70}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  //Sensoren
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedheatflow1(Q_flow = 100) annotation(Placement(visible = true, transformation(origin = {-90,30}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor221 annotation(Placement(visible = true, transformation(origin = {50,-90}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor211 annotation(Placement(visible = true, transformation(origin = {50,30}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor212 annotation(Placement(visible = true, transformation(origin = {115,90}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor222 annotation(Placement(visible = true, transformation(origin = {115,-30}, extent = {{-6,-6},{6,6}}, rotation = 0)));
  //Randbedingungen
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor121(C = 1000) annotation(Placement(visible = true, transformation(origin = {-80,-80}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor221(C = 1000) annotation(Placement(visible = true, transformation(origin = {40,-80}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor211221(G = 18) annotation(Placement(visible = true, transformation(origin = {40,-10}, extent = {{-6,6},{6,-6}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor111121(G = 18) annotation(Placement(visible = true, transformation(origin = {-80,-10}, extent = {{6,-6},{-6,6}}, rotation = -270)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor121221(G = 18) annotation(Placement(visible = true, transformation(origin = {-20,-80}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor212222(G = 18) annotation(Placement(visible = true, transformation(origin = {90,30}, extent = {{-6,6},{6,-6}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor112122(G = 18) annotation(Placement(visible = true, transformation(origin = {-30,15}, extent = {{-5.8,5.8},{5.8,-5.8}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor111 annotation(Placement(visible = true, transformation(origin = {-90,50}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor121 annotation(Placement(visible = true, transformation(origin = {-90,-70}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor112 annotation(Placement(visible = true, transformation(origin = {-50,90}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor122 annotation(Placement(visible = true, transformation(origin = {-55,-30}, extent = {{6,6},{-6,-6}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature1(T = 293) annotation(Placement(visible = true, transformation(origin = {145,-20}, extent = {{6,6},{-6,-6}}, rotation = -180)));
equation
  connect(thermalconductor112122.port_b,heatcapacitor122.port) annotation(Line(points = {{-30.3038,8.54159},{-28.6832,8.54159},{-30,-34.1531},{-30,-36}}));
  connect(thermalconductor112122.port_a,heatcapacitor112.port) annotation(Line(points = {{-30.3038,20.1416},{-29.7262,20.1416},{-30,83.5529},{-30,84}}));
  connect(heatcapacitor112.port,thermalconductor112212.port_a) annotation(Line(points = {{-29.7262,83.5528},{-29.7262,89.7001},{23.7348,89.7001},{23.7348,89.1786}}));
  connect(thermalconductor112212.port_b,heatcapacitor212.port) annotation(Line(points = {{37.2822,89.1786},{89.7001,89.1786},{89.7001,83.9695},{89.9609,83.9695}}));
  connect(thermalconductor212222.port_b,heatcapacitor222.port) annotation(Line(points = {{89.7001,22.2751},{89.9609,22.2751},{89.9609,-33.3708},{90.2216,-33.3708}}));
  connect(thermalconductor212222.port_a,heatcapacitor212.port) annotation(Line(points = {{89.7001,37.1772},{89.4394,37.1772},{89.4394,83.9695},{89.9609,83.9695}}));
  connect(thermalconductor122222.port_a,heatcapacitor122.port) annotation(Line(points = {{24.0898,-30.5085},{-28.1617,-30.5085},{-28.1617,-34.1531},{-28.6832,-34.1531}}));
  connect(thermalconductor122222.port_b,heatcapacitor222.port) annotation(Line(points = {{36.4056,-30.5085},{89.7001,-30.5085},{89.7001,-33.3708},{90.2216,-33.3708}}));
  connect(thermalconductor121221.port_a,heatcapacitor221.port) annotation(Line(points = {{-13.296,-79.7392},{39.3742,-79.7392},{39.3742,-74},{40,-74}}));
  connect(thermalconductor121221.port_b,heatcapacitor121.port) annotation(Line(points = {{-25.296,-79.7392},{-80.3129,-79.7392},{-80.3129,-75.1984},{-80.4786,-75.1984}}));
  connect(heatcapacitor111.port,thermalconductor111211.port_a) annotation(Line(points = {{-80,34},{-80,39.8957},{-26.4361,39.8957},{-26.4361,39.8444}}));
  connect(thermalconductor111211.port_b,heatcapacitor211.port) annotation(Line(points = {{-14.4361,39.8444},{39.3742,39.8444},{39.3742,34.9413},{40,34.9413},{40,34}}));
  connect(thermalconductor111121.port_a,heatcapacitor121.port) annotation(Line(points = {{-80.2608,-15.4915},{-80.3129,-15.4915},{-80.3129,-75.1984},{-80.4786,-75.1984}}));
  connect(thermalconductor111121.port_b,heatcapacitor111.port) annotation(Line(points = {{-80.2608,-3.49153},{-80.3129,-3.49153},{-80.3129,34},{-80,34}}));
  connect(thermalconductor121122.port_b,heatcapacitor122.port) annotation(Line(points = {{-45.4975,-55.5411},{-28.6832,-55.5411},{-28.6832,-34.1531},{-28.6832,-34.1531}}));
  connect(thermalconductor121122.port_a,heatcapacitor121.port) annotation(Line(points = {{-55.6759,-55.5411},{-80.3129,-55.5411},{-80.3129,-75.1984},{-80.4786,-75.1984}}));
  connect(thermalconductor211212.port_b,heatcapacitor212.port) annotation(Line(points = {{73.1722,60.4954},{89.7001,60.4954},{89.7001,83.9695},{89.9609,83.9695}}));
  connect(heatcapacitor211.port,thermalconductor211212.port_a) annotation(Line(points = {{39.1332,34.8961},{39.1332,53.7158},{60.8564,53.7158},{60.8564,60.4954}}));
  connect(thermalconductor211221.port_b,heatcapacitor221.port) annotation(Line(points = {{39.684,-16.4353},{40.1565,-16.4353},{40.1565,-75.7487},{39.7003,-75.7487}}));
  connect(thermalconductor211221.port_a,heatcapacitor211.port) annotation(Line(points = {{39.684,-4.43527},{39.1134,-4.43527},{39.1134,34.8961},{39.1332,34.8961}}));
  connect(thermalconductor221222.port_b,heatcapacitor222.port) annotation(Line(points = {{74.9869,-55.2803},{90.2216,-55.2803},{90.2216,-33.3708},{90.2216,-33.3708}}));
  connect(thermalconductor221222.port_a,heatcapacitor221.port) annotation(Line(points = {{60.0848,-55.2803},{39.8957,-55.2803},{39.8957,-75.7487},{39.7003,-75.7487}}));
  connect(thermalconductor111112.port_b,heatcapacitor112.port) annotation(Line(points = {{-48.3784,68.8396},{-29.7262,68.8396},{-29.7262,83.5529},{-29.7262,83.5529}}));
  connect(heatcapacitor111.port,thermalconductor111112.port_a) annotation(Line(points = {{-80.1266,34.621},{-80.1266,55.5411},{-59.5746,55.5411},{-59.5746,68.8396}}));
  connect(temperaturesensor222.port,fixedtemperature1.port) annotation(Line(points = {{107.803,-29.7262},{136.375,-29.7262},{136.375,-21.5492},{136.301,-21.5492}}));
  connect(temperaturesensor222.port,heatcapacitor222.port) annotation(Line(points = {{107.803,-29.7262},{90.2216,-29.7262},{90.2216,-33.3708},{90.2216,-33.3708}}));
  connect(temperaturesensor122.port,heatcapacitor122.port) annotation(Line(points = {{-45.3776,-32.073},{-28.6832,-32.073},{-28.6832,-34.1531},{-28.6832,-34.1531}}));
  connect(temperaturesensor212.port,heatcapacitor212.port) annotation(Line(points = {{109.368,89.7001},{89.9609,89.7001},{89.9609,83.9695},{89.9609,83.9695}}));
  connect(temperaturesensor112.port,heatcapacitor112.port) annotation(Line(points = {{-42.89,90.7432},{-29.7262,90.7432},{-29.7262,83.5529},{-29.7262,83.5529}}));
  connect(temperaturesensor221.port,heatcapacitor221.port) annotation(Line(points = {{49.5406,-92.4978},{39.6349,-92.4978},{39.6349,-75.7487},{39.7003,-75.7487}}));
  connect(temperaturesensor211.port,heatcapacitor211.port) annotation(Line(points = {{46.8157,28.761},{39.1134,28.761},{39.1134,34.8961},{39.1332,34.8961}}));
  connect(temperaturesensor111.port,heatcapacitor111.port) annotation(Line(points = {{-86.4079,52.9396},{-80.0522,52.9396},{-80.0522,34.621},{-80.1266,34.621}}));
  connect(fixedheatflow1.port,heatcapacitor111.port) annotation(Line(points = {{-86.9437,30.1086},{-80.3129,30.1086},{-80.3129,34.621},{-80.1266,34.621}}));
  connect(temperaturesensor121.port,heatcapacitor121.port) annotation(Line(points = {{-84.6857,-68.5082},{-80.3129,-68.5082},{-80.3129,-75.1984},{-80.4786,-75.1984}}));
end BS2x2x2;

