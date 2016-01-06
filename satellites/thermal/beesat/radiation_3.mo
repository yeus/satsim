// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model radiation_3 "radiation_3.mo"
	iboss.iboss_thermal.components.surface_properties_in lo annotation(Placement(
		transformation(
			origin={-90,20},
			extent={{-10,-10},{10,10}},
			rotation=-270),
		iconTransformation(
			origin={-100,50},
			extent={{-10,-10},{10,10}},
			rotation=-270)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_oo annotation(Placement(transformation(extent={{-55,10},{-35,30}})));
	iboss.iboss_thermal.components.surface_properties_in lm annotation(Placement(
		transformation(
			origin={-90,-15},
			extent={{-10,-10},{10,10}},
			rotation=-270),
		iconTransformation(
			origin={-100,0},
			extent={{-10,-10},{10,10}},
			rotation=-270)));
	iboss.iboss_thermal.components.surface_properties_in lu annotation(Placement(
		transformation(
			origin={-90,-50},
			extent={{-10,-10},{10,10}},
			rotation=-270),
		iconTransformation(
			origin={-100,-50},
			extent={{-10,-10},{10,10}},
			rotation=-270)));
	iboss.iboss_thermal.components.surface_properties_in ro annotation(Placement(
		transformation(
			origin={80,15},
			extent={{-10,-10},{10,10}},
			rotation=-90),
		iconTransformation(
			origin={100,50},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
	iboss.iboss_thermal.components.surface_properties_in rm annotation(Placement(
		transformation(
			origin={80,-20},
			extent={{-10,-10},{10,10}},
			rotation=-90),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
	iboss.iboss_thermal.components.surface_properties_in ru annotation(Placement(
		transformation(
			origin={80,-55},
			extent={{-10,-10},{10,10}},
			rotation=-90),
		iconTransformation(
			origin={100,-50},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_om annotation(Placement(transformation(extent={{-55,-25},{-35,-5}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_ou annotation(Placement(transformation(
		origin={-45,-50},
		extent={{-10,-10},{10,10}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_mo annotation(Placement(transformation(extent={{-25,0},{-5,20}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_mm annotation(Placement(transformation(extent={{-25,-35},{-5,-15}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_mu annotation(Placement(transformation(
		origin={-15,-60},
		extent={{-10,-10},{10,10}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_uo annotation(Placement(transformation(extent={{5,-10},{25,10}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_um annotation(Placement(transformation(extent={{5,-45},{25,-25}})));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_uu annotation(Placement(transformation(
		origin={15,-70},
		extent={{-10,-10},{10,10}})));
	equation
		connect(thermal_radiation_uu.surface_properties1,lu) annotation(Line(
			points={{5,-70},{0,-70},{-85,-70},{-85,-50},{-90,-50}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_um.surface_properties1,lu) annotation(Line(
			points={{5,-35},{0,-35},{-85,-35},{-85,-50},{-90,-50}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_uo.surface_properties1,lu) annotation(Line(
			points={{5,0},{0,0},{-85,0},{-85,-50},{-90,-50}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_mu.surface_properties1,lm) annotation(Line(
			points={{-25,-60},{-30,-60},{-85,-60},{-85,-15},{-90,-15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_mm.surface_properties1,lm) annotation(Line(
			points={{-25,-25},{-30,-25},{-85,-25},{-85,-15},{-90,-15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_mo.surface_properties1,lm) annotation(Line(
			points={{-25,10},{-30,10},{-85,10},{-85,-15},{-90,-15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_ou.surface_properties1,lo) annotation(Line(
			points={{-55,-50},{-60,-50},{-85,-50},{-85,20},{-90,20}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_om.surface_properties1,lo) annotation(Line(
			points={{-55,-15},{-60,-15},{-85,-15},{-85,20},{-90,20}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_oo.surface_properties1,lo) annotation(Line(
			points={{-55,20},{-60,20},{-85,20},{-90,20}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_uu.surface_properties2,ru) annotation(Line(
			points={{25,-70},{30,-70},{75,-70},{75,-55},{80,-55}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_mu.surface_properties2,ru) annotation(Line(
			points={{-5,-60},{0,-60},{75,-60},{75,-55},{80,-55}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_ou.surface_properties2,ru) annotation(Line(
			points={{-35,-50},{-30,-50},{75,-50},{75,-55},{80,-55}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_um.surface_properties2,rm) annotation(Line(
			points={{25,-35},{30,-35},{75,-35},{75,-20},{80,-20}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_mm.surface_properties2,rm) annotation(Line(
			points={{-5,-25},{0,-25},{75,-25},{75,-20},{80,-20}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_om.surface_properties2,rm) annotation(Line(
			points={{-35,-15},{-30,-15},{75,-15},{75,-20},{80,-20}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_uo.surface_properties2,ro) annotation(Line(
			points={{25,0},{30,0},{75,0},{75,15},{80,15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_mo.surface_properties2,ro) annotation(Line(
			points={{-5,10},{0,10},{75,10},{75,15},{80,15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_oo.surface_properties2,ro) annotation(Line(
			points={{-35,20},{-30,20},{75,20},{75,15},{80,15}},
			color={255,0,0},
			thickness=0.0625));
	annotation(
		Icon(graphics={
					Rectangle(
						lineColor={0,0,0},
						fillColor={255,0,0},
						fillPattern=FillPattern.Solid,
						lineThickness=3.5,
						extent={{-99.90000000000001,23.4},{-79.7,-26.5}}),
					Rectangle(
						lineColor={0,0,0},
						fillColor={255,0,0},
						fillPattern=FillPattern.Solid,
						lineThickness=3.5,
						extent={{78,74},{98.2,24.1}}),
					Rectangle(
						lineColor={0,0,0},
						fillColor={255,0,0},
						fillPattern=FillPattern.Solid,
						lineThickness=3.5,
						extent={{78.09999999999999,24.2},{98.3,-25.7}}),
					Rectangle(
						lineColor={0,0,0},
						fillColor={255,0,0},
						fillPattern=FillPattern.Solid,
						lineThickness=3.5,
						extent={{78.2,-25.1},{98.40000000000001,-75}}),
					Line(
						points={{-75.5,0},{37.8,0},{37.8,0}},
						color={255,0,0},
						arrow={Arrow.Filled,Arrow.Filled},
						thickness=3.5,
						origin={13.2,39},
						rotation=17),
					Line(
						points={{-56.6,-0.7},{56.7,-0.7},{56.7,-0.7}},
						color={255,0,0},
						arrow={Arrow.Filled,Arrow.Filled},
						thickness=3.5),
					Line(
						points={{-75.5,0},{37.8,0},{37.8,0}},
						color={255,0,0},
						arrow={Arrow.Filled,Arrow.Filled},
						thickness=3.5,
						origin={13.6,-40.4},
						rotation=-15),
					Line(
						points={{50,100},{50,80},{43.3,66.7},{26.7,53.3},{10,46.7},{-6.7,
						40},{-30,26.7},{-43.3,13.3},{-46.7,3.3},{-43.3,-13.3},{-30,-26.7},{-10,
						-40},{13.3,-50},{30,-53.3},{43.3,-66.7},{46.7,-76.7},{50,-90},{50,
						-100},{50,-100}},
						pattern=LinePattern.Dash,
						color={0,0,0},
						smooth=Smooth.Bezier,
						thickness=1.5),
					Text(
						textString="%name",
						extent={{-100,133.3},{100,100}})}),
		experiment(
			StopTime=1,
			StartTime=0));
end radiation_3;
