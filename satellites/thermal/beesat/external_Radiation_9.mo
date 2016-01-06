// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model external_Radiation_9 "external_Radiation_9.mo"
	thermal_connector_opt_prop_in_9 thermal_connector_opt_prop_in1 "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
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
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_lo annotation(Placement(transformation(extent={{140,-15},{160,5}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_mo annotation(Placement(transformation(extent={{170,-15},{190,5}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_ro annotation(Placement(transformation(extent={{200,-15},{220,5}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_lo(y=u * thermal_connector_opt_prop_in1.lo.alpha * thermal_connector_opt_prop_in1.lo.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{-30,25},{-10,45}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_mo(y=u * thermal_connector_opt_prop_in1.mo.alpha * thermal_connector_opt_prop_in1.mo.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{5,25},{25,45}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_ro(y=u * thermal_connector_opt_prop_in1.ro.alpha * thermal_connector_opt_prop_in1.ro.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{40,25},{60,45}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_lu annotation(Placement(transformation(extent={{-30,-110},{-10,-90}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_mu annotation(Placement(transformation(extent={{5,-110},{25,-90}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_ru annotation(Placement(transformation(extent={{40,-110},{60,-90}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_lu annotation(Placement(transformation(extent={{140,-65},{160,-45}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_mu annotation(Placement(transformation(extent={{170,-65},{190,-45}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_ru annotation(Placement(transformation(extent={{200,-65},{220,-45}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_lu(y=u * thermal_connector_opt_prop_in1.lu.alpha * thermal_connector_opt_prop_in1.lu.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{-30,-90},{-10,-70}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_mu(y=u * thermal_connector_opt_prop_in1.mu.alpha * thermal_connector_opt_prop_in1.mu.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{5,-90},{25,-70}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_ru(y=u * thermal_connector_opt_prop_in1.ru.alpha * thermal_connector_opt_prop_in1.ru.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{40,-90},{60,-70}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_lm annotation(Placement(transformation(extent={{-30,-60},{-10,-40}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_mm annotation(Placement(transformation(extent={{5,-60},{25,-40}})));
	Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow variableHeatFlow_rm annotation(Placement(transformation(extent={{40,-60},{60,-40}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_lm annotation(Placement(transformation(extent={{140,-40},{160,-20}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_mm annotation(Placement(transformation(extent={{170,-40},{190,-20}})));
	iboss.iboss_thermal.components.VariableRad_no_Input variableRad_rm annotation(Placement(transformation(extent={{200,-40},{220,-20}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_lm(y=u * thermal_connector_opt_prop_in1.lm.alpha * thermal_connector_opt_prop_in1.lm.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{-30,-30},{-10,-10}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_mm(y=u * thermal_connector_opt_prop_in1.mm.alpha * thermal_connector_opt_prop_in1.mm.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{5,-30},{25,-10}})));
	Modelica.Blocks.Sources.RealExpression Value_HeatFlow_rm(y=u * thermal_connector_opt_prop_in1.rm.alpha * thermal_connector_opt_prop_in1.rm.A / (thermal_connector_opt_prop_in1.lm.A + thermal_connector_opt_prop_in1.mm.A + thermal_connector_opt_prop_in1.rm.A + thermal_connector_opt_prop_in1.lu.A + thermal_connector_opt_prop_in1.mu.A + thermal_connector_opt_prop_in1.ru.A + thermal_connector_opt_prop_in1.lo.A + thermal_connector_opt_prop_in1.mo.A + thermal_connector_opt_prop_in1.ro.A)) annotation(Placement(transformation(extent={{40,-30},{60,-10}})));
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
			points={{190,-5},{195,-5},{260,-5},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lo.port_b,fixedTemperature1.port) annotation(Line(
			points={{160,-5},{165,-5},{260,-5},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ro.port_b,fixedTemperature1.port) annotation(Line(
			points={{220,-5},{225,-5},{260,-5},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lo.port_a,thermal_connector_opt_prop_in1.lo.thermal_port) annotation(Line(
			points={{140,-5},{135,-5},{120,-5},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mo.port_a,thermal_connector_opt_prop_in1.mo.thermal_port) annotation(Line(
			points={{170,-5},{165,-5},{120,-5},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ro.port_a,thermal_connector_opt_prop_in1.ro.thermal_port) annotation(Line(
			points={{200,-5},{195,-5},{120,-5},{120,-30},{115,-30}},
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
			points={{-10,-100},{-5,-100},{110,-100},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_mu.port,thermal_connector_opt_prop_in1.mu.thermal_port) annotation(Line(
			points={{25,-100},{30,-100},{110,-100},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_ru.port,thermal_connector_opt_prop_in1.ru.thermal_port) annotation(Line(
			points={{60,-100},{65,-100},{110,-100},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mu.port_b,fixedTemperature1.port) annotation(Line(
			points={{190,-55},{195,-55},{260,-55},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lu.port_b,fixedTemperature1.port) annotation(Line(
			points={{160,-55},{165,-55},{260,-55},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ru.port_b,fixedTemperature1.port) annotation(Line(
			points={{220,-55},{225,-55},{260,-55},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lu.port_a,thermal_connector_opt_prop_in1.lu.thermal_port) annotation(Line(
			points={{140,-55},{135,-55},{120,-55},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mu.port_a,thermal_connector_opt_prop_in1.mu.thermal_port) annotation(Line(
			points={{170,-55},{165,-55},{120,-55},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_ru.port_a,thermal_connector_opt_prop_in1.ru.thermal_port) annotation(Line(
			points={{200,-55},{195,-55},{120,-55},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(Value_HeatFlow_lu.y,variableHeatFlow_lu.Q_flow) annotation(Line(
			points={{-9,-80},{-4,-80},{-4,-90},{-35,-90},{-35,-100},{-30,
			-100}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_mu.y,variableHeatFlow_mu.Q_flow) annotation(Line(
			points={{26,-80},{31,-80},{31,-90},{0,-90},{0,-100},{5,
			-100}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_ru.y,variableHeatFlow_ru.Q_flow) annotation(Line(
			points={{61,-80},{66,-80},{66,-90},{35,-90},{35,-100},{40,
			-100}},
			color={0,0,127},
			thickness=0.0625));
		connect(variableHeatFlow_lm.port,thermal_connector_opt_prop_in1.lm.thermal_port) annotation(Line(
			points={{-10,-50},{-5,-50},{110,-50},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_mm.port,thermal_connector_opt_prop_in1.mm.thermal_port) annotation(Line(
			points={{25,-50},{30,-50},{110,-50},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableHeatFlow_rm.port,thermal_connector_opt_prop_in1.rm.thermal_port) annotation(Line(
			points={{60,-50},{65,-50},{110,-50},{110,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mm.port_b,fixedTemperature1.port) annotation(Line(
			points={{190,-30},{195,-30},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lm.port_b,fixedTemperature1.port) annotation(Line(
			points={{160,-30},{165,-30},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_rm.port_b,fixedTemperature1.port) annotation(Line(
			points={{220,-30},{225,-30},{260,-30},{255,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_lm.port_a,thermal_connector_opt_prop_in1.lm.thermal_port) annotation(Line(
			points={{140,-30},{135,-30},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_mm.port_a,thermal_connector_opt_prop_in1.mm.thermal_port) annotation(Line(
			points={{170,-30},{165,-30},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(variableRad_rm.port_a,thermal_connector_opt_prop_in1.rm.thermal_port) annotation(Line(
			points={{200,-30},{195,-30},{120,-30},{115,-30}},
			color={191,0,0},
			thickness=0.0625));
				connect(Value_HeatFlow_lm.y,variableHeatFlow_lm.Q_flow) annotation(Line(
			points={{-9,-20},{-4,-20},{-4,-35},{-35,-35},{-35,-50},{-30,
			-50}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_mm.y,variableHeatFlow_mm.Q_flow) annotation(Line(
			points={{26,-20},{31,-20},{31,-35},{0,-35},{0,-50},{5,
			-50}},
			color={0,0,127},
			thickness=0.0625));
				connect(Value_HeatFlow_rm.y,variableHeatFlow_rm.Q_flow) annotation(Line(
			points={{61,-20},{66,-20},{66,-35},{35,-35},{35,-50},{40,
			-50}},
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
						textString="9",
						lineColor={0,0,0},
						extent={{-100,100},{100,-100}})}),
		experiment(
			StopTime=1,
			StartTime=0));
end external_Radiation_9;
