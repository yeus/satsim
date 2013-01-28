model test
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedheatflow1(Q_flow = 100) annotation(Placement(visible = true, transformation(origin = {-81.7056,6.32737}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor2(C = 1000) annotation(Placement(visible = true, transformation(origin = {-59.6492,30.8116}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor2(G = 18) annotation(Placement(visible = true, transformation(origin = {-40.6933,6.32737}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor heatflowsensor1 annotation(Placement(visible = true, transformation(origin = {-12.1045,6.05227}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor3(C = 1000) annotation(Placement(visible = true, transformation(origin = {6.32737,32.4622}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor2 annotation(Placement(visible = true, transformation(origin = {6.32737,-35.2132}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C = 1000) annotation(Placement(visible = true, transformation(origin = {66.575,37.414}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalconductor1(G = 18) annotation(Placement(visible = true, transformation(origin = {23.5846,6.05227}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor heatflowsensor2 annotation(Placement(visible = true, transformation(origin = {52.1953,5.77717}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature1(T = 293) annotation(Placement(visible = true, transformation(origin = {84.1816,5.97799}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor3 annotation(Placement(visible = true, transformation(origin = {68.2256,-34.1128}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperaturesensor1 annotation(Placement(visible = true, transformation(origin = {-59.6972,-37.6891}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(temperaturesensor1.port,thermalconductor2.port_a) annotation(Line(points = {{-59.6972,-25.6891},{-59.3521,-25.6891},{-59.3521,6.32737},{-52.6933,6.32737}}));
  connect(temperaturesensor3.port,heatflowsensor2.port_b) annotation(Line(points = {{68.2256,-22.1128},{64.099,-22.1128},{64.099,5.77717},{64.1953,5.77717}}));
  connect(fixedtemperature1.port,heatflowsensor2.port_b) annotation(Line(points = {{72.1816,5.97799},{64.6492,5.97799},{64.6492,5.77717},{64.1953,5.77717}}));
  connect(heatflowsensor2.port_b,heatcapacitor1.port) annotation(Line(points = {{64.1953,5.77717},{66.2999,5.77717},{66.2999,25.414},{66.575,25.414}}));
  connect(heatflowsensor2.port_a,thermalconductor1.port_b) annotation(Line(points = {{40.1953,5.77717},{35.4883,5.77717},{35.4883,6.05227},{35.5846,6.05227}}));
  connect(thermalconductor1.port_a,heatflowsensor1.port_b) annotation(Line(points = {{11.5846,6.05227},{0.275103,6.05227},{0.275103,6.05227},{-0.104539,6.05227}}));
  connect(temperaturesensor2.port,heatflowsensor1.port_b) annotation(Line(points = {{6.32737,-23.2132},{6.32737,-23.2132},{6.32737,6.05227},{-0.104539,6.05227}}));
  connect(heatflowsensor1.port_b,heatcapacitor3.port) annotation(Line(points = {{-0.104539,6.05227},{6.32737,6.05227},{6.32737,20.4622},{6.32737,20.4622}}));
  connect(thermalconductor2.port_b,heatflowsensor1.port_a) annotation(Line(points = {{-28.6933,6.32737},{-6.05227,6.32737},{-6.05227,6.05227},{-24.1045,6.05227}}));
  connect(fixedheatflow1.port,thermalconductor2.port_a) annotation(Line(points = {{-69.7056,6.32737},{-51.4443,6.32737},{-51.4443,6.32737},{-52.6933,6.32737}}));
  connect(thermalconductor2.port_a,heatcapacitor2.port) annotation(Line(points = {{-52.6933,6.32737},{-59.3521,6.32737},{-59.3521,18.8116},{-59.6492,18.8116}}));
end test;

