model BB_cooler "BB_cooler.mo"
<<<<<<< HEAD
  // CP: 65001
  // SimulationX Version: 3.5.707.15 x64
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a cooler "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(transformation(extent = {{45,-90},{65,-70}}), iconTransformation(extent = {{90,-10},{110,10}})));
  parameter Modelica.SIunits.ActivePower cooling_power = -100 "cooling Power of the heater";
  parameter Modelica.SIunits.Temp_K upper_Temp_boundary = 310 "hottest allowed temperatur in the Box";
  parameter Real bandwidth_cooler = 5 "Bandwidth of the controller / K";
  Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth = bandwidth_cooler) annotation(Placement(transformation(extent = {{-50,-65},{-30,-45}})));
  Modelica.Blocks.Sources.Constant upper_Temp(k = upper_Temp_boundary) annotation(Placement(transformation(extent = {{-105,-75},{-85,-55}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(origin = {-70,-85}, extent = {{-10,-10},{10,10}}, rotation = -180)));
  Modelica.Blocks.Math.Gain gain1(k = cooling_power) annotation(Placement(transformation(extent = {{-15,-65},{5,-45}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent = {{15,-65},{35,-45}})));
  Modelica.Blocks.Math.BooleanToReal booleantoreal1 annotation(Placement(visible = true, transformation(origin = {-22.6475,-18.8198}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(gain1.u,booleantoreal1.y) annotation(Line(points = {{-17,-55},{-5.10367,-55},{-5.10367,-19.1388},{-11.4833,-19.1388},{-11.4833,-19.1388}}));
  connect(onOffController1.y,booleantoreal1.u) annotation(Line(points = {{-29,-55},{-34.7687,-55},{-34.7687,-19.1388},{-34.7687,-19.1388}}));
  connect(temperature_EB.T,onOffController1.reference) annotation(Line(points = {{-80,-85},{-75.3684,-85},{-75.3684,-49.2632},{-53.0526,-49.2632},{-53.0526,-49.2632}}));
  connect(gain1.y,heater_power.Q_flow) annotation(Line(points = {{6,-55},{11,-55},{10,-55},{15,-55}}, color = {0,0,127}, thickness = 0.0625));
  connect(upper_Temp.y,onOffController1.u) annotation(Line(points = {{-84,-65},{-79,-65},{-57,-65},{-57,-61},{-52,-61}}, color = {0,0,127}, thickness = 0.0625));
  connect(heater_power.port,cooler) annotation(Line(points = {{35,-55},{40,-55},{50,-55},{50,-80},{55,-80}}, color = {191,0,0}, thickness = 0.0625));
  connect(temperature_EB.port,cooler) annotation(Line(points = {{-60,-85},{-55,-85},{50,-85},{50,-80},{55,-80}}, color = {191,0,0}, thickness = 0.0625));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}), graphics = {Ellipse(lineColor = {0,0,0}, fillColor = {0,0,255}, fillPattern = FillPattern.CrossDiag, extent = {{100,-100},{-100,100}}),Text(textString = "cooler", textStyle = {TextStyle.Bold}, lineColor = {255,255,255}, fillColor = {255,0,0}, extent = {{-99,37},{100,-35}})}), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}})), Documentation(info = "<HTML>
=======
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a cooler "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(
		transformation(extent={{80,-90},{100,-70}}),
		iconTransformation(extent={{90,-10},{110,10}})));
	parameter Modelica.SIunits.ActivePower cooling_power=-100 "cooling Power of the heater";
	parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "hottest allowed temperatur in the Box";
	parameter Real bandwidth_cooler=5 "Bandwidth of the controller / K";
	Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth=bandwidth_cooler) annotation(Placement(transformation(extent={{-50,-65},{-30,-45}})));
	Modelica.Blocks.Sources.Constant upper_Temp(k=upper_Temp_boundary) annotation(Placement(transformation(extent={{-105,-75},{-85,-55}})));
	Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
		origin={-70,-85},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	Modelica.Blocks.Math.Gain gain1(k=cooling_power) annotation(Placement(transformation(extent={{20,-65},{40,-45}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent={{50,-65},{70,-45}})));
	Modelica.Blocks.Math.BooleanToReal booleanToReal1 annotation(Placement(transformation(extent={{-15,-65},{5,-45}})));
	equation
		connect(gain1.y,heater_power.Q_flow) annotation(Line(
			points={{41,-55},{46,-55},{45,-55},{50,-55}},
			color={0,0,127},
			thickness=0.0625));
		
		
		
		
		
		connect(upper_Temp.y,onOffController1.u) annotation(Line(
			points={{-84,-65},{-79,-65},{-57,-65},{-57,-61},{-52,-61}},
			color={0,0,127},
			thickness=0.0625));
		connect(heater_power.port,cooler) annotation(Line(
			points={{70,-55},{75,-55},{85,-55},{85,-80},{90,-80}},
			color={191,0,0},
			thickness=0.0625));
		connect(temperature_EB.port,cooler) annotation(Line(
			points={{-60,-85},{-55,-85},{85,-85},{85,-80},{90,-80}},
			color={191,0,0},
			thickness=0.0625));
		connect(temperature_EB.T,onOffController1.reference) annotation(
			Line(
				points={{-80,-85},{-115,-85},{-115,-49},{-57,-49},{-52,-49}},
				color={0,0,127},
				thickness=0.0625),
			AutoRoute=false);
		connect(booleanToReal1.u,onOffController1.y) annotation(Line(
			points={{-17,-55},{-22,-55},{-24,-55},{-29,-55}},
			color={255,0,255},
			thickness=0.0625));
		connect(booleanToReal1.y,gain1.u) annotation(Line(
			points={{6,-55},{11,-55},{13,-55},{18,-55}},
			color={0,0,127},
			thickness=0.0625));
	annotation(
		upper_Temp(y(flags=2)),
		temperature_EB(
			T(flags=2),
			port(T(flags=2))),
		gain1(y(flags=2)),
		heater_power(port(Q_flow(flags=2))),
		viewinfo[0](
			simViewInfos[0](
				runtimeClass="CSimXModelicaView",
				tabGroup=0,
				typename="ViewInfo"),
			typename="ModelInfo"),
		Icon(
			coordinateSystem(extent={{-100,-100},{100,100}}),
			graphics={
								Ellipse(
									lineColor={0,0,0},
									fillColor={0,0,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{100,-100},{-100,100}}),
								Text(
									textString="cooler",
									textStyle={TextStyle.Bold},
									lineColor={255,255,255},
									fillColor={255,0,0},
									extent={{-99,37},{100,-35}})}),
		Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
		Documentation(info="<HTML>
>>>>>>> 8eb2f94e236cb9c25a8548cca347a7314328728e
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"), experiment(StopTime = 100, StartTime = 0, Interval = 0.001));
end BB_cooler;

