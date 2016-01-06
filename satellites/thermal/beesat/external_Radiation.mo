// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model external_Radiation "external_Radiation.mo"
	thermal_connector_opt_prop_in_6 thermal_connector_opt_prop_in1 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
		transformation(
			origin={115,-30},
			extent={{10,10},{-10,-10}},
			rotation=180),
		iconTransformation(
			origin={100,0},
			extent={{-20,20},{20,-20}},
			rotation=270)));
	Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T(displayUnit="K")=3) annotation(Placement(transformation(
		origin={245,-30},
		extent={{10,10},{-10,-10}},
		rotation=180)));
	input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(
		transformation(extent={{-80,-55},{-40,-15}}),
		iconTransformation(extent={{-120,-20},{-80,20}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_lo annotation(Placement(transformation(extent={{-30,0},{-10,20}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_mo annotation(Placement(transformation(extent={{5,0},{25,20}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_ro annotation(Placement(transformation(extent={{40,0},{60,20}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_lo annotation(Placement(transformation(extent={{140,-30},{160,-10}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_mo annotation(Placement(transformation(extent={{170,-30},{190,-10}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_ro annotation(Placement(transformation(extent={{200,-30},{220,-10}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_lo(y=u * thermal_connector_opt_prop_in1.lo.alpha * thermal_connector_opt_prop_in1.lo.A / (thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{-30,25},{-10,45}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_mo(y=u * thermal_connector_opt_prop_in1.mo.alpha * thermal_connector_opt_prop_in1.mo.A / (thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{5,25},{25,45}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_ro(y=u * thermal_connector_opt_prop_in1.ro.alpha * thermal_connector_opt_prop_in1.ro.A / (thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{40,25},{60,45}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_lu annotation(Placement(transformation(extent={{-30,-75},{-10,-55}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_mu annotation(Placement(transformation(extent={{5,-75},{25,-55}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_ru annotation(Placement(transformation(extent={{40,-75},{60,-55}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_lu annotation(Placement(transformation(extent={{140,-55},{160,-35}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_mu annotation(Placement(transformation(extent={{170,-55},{190,-35}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_ru annotation(Placement(transformation(extent={{200,-55},{220,-35}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_lu(y=u * thermal_connector_opt_prop_in1.lu.alpha * thermal_connector_opt_prop_in1.lu.A / (thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{-30,-45},{-10,-25}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_mu(y=u * thermal_connector_opt_prop_in1.mu.alpha * thermal_connector_opt_prop_in1.mu.A / (thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{5,-45},{25,-25}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_ru(y=u * thermal_connector_opt_prop_in1.ru.alpha * thermal_connector_opt_prop_in1.ru.A / (thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{40,-45},{60,-25}})));
	equation
		connect(variableHeatFlow_lo.port,thermal_connector_opt_prop_in1.lo.thermal_port) annotation(Line(
			points={{-10,10},{-5,10},{110,10},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_mo.port,thermal_connector_opt_prop_in1.mo.thermal_port) annotation(Line(
			points={{25,10},{30,10},{110,10},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_ro.port,thermal_connector_opt_prop_in1.ro.thermal_port) annotation(Line(
			points={{60,10},{65,10},{110,10},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mo.port_b,fixedTemperature1.port) annotation(Line(
			points={{190,-20},{195,-20},{260,-20},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lo.port_b,fixedTemperature1.port) annotation(Line(
			points={{160,-20},{165,-20},{260,-20},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ro.port_b,fixedTemperature1.port) annotation(Line(
			points={{220,-20},{225,-20},{260,-20},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lo.port_a,thermal_connector_opt_prop_in1.lo.thermal_port) annotation(Line(
			points={{140,-20},{135,-20},{120,-20},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mo.port_a,thermal_connector_opt_prop_in1.mo.thermal_port) annotation(Line(
			points={{170,-20},{165,-20},{120,-20},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ro.port_a,thermal_connector_opt_prop_in1.ro.thermal_port) annotation(Line(
			points={{200,-20},{195,-20},{120,-20},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(Value_HeatFlow_lo.y,variableHeatFlow_lo.Q_flow) annotation(Line(
			points={{-9,35},{-4,35},{-4,22.7},{-35,22.7},{-35,10},{-30,
			10}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_mo.y,variableHeatFlow_mo.Q_flow) annotation(Line(
			points={{26,35},{31,35},{31,22.7},{0,22.7},{0,10},{5,
			10}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_ro.y,variableHeatFlow_ro.Q_flow) annotation(Line(
			points={{61,35},{66,35},{66,22.7},{35,22.7},{35,10},{40,
			10}},
			color={0,0,127},
			thickness=0.0625));
		connect(variableHeatFlow_lu.port,thermal_connector_opt_prop_in1.lu.thermal_port) annotation(Line(
			points={{-10,-65},{-5,-65},{110,-65},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_mu.port,thermal_connector_opt_prop_in1.mu.thermal_port) annotation(Line(
			points={{25,-65},{30,-65},{110,-65},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_ru.port,thermal_connector_opt_prop_in1.ru.thermal_port) annotation(Line(
			points={{60,-65},{65,-65},{110,-65},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mu.port_b,fixedTemperature1.port) annotation(Line(
			points={{190,-45},{195,-45},{260,-45},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lu.port_b,fixedTemperature1.port) annotation(Line(
			points={{160,-45},{165,-45},{260,-45},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ru.port_b,fixedTemperature1.port) annotation(Line(
			points={{220,-45},{225,-45},{260,-45},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lu.port_a,thermal_connector_opt_prop_in1.lu.thermal_port) annotation(Line(
			points={{140,-45},{135,-45},{120,-45},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mu.port_a,thermal_connector_opt_prop_in1.mu.thermal_port) annotation(Line(
			points={{170,-45},{165,-45},{120,-45},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ru.port_a,thermal_connector_opt_prop_in1.ru.thermal_port) annotation(Line(
			points={{200,-45},{195,-45},{120,-45},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(Value_HeatFlow_lu.y,variableHeatFlow_lu.Q_flow) annotation(Line(
			points={{-9,-35},{-4,-35},{-4,-50},{-35,-50},{-35,-65},{-30,
			-65}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_mu.y,variableHeatFlow_mu.Q_flow) annotation(Line(
			points={{26,-35},{31,-35},{31,-50},{0,-50},{0,-65},{5,
			-65}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_ru.y,variableHeatFlow_ru.Q_flow) annotation(Line(
			points={{61,-35},{66,-35},{66,-50},{35,-50},{35,-65},{40,
			-65}},
			color={0,0,127},
			thickness=0.0625));
	annotation(
		Icon(graphics={
					Rectangle(
						lineColor={0,0,0},
						fillPattern=FillPattern.Solid,
						extent={{-100,100},{100,-100}}),
					Ellipse(
						lineColor={0,0,0},
						fillColor={255,255,0},
						fillPattern=FillPattern.Solid,
						extent={{98,-96},{-96,98}}),
					Text(
						textString="6",
						lineColor={0,0,0},
						extent={{-100,103.3},{100,-103.3}})}),
		experiment(
			StopTime=1,
			StartTime=0));
end external_Radiation;
