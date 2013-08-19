// CP: 65001
// SimulationX Version: 3.5.707.15 x64
model BB_heater "BB_heater.mo"
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a Heater "Thermal port for 1-dim. heat transfer (filled rectangular icon)" annotation(Placement(
		transformation(extent={{45,-90},{65,-70}}),
		iconTransformation(extent={{90,-10},{110,10}})));
	parameter Modelica.SIunits.ActivePower heating_power=100 "heating Power of the heater";
	parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
	parameter Real bandwidth_heater=5 "Bandwidth of the controller / K";
	Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth=bandwidth_heater) annotation(Placement(transformation(extent={{-50,-65},{-30,-45}})));
	Modelica.Blocks.Sources.Constant lower_Temp(k=lower_Temp_boundary) annotation(Placement(transformation(extent={{-80,-50},{-60,-30}})));
	Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
		origin={-70,-85},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	Modelica.Blocks.Math.Gain gain1(k=heating_power) annotation(Placement(transformation(extent={{-15,-65},{5,-45}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heater_power annotation(Placement(transformation(extent={{15,-65},{35,-45}})));
	equation
		connect(temperature_EB.T,onOffController1.u) annotation(Line(
			points={{-80,-85},{-85,-85},{-85,-61},{-57,-61},{-52,-61}},
			color={0,0,127},
			thickness=0.0625));
		connect(gain1.y,heater_power.Q_flow) annotation(Line(
			points={{6,-55},{11,-55},{10,-55},{15,-55}},
			color={0,0,127},
			thickness=0.0625));
		connect(lower_Temp.y,onOffController1.reference) annotation(Line(
			points={{-59,-40},{-54,-40},{-54,-44},{-57,-44},{-57,-49},{-52,
			-49}},
			color={0,0,127},
			thickness=0.0625));
		connect(onOffController1.y,gain1.u) annotation(Line(
			points={{-29,-55},{-24,-55},{-22,-55},{-17,-55}},
			color={255,0,255},
			thickness=0.0625));
		
		
		connect(temperature_EB.port,Heater) annotation(Line(
			points={{-60,-85},{-55,-85},{50,-85},{50,-80},{55,-80}},
			color={191,0,0},
			thickness=0.0625));
		connect(heater_power.port,Heater) annotation(Line(
			points={{35,-55},{40,-55},{50,-55},{50,-80},{55,-80}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		lower_Temp(y(flags=2)),
		temperature_EB(
			T(flags=2),
			port(T(flags=2))),
		gain1(y(flags=2)),
		heater_power(port(Q_flow(flags=2))),
		viewinfo[0](
			simViewInfos[0](
				runtimeClass="CSimView",
				tabGroup=0,
				typename="ModelViewInfo"),
			typename="ModelInfo"),
		Icon(
			coordinateSystem(extent={{-100,-100},{100,100}}),
			graphics={
								Ellipse(
									lineColor={255,255,255},
									fillColor={255,0,0},
									fillPattern=FillPattern.CrossDiag,
									extent={{100,-100},{-100,100}}),
								Text(
									textString="heater",
									textStyle={TextStyle.Bold},
									lineColor={0,0,0},
									fillColor={255,0,0},
									extent={{-99,37},{100,-35}})}),
		Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
		Documentation(info="<HTML>
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
"),
		experiment(
			StopTime=100,
			StartTime=0,
			Interval=0.001));
end BB_heater;
