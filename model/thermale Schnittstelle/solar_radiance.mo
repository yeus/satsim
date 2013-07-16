// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model solar_radiance "Einwirkende Sonnenstrahlung auf Flaeche A mit Absorptionsfaktor alpha"
	parameter Real solar_constant=1372 "Solarkonstate in W/m²";
	parameter Modelica.SIunits.Time orbit_Period(
		final min=Modelica.Constants.small,
		start=1)=5400 "Time for one period";
	parameter Real percent_sun(
		final min=Modelica.Constants.small,
		final max=100)=66 "Width of pulse in % of period";
	parameter Modelica.SIunits.Area effective_area_Rad=0.1448 "Flaeche des Radiators";
	parameter Modelica.SIunits.Area effective_area_TSS=0.01 "Flaeche der thermalen Schnittstelle";
	parameter Modelica.SIunits.Area effective_area_MSS=0.005 "Flaeche der mechanischen Schnittstelle";
	parameter Modelica.SIunits.Area effective_area_ESS=0.0002 "Flaeche der elektrischen Schnittstelle";
	parameter Modelica.SIunits.Emissivity alpha_Rad=0.44 "Absorptionskoeffizient des Radiators";
	parameter Modelica.SIunits.Emissivity alpha_TSS=0.9 "Absorptionskoeffizient der thermalen Schnittstelle";
	parameter Modelica.SIunits.Emissivity alpha_MSS=0.4 "Absorptionskoeffizient der mechanischen Schnittstelle";
	parameter Modelica.SIunits.Emissivity alpha_ESS=0.3 "Absorptionskoeffizient der elektrischen Schnittstelle";
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_Rad annotation(Placement(transformation(
		origin={-40,-50},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_TSS annotation(Placement(transformation(
		origin={-40,-20},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_MSS annotation(Placement(transformation(
		origin={-40,20},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Solar_Power_ESS annotation(Placement(transformation(
		origin={-40,50},
		extent={{-10,-10},{10,10}})));
	Modelica.Blocks.Sources.Pulse Orbit_Rad(
		amplitude=solar_constant*effective_area_Rad*alpha_Rad,
		width=percent_sun,
		period=orbit_Period) annotation(Placement(transformation(
		origin={-110,-50},
		extent={{-10,-10},{10,10}})));
	Modelica.Blocks.Sources.Pulse Orbit_TSS(
		amplitude=solar_constant*effective_area_TSS*alpha_TSS,
		width=percent_sun,
		period=orbit_Period) annotation(Placement(transformation(
		origin={-110,-20},
		extent={{-10,-10},{10,10}})));
	Modelica.Blocks.Sources.Pulse Orbit_MSS(
		amplitude=solar_constant*effective_area_MSS*alpha_MSS,
		width=percent_sun,
		period=orbit_Period) annotation(Placement(transformation(
		origin={-110,20},
		extent={{-10,-10},{10,10}})));
	Modelica.Blocks.Sources.Pulse Orbit_ESS(
		amplitude=solar_constant*effective_area_ESS*alpha_ESS,
		width=percent_sun,
		period=orbit_Period) annotation(Placement(transformation(
		origin={-110,50},
		extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector1 annotation(Placement(
		transformation(
			origin={90,0},
			extent={{-42.5,-42.5},{42.5,42.5}},
			rotation=-180),
		iconTransformation(
			origin={0,0},
			extent={{-10,-10},{10,10}})));
	equation
		connect(thermal_connector1.Rad,Solar_Power_Rad.port) annotation(Line(
			points={{90,0},{85,0},{-25,0},{-25,-50},{-30,-50}},
			color={191,0,0},
			visible=true,
			origin={40.2104,-43.8948}));
		connect(Solar_Power_TSS.port,thermal_connector1.TSS) annotation(Line(
			points={{-30,-20},{-25,-20},{85,-20},{85,0},{90,0}},
			color={191,0,0},
			visible=true,
			origin={33.5325,-15.3182}));
		connect(Solar_Power_MSS.port,thermal_connector1.MSS) annotation(Line(
			points={{-30,20},{-25,20},{85,20},{85,0},{90,0}},
			color={191,0,0},
			visible=true,
			origin={33.5003,15.386}));
		connect(Solar_Power_ESS.port,thermal_connector1.ESS) annotation(Line(
			points={{-30,50},{-25,50},{85,50},{85,0},{90,0}},
			color={191,0,0},
			visible=true,
			origin={39.9335,44.0102}));
		connect(Solar_Power_ESS.Q_flow,Orbit_ESS.y) annotation(Line(
			points={{-50,50},{-55,50},{-94,50},{-99,50}},
			color={0,0,127},
			visible=true,
			origin={-74.5,50}));
		connect(Solar_Power_MSS.Q_flow,Orbit_MSS.y) annotation(Line(
			points={{-50,20},{-55,20},{-94,20},{-99,20}},
			color={0,0,127},
			visible=true,
			origin={-74.5,20}));
		connect(Orbit_TSS.y,Solar_Power_TSS.Q_flow) annotation(Line(
			points={{-99,-20},{-94,-20},{-55,-20},{-50,-20}},
			color={0,0,127},
			visible=true,
			origin={-74.5,-20}));
		connect(Solar_Power_Rad.Q_flow,Orbit_Rad.y) annotation(Line(
			points={{-50,-50},{-55,-50},{-94,-50},{-99,-50}},
			color={0,0,127},
			visible=true,
			origin={-74.5,-50}));
	annotation(
		Icon(
			coordinateSystem(
				extent={{-100,-100},{100,100}},
				grid={10,10}),
			graphics={
								Ellipse(
									fillColor={255,255,0},
									fillPattern=FillPattern.Solid,
									extent={{-99.82210000000001,-100},{99.82210000000001,100}},
									visible=true,
									origin={0.1779,0}),
								Text(
									textString="%name",
									textStyle={TextStyle.Bold},
									fillPattern=FillPattern.Solid,
									extent={{-100,-19.1444},{100,19.1444}},
									visible=true,
									origin={-0,119.1444}),
								Text(
									textString="Period=%orbit_Period",
									fillPattern=FillPattern.Solid,
									extent={{-90,-14.5134},{90,14.5134}},
									visible=true,
									origin={0,25.4866}),
								Text(
									textString="percent_sun=%percent_sun",
									fillPattern=FillPattern.Solid,
									extent={{-90,-14.5134},{90,14.5134}},
									visible=true,
									origin={0,-24.5134})}),
		Diagram(coordinateSystem(
			extent={{-148.5,-105},{148.5,105}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end solar_radiance;
