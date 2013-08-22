// CP: 65001
// SimulationX Version: 3.5.706.23 x64
package iboss
	package components
		model iboss_interface
			Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor2 annotation(Placement(transformation(
				origin={-65,-25},
				extent={{-10,-10},{10,10}},
				rotation=-90)));
			iboss_connector iBoss_connector annotation(Placement(
				transformation(
					origin={-99.8586,-0.282885},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={-99.8586,-0.282885},
					extent={{-12,-12},{12,12}})));
			Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(
				transformation(
					origin={101.556,-50.9194},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={101.556,-50.9194},
					extent={{-12,-12},{12,12}})));
			Modelica.Electrical.Analog.Interfaces.PositivePin vcc annotation(Placement(
				transformation(
					origin={101.273,-18.1046},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={101.273,-18.1046},
					extent={{-12,-12},{12,12}})));
			Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(Placement(transformation(
				origin={85,-35},
				extent={{-10,-10},{10,10}},
				rotation=-90)));
			Modelica.Electrical.Analog.Basic.VariableResistor variableResistor1 annotation(Placement(transformation(extent={{-10,-5},{10,15}})));
			ControlBlocks.EI_control ei_ctrl(
				threshold=60,
				outputfactor=2e6) annotation(Placement(transformation(extent={{-60,20},{-45,35}})));
			Modelica.Blocks.Sources.Constant const(k=0.001) annotation(Placement(transformation(extent={{-25,30},{-10,45}})));
			equation
				connect(voltageSensor1.p,vcc) annotation(Line(
					points={{85,-25},{85,-20},{85,-18},{96,-18},{101,-18}},
					thickness=0.0625));
				connect(voltageSensor1.n,gnd) annotation(Line(
					points={{85,-45},{85,-50},{85,-51},{97,-51},{102,-51}},
					thickness=0.0625));
				connect(voltageSensor2.n,iBoss_connector.GND) annotation(
					Line(
						points={{-65,-35},{-80,-35},{-95,-35},{-100,-0.3333358764648438}},
						thickness=0.0625),
					AutoRoute=false);
				connect(voltageSensor2.p,iBoss_connector.Vcc) annotation(Line(
					points={{-65,-15},{-65,-10},{-65,0},{-95,0},{-100,0}},
					thickness=0.0625));
				
				
				
				
				connect(ei_ctrl.u,voltageSensor2.v) annotation(Line(
					points={{-62,27},{-67,27},{-80,27},{-80,-25},{-75,-25}},
					color={0,0,127},
					thickness=0.0625));
				connect(variableResistor1.n,voltageSensor1.p) annotation(Line(
					points={{10,5},{15,5},{85,5},{85,-20},{85,-25}},
					thickness=0.0625));
				connect(const.y,variableResistor1.R) annotation(Line(
					points={{-9,37},{-4,37},{0,37},{0,21},{0,16}},
					color={0,0,127},
					thickness=0.0625));
				connect(voltageSensor2.p,variableResistor1.p) annotation(Line(
					points={{-65,-15},{-65,-10},{-65,5},{-15,5},{-10,5}},
					thickness=0.0625));
				connect(voltageSensor1.n,voltageSensor2.n) annotation(Line(
					points={{85,-45},{85,-50},{-65,-50},{-65,-40},{-65,-35}},
					thickness=0.0625));
			annotation(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2)),
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={
										Rectangle(
											fillColor={0,0,255},
											fillPattern=FillPattern.Solid,
											extent={{-16.6902,93.63509999999999},{7.63791,-93.3522}}),
										Rectangle(
											fillColor={0,0,255},
											fillPattern=FillPattern.Solid,
											extent={{-22.0651,48.0905},{-16.6902,-49.2221}}),
										Rectangle(
											fillColor={0,0,255},
											fillPattern=FillPattern.Solid,
											extent={{-33.9463,21.2164},{15.8416,-22.9137}}),
										Rectangle(
											lineColor={0,0,0},
											fillPattern=FillPattern.Solid,
											extent={{24.0453,66.1952},{1.41443,15.8416}}),
										Rectangle(
											lineColor={0,0,0},
											fillPattern=FillPattern.Solid,
											extent={{1.9802,-9.6181},{25.1768,-61.9519}}),
										Text(
											textString="GND",
											fillColor={0,0,255},
											extent={{39.0382,-33.9463},{85.71429999999999,-64.7807}}),
										Text(
											textString="VCC",
											fillColor={0,0,255},
											extent={{41.5842,-0.282893},{80.3395,-33.6634}})}),
				Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
				experiment(
					StopTime=1,
					StartTime=0));
		end iboss_interface;
		model connectionelement
			iboss_connector int1 annotation(Placement(
				transformation(
					origin={88.5431,4.52615},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={88.5431,4.52615},
					extent={{-12,-12},{12,12}})));
			parameter Real R(
				final quantity="Resistance",
				final unit="Ohm")=0.001;
			Modelica.SIunits.Power LossPower;
			iboss_connector int2 annotation(Placement(
				transformation(
					origin={-87.90949999999999,4.02826},
					extent={{-12,-12},{12,12}}),
				iconTransformation(
					origin={-87.90949999999999,4.02826},
					extent={{12,12},{-12,-12}},
					rotation=-180)));
			Modelica.Electrical.Analog.Basic.Resistor R_GND(R=R) annotation(Placement(transformation(
				origin={22.5969,-3.84725},
				extent={{-12,-12},{12,12}})));
			Modelica.Electrical.Analog.Basic.Resistor R_Vcc(R=R) annotation(Placement(transformation(
				origin={23.7962,12.5262},
				extent={{-12,-12},{12,12}})));
			equation
				LossPower=R_GND.LossPower+R_Vcc.LossPower;
				connect(int1.Vcc,R_Vcc.n) annotation(Line(points={{89,5},{84,5},{41,5},{41,13},{36,13}}));
				connect(R_Vcc.p,int2.Vcc) annotation(Line(points={{12,13},{7,13},{-83,13},{-83,4},{-88,4}}));
				connect(R_GND.p,int2.GND) annotation(Line(points={{11,-4},{6,-4},{-83,-4},{-83,4},{-88,4}}));
				connect(R_GND.n,int1.GND) annotation(Line(points={{35,-4},{40,-4},{84,-4},{84,5},{89,5}}));
			annotation(
				LossPower(flags=2),
				Icon(
					coordinateSystem(extent={{-100,-100},{100,100}}),
					graphics={
																																																				Rectangle(
																																																		fillColor={0,0,255},
																																															extent={{-85.5219,88.3168},{87.45690000000001,-87.1287}})}),
	Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
	experiment(
		StopTime=1,
		StartTime=0));
end connectionelement;
model dockinterface
	iboss_connector iBoss_Int annotation(Placement(
		visible=true,
		transformation(
			origin={-0.315956,69.1943},
			extent={{-12,-12},{12,12}},
			rotation=0),
		iconTransformation(
			origin={-0.315956,69.1943},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
		visible=true,
		transformation(
			origin={25.2765,-4.10742},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=100) annotation(Placement(
		visible=true,
		transformation(
			origin={0.631912,12.3223},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	equation
		connect(constantvoltage1.n,iBoss_Int.GND) annotation(Line(points = {{12.6319,12.3223},{12.7298,12.3223},{12.7298,41.867},{19.5191,41.867},{19.5191,77.2277},{6.91466,77.2277},{6.91466,76.9213}}));
		connect(constantvoltage1.p,iBoss_Int.Vcc) annotation(Line(points = {{-11.3681,12.3223},{-11.3154,12.3223},{-11.3154,61.1033},{7.3369,61.1033},{7.3369,61.784}}));
		connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{12.6319,12.3223},{25.1768,12.3223},{25.1768,7.89258},{25.2765,7.89258}}));
	annotation(
		Icon(graphics={Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-59.3997,67.2986},{58.1359,-72.6698}})}),
		Diagram(graphics={Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-46.7615,68.8784},{46.7615,-71.406}})}));
end dockinterface;
connector iboss_connector_ess
	import Modelica.Electrical.Analog.Interfaces;
	Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(
		visible=true,
		transformation(
			origin={62.9251,65.8292},
			extent={{-28.2954,-28.2954},{28.2954,28.2954}},
			rotation=0)));
	Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(
		visible=true,
		transformation(
			origin={61.9524,-60.6435},
			extent={{-28.2954,-28.2954},{28.2954,28.2954}},
			rotation=0)));
	annotation(
		defaultComponentName="iBoss_connector",
		Diagram(graphics={Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.2356,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}),
		Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}));
end iboss_connector_ess;
connector iboss_connector
	import Modelica.Electrical.Analog.Interfaces;
	Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(
		visible=true,
		transformation(
			origin={62.9251,65.8292},
			extent={{-28.2954,-28.2954},{28.2954,28.2954}},
			rotation=0)));
	Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(
		visible=true,
		transformation(
			origin={61.9524,-60.6435},
			extent={{-28.2954,-28.2954},{28.2954,28.2954}},
			rotation=0)));
	annotation(
		defaultComponentName="iBoss_connector",
		Diagram(graphics={Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.2356,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}),
		Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}));
end iboss_connector;
end components;
package buildingblocks
	model solar
		extends basic_ess_mss(capacitor1(C=9.9999999999999991e-005));
		input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(
			transformation(
				origin={122,-7},
				extent={{-12,-12},{12,12}}),
			iconTransformation(
				origin={221.308,-0.741443},
				extent={{-12,12},{12,-12}},
				rotation=-90)));
		parameter Modelica.SIunits.Area panelarea=10;
		satcomponents.power.solar_power.solarcell_simple solarcell_simple1(
			N_p=panelarea/1.17,
			N_s=45.0) annotation(Placement(transformation(
			origin={100,-15},
			extent={{-10,10},{10,-10}},
			rotation=90)));
		satcomponents.power.solar_power.SA_Regulator sa_regulator1(Vmax=99) annotation(Placement(transformation(
			origin={25,-10},
			extent={{10,-10},{-10,10}})));
		Modelica.Electrical.Analog.Sensors.PowerSensor powerSensor1 annotation(Placement(transformation(
			origin={0,-10},
			extent={{10,-10},{-10,10}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor3(R=0.001) annotation(Placement(transformation(extent={{40,-20},{60,0}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor4(R=0.001) annotation(Placement(transformation(extent={{65,-20},{85,0}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor5(R=0.001) annotation(Placement(transformation(extent={{40,-50},{60,-30}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor6(R=0.001) annotation(Placement(transformation(extent={{65,-50},{85,-30}})));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit="nF")=1.0000000000000001e-007) annotation(Placement(transformation(
			origin={60,-25},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		equation
			connect(solarcell_simple1.E_s,u) annotation(Line(points={{107,-15},{112,-15},{117,-15},{117,-7},{122,-7}}));
			connect(sa_regulator1.n,powerSensor1.pc) annotation(Line(
				points={{15,-10},{10,-10},{15,-10},{10,-10}},
				thickness=0.0625));
			connect(powerSensor1.nv,sa_regulator1.pin_n) annotation(Line(
				points={{0,-20},{0,-25},{25,-25},{25,-25},{25,-20}},
				thickness=0.0625));
			connect(int_Yp.vcc,powerSensor1.nc) annotation(Line(
				points={{-15,26},{-15,21},{-15,-10},{-15,-10},{-10,-10}},
				thickness=0.0625));
			connect(powerSensor1.pv,sa_regulator1.n) annotation(
				Line(
					points={{0,0},{0,5},{10,5},{10,-10},{15,-10}},
					thickness=0.0625),
				AutoRoute=false);
			connect(int_Yp.gnd,powerSensor1.nv) annotation(Line(
				points={{-19,26},{-19,21},{-19,-25},{0,-25},{0,-20}},
				thickness=0.0625));
			connect(sa_regulator1.pin_n,resistor5.p) annotation(Line(
				points={{25,-20},{25,-25},{25,-40},{35,-40},{40,-40}},
				thickness=0.0625));
			connect(resistor3.p,sa_regulator1.p) annotation(Line(
				points={{40,-10},{35,-10},{40,-10},{35,-10}},
				thickness=0.0625));
			connect(resistor3.n,resistor4.p) annotation(Line(
				points={{60,-10},{65,-10},{60,-10},{65,-10}},
				thickness=0.0625));
			connect(resistor6.p,resistor5.n) annotation(Line(
				points={{65,-40},{60,-40},{65,-40},{60,-40}},
				thickness=0.0625));
			connect(resistor6.n,solarcell_simple1.p) annotation(Line(
				points={{85,-40},{90,-40},{100,-40},{100,-30},{100,-25}},
				thickness=0.0625));
			connect(resistor4.n,solarcell_simple1.n) annotation(Line(
				points={{85,-10},{90,-10},{90,0},{100,0},{100,-5}},
				thickness=0.0625));
			connect(resistor3.n,capacitor2.p) annotation(Line(
				points={{60,-10},{65,-10},{60,-10},{60,-15}},
				thickness=0.0625));
			connect(capacitor2.n,resistor5.n) annotation(Line(
				points={{60,-35},{60,-40},{65,-40},{60,-40}},
				thickness=0.0625));
		annotation(
			int_Xn(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2))),
			int_Zp(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2))),
			int_Yp(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2))),
			int_Yn(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2))),
			int_Zn(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2))),
			int_Xp(
				voltageSensor2(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				voltageSensor1(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				variableResistor1(
					LossPower(flags=2),
					R_actual(flags=2)),
				ei_ctrl(y(flags=2))),
			solarcell_simple1(
				v(flags=2),
				p(
					v(flags=2),
					i(flags=2)),
				n(
					v(flags=2),
					i(flags=2)),
				i_sc_actual(flags=2),
				i_sc(flags=2),
				i(flags=2),
				I_photonic(
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					v(flags=2)),
				D_shunt(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2)),
				R_shunt(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2)),
				R_series(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2))),
			powerSensor1(power(flags=2)),
			Icon(
				coordinateSystem(extent={{-100,-100},{100,100}}),
				graphics={
													Rectangle(
													fillColor={0,0,255},
												fillPattern=FillPattern.Cross,
											extent={{71.8896,121.659},{356.683,-125.807}})}),
Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
experiment(
	StopTime=10000,
	StartTime=0,
	Tolerance=1e-006));
end solar;
model battery
	extends basic_ess_mss;
	parameter Real SOC_start=1.0;
	parameter Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah capacity=20.0;
	satcomponents.power.batteries.battery battery1(
		startSOC=SOC_start,
		capacity_Ah=capacity,
		Vnominal=100) annotation(Placement(transformation(
		origin={60,-20},
		extent={{-10,-10},{10,10}})));
	Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(
		origin={105,-20},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	Modelica.Electrical.Analog.Sensors.PowerSensor powerSensor1 annotation(Placement(transformation(
		origin={-25,-20},
		extent={{10,-10},{-10,10}})));
	satcomponents.power.batteries.BCR ChargeRegulator annotation(Placement(transformation(extent={{0,-30},{20,-10}})));
	equation
		connect(ground1.p,battery1.n) annotation(Line(
			points={{95,-20},{90,-20},{75,-20},{70,-20}},
			thickness=0.0625));
		connect(powerSensor1.nv,battery1.n) annotation(Line(
			points={{-25,-30},{-25,-35},{75,-35},{75,-20},{70,-20}},
			thickness=0.0625));
		connect(battery1.p,powerSensor1.pv) annotation(Line(
			points={{50,-20},{45,-20},{45,-5},{-25,-5},{-25,-10}},
			thickness=0.0625));
		connect(powerSensor1.nc,int_Xp.vcc) annotation(Line(
			points={{-35,-20},{-40,-20},{-40,-20},{-40,21},{-40,26}},
			thickness=0.0625));
		connect(powerSensor1.pc,ChargeRegulator.p) annotation(Line(
			points={{-15,-20},{-10,-20},{-5,-20},{0,-20}},
			thickness=0.0625));
		connect(ChargeRegulator.n,battery1.p) annotation(Line(
			points={{20,-20},{25,-20},{45,-20},{50,-20}},
			thickness=0.0625));
		connect(int_Xp.gnd,battery1.n) annotation(
			Line(
				points={{-44,26},{-44,0},{75,0},{75,-20},{70,-20}},
				thickness=0.0625),
			AutoRoute=false);
	annotation(
		battery1(
			v(flags=2),
			soc(flags=2),
			i(flags=2)),
		powerSensor1(power(flags=2)),
		Icon(coordinateSystem(extent={{-100,-100},{100,100}})),
		Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
		experiment(
			StopTime=11000,
			StartTime=0,
			Tolerance=0.0001));
end battery;
model verbraucher
	import satcomponents.power.dcmodel;
	extends basic_ess_mss;
	satcomponents.power.PCU_pid pCU1 annotation(Placement(transformation(extent={{-30,-15},{-10,5}})));
	Modelica.Electrical.Analog.Basic.Resistor resistor3(R=100) annotation(Placement(transformation(extent={{10,-5},{30,15}})));
	parameter Modelica.SIunits.Power P_payload=10;
	parameter Modelica.SIunits.Power P_basic=5;
	Modelica.Electrical.Analog.Basic.Resistor resistor4(R=100) annotation(Placement(transformation(extent={{10,-20},{30,0}})));
	Modelica.Electrical.Analog.Basic.Resistor resistor5(R=100) annotation(Placement(transformation(extent={{10,-35},{30,-15}})));
	equation
		connect(int_Xp.vcc,pCU1.VCC) annotation(Line(
			points={{-40,26},{-40,21},{-40,-4},{-35,-4},{-30,-4}},
			thickness=0.0625));
		connect(int_Xp.gnd,pCU1.GND) annotation(Line(
			points={{-44,26},{-44,21},{-44,-9},{-35,-9},{-30,-9}},
			thickness=0.0625));
		connect(resistor3.n,resistor4.n) annotation(Line(
			points={{30,5},{35,5},{35,-10},{30,-10}},
			thickness=0.0625));
		connect(resistor4.n,resistor5.n) annotation(Line(
			points={{30,-10},{35,-10},{35,-25},{30,-25}},
			thickness=0.0625));
		connect(pCU1.gnd,pCU1.GND) annotation(
			Line(
				points={{-10,-11.33333587646484},{-5,-11},{-5,-30},{-35,-30},{-35,-9},{-30,
				-9.333335876464844}},
				thickness=0.0625),
			AutoRoute=false);
		connect(pCU1.gnd,resistor5.n) annotation(
			Line(
				points={{-10,-11.33333587646484},{-5,-40},{35,-40},{35,-25},{30,-25}},
				thickness=0.0625),
			AutoRoute=false);
		connect(resistor5.p,pCU1.VCC3) annotation(
			Line(
				points={{10,-25},{5,-25},{0,-25},{0,-7},{-10,-7.333335876464844}},
				thickness=0.0625),
			AutoRoute=false);
		connect(resistor4.p,pCU1.VCC5) annotation(
			Line(
				points={{10,-10},{5,-10},{5,-4},{-10,-4}},
				thickness=0.0625),
			AutoRoute=false);
		connect(resistor3.p,pCU1.VCC12) annotation(Line(
			points={{10,5},{5,5},{-5,5},{-5,-1},{-10,-1}},
			thickness=0.0625));
	annotation(experiment(
		StopTime=11000,
		StartTime=0,
		Tolerance=0.0001));
end verbraucher;
model basic_ess_mss "basic_ess_mss"
	parameter Modelica.SIunits.Time shortcircuitproblem=10e99;
	Modelica.SIunits.Voltage Vcc;
	iboss.components.iboss_connector Yp annotation(Placement(
		transformation(
			origin={-13,63},
			extent={{-12,-12},{12,12}},
			rotation=-90),
		iconTransformation(
			origin={0.337268,99.4941},
			extent={{-12,-12},{12,12}})));
	iboss.components.iboss_connector Zp annotation(Placement(
		transformation(
			origin={12,63},
			extent={{-12,12},{12,-12}},
			rotation=90),
		iconTransformation(
			origin={-100,50},
			extent={{-12,12},{12,-12}},
			rotation=90)));
	iboss.components.iboss_connector Xn annotation(Placement(
		transformation(
			origin={37,63},
			extent={{-12,-12},{12,12}},
			rotation=-90),
		iconTransformation(
			origin={-100,0},
			extent={{-12,-12},{12,12}},
			rotation=-90)));
	iboss.components.iboss_connector Xp annotation(Placement(
		transformation(
			origin={-38,63},
			extent={{-12,12},{12,-12}},
			rotation=-270),
		iconTransformation(
			origin={99.8314,0.337268},
			extent={{-12,-12},{12,12}})));
	iboss.components.iboss_connector Zn annotation(Placement(
		transformation(
			origin={87,63},
			extent={{-12,12},{12,-12}},
			rotation=-270),
		iconTransformation(
			origin={100,-50},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	iboss.components.iboss_connector Yn annotation(Placement(
		transformation(
			origin={62,63},
			extent={{-12,-12},{12,12}},
			rotation=-90),
		iconTransformation(
			origin={-0.529784,-91.0638},
			extent={{12,-12},{-12,12}},
			rotation=-270)));
	iboss.components.iboss_interface int_Xn annotation(Placement(transformation(
		origin={37,38},
		extent={{-12,-12},{12,12}},
		rotation=-90)));
	iboss.components.iboss_interface int_Zp annotation(Placement(transformation(
		origin={12,38},
		extent={{-12,-12},{12,12}},
		rotation=-90)));
	iboss.components.iboss_interface int_Yp annotation(Placement(transformation(
		origin={-13,38},
		extent={{12,12},{-12,-12}},
		rotation=-270)));
	iboss.components.iboss_interface int_Yn annotation(Placement(transformation(
		origin={62,38},
		extent={{-12,-12},{12,12}},
		rotation=-90)));
	iboss.components.iboss_interface int_Zn annotation(Placement(transformation(
		origin={87,38},
		extent={{12,12},{-12,-12}},
		rotation=-270)));
	iboss.components.iboss_interface int_Xp annotation(Placement(transformation(
		origin={-38,38},
		extent={{12,12},{-12,-12}},
		rotation=-270)));
	Modelica.Electrical.Analog.Basic.Resistor resistor1(R(displayUnit="mOhm")=0.00001) annotation(Placement(transformation(extent={{-90,15},{-70,35}})));
	Modelica.Electrical.Analog.Basic.Resistor resistor2(R(displayUnit="mOhm")=0.00001) annotation(Placement(transformation(extent={{-70,-5},{-90,15}})));
	Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit="µF")=9.9999999999999991e-006) annotation(Placement(transformation(
		origin={-110,15},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch1 annotation(Placement(transformation(
		origin={-50,-10},
		extent={{-10,-10},{10,10}},
		rotation=-180)));
	Modelica.Blocks.Sources.BooleanStep booleanStep1(startTime=shortcircuitproblem) annotation(Placement(transformation(extent={{-90,-50},{-70,-30}})));
	equation
			Vcc=int_Xn.voltageSensor1.v;
			
			connect(Yn,int_Yn.iBoss_connector) annotation(Line(points={{62,63},{57,63},{57,59},{62,59},{62,55},{62,
		50}}));
			connect(Xn,int_Xn.iBoss_connector) annotation(Line(points={{37,63},{32,63},{32,59},{37,59},{37,55},{37,
		50}}));
			connect(Zp,int_Zp.iBoss_connector) annotation(Line(points={{12,63},{7,63},{7,59},{12,59},{12,55},{12,
		50}}));
			connect(Yp,int_Yp.iBoss_connector) annotation(Line(points={{-13,63},{-18,63},{-18,59},{-13,59},{-13,55},{-13,
		50}}));
			connect(Xp,int_Xp.iBoss_connector) annotation(Line(points={{-38,63},{-43,63},{-43,59},{-38,59},{-38,55},{-38,
		50}}));
			connect(Zn,int_Zn.iBoss_connector) annotation(Line(points={{87,63},{82,63},{82,59},{87,59},{87,55},{87,
		50}}));
			connect(int_Xp.vcc,int_Yp.vcc) annotation(Line(
			points={{-40,26},{-40,21},{-15,21},{-15,26}},
			thickness=0.0625));
			connect(int_Yp.vcc,int_Zp.vcc) annotation(Line(
			points={{-15,26},{-15,21},{10,21},{10,26}},
			thickness=0.0625));
			connect(int_Zp.vcc,int_Xn.vcc) annotation(Line(
			points={{10,26},{10,21},{35,21},{35,26}},
			thickness=0.0625));
			connect(int_Xn.vcc,int_Yn.vcc) annotation(Line(
			points={{35,26},{35,21},{60,21},{60,26}},
			thickness=0.0625));
			connect(int_Yn.vcc,int_Zn.vcc) annotation(Line(
			points={{60,26},{60,21},{85,21},{85,26}},
			thickness=0.0625));
			connect(int_Zn.gnd,int_Yn.gnd) annotation(
			Line(
				points={{81,25.66666412353516},{81,15},{56,15},{56,25.66666412353516}},
				thickness=0.0625),
			AutoRoute=false);
			connect(int_Xn.gnd,int_Yn.gnd) annotation(
			Line(
				points={{31,25.66666412353516},{31,15},{56,15},{56,25.66666412353516}},
				thickness=0.0625),
			AutoRoute=false);
			connect(int_Zp.gnd,int_Xn.gnd) annotation(
			Line(
				points={{6,25.66666412353516},{6,15},{31,15},{31,25.66666412353516}},
				thickness=0.0625),
			AutoRoute=false);
			connect(int_Yp.gnd,int_Zp.gnd) annotation(
			Line(
				points={{-19,25.66666412353516},{-19,15},{6,15},{6,25.66666412353516}},
				thickness=0.0625),
			AutoRoute=false);
			connect(int_Xp.gnd,int_Yp.gnd) annotation(
			Line(
				points={{-44,25.66666412353516},{-44,15},{-19,15},{-19,25.66666412353516}},
				thickness=0.0625),
			AutoRoute=false);
			connect(resistor1.p,capacitor1.n) annotation(Line(
			points={{-90,25},{-95,25},{-95,30},{-110,30},{-110,25}},
			thickness=0.0625));
			connect(capacitor1.p,resistor2.n) annotation(Line(
			points={{-110,5},{-110,0},{-103,0},{-103,5},{-95,5},{-90,
			5}},
			thickness=0.0625));
			connect(int_Xp.gnd,resistor1.n) annotation(Line(
			points={{-44,26},{-44,21},{-54,21},{-54,25},{-65,25},{-70,
			25}},
			thickness=0.0625));
			connect(resistor2.p,int_Xp.vcc) annotation(Line(
			points={{-70,5},{-65,5},{-40,5},{-40,21},{-40,26}},
			thickness=0.0625));
			connect(int_Xp.vcc,idealClosingSwitch1.p) annotation(Line(
			points={{-40,26},{-40,21},{-35,21},{-35,-10},{-40,-10}},
			thickness=0.0625));
			connect(int_Xp.gnd,idealClosingSwitch1.n) annotation(Line(
			points={{-44,26},{-44,21},{-65,21},{-65,-10},{-60,-10}},
			thickness=0.0625));
			connect(booleanStep1.y,idealClosingSwitch1.control) annotation(Line(
			points={{-69,-40},{-64,-40},{-50,-40},{-50,-22},{-50,-17}},
			color={255,0,255},
			thickness=0.0625));
	annotation(
		Icon(
			coordinateSystem(extent={{-100,-100},{100,100}}),
			graphics={
																											Rectangle(
																											fillColor={0,0,255},
																										extent={{-77.2278,76.02549999999999},{74.95610000000001,-75.256}}),
																									Rectangle(
																										fillColor={0,0,255},
																										extent={{-69.5191,69.42019999999999},{66.9674,-68.4328}}),
																									Ellipse(
																										fillColor={0,0,255},
																										extent={{-20.2122,18.7864},{19.355,-20.778}}),
																									Ellipse(
																										fillColor={0,0,255},
																										extent={{-15.3692,13.9434},{14.512,-15.6521}}),
																									Ellipse(
																										fillColor={0,0,255},
																										extent={{-1.42575,0.571424},{0.288544,-1.14286}}),
																									Rectangle(
																										fillColor={255,255,255},
																										fillPattern=FillPattern.Solid,
																										extent={{-74.37909999999999,15.6917},{-79.2362,-16.0226}}),
																									Rectangle(
																										fillColor={255,255,255},
																										fillPattern=FillPattern.Solid,
																										extent={{-15.9916,77.18810000000001},{15.1513,72.0453}}),
																									Rectangle(
																										fillColor={255,255,255},
																										fillPattern=FillPattern.Solid,
																										extent={{73.239,13.1174},{77.5247,-13.7397}}),
																									Rectangle(
																										fillColor={255,255,255},
																										fillPattern=FillPattern.Solid,
																										extent={{-15.4145,-72.9759},{16.5855,-77.833}}),
																									Text(
																										textString="%name",
																										fillColor={0,0,255},
																										extent={{-49.505,66.761},{55.4455,27.4399}})}),
Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
experiment(
	StopTime=1,
	StartTime=0));
end basic_ess_mss;
model basic_ess
	iboss.components.iboss_connector Xn annotation(Placement(
		visible=true,
		transformation(
			origin={-100.082,-0.177147},
			extent={{-12,-12},{12,12}},
			rotation=0),
		iconTransformation(
			origin={-100.082,-0.177147},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_interface int_Xn annotation(Placement(
		visible=true,
		transformation(
			origin={-80.9052,0},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_interface int_Zp annotation(Placement(
		visible=true,
		transformation(
			origin={-43.2815,61.1033},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_interface int_Yp annotation(Placement(
		visible=true,
		transformation(
			origin={-0.848656,81.471},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
	iboss.components.iboss_interface int_Zn annotation(Placement(
		visible=true,
		transformation(
			origin={44.9788,-61.9519},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	iboss.components.iboss_interface int_Yn annotation(Placement(
		visible=true,
		transformation(
			origin={-0.848656,-77.5106},
			extent={{12,-12},{-12,12}},
			rotation=90)));
	iboss.components.iboss_interface int_Xp annotation(Placement(
		visible=true,
		transformation(
			origin={80.3395,-0.282885},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	iboss.components.iboss_connector Zn annotation(Placement(
		visible=true,
		transformation(
			origin={52.2766,-53.6256},
			extent={{12,12},{-12,-12}},
			rotation=-180),
		iconTransformation(
			origin={52.2766,-53.6256},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_connector Yn annotation(Placement(
		visible=true,
		transformation(
			origin={0.337268,-97.1332},
			extent={{12,-12},{-12,12}},
			rotation=-270),
		iconTransformation(
			origin={0.337268,-97.1332},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_connector Xp annotation(Placement(
		visible=true,
		transformation(
			origin={99.8314,0.337268},
			extent={{12,12},{-12,-12}},
			rotation=-180),
		iconTransformation(
			origin={99.8314,0.337268},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_connector Yp annotation(Placement(
		visible=true,
		transformation(
			origin={0.337268,99.4941},
			extent={{-12,12},{12,-12}},
			rotation=-90),
		iconTransformation(
			origin={0.337268,99.4941},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	iboss.components.iboss_connector Zp annotation(Placement(
		visible=true,
		transformation(
			origin={-60.9246,61.0675},
			extent={{-12,-12},{12,12}},
			rotation=0)));
	equation
		connect(int_Yn.vcc,int_Xn.vcc) annotation(Line(points = {{1.3239,-65.3578},{1.13154,-65.3578},{1.13154,-59.6888},{-61.3861,-59.6888},{-61.3861,-2.26308},{-68.7524,-2.26308},{-68.7524,-2.17255}}));
		connect(int_Zn.vcc,int_Yn.vcc) annotation(Line(points = {{32.826,-59.7793},{1.13154,-59.7793},{1.13154,-65.3578},{1.3239,-65.3578}}));
		connect(int_Xp.vcc,int_Zn.vcc) annotation(Line(points = {{68.1867,1.88967},{63.3663,1.88967},{63.3663,-39.604},{27.7228,-39.604},{27.7228,-59.6888},{32.826,-59.6888},{32.826,-59.7793}}));
		connect(int_Zn.gnd,int_Xp.gnd) annotation(Line(points = {{32.7921,-55.8416},{25.1768,-55.8416},{25.1768,-37.058},{61.1033,-37.058},{61.1033,6.22348},{68.1528,6.22348},{68.1528,5.82744}}));
		connect(int_Yn.gnd,int_Zn.gnd) annotation(Line(points = {{5.26167,-65.3239},{5.37482,-65.3239},{5.37482,-58.5573},{25.1768,-58.5573},{25.1768,-55.4455},{32.7921,-55.4455},{32.7921,-55.8416}}));
		connect(int_Xn.gnd,int_Yn.gnd) annotation(Line(points = {{-68.7185,-6.11033},{-59.1231,-6.11033},{-59.1231,-58.5573},{5.37482,-58.5573},{5.37482,-65.3239},{5.26167,-65.3239}}));
		connect(int_Zp.gnd,int_Xn.gnd) annotation(Line(points = {{-31.0948,54.993},{-23.4795,54.993},{-23.4795,38.7553},{-58.8402,38.7553},{-58.8402,-6.50636},{-68.7185,-6.50636},{-68.7185,-6.11033}}));
		connect(int_Yp.gnd,int_Zp.gnd) annotation(Line(points = {{-6.95898,69.2843},{-7.35502,69.2843},{-7.35502,61.1033},{-23.1966,61.1033},{-23.1966,54.8798},{-31.0948,54.8798},{-31.0948,54.993}}));
		connect(int_Zp.vcc,int_Yp.vcc) annotation(Line(points = {{-31.1287,58.9307},{-26.5912,58.9307},{-26.5912,63.9321},{-3.67751,63.9321},{-3.67751,69.3182},{-3.02121,69.3182}}));
		connect(int_Xn.vcc,int_Zp.vcc) annotation(Line(points = {{-68.7524,-2.17255},{-61.3861,-2.17255},{-61.3861,41.0184},{-26.0255,41.0184},{-26.0255,59.1231},{-31.1287,59.1231},{-31.1287,58.9307}}));
		connect(Yn,int_Yn.iBoss_connector);
		connect(Xn,int_Xn.iBoss_connector);
		connect(Zp,int_Zp.iBoss_connector);
		connect(Yp,int_Yp.iBoss_connector);
		connect(Xp,int_Xp.iBoss_connector);
		connect(Zn,int_Zn.iBoss_connector);
	annotation(
		Diagram,
		Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.2278,76.0255},{74.9561,-75.256}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.5191,69.4202},{66.9674,-68.4328}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20.2122,18.7864},{19.355,-20.778}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-15.3692,13.9434},{14.512,-15.6521}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-1.42575,0.571424},{0.288544,-1.14286}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-74.3791,15.6917},{-79.2362,-16.0226}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.9916,77.1881},{15.1513,72.0453}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{73.239,13.1174},{77.5247,-13.7397}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.4145,-72.9759},{16.5855,-77.833}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-49.505,66.761},{55.4455,27.4399}}, textString = "%name")}));
end basic_ess;
model verbraucher_nopowerbalance "power consumer without power balance"
	import satcomponents.power.dcmodel;
	extends basic_ess_mss;
	parameter Modelica.SIunits.Power P_payload=10;
	parameter Modelica.SIunits.Power P_basic=5;
	satcomponents.power.PCU pcu1 annotation(Placement(transformation(
		origin={25,0},
		extent={{-10,-10},{10,10}})));
	Modelica.Electrical.Analog.Basic.Resistor resistor1(R=12.0^2/P_payload) annotation(Placement(transformation(
		origin={70,5},
		extent={{-10,-10},{10,10}})));
	Modelica.Electrical.Analog.Basic.Resistor resistor2(R=5.0^2/(P_basic-.5)) annotation(Placement(transformation(
		origin={70,-10},
		extent={{-10,-10},{10,10}})));
	Modelica.Electrical.Analog.Basic.Resistor resistor3(R=3.3^2/(P_basic-4.5)) annotation(Placement(transformation(
		origin={70,-25},
		extent={{-10,-10},{10,10}})));
	Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit="nF")=0.00000001) annotation(Placement(transformation(
		origin={-50,0},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(
		origin={-50,-30},
		extent={{-10,-10},{10,10}})));
	Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit="µF")=9.9999999999999995e-007) annotation(Placement(transformation(
		origin={-10,0},
		extent={{-10,-10},{10,10}},
		rotation=270)));
	equation
		connect(resistor3.n,pcu1.gnd) annotation(
			Line(points={{80,-25},{85,-25},{85,-30},{40,-30},{35,-6.333335876464844}}),
			AutoRoute=false);
		connect(capacitor1.p,ground1.p) annotation(Line(points={{-50,-10},{-50,-15},{-50,-20}}));
		connect(pcu1.GND,pcu1.gnd) annotation(
			Line(points={{15,-4.333335876464844},{15,-15},{35,-15},{35,-6.333335876464844}}),
			AutoRoute=false);
		connect(resistor2.n,resistor3.n) annotation(Line(points={{80,-10},{85,-10},{85,-25},{80,-25}}));
		connect(resistor1.n,resistor2.n) annotation(Line(points={{80,5},{85,5},{85,-10},{80,-10}}));
		connect(resistor3.p,pcu1.VCC3) annotation(
			Line(points={{60,-25},{55,-25},{50,-25},{50,-2},{35,-2.333335876464844}}),
			AutoRoute=false);
		connect(pcu1.VCC12,resistor1.p) annotation(Line(points={{35,4},{40,4},{55,4},{55,5},{60,5}}));
		connect(pcu1.VCC5,resistor2.p) annotation(Line(points={{35,1},{40,1},{55,1},{55,-10},{60,-10}}));
		connect(int_Xn.vcc,pcu1.VCC) annotation(Line(points={{35,26},{35,21},{10,21},{10,1},{15,1}}));
		connect(int_Xn.gnd,pcu1.GND) annotation(
			Line(points={{31,25.66666412353516},{31,21},{5,21},{5,-4},{15,-4.333335876464844}}),
			AutoRoute=false);
		connect(capacitor1.n,int_Xp.gnd) annotation(Line(
			points={{-50,10},{-50,15},{-50,21},{-44,21},{-44,26}},
			thickness=0.0625));
		connect(capacitor2.p,int_Yp.vcc) annotation(Line(
			points={{-10,10},{-10,15},{-10,21},{-15,21},{-15,26}},
			thickness=0.0625));
		connect(capacitor2.n,int_Yp.gnd) annotation(Line(
			points={{-10,-10},{-10,-15},{-20,-15},{-20,21},{-19,21},{-19,
			26}},
			thickness=0.0625));
	annotation(experiment(
		StopTime=11000,
		StartTime=0,
		Tolerance=0.0001));
end verbraucher_nopowerbalance;
end buildingblocks;
package satellites
	model generic_sat
		parameter Integer size_x=3;
		parameter Integer size_y=1;
		parameter Integer size_z=1;
		bb_catalogue.bb_verbraucher bb[size_x,size_y,size_z] annotation(Placement(
			visible=true,
			transformation(
				origin={16.9731,-61.6691},
				extent={{-12,-12},{12,12}},
				rotation=0)));
		bb_catalogue.bb_solar bbs;
		connectionelement connelem_s;
		connectionelement connelem_x[size_x - 1,size_y,size_z];
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			width=1000,
			period=3000,
			rising=60,
			falling=60) annotation(Placement(
			visible=true,
			transformation(
				origin={-71.8473,7.01273},
				extent={{-12,-12},{12,12}},
				rotation=0)));
		equation
			connect(trapezoid1.y,bbs.u) annotation(Line(points = {{-58.6473,7.01273},{-17.8218,7.01273},{-17.8218,-0.0889732},{26.557,-0.0889732}}));
			connect(bbs.Xp,connelem_s.int1);
			connect(bb[1,1,1].Xn,connelem_s.int2);
			//connect other buildingblocks
			for i in 1:size_x - 1, j in 1:size_y, k in 1:size_z loop
			connect(bb[i,j,k].Xp,connelem_x[i,j,k].int1);
			connect(bb[i + 1,j,k].Xn,connelem_x[i,j,k].int2);
			
			end for;
			for i in 1:size_x, j in 1:size_y - 1, k in 1:size_z loop
			connect(bb[i,j,k].Xp,connelem_y[i,j,k].int1);
			connect(bb[i,j + 1,k].Xn,connelem_y[i,j,k].int2);
			
			end for;
			for i in 1:size_x, j in 1:size_y, k in 1:size_z - 1 loop
			connect(bb[i,j,k].Xp,connelem_z[i,j,k].int1);
			connect(bb[i,j,k + 1].Xn,connelem_z[i,j,k].int2);
			
			end for;
			//*/
		annotation(experiment(
			StartTime=0.0,
			StopTime=20000.0,
			Tolerance=0.000001));
	end generic_sat;
	model EVS2x2x1
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={1,-17},
			extent={{-6,-5},{12,12}})));
		buildingblocks.verbraucher v1 annotation(Placement(transformation(
			origin={27,33},
			extent={{-12,-12},{8,7}})));
		components.connectionelement connectionelement3 annotation(Placement(transformation(
			origin={2,36},
			extent={{-12,-12},{4,4}})));
		buildingblocks.verbraucher v2(shortcircuitproblem=15000) annotation(Placement(transformation(
			origin={-23,33},
			extent={{-12,-12},{8,7}})));
		buildingblocks.solar s1 annotation(Placement(transformation(
			origin={-23,-12},
			extent={{-7,8},{12,-12}},
			rotation=-90)));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={32,13},
			extent={{-2,3},{12,-12}},
			rotation=-90)));
		buildingblocks.battery b1(
			SOC_start=0.5,
			capacity=20) annotation(Placement(transformation(
			origin={30,-15},
			extent={{-10,-10},{10,10}})));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000,
			startTime=100) annotation(Placement(transformation(
			origin={-73.4187,-43.5587},
			extent={{-12,-12},{12,12}})));
		components.connectionelement connectionelement4 annotation(Placement(transformation(
			origin={-23,14},
			extent={{-1,3},{12,-12}},
			rotation=-90)));
		equation
			connect(connectionelement4.int1,s1.Xn) annotation(Line(points={{-28,3},{-28,-2},{-27,-2},{-27,0},{-25,0},{-25,
			-5}}));
			connect(b1.Xn,connectionelement1.int1) annotation(Line(points={{20,-15},{15,-15},{15,-14},{17,-14},{17,-13},{12,
			-13}}));
			connect(connectionelement2.int1,b1.Yp) annotation(Line(points={{27,2},{27,-3},{28,-3},{28,0},{30,0},{30,
			-5}}));
			connect(v1.Yn,connectionelement2.int2) annotation(Line(points={{25,22},{25,17},{26,17},{26,19},{27,19},{27,
			14}}));
			connect(connectionelement3.int1,v1.Xn) annotation(Line(points={{5,32},{10,32},{10,30},{15,30}}));
			connect(v2.Xp,connectionelement3.int2) annotation(Line(points={{-15,31},{-10,31},{-10,31},{-14,31},{-14,32},{-9,
			32}}));
			connect(connectionelement4.int2,v2.Yn) annotation(Line(points={{-28,14},{-28,19},{-26,19},{-26,17},{-25,17},{-25,
			22}}));
			connect(trapezoid1.y,s1.u) annotation(Line(points={{-60,-44},{-55,-44},{-25,-44},{-25,-41},{-25,-36}}));
			connect(s1.Yn,connectionelement1.int2) annotation(Line(
				points={{-16,-14},{-11,-14},{-9,-14},{-9,-13},{-4,-13}},
				color={0,0,0}));
		annotation(
			connectionelement1(LossPower(flags=2)),
			v1(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				resistor3(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2)),
				resistor4(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2)),
				resistor5(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2))),
			connectionelement3(LossPower(flags=2)),
			v2(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				capacitor1(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2))),
				booleanStep1(y(flags=2)),
				pCU1(
					V_in(flags=2),
					V_3(flags=2),
					V_5(flags=2),
					V_12(flags=2))),
			s1(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2))),
			connectionelement2(LossPower(flags=2)),
			b1(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					vcc(v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				battery1(
					v(flags=2),
					soc(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			trapezoid1(y(flags=2)),
			connectionelement4(LossPower(flags=2)),
			experiment(
				StopTime=20000,
				StartTime=0,
				Tolerance=0.0001));
	end EVS2x2x1;
	model EVS4x1x1
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={-51.1429,-3.42857},
			extent={{-12,-12},{12,12}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={6.28571,-3.71429},
			extent={{-12,-12},{12,12}})));
		buildingblocks.verbraucher bb_verbraucher1 annotation(Placement(transformation(
			origin={-22.8571,-2.85714},
			extent={{-12,-12},{12,12}})));
		buildingblocks.verbraucher bb_verbraucher2 annotation(Placement(transformation(
			origin={34.5714,-2.57143},
			extent={{-12,-12},{12,12}})));
		components.connectionelement connectionelement3 annotation(Placement(transformation(
			origin={62,-2.85714},
			extent={{-12,-12},{12,12}})));
		buildingblocks.verbraucher bb_verbraucher3 annotation(Placement(transformation(
			origin={91.7308,-2},
			extent={{-12,-12},{12,12}})));
		buildingblocks.solar bb_solar1(panelarea=100) annotation(Placement(transformation(
			origin={-83,-2},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000) annotation(Placement(transformation(
			origin={-82.6673,-70.14830000000001},
			extent={{-12,-12},{12,12}})));
		equation
			connect(trapezoid1.y,bb_solar1.u) annotation(Line(points={{-69,-70},{-64,-70},{-64,-52},{-83,-52},{-83,-34},{-83,
			-29}}));
			connect(bb_solar1.Yn,connectionelement1.int2) annotation(Line(points={{-72,-2},{-67,-2},{-67,-2},{-67,-3},{-62,-3}}));
			connect(bb_verbraucher3.Xn,connectionelement3.int1) annotation(Line(points={{79.5475,-2.05594},{73.4286,-2.05594},{73.4286,-2.314},{72.62520000000001,-2.314}}));
			connect(connectionelement3.int2,bb_verbraucher2.Xp) annotation(Line(points={{51.4509,-2.37375},{46.5714,-2.37375},{46.5714,-2.5664},{46.3341,-2.5664}}));
			connect(bb_verbraucher2.Xn,connectionelement2.int1) annotation(Line(points={{22.5616,-2.59269},{16.2857,-2.59269},{16.2857,-3.17115},{16.9109,-3.17115}}));
			connect(bb_verbraucher1.Xn,connectionelement1.int1) annotation(Line(points={{-34.867,-2.8784},{-40.2857,-2.8784},{-40.2857,-2.88543},{-40.5177,-2.88543}}));
			connect(connectionelement2.int2,bb_verbraucher1.Xp) annotation(Line(points={{-4.26343,-3.23089},{-11.1429,-3.23089},{-11.1429,-2.85211},{-11.0945,-2.85211}}));
		annotation(
			connectionelement1(
				int1(
					Vcc(
						v(flags=2),
						i(flags=2)),
					GND(
						v(flags=2),
						i(flags=2))),
				LossPower(flags=2),
				int2(
					Vcc(
						v(flags=2),
						i(flags=2)),
					GND(
						v(flags=2),
						i(flags=2))),
				R_GND(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2)),
				R_Vcc(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2))),
			connectionelement2(LossPower(flags=2)),
			bb_verbraucher1(
				resistor1(R(flags=128)),
				resistor2(R(flags=128)),
				capacitor1(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2))),
				pCU1(
					V_in(flags=2),
					V_3(flags=2),
					V_5(flags=2),
					V_12(flags=2)),
				resistor3(v(flags=2)),
				resistor4(v(flags=2)),
				resistor5(v(flags=2))),
			bb_verbraucher2(
				resistor1(R(flags=128)),
				resistor2(R(flags=128))),
			connectionelement3(LossPower(flags=2)),
			bb_verbraucher3(
				resistor1(R(flags=128)),
				resistor2(R(flags=128))),
			bb_solar1(
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2))),
			trapezoid1(y(flags=2)),
			viewinfo[0](
				staticBlocks[0](
					frame(
						style=0,
						width=0,
						color=0),
					index=0,
					typename="Displ"),
				staticBlocks[1](
					frame(
						style=0,
						width=0,
						color=0),
					index=1,
					typename="Displ"),
				typename="ModelInfo"),
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS4x1x1;
	model EVS2x2x3
		buildingblocks.verbraucher bb9(shortcircuitproblem=10e90) annotation(Placement(transformation(
			origin={10,25},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb8 annotation(Placement(transformation(
			origin={35.0094,25.4955},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb6 annotation(Placement(transformation(
			origin={9.9688,52.1413},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn19 annotation(Placement(transformation(
			origin={22.8756,25.3731},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn18 annotation(Placement(transformation(
			origin={22.8756,51.6978},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb2 annotation(Placement(transformation(
			origin={-40.594,28.5453},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb4 annotation(Placement(transformation(
			origin={-65.31359999999999,53.1044},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb5 annotation(Placement(transformation(
			origin={-41.0755,52.1413},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn16 annotation(Placement(transformation(
			origin={-52.8884,52.1794},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn17 annotation(Placement(transformation(
			origin={-53.0489,28.1019},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn9 annotation(Placement(transformation(
			origin={-16.451,61.4894},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn8 annotation(Placement(transformation(
			origin={-16.13,48.648},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn7 annotation(Placement(transformation(
			origin={-16.13,35.3251},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn6 annotation(Placement(transformation(
			origin={-15.9695,22.1627},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb11 annotation(Placement(transformation(
			origin={10.7714,-10.7813},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb12 annotation(Placement(transformation(
			origin={10.4503,-34.3773},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn20 annotation(Placement(transformation(
			origin={23.3571,-10.9037},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn1 annotation(Placement(transformation(
			origin={23.6782,-34.6602},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb7 annotation(Placement(transformation(
			origin={35,52},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb10 annotation(Placement(transformation(
			origin={35.491,-10.2998},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		buildingblocks.verbraucher bb1 annotation(Placement(transformation(
			origin={35.9725,-34.5378},
			extent={{-5.08917,-5.08917},{5.08917,5.08917}})));
		components.connectionelement conn12 annotation(Placement(transformation(
			origin={10,-23},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn13 annotation(Placement(transformation(
			origin={35.5564,-22.6214},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn15 annotation(Placement(transformation(
			origin={9.552670000000001,39.9801},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn11 annotation(Placement(transformation(
			origin={-41.0101,40.7827},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn10 annotation(Placement(transformation(
			origin={-65.5692,40.6222},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn4 annotation(Placement(transformation(
			origin={19.8257,6.75313},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn3 annotation(Placement(transformation(
			origin={32.8276,6.75313},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn14 annotation(Placement(transformation(
			origin={35.3959,39.1775},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn5 annotation(Placement(transformation(
			origin={6.66337,6.59262},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement conn2 annotation(Placement(transformation(
			origin={45.0269,7.07417},
			extent={{-5.08917,5.08917},{5.08917,-5.08917}},
			rotation=-90)));
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={-11.0535,-10.7081},
			extent={{-6.77369,-6.77369},{6.77369,6.77369}})));
		buildingblocks.battery battery1(SOC_start=0.94) annotation(Placement(transformation(
			origin={-70,25},
			extent={{-5.49199,-5.49199},{5.49199,5.49199}})));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000,
			startTime=500) annotation(Placement(transformation(
			origin={-66,11},
			extent={{-4.20593,-4.20593},{4.20593,4.20593}})));
		buildingblocks.solar bb_solar1(panelarea=100) annotation(Placement(transformation(
			origin={-40,-10},
			extent={{5.08917,5.08917},{-5.08917,-5.08917}})));
		Modelica.SIunits.Power connectionloss;
		equation
			connectionloss=connectionelement1.LossPower+ conn1.LossPower+		conn2.LossPower+		conn3.LossPower+		conn4.LossPower+		conn5.LossPower+
			conn6.LossPower+		conn7.LossPower+		conn8.LossPower+		conn9.LossPower+		conn10.LossPower+		conn11.LossPower+		conn12.LossPower+		conn13.LossPower+
			conn14.LossPower+		conn15.LossPower+		conn16.LossPower+		conn17.LossPower+		conn18.LossPower+		conn19.LossPower;
			connect(connectionelement1.int1,bb11.Xn) annotation(Line(points={{-5,-10},{0,-10},{1,-10},{1,-11},{6,-11}}));
			connect(bb_solar1.Xn,connectionelement1.int2) annotation(Line(points={{-35,-10},{-30,-10},{-22,-10},{-22,-10},{-17,-10}}));
			connect(conn2.int1,bb1.Zn) annotation(Line(points={{45,3},{45,-2},{46,-2},{46,-37},{41,-37}}));
			connect(conn3.int1,bb10.Zn) annotation(Line(points={{33,2},{33,-3},{46,-3},{46,-13},{41,-13}}));
			connect(conn4.int1,bb12.Zn) annotation(Line(points={{20,2},{20,-3},{21,-3},{21,-37},{16,-37}}));
			connect(conn5.int1,bb11.Zn) annotation(Line(points={{6,2},{6,-3},{21,-3},{21,-13},{16,-13}}));
			connect(conn2.int2,bb8.Zn) annotation(Line(points={{45,12},{45,17},{45,17},{45,23},{40,23}}));
			connect(conn4.int2,bb9.Zn) annotation(Line(points={{20,11},{20,16},{20,16},{20,22},{15,22}}));
			connect(conn5.int2,bb6.Zn) annotation(Line(points={{6,11},{6,16},{20,16},{20,50},{15,50}}));
			connect(conn7.int1,bb8.Zp) annotation(Line(points={{-12,36},{-7,36},{25,36},{25,28},{30,28}}));
			connect(conn6.int1,bb9.Zp) annotation(Line(points={{-11,22},{-6,22},{0,22},{0,28},{5,28}}));
			connect(conn8.int1,bb6.Zp) annotation(Line(points={{-12,49},{-7,49},{0,49},{0,55},{5,55}}));
			connect(bb4.Zn,conn8.int2) annotation(Line(points={{-60,51},{-55,51},{-26,51},{-26,49},{-21,49}}));
			connect(bb2.Zn,conn7.int2) annotation(Line(points={{-36,26},{-31,26},{-26,26},{-26,36},{-21,36}}));
			connect(bb5.Zn,conn9.int2) annotation(Line(points={{-36,50},{-31,50},{-26,50},{-26,62},{-21,62}}));
			connect(bb12.Yp,conn12.int1) annotation(Line(points={{10,-29},{10,-24},{10,-24},{10,-33},{10,-33},{10,
			-28}}));
			connect(conn1.int2,bb12.Xp) annotation(Line(points={{19,-34},{14,-34},{21,-34},{16,-34}}));
			connect(bb1.Xn,conn1.int1) annotation(Line(points={{31,-35},{26,-35},{33,-35},{33,-34},{28,-34}}));
			connect(conn13.int1,bb1.Yp) annotation(Line(points={{35,-27},{35,-32},{36,-32},{36,-24},{36,-24},{36,
			-29}}));
			connect(bb10.Yn,conn13.int2) annotation(Line(points={{35,-15},{35,-20},{35,-13},{35,-18}}));
			connect(conn20.int1,bb10.Xn) annotation(Line(points={{28,-11},{33,-11},{25,-11},{25,-10},{30,-10}}));
			connect(bb11.Xp,conn20.int2) annotation(Line(points={{16,-11},{21,-11},{14,-11},{19,-11}}));
			connect(bb11.Yn,conn12.int2) annotation(Line(points={{11,-15},{11,-20},{10,-20},{10,-14},{10,-14},{10,
			-19}}));
			connect(bb9.Yp,conn15.int1) annotation(Line(points={{10,30},{10,35},{10,35},{10,30},{9,30},{9,
			35}}));
			connect(conn19.int2,bb9.Xp) annotation(Line(points={{18,26},{13,26},{13,25},{20,25},{20,25},{15,
			25}}));
			connect(bb8.Xn,conn19.int1) annotation(Line(points={{30,25},{25,25},{32,25},{32,26},{27,26}}));
			connect(conn14.int1,bb8.Yp) annotation(Line(points={{35,35},{35,30},{35,36},{35,31}}));
			connect(bb6.Xp,conn18.int2) annotation(Line(points={{15,52},{20,52},{13,52},{18,52}}));
			connect(bb6.Yn,conn15.int2) annotation(Line(points={{10,48},{10,43},{10,43},{10,49},{9,49},{9,
			44}}));
			connect(bb4.Xp,conn16.int2) annotation(Line(points={{-60,53},{-55,53},{-55,53},{-62,53},{-62,52},{-57,
			52}}));
			connect(conn10.int2,bb4.Yn) annotation(Line(points={{-66,45},{-66,50},{-66,43},{-65,43},{-65,48}}));
			connect(bb2.Xn,conn17.int1) annotation(Line(points={{-46,29},{-51,29},{-44,29},{-44,28},{-49,28}}));
			connect(conn11.int1,bb2.Yp) annotation(Line(points={{-41,36},{-41,31},{-41,31},{-41,39},{-41,39},{-41,
			34}}));
			connect(bb5.Yn,conn11.int2) annotation(Line(points={{-41,48},{-41,43},{-41,50},{-41,50},{-41,45}}));
			connect(conn16.int1,bb5.Xn) annotation(Line(points={{-48,52},{-43,52},{-51,52},{-51,52},{-46,52}}));
			connect(trapezoid1.y,bb_solar1.u) annotation(Line(
				points={{-61,11},{-56,11},{-56,-10},{-51,-10}},
				color={0,0,127},
				thickness=0.0625));
			connect(battery1.Yp,conn10.int1) annotation(Line(
				points={{-70,30},{-70,35},{-68,35},{-68,31},{-66,31},{-66,
				36}},
				color={0,0,0}));
			connect(battery1.Xp,conn17.int2) annotation(Line(
				points={{-65,25},{-60,25},{-60,27},{-63,27},{-63,28},{-58,
				28}},
				color={0,0,0}));
			connect(conn6.int2,battery1.Zn) annotation(Line(
				points={{-20,22},{-25,22},{-60,22},{-65,22}},
				color={0,0,0}));
			connect(conn18.int1,bb7.Xn) annotation(Line(
				points={{27,52},{32,52},{25,52},{30,52}},
				color={0,0,0}));
			connect(bb7.Yn,conn14.int2) annotation(Line(
				points={{35,47},{35,42},{35,49},{35,49},{35,44}},
				color={0,0,0}));
			connect(conn3.int2,bb7.Zn) annotation(Line(
				points={{33,11},{35,16},{45,15},{45,49},{40,49}},
				color={0,0,0}));
			connect(conn9.int1,bb7.Zp) annotation(Line(
				points={{-12,62},{-7,62},{25,62},{25,55},{30,55}},
				color={0,0,0}));
		annotation(
			bb9(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					vcc(v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				resistor1(v(flags=2)),
				pCU1(
					V_in(flags=2),
					V_3(flags=2),
					V_5(flags=2),
					V_12(flags=2))),
			bb8(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				resistor1(v(flags=2)),
				resistor2(v(flags=2)),
				resistor3(v(flags=2))),
			bb6(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			conn19(LossPower(flags=2)),
			conn18(LossPower(flags=2)),
			bb2(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			bb4(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			bb5(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			conn16(LossPower(flags=2)),
			conn17(LossPower(flags=2)),
			conn9(LossPower(flags=2)),
			conn8(LossPower(flags=2)),
			conn7(LossPower(flags=2)),
			conn6(LossPower(flags=2)),
			bb11(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			bb12(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			conn20(LossPower(flags=2)),
			conn1(LossPower(flags=2)),
			bb7(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			bb10(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			bb1(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2)))),
			conn12(LossPower(flags=2)),
			conn13(LossPower(flags=2)),
			conn15(LossPower(flags=2)),
			conn11(LossPower(flags=2)),
			conn10(LossPower(flags=2)),
			conn4(LossPower(flags=2)),
			conn3(LossPower(flags=2)),
			conn14(LossPower(flags=2)),
			conn5(LossPower(flags=2)),
			conn2(LossPower(flags=2)),
			connectionelement1(
				LossPower(flags=2),
				R_Vcc(
					v(flags=2),
					i(flags=2))),
			battery1(
				Vcc(flags=2),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				battery1(
					v(flags=2),
					soc(flags=2),
					SOD(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			trapezoid1(y(flags=2)),
			bb_solar1(
				Vcc(flags=2),
				Yp(Vcc(v(flags=2))),
				int_Xn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Yn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Zn(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				int_Xp(
					voltageSensor2(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					voltageSensor1(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					variableResistor1(
						LossPower(flags=2),
						R_actual(flags=2)),
					ei_ctrl(y(flags=2))),
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2))),
			connectionloss(flags=2),
			viewinfo[0](
				property[0](
					id=2004,
					val="2005"),
				property[1](
					id=2012,
					val="2013"),
				property[2](
					id=2017,
					val="000000"),
				property[3](
					id=2018,
					val="True"),
				typename="3DObjectInfo"),
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS2x2x3;
	model EVS4x1x1batteries
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={-51.1429,-3.42857},
			extent={{-12,-12},{12,12}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={6.28571,-3.71429},
			extent={{-12,-12},{12,12}})));
		buildingblocks.verbraucher bb_verbraucher1 annotation(Placement(transformation(
			origin={-22.8571,-2.85714},
			extent={{-12,-12},{12,12}})));
		buildingblocks.verbraucher bb_verbraucher2(P_payload=150) annotation(Placement(transformation(
			origin={34.5714,-2.57143},
			extent={{-12,-12},{12,12}})));
		components.connectionelement connectionelement3 annotation(Placement(transformation(
			origin={62,-2.85714},
			extent={{-12,-12},{12,12}})));
		buildingblocks.verbraucher bb_verbraucher3 annotation(Placement(transformation(
			origin={91.7308,-2},
			extent={{-12,-12},{12,12}})));
		buildingblocks.solar bb_solar1 annotation(Placement(transformation(
			origin={-83.1891,-3.43188},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000,
			startTime=100) annotation(Placement(transformation(
			origin={-128,-82},
			extent={{-12,-12},{12,12}})));
		buildingblocks.battery battery1 annotation(Placement(transformation(extent={{-35,-80},{-10,-55}})));
		components.connectionelement connectionelement4 annotation(Placement(transformation(
			origin={-25,-35},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		buildingblocks.battery battery2(SOC_start=0.5) annotation(Placement(transformation(extent={{25,-80},{50,-55}})));
		components.connectionelement connectionelement5 annotation(Placement(transformation(
			origin={35,-35},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		buildingblocks.solar bb_solar2 annotation(Placement(transformation(
			origin={-128,-2},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
		buildingblocks.battery battery3(SOC_start=0.7) annotation(Placement(transformation(extent={{85,-80},{110,-55}})));
		components.connectionelement connectionelement6 annotation(Placement(transformation(
			origin={90,-35},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		components.connectionelement connectionelement7 annotation(Placement(transformation(extent={{0,-80},{20,-60}})));
		components.connectionelement connectionelement8 annotation(Placement(transformation(extent={{60,-75},{80,-55}})));
		equation
			connect(trapezoid1.y,bb_solar1.u) annotation(Line(points={{-115,-82},{-110,-82},{-78,-82},{-78,-30},{-83,-30}}));
			connect(bb_solar1.Yn,connectionelement1.int2) annotation(Line(points={{-72,-3},{-67,-3},{-67,-3},{-67,-3},{-62,-3}}));
			connect(bb_verbraucher3.Xn,connectionelement3.int1) annotation(Line(points={{80,-2},{75,-2},{78,-2},{78,-2},{73,-2}}));
			connect(connectionelement3.int2,bb_verbraucher2.Xp) annotation(Line(points={{51,-2},{46,-2},{52,-2},{52,-3},{47,-3}}));
			connect(bb_verbraucher2.Xn,connectionelement2.int1) annotation(Line(points={{23,-3},{18,-3},{18,-3},{22,-3},{22,-3},{17,
			-3}}));
			connect(bb_verbraucher1.Xn,connectionelement1.int1) annotation(Line(points={{-35,-3},{-40,-3},{-36,-3},{-41,-3}}));
			connect(connectionelement2.int2,bb_verbraucher1.Xp) annotation(Line(points={{-4,-3},{-9,-3},{-9,-3},{-6,-3},{-6,-3},{-11,
			-3}}));
			connect(bb_verbraucher1.Yn,connectionelement4.int2) annotation(Line(
				points={{-23,-14},{-23,-19},{-23,-21},{-25,-21},{-25,-26}},
				color={0,0,0}));
			connect(connectionelement4.int1,battery1.Yp) annotation(Line(
				points={{-25,-44},{-25,-49},{-25,-50},{-22,-50},{-22,-55}},
				color={0,0,0}));
			connect(connectionelement5.int1,battery2.Yp) annotation(Line(
				points={{35,-44},{35,-49},{35,-50},{38,-50},{38,-55}},
				color={0,0,0}));
			connect(bb_verbraucher2.Yn,connectionelement5.int2) annotation(Line(
				points={{35,-13},{35,-18},{35,-21},{35,-21},{35,-26}},
				color={0,0,0}));
			connect(bb_solar2.Yn,bb_solar1.Yp) annotation(Line(
				points={{-117,-2},{-112,-2},{-100,-2},{-100,-3},{-95,-3}},
				color={0,0,0}));
			connect(bb_solar2.u,trapezoid1.y) annotation(Line(
				points={{-128,-29},{-128,-34},{-110,-34},{-110,-82},{-115,-82}},
				color={0,0,127},
				thickness=0.0625));
			connect(connectionelement6.int1,battery3.Yp) annotation(Line(
				points={{90,-44},{90,-49},{90,-50},{98,-50},{98,-55}},
				color={0,0,0}));
			connect(bb_verbraucher3.Yn,connectionelement6.int2) annotation(Line(
				points={{92,-13},{92,-18},{92,-21},{90,-21},{90,-26}},
				color={0,0,0}));
			connect(battery1.Xp,connectionelement7.int2) annotation(Line(
				points={{-10,-67},{-5,-67},{-4,-67},{-4,-70},{1,-70}},
				color={0,0,0}));
			connect(battery2.Xn,connectionelement7.int1) annotation(Line(
				points={{25,-68},{20,-68},{20,-69},{24,-69},{24,-70},{19,
				-70}},
				color={0,0,0}));
			connect(battery2.Xp,connectionelement8.int2) annotation(Line(
				points={{50,-67},{55,-67},{56,-67},{56,-65},{61,-65}},
				color={0,0,0}));
			connect(connectionelement8.int1,battery3.Xn) annotation(Line(
				points={{79,-65},{84,-65},{84,-66},{80,-66},{80,-68},{85,
				-68}},
				color={0,0,0}));
		annotation(
			connectionelement1(LossPower(flags=2)),
			connectionelement2(LossPower(flags=2)),
			connectionelement3(LossPower(flags=2)),
			bb_solar1(
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2))),
			trapezoid1(y(flags=2)),
			battery1(
				battery1(
					v(flags=2),
					soc(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			connectionelement4(LossPower(flags=2)),
			battery2(
				battery1(
					v(flags=2),
					soc(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			connectionelement5(LossPower(flags=2)),
			bb_solar2(
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2))),
			battery3(
				battery1(
					v(flags=2),
					soc(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			connectionelement6(LossPower(flags=2)),
			connectionelement7(LossPower(flags=2)),
			connectionelement8(LossPower(flags=2)),
			experiment(
				StopTime=50000,
				StartTime=0));
	end EVS4x1x1batteries;
	model EVS4x1x1battery
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={-51.1429,-3.42857},
			extent={{-12,-12},{12,12}})));
		buildingblocks.solar bb_solar1(panelarea=100) annotation(Placement(transformation(
			origin={-83,-2},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000) annotation(Placement(transformation(
			origin={-82.6673,-70.14830000000001},
			extent={{-12,-12},{12,12}})));
		buildingblocks.battery battery1 annotation(Placement(transformation(extent={{-15,-10},{5,10}})));
		buildingblocks.verbraucher verbraucher1 annotation(Placement(transformation(extent={{-15,-65},{5,-45}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={-5,-30},
			extent={{-10,-10},{10,10}},
			rotation=90)));
		equation
			connect(trapezoid1.y,bb_solar1.u) annotation(Line(points={{-69,-70},{-64,-70},{-64,-52},{-83,-52},{-83,-34},{-83,
			-29}}));
			connect(bb_solar1.Yn,connectionelement1.int2) annotation(Line(points={{-72,-2},{-67,-2},{-67,-2},{-67,-3},{-62,-3}}));
			connect(connectionelement1.int1,battery1.Xn) annotation(Line(
				points={{-41,-3},{-36,-3},{-20,-3},{-20,0},{-15,0}},
				color={0,0,0}));
			connect(battery1.Yn,connectionelement2.int1) annotation(Line(
				points={{-5,-9},{-5,-14},{-5,-16},{-5,-16},{-5,-21}},
				color={0,0,0}));
			connect(connectionelement2.int2,verbraucher1.Yp) annotation(Line(
				points={{-5,-39},{-5,-44},{-5,-40},{-5,-40},{-5,-45}},
				color={0,0,0}));
		annotation(
			connectionelement1(
				int1(
					Vcc(
						v(flags=2),
						i(flags=2)),
					GND(
						v(flags=2),
						i(flags=2))),
				LossPower(flags=2),
				int2(
					Vcc(
						v(flags=2),
						i(flags=2)),
					GND(
						v(flags=2),
						i(flags=2))),
				R_GND(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2)),
				R_Vcc(
					v(flags=2),
					i(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					LossPower(flags=2),
					T_heatPort(flags=2),
					R_actual(flags=2))),
			bb_solar1(
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2))),
			trapezoid1(y(flags=2)),
			battery1(
				battery1(
					v(flags=2),
					soc(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			verbraucher1(pCU1(
				V_in(flags=2),
				V_3(flags=2),
				V_5(flags=2),
				V_12(flags=2))),
			connectionelement2(LossPower(flags=2)),
			viewinfo[2](
				staticBlocks[0](
					frame(
						style=0,
						width=0,
						color=0),
					index=0,
					typename="Displ"),
				typename="ModelInfo"),
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS4x1x1battery;
	model EVS1x1x1battery
		buildingblocks.battery battery1(
			SOC_start=0.4,
			capacity=2.0) annotation(Placement(transformation(
			origin={-45,-10},
			extent={{-10,-10},{10,10}})));
		buildingblocks.verbraucher verbraucher1 annotation(Placement(transformation(extent={{5,-20},{25,0}})));
		components.connectionelement connectionelement1 annotation(Placement(transformation(extent={{-25,-20},{-5,0}})));
		iboss.buildingblocks.verbraucher verbraucher2 annotation(Placement(transformation(extent={{5,-70},{25,-50}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={15,-35},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		equation
			connect(battery1.Xp,connectionelement1.int2) annotation(Line(
				points={{-35,-10},{-30,-10},{-29,-10},{-29,-10},{-24,-10}},
				color={0,0,0}));
			connect(connectionelement1.int1,verbraucher1.Xn) annotation(Line(
				points={{-6,-10},{-1,-10},{0,-10},{0,-10},{5,-10}},
				color={0,0,0}));
			connect(verbraucher1.Yn,connectionelement2.int2) annotation(Line(
				points={{15,-19},{15,-24},{15,-21},{15,-21},{15,-26}},
				color={0,0,0}));
			connect(connectionelement2.int1,verbraucher2.Yp) annotation(Line(
				points={{15,-44},{15,-49},{15,-45},{15,-45},{15,-50}},
				color={0,0,0}));
		annotation(
			battery1(
				battery1(
					v(flags=2),
					soc(flags=2),
					i(flags=2)),
				powerSensor1(power(flags=2))),
			verbraucher1(pCU1(
				V_in(flags=2),
				V_3(flags=2),
				V_5(flags=2),
				V_12(flags=2))),
			connectionelement1(LossPower(flags=2)),
			verbraucher2(pCU1(
				V_in(flags=2),
				V_3(flags=2),
				V_5(flags=2),
				V_12(flags=2))),
			connectionelement2(LossPower(flags=2)),
			experiment(
				StopTime=100000,
				StartTime=0));
	end EVS1x1x1battery;
	model EVS1x1x1solar
		buildingblocks.solar solar1 annotation(Placement(transformation(extent={{-25,-25},{-5,-5}})));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000) annotation(Placement(transformation(
			origin={47,-12},
			extent={{12,-12},{-12,12}})));
		equation
			connect(trapezoid1.y,solar1.u) annotation(Line(
				points={{34,-12},{29,-12},{12,-12},{12,-15},{7,-15}},
				color={0,0,127},
				thickness=0.0625));
		annotation(
			solar1(
				capacitor1(v(flags=2)),
				solarcell_simple1(
					v(flags=2),
					p(
						v(flags=2),
						i(flags=2)),
					n(
						v(flags=2),
						i(flags=2)),
					i_sc_actual(flags=2),
					i_sc(flags=2),
					i(flags=2),
					I_photonic(
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						v(flags=2)),
					D_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2)),
					R_shunt(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2)),
					R_series(
						v(flags=2),
						i(flags=2),
						p(
							v(flags=2),
							i(flags=2)),
						n(
							v(flags=2),
							i(flags=2)),
						LossPower(flags=2),
						T_heatPort(flags=2),
						R_actual(flags=2))),
				powerSensor1(power(flags=2)),
				resistor3(v(flags=2)),
				resistor4(v(flags=2)),
				resistor5(v(flags=2)),
				capacitor2(v(flags=2))),
			trapezoid1(y(flags=2)),
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS1x1x1solar;
end satellites;
package ControlBlocks "Controlblocks for iBoss-Components"
	block EI_control "Controls the electrical interface"
		extends Modelica.Blocks.Interfaces.SISO;
		parameter Real threshold=1;
		parameter Real outputfactor=10e6;
		equation
			y = 0.015+((1-tanh(u-threshold))*outputfactor*0.5);
		annotation(
			defaultComponentName="ei_ctrl",
			Icon(
				coordinateSystem(extent={{-100,-100},{100,100}}),
				graphics={
															Line(
															points={{-90,0},{68,0}},
														color={192,192,192}),
												Polygon(
													points={{90,0},{68,8},{68,-8},{90,0}},
													lineColor={192,192,192},
													fillColor={192,192,192},
													fillPattern=FillPattern.Solid),
												Polygon(
													points={{0,90},{-8,68},{8,68},{0,90}},
													lineColor={192,192,192},
													fillColor={192,192,192},
													fillPattern=FillPattern.Solid),
												Line(
													points={{0,-80},{0,68}},
													color={192,192,192}),
												Text(
													textString="ctrl",
													lineColor={192,192,192},
													extent={{-90,72},{-18,24}}),
												Line(
													points={{-43,0},{0,3},{17,63},{90,67}},
													color={0,0,0},
													smooth=Smooth.Bezier)}),
Diagram(
	coordinateSystem(extent={{-100,-100},{100,100}}),
	graphics={
												Line(
													points={{-90,0},{68,0}},
													color={192,192,192}),
												Polygon(
													points={{90,0},{68,8},{68,-8},{90,0}},
													lineColor={192,192,192},
													fillColor={192,192,192},
													fillPattern=FillPattern.Solid),
												Line(
													points={{-80,-80},{0,-80}},
													color={0,0,0}),
												Line(
													points={{-0.01,0},{0.01,0}},
													color={0,0,0}),
												Line(
													points={{0,80},{80,80}},
													color={0,0,0}),
												Rectangle(
													lineColor={0,0,0},
													fillPattern=FillPattern.Solid,
													extent={{-2,2},{2,-4}}),
												Polygon(
													points={{0,100},{-6,84},{6,84},{0,100}},
													lineColor={192,192,192},
													fillColor={192,192,192},
													fillPattern=FillPattern.Solid),
												Line(
													points={{0,-90},{0,84}},
													color={192,192,192}),
												Text(
													textString="y",
													lineColor={160,160,164},
													extent={{7,102},{32,82}}),
												Text(
													textString="u",
													lineColor={160,160,164},
													extent={{70,-6},{94,-26}}),
												Text(
													textString="1",
													extent={{-25,86},{-5,70}}),
												Text(
													textString="-1",
													extent={{5,-72},{25,-88}})}),
Documentation(info="MIME-Version: 1.0
Content-Type: multipart/related;boundary=\"--$iti$\";type=\"text/html\"

----$iti$
Content-Type:text/html;charset=\"iso-8859-1\"
Content-Transfer-Encoding: quoted-printable
Content-Location: C:\\Users\\tom\\AppData\\Local\\Temp\\itiC76F.tmp\\hlpC447.tmp\\EI_control.htm

<=21DOCTYPE HTML PUBLIC =22-//W3C//DTD HTML 4.0 Transitional//EN=22>
<HTML><HEAD>
<META content=3D=22text/html; charset=3Dwindows-1252=22 http-equiv=3DContent=
-Type>
<STYLE type=3Dtext/css>body, H3, H4, Table =7Bfont-family: Verdana, Arial, H=
elvetica, sans-serif; font-size:10px; color: =23000000;=7D
</STYLE>

<META name=3DGENERATOR content=3D=22MSHTML 10.00.9200.16660=22></HEAD>
<BODY>
<P>This blocks computes the output <B>y</B> as <B>sign</B> of the input 
<B>u</B>: </P><PRE>         1  <B>if</B> u &gt; 0
    y =3D  0  <B>if</B> u =3D=3D 0
        -1  <B>if</B> u &lt; 0
</PRE></BODY></HTML>


----$iti$--"));
end EI_control;
annotation(
	dateModified="2013-08-20 10:22:25Z",
	Icon(
		coordinateSystem(extent={{-100,-100},{100,100}}),
		graphics={
														Rectangle(
														lineColor={0,0,0},
														fillColor={255,255,255},
														fillPattern=FillPattern.Solid,
														extent={{-87,87},{-47,50}}),
													Rectangle(
														lineColor={0,0,0},
														fillColor={255,255,255},
														fillPattern=FillPattern.Solid,
														extent={{-57,23},{-17,-20}}),
													Rectangle(
														lineColor={0,0,0},
														fillColor={255,255,255},
														fillPattern=FillPattern.Solid,
														extent={{53,43},{100,0}}),
													Line(
														points={{-43,67},{-30,67},{-30,30}},
														color={0,0,0},
														arrow={Arrow.None,Arrow.Open}),
													Line(
														points={{-40,70},{83,70},{83,50}},
														color={0,0,0},
														arrow={Arrow.None,Arrow.Open}),
													Rectangle(
														lineColor={0,0,0},
														fillColor={255,255,255},
														fillPattern=FillPattern.Solid,
														extent={{20,-33},{70,-80}}),
													Line(
														points={{-37,-23},{-37,-63},{20,-63}},
														color={0,0,0},
														arrow={Arrow.None,Arrow.Open})}));
end ControlBlocks;
end iboss;
