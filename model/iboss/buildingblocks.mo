// CP: 65001
// SimulationX Version: 3.6.1.26028
within iboss;
package buildingblocks
	model solar
		extends basic_ess_mss(capacitor1(C=9.999999999999999e-05));
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
			N_p=panelarea / 1.17,
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
		Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit="nF")=1e-07) annotation(Placement(transformation(
			origin={60,-25},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		equation
			connect(solarcell_simple1.E_s,u) annotation(Line(points = {{107,-15},{112,-15},{117,-15},{117,-7},{122,-7}}));
			connect(sa_regulator1.n,powerSensor1.pc) annotation(Line(points = {{15,-10},{10,-10},{15,-10},{10,-10}}, thickness = 0.0625));
			connect(powerSensor1.nv,sa_regulator1.pin_n) annotation(Line(points = {{0,-20},{0,-25},{25,-25},{25,-25},{25,-20}}, thickness = 0.0625));
			connect(int_Yp.vcc,powerSensor1.nc) annotation(Line(points = {{-15,26},{-15,21},{-15,-10},{-15,-10},{-10,-10}}, thickness = 0.0625));
			connect(powerSensor1.pv,sa_regulator1.n) annotation(Line(points = {{0,0},{0,5},{10,5},{10,-10},{15,-10}}, thickness = 0.0625), AutoRoute = false);
			connect(int_Yp.gnd,powerSensor1.nv) annotation(Line(points = {{-19,26},{-19,21},{-19,-25},{0,-25},{0,-20}}, thickness = 0.0625));
			connect(sa_regulator1.pin_n,resistor5.p) annotation(Line(points = {{25,-20},{25,-25},{25,-40},{35,-40},{40,-40}}, thickness = 0.0625));
			connect(resistor3.p,sa_regulator1.p) annotation(Line(points = {{40,-10},{35,-10},{40,-10},{35,-10}}, thickness = 0.0625));
			connect(resistor3.n,resistor4.p) annotation(Line(points = {{60,-10},{65,-10},{60,-10},{65,-10}}, thickness = 0.0625));
			connect(resistor6.p,resistor5.n) annotation(Line(points = {{65,-40},{60,-40},{65,-40},{60,-40}}, thickness = 0.0625));
			connect(resistor6.n,solarcell_simple1.p) annotation(Line(points = {{85,-40},{90,-40},{100,-40},{100,-30},{100,-25}}, thickness = 0.0625));
			connect(resistor4.n,solarcell_simple1.n) annotation(Line(points = {{85,-10},{90,-10},{90,0},{100,0},{100,-5}}, thickness = 0.0625));
			connect(resistor3.n,capacitor2.p) annotation(Line(points = {{60,-10},{65,-10},{60,-10},{60,-15}}, thickness = 0.0625));
			connect(capacitor2.n,resistor5.n) annotation(Line(points = {{60,-35},{60,-40},{65,-40},{60,-40}}, thickness = 0.0625));
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
				graphics={Rectangle(fillColor = {0,0,255}, fillPattern = FillPattern.Cross, extent = {{71.8896,121.659},{356.683,-125.807}})}),
			Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
			experiment(
				StopTime=10000,
				StartTime=0,
				Tolerance=1e-06));
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
			connect(ground1.p,battery1.n) annotation(Line(points = {{95,-20},{90,-20},{75,-20},{70,-20}}, thickness = 0.0625));
			connect(powerSensor1.nv,battery1.n) annotation(Line(points = {{-25,-30},{-25,-35},{75,-35},{75,-20},{70,-20}}, thickness = 0.0625));
			connect(battery1.p,powerSensor1.pv) annotation(Line(points = {{50,-20},{45,-20},{45,-5},{-25,-5},{-25,-10}}, thickness = 0.0625));
			connect(powerSensor1.nc,int_Xp.vcc) annotation(Line(points = {{-35,-20},{-40,-20},{-40,-20},{-40,21},{-40,26}}, thickness = 0.0625));
			connect(powerSensor1.pc,ChargeRegulator.p) annotation(Line(points = {{-15,-20},{-10,-20},{-5,-20},{0,-20}}, thickness = 0.0625));
			connect(ChargeRegulator.n,battery1.p) annotation(Line(points = {{20,-20},{25,-20},{45,-20},{50,-20}}, thickness = 0.0625));
			connect(int_Xp.gnd,battery1.n) annotation(Line(points = {{-44,26},{-44,0},{75,0},{75,-20},{70,-20}}, thickness = 0.0625), AutoRoute = false);
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
			connect(int_Xp.vcc,pCU1.VCC) annotation(Line(points = {{-40,26},{-40,21},{-40,-4},{-35,-4},{-30,-4}}, thickness = 0.0625));
			connect(int_Xp.gnd,pCU1.GND) annotation(Line(points = {{-44,26},{-44,21},{-44,-9},{-35,-9},{-30,-9}}, thickness = 0.0625));
			connect(resistor3.n,resistor4.n) annotation(Line(points = {{30,5},{35,5},{35,-10},{30,-10}}, thickness = 0.0625));
			connect(resistor4.n,resistor5.n) annotation(Line(points = {{30,-10},{35,-10},{35,-25},{30,-25}}, thickness = 0.0625));
			connect(pCU1.gnd,pCU1.GND) annotation(Line(points = {{-10,-11.33333587646484},{-5,-11},{-5,-30},{-35,-30},{-35,-9},{-30,-9.333335876464844}}, thickness = 0.0625), AutoRoute = false);
			connect(pCU1.gnd,resistor5.n) annotation(Line(points = {{-10,-11.33333587646484},{-5,-40},{35,-40},{35,-25},{30,-25}}, thickness = 0.0625), AutoRoute = false);
			connect(resistor5.p,pCU1.VCC3) annotation(Line(points = {{10,-25},{5,-25},{0,-25},{0,-7},{-10,-7.333335876464844}}, thickness = 0.0625), AutoRoute = false);
			connect(resistor4.p,pCU1.VCC5) annotation(Line(points = {{10,-10},{5,-10},{5,-4},{-10,-4}}, thickness = 0.0625), AutoRoute = false);
			connect(resistor3.p,pCU1.VCC12) annotation(Line(points = {{10,5},{5,5},{-5,5},{-5,-1},{-10,-1}}, thickness = 0.0625));
		annotation(experiment(
			StopTime=11000,
			StartTime=0,
			Tolerance=0.0001));
	end verbraucher;
	model basic_ess_mss "basic_ess_mss"
		parameter Modelica.SIunits.Time shortcircuitproblem=1e+100;
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
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R(displayUnit="mOhm")=1e-05) annotation(Placement(transformation(extent={{-90,15},{-70,35}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor2(R(displayUnit="mOhm")=1e-05) annotation(Placement(transformation(extent={{-70,-5},{-90,15}})));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit="µF")=9.999999999999999e-06) annotation(Placement(transformation(
			origin={-110,15},
			extent={{-10,-10},{10,10}},
			rotation=90)));
		Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch1 annotation(Placement(transformation(
			origin={-50,-10},
			extent={{-10,-10},{10,10}},
			rotation=-180)));
		Modelica.Blocks.Sources.BooleanStep booleanStep1(startTime=shortcircuitproblem) annotation(Placement(transformation(extent={{-90,-50},{-70,-30}})));
		equation
			Vcc = int_Xn.voltageSensor1.v;
			connect(Yn,int_Yn.iBoss_connector) annotation(Line(points = {{62,63},{57,63},{57,59},{62,59},{62,55},{62,50}}));
			connect(Xn,int_Xn.iBoss_connector) annotation(Line(points = {{37,63},{32,63},{32,59},{37,59},{37,55},{37,50}}));
			connect(Zp,int_Zp.iBoss_connector) annotation(Line(points = {{12,63},{7,63},{7,59},{12,59},{12,55},{12,50}}));
			connect(Yp,int_Yp.iBoss_connector) annotation(Line(points = {{-13,63},{-18,63},{-18,59},{-13,59},{-13,55},{-13,50}}));
			connect(Xp,int_Xp.iBoss_connector) annotation(Line(points = {{-38,63},{-43,63},{-43,59},{-38,59},{-38,55},{-38,50}}));
			connect(Zn,int_Zn.iBoss_connector) annotation(Line(points = {{87,63},{82,63},{82,59},{87,59},{87,55},{87,50}}));
			connect(int_Xp.vcc,int_Yp.vcc) annotation(Line(points = {{-40,26},{-40,21},{-15,21},{-15,26}}, thickness = 0.0625));
			connect(int_Yp.vcc,int_Zp.vcc) annotation(Line(points = {{-15,26},{-15,21},{10,21},{10,26}}, thickness = 0.0625));
			connect(int_Zp.vcc,int_Xn.vcc) annotation(Line(points = {{10,26},{10,21},{35,21},{35,26}}, thickness = 0.0625));
			connect(int_Xn.vcc,int_Yn.vcc) annotation(Line(points = {{35,26},{35,21},{60,21},{60,26}}, thickness = 0.0625));
			connect(int_Yn.vcc,int_Zn.vcc) annotation(Line(points = {{60,26},{60,21},{85,21},{85,26}}, thickness = 0.0625));
			connect(int_Zn.gnd,int_Yn.gnd) annotation(Line(points = {{81,25.66666412353516},{81,15},{56,15},{56,25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
			connect(int_Xn.gnd,int_Yn.gnd) annotation(Line(points = {{31,25.66666412353516},{31,15},{56,15},{56,25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
			connect(int_Zp.gnd,int_Xn.gnd) annotation(Line(points = {{6,25.66666412353516},{6,15},{31,15},{31,25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
			connect(int_Yp.gnd,int_Zp.gnd) annotation(Line(points = {{-19,25.66666412353516},{-19,15},{6,15},{6,25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
			connect(int_Xp.gnd,int_Yp.gnd) annotation(Line(points = {{-44,25.66666412353516},{-44,15},{-19,15},{-19,25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
			connect(resistor1.p,capacitor1.n) annotation(Line(points = {{-90,25},{-95,25},{-95,30},{-110,30},{-110,25}}, thickness = 0.0625));
			connect(capacitor1.p,resistor2.n) annotation(Line(points = {{-110,5},{-110,0},{-103,0},{-103,5},{-95,5},{-90,5}}, thickness = 0.0625));
			connect(int_Xp.gnd,resistor1.n) annotation(Line(points = {{-44,26},{-44,21},{-54,21},{-54,25},{-65,25},{-70,25}}, thickness = 0.0625));
			connect(resistor2.p,int_Xp.vcc) annotation(Line(points = {{-70,5},{-65,5},{-40,5},{-40,21},{-40,26}}, thickness = 0.0625));
			connect(int_Xp.vcc,idealClosingSwitch1.p) annotation(Line(points = {{-40,26},{-40,21},{-35,21},{-35,-10},{-40,-10}}, thickness = 0.0625));
			connect(int_Xp.gnd,idealClosingSwitch1.n) annotation(Line(points = {{-44,26},{-44,21},{-65,21},{-65,-10},{-60,-10}}, thickness = 0.0625));
			connect(booleanStep1.y,idealClosingSwitch1.control) annotation(Line(points = {{-69,-40},{-64,-40},{-50,-40},{-50,-22},{-50,-17}}, color = {255,0,255}, thickness = 0.0625));
		annotation(
			Icon(
				coordinateSystem(extent={{-100,-100},{100,100}}),
				graphics={Rectangle(fillColor = {0,0,255}, extent = {{-77.2278,76.02549999999999},{74.95610000000001,-75.256}}),Rectangle(fillColor = {0,0,255}, extent = {{-69.51909999999999,69.42019999999999},{66.9674,-68.4328}}),Ellipse(fillColor = {0,0,255}, extent = {{-20.2122,18.7864},{19.355,-20.778}}),Ellipse(fillColor = {0,0,255}, extent = {{-15.3692,13.9434},{14.512,-15.6521}}),Ellipse(fillColor = {0,0,255}, extent = {{-1.42575,0.571424},{0.288544,-1.14286}}),Rectangle(fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-74.37909999999999,15.6917},{-79.2362,-16.0226}}),Rectangle(fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-15.9916,77.18810000000001},{15.1513,72.0453}}),Rectangle(fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{73.239,13.1174},{77.5247,-13.7397}}),Rectangle(fillColor = {255,255,255}, fillPattern = FillPattern.Solid, extent = {{-15.4145,-72.9759},{16.5855,-77.833}}),Text(textString = "%name", fillColor = {0,0,255}, extent = {{-49.505,66.761},{55.4455,27.4399}})}),
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
				origin={-80.90519999999999,0},
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
			connect(int_Yn.vcc,int_Xn.vcc) annotation(Line(points = {{1.3239,-65.3578},{1.13154,-65.3578},{1.13154,-59.6888},{-61.3861,-59.6888},{-61.3861,-2.26308},{-68.75239999999999,-2.26308},{-68.75239999999999,-2.17255}}));
			connect(int_Zn.vcc,int_Yn.vcc) annotation(Line(points = {{32.826,-59.7793},{1.13154,-59.7793},{1.13154,-65.3578},{1.3239,-65.3578}}));
			connect(int_Xp.vcc,int_Zn.vcc) annotation(Line(points = {{68.1867,1.88967},{63.3663,1.88967},{63.3663,-39.604},{27.7228,-39.604},{27.7228,-59.6888},{32.826,-59.6888},{32.826,-59.7793}}));
			connect(int_Zn.gnd,int_Xp.gnd) annotation(Line(points = {{32.7921,-55.8416},{25.1768,-55.8416},{25.1768,-37.058},{61.1033,-37.058},{61.1033,6.22348},{68.1528,6.22348},{68.1528,5.82744}}));
			connect(int_Yn.gnd,int_Zn.gnd) annotation(Line(points = {{5.26167,-65.32389999999999},{5.37482,-65.32389999999999},{5.37482,-58.5573},{25.1768,-58.5573},{25.1768,-55.4455},{32.7921,-55.4455},{32.7921,-55.8416}}));
			connect(int_Xn.gnd,int_Yn.gnd) annotation(Line(points = {{-68.71850000000001,-6.11033},{-59.1231,-6.11033},{-59.1231,-58.5573},{5.37482,-58.5573},{5.37482,-65.32389999999999},{5.26167,-65.32389999999999}}));
			connect(int_Zp.gnd,int_Xn.gnd) annotation(Line(points = {{-31.0948,54.993},{-23.4795,54.993},{-23.4795,38.7553},{-58.8402,38.7553},{-58.8402,-6.50636},{-68.71850000000001,-6.50636},{-68.71850000000001,-6.11033}}));
			connect(int_Yp.gnd,int_Zp.gnd) annotation(Line(points = {{-6.95898,69.2843},{-7.35502,69.2843},{-7.35502,61.1033},{-23.1966,61.1033},{-23.1966,54.8798},{-31.0948,54.8798},{-31.0948,54.993}}));
			connect(int_Zp.vcc,int_Yp.vcc) annotation(Line(points = {{-31.1287,58.9307},{-26.5912,58.9307},{-26.5912,63.9321},{-3.67751,63.9321},{-3.67751,69.3182},{-3.02121,69.3182}}));
			connect(int_Xn.vcc,int_Zp.vcc) annotation(Line(points = {{-68.75239999999999,-2.17255},{-61.3861,-2.17255},{-61.3861,41.0184},{-26.0255,41.0184},{-26.0255,59.1231},{-31.1287,59.1231},{-31.1287,58.9307}}));
			connect(Yn,int_Yn.iBoss_connector);
			connect(Xn,int_Xn.iBoss_connector);
			connect(Zp,int_Zp.iBoss_connector);
			connect(Yp,int_Yp.iBoss_connector);
			connect(Xp,int_Xp.iBoss_connector);
			connect(Zn,int_Zn.iBoss_connector);
		annotation(
			Diagram,
			Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.2278,76.02549999999999},{74.95610000000001,-75.256}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.51909999999999,69.42019999999999},{66.9674,-68.4328}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20.2122,18.7864},{19.355,-20.778}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-15.3692,13.9434},{14.512,-15.6521}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-1.42575,0.571424},{0.288544,-1.14286}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-74.37909999999999,15.6917},{-79.2362,-16.0226}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.9916,77.18810000000001},{15.1513,72.0453}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{73.239,13.1174},{77.5247,-13.7397}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.4145,-72.9759},{16.5855,-77.833}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-49.505,66.761},{55.4455,27.4399}}, textString = "%name")}));
	end basic_ess;
	model verbraucher_nopowerbalance "power consumer without power balance"
		import satcomponents.power.dcmodel;
		extends basic_ess_mss;
		parameter Modelica.SIunits.Power P_payload=10;
		parameter Modelica.SIunits.Power P_basic=5;
		satcomponents.power.PCU pcu1 annotation(Placement(transformation(
			origin={25,0},
			extent={{-10,-10},{10,10}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R=12.0 ^ 2 / P_payload) annotation(Placement(transformation(
			origin={70,5},
			extent={{-10,-10},{10,10}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor2(R=5.0 ^ 2 / (P_basic - 0.5)) annotation(Placement(transformation(
			origin={70,-10},
			extent={{-10,-10},{10,10}})));
		Modelica.Electrical.Analog.Basic.Resistor resistor3(R=3.3 ^ 2 / (P_basic - 4.5)) annotation(Placement(transformation(
			origin={70,-25},
			extent={{-10,-10},{10,10}})));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit="nF")=1e-08) annotation(Placement(transformation(
			origin={-50,0},
			extent={{-10,-10},{10,10}},
			rotation=90)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(
			origin={-50,-30},
			extent={{-10,-10},{10,10}})));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit="µF")=1e-06) annotation(Placement(transformation(
			origin={-10,0},
			extent={{-10,-10},{10,10}},
			rotation=270)));
		equation
			connect(resistor3.n,pcu1.gnd) annotation(Line(points = {{80,-25},{85,-25},{85,-30},{40,-30},{35,-6.333335876464844}}), AutoRoute = false);
			connect(capacitor1.p,ground1.p) annotation(Line(points = {{-50,-10},{-50,-15},{-50,-20}}));
			connect(pcu1.GND,pcu1.gnd) annotation(Line(points = {{15,-4.333335876464844},{15,-15},{35,-15},{35,-6.333335876464844}}), AutoRoute = false);
			connect(resistor2.n,resistor3.n) annotation(Line(points = {{80,-10},{85,-10},{85,-25},{80,-25}}));
			connect(resistor1.n,resistor2.n) annotation(Line(points = {{80,5},{85,5},{85,-10},{80,-10}}));
			connect(resistor3.p,pcu1.VCC3) annotation(Line(points = {{60,-25},{55,-25},{50,-25},{50,-2},{35,-2.333335876464844}}), AutoRoute = false);
			connect(pcu1.VCC12,resistor1.p) annotation(Line(points = {{35,4},{40,4},{55,4},{55,5},{60,5}}));
			connect(pcu1.VCC5,resistor2.p) annotation(Line(points = {{35,1},{40,1},{55,1},{55,-10},{60,-10}}));
			connect(int_Xn.vcc,pcu1.VCC) annotation(Line(points = {{35,26},{35,21},{10,21},{10,1},{15,1}}));
			connect(int_Xn.gnd,pcu1.GND) annotation(Line(points = {{31,25.66666412353516},{31,21},{5,21},{5,-4},{15,-4.333335876464844}}), AutoRoute = false);
			connect(capacitor1.n,int_Xp.gnd) annotation(Line(points = {{-50,10},{-50,15},{-50,21},{-44,21},{-44,26}}, thickness = 0.0625));
			connect(capacitor2.p,int_Yp.vcc) annotation(Line(points = {{-10,10},{-10,15},{-10,21},{-15,21},{-15,26}}, thickness = 0.0625));
			connect(capacitor2.n,int_Yp.gnd) annotation(Line(points = {{-10,-10},{-10,-15},{-20,-15},{-20,21},{-19,21},{-19,26}}, thickness = 0.0625));
		annotation(experiment(
			StopTime=11000,
			StartTime=0,
			Tolerance=0.0001));
	end verbraucher_nopowerbalance;
	model basic_structure
		extends icons.basic;
		Modelica.SIunits.Position r[3];
		Modelica.SIunits.AngularVelocity w[3];
		Modelica.Mechanics.MultiBody.Parts.Body Struktur(
			animation=false,
			r_CM={0,0,-0.01},
			m=5,
			I_11=0.0018,
			I_22=0.0017,
			I_33=0.0016,
			useQuaternions=false) annotation(Placement(transformation(
			origin={2.11268,-0.469484},
			extent={{-10,-10},{10,10}})));
		Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zps annotation(Placement(
			transformation(
				origin={-40,60},
				extent={{-10,-10},{10,10}},
				rotation=-90),
			iconTransformation(
				origin={-40,60},
				extent={{-10,-10},{10,10}},
				rotation=-90)));
		Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yps annotation(Placement(
			transformation(
				origin={20,80},
				extent={{-10,-10},{10,10}},
				rotation=-90),
			iconTransformation(
				origin={20,80},
				extent={{-10,-10},{10,10}},
				rotation=-90)));
		Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xps annotation(Placement(
			transformation(
				origin={80,-20},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={80,-20},
				extent={{-10,-10},{10,10}})));
		Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zns annotation(Placement(
			transformation(
				origin={40,-60},
				extent={{-10,-10},{10,10}},
				rotation=-90),
			iconTransformation(
				origin={40,-60},
				extent={{-10,-10},{10,10}},
				rotation=-90)));
		Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yns annotation(Placement(
			transformation(
				origin={-20,-80},
				extent={{-10,-10},{10,10}},
				rotation=-90),
			iconTransformation(
				origin={-20,-80},
				extent={{-10,-10},{10,10}},
				rotation=90)));
		Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xns annotation(Placement(
			transformation(
				origin={-80,20},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={-80,20},
				extent={{-10,-10},{10,10}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZp(
			animation=false,
			r={0.0,0.0,0.205}) annotation(Placement(transformation(
			origin={-40,40},
			extent={{10,-10},{-10,10}},
			rotation=-90)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYp(
			animation=false,
			r={0.0,0.205,0.0}) annotation(Placement(transformation(
			origin={20,60},
			extent={{10,-10},{-10,10}},
			rotation=-90)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZn(
			animation=false,
			r={0.0,0.0,-0.205}) annotation(Placement(transformation(
			origin={40,-40},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYn(
			animation=false,
			r={0.0,-0.205,0.0}) annotation(Placement(transformation(
			origin={-20,-60},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXn(
			animation=false,
			r={-0.205,0.0,0.0}) annotation(Placement(transformation(
			origin={-60,0},
			extent={{10,-10},{-10,10}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXp(
			animation=false,
			r={0.205,0.0,0.0}) annotation(Placement(transformation(
			origin={60,0},
			extent={{-10,-10},{10,10}})));
		equation
			connect(rYp.frame_b,Yps) annotation(Line(points = {{20,70},{20,79.8673},{19.9115,79.8673},{19.9115,79.8673}}));
			connect(Zps,rZp.frame_b) annotation(Line(points = {{-40,60},{-40,50},{-40.4867,50},{-40.4867,50}}));
			connect(Yns,rYn.frame_b) annotation(Line(points = {{-20,-80},{-20,-68.36279999999999},{-19.9115,-68.36279999999999},{-19.9115,-68.36279999999999}}));
			connect(rZn.frame_b,Zns) annotation(Line(points = {{40,-50},{40,-59.7345},{40.4867,-59.7345},{40.4867,-59.7345}}));
			connect(rXp.frame_b,Xps) annotation(Line(points = {{70,0},{79.646,0},{79.646,-18.5841},{79.646,-18.5841}}));
			connect(Struktur.frame_a,rZn.frame_a) annotation(Line(points = {{-7.88732,-0.469484},{-13.2743,-0.469484},{-13.2743,-29.646},{40.0442,-29.646},{40.0442,-29.646}}));
			connect(Struktur.frame_a,rXp.frame_a) annotation(Line(points = {{-7.88732,-0.469484},{-13.2743,-0.469484},{-13.2743,31.1947},{49.7788,31.1947},{49.7788,0.663717},{49.7788,0.663717}}));
			connect(Struktur.frame_a,rYp.frame_a) annotation(Line(points = {{-7.88732,-0.469484},{-13.0531,-0.469484},{-13.0531,31.1947},{19.9115,31.1947},{19.9115,50},{19.9115,50}}));
			connect(Struktur.frame_a,rZp.frame_a) annotation(Line(points = {{-7.88732,-0.469484},{-40.2655,-0.469484},{-40.2655,29.646},{-40.2655,29.646}}));
			connect(Struktur.frame_a,rYn.frame_a) annotation(Line(points = {{-7.88732,-0.469484},{-20.354,-0.469484},{-20.354,-49.5575},{-20.354,-49.5575}}));
			connect(rXn.frame_a,Struktur.frame_a) annotation(Line(points = {{-50,0},{-7.74336,0},{-7.74336,-0.221239},{-7.74336,-0.221239}}));
			connect(Xns,rXn.frame_b) annotation(Line(points = {{-80,20},{-69.9115,20},{-69.9115,0.221239},{-69.9115,0.221239}}));
			Struktur.r_0 = r;
			Struktur.phi = w;
	end basic_structure;
	model basic_wheel3x
		extends basic annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
		satcomponents.AOCS.Parts.reactionwheel3axis reactionwheel3axis1(id=id) annotation(Placement(transformation(
			origin={-36.7,-23.3},
			extent={{13.1779,-13.1779},{-13.1779,13.1779}})));
		equation
			connect(Struktur.frame_a,reactionwheel3axis1.frame_a) annotation(Line(points={{-8,-0.3},{-13,-0.3},{-18.7,-0.3},{-18.7,-22.7},{-23.7,-22.7}}));
			connect(reactionwheel3axis1.acs_bus,Xn.sat_bus.acs_bus) annotation(Line(
				points={{-47.3,-22.7},{-52.3,-22.7},{-75,-22.7},{-75,0},{-80,0}},
				thickness=0.0625));
	end basic_wheel3x;
	model basic
		extends icons.basic;
		extends basic_structure annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
		outer Modelica.Mechanics.MultiBody.World world;
		parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
		parameter Integer id "TODO: automatisch id zuweisen (über \"outer\" parameter)";
		components.iboss_int Zp annotation(Placement(
			transformation(
				origin={-60,60},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={-60,60},
				extent={{-10,-10},{10,10}})));
		components.iboss_int Zn annotation(Placement(
			transformation(
				origin={60,-60},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={60,-60},
				extent={{-10,-10},{10,10}})));
		components.iboss_int Xn annotation(Placement(
			transformation(
				origin={-80,0},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={-80,0},
				extent={{-10,-10},{10,10}})));
		components.iboss_int Xp annotation(Placement(
			transformation(
				origin={80,0},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={80,0},
				extent={{-10,-10},{10,10}})));
		components.iboss_int Yp annotation(Placement(
			transformation(
				origin={0,80},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={0,80},
				extent={{-10,-10},{10,10}})));
		components.iboss_int Yn annotation(Placement(
			transformation(
				origin={0,-80},
				extent={{-10,-10},{10,10}}),
			iconTransformation(
				origin={0,-80},
				extent={{-10,-10},{10,10}})));
		satcomponents.AOCS.Parts.IMU imu(id=id) annotation(Placement(transformation(
			origin={-60,-20},
			extent={{-15,-15},{0,0}})));
		equation
			connect(imu.frame_a,rYn.frame_a) annotation(
				Line(points={{-75,-27.7},{-80,-27.7},{-80,-45},{-20,-45},{-20,-50}}),
				AutoRoute=false);
			connect(imu.acs_bus,Xn.sat_bus.acs_bus) annotation(
				Line(
					points={{-60,-27.7},{-55,-27.7},{-55,-5},{-75,-5},{-80,0}},
					thickness=0.0625),
				AutoRoute=false);
			connect(Xn,Zp) annotation(Line(points={{-80,0},{-75,0},{-65,0},{-65,60},{-60,60}}));
			connect(Zp,Yp) annotation(Line(points={{-60,60},{-55,60},{-5,60},{-5,80},{0,80}}));
			connect(Yp,Xp) annotation(Line(points={{0,80},{5,80},{75,80},{75,0},{80,0}}));
			connect(Xp,Zn) annotation(Line(points={{80,0},{75,0},{65,0},{65,-60},{60,-60}}));
			connect(Zn,Yn) annotation(Line(points={{60,-60},{55,-60},{5,-60},{5,-80},{0,-80}}));
	end basic;
	package icons
		model basic "basic"
			annotation(Icon(graphics={
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
																		textString="%id",
																		fillColor={0,0,255},
																		extent={{-49.505,66.761},{55.4455,27.4399}})}));
		end basic;
		annotation(
			Icon(coordinateSystem(
				extent={{-100,-100},{100,100}},
				preserveAspectRatio=true,
				initialScale=0.1,
				grid={2,2})),
			Diagram(coordinateSystem(
				extent={{-100,-100},{100,100}},
				preserveAspectRatio=true,
				initialScale=0.1,
				grid={2,2})));
	end icons;
	model basic_wheel1x
		extends basic annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
		satcomponents.AOCS.Parts.reactionwheelsimple_noelectricity reactionwheelsimple_noelectricity1(id=id) annotation(Placement(transformation(
			origin={-35,-30},
			extent={{-25,-20},{10,10}},
			rotation=-180)));
		equation
			connect(Struktur.frame_a,reactionwheelsimple_noelectricity1.frame_a) annotation(Line(
				points={{-8,-0.3},{-13,-0.3},{-30.7,-0.3},{-30.7,-5},{-30.7,-10}},
				color={95,95,95},
				thickness=0.0625));
			connect(reactionwheelsimple_noelectricity1.acs_bus,Xn.sat_bus.acs_bus) annotation(Line(
				points={{-45,-22},{-50,-22},{-75,-22},{-75,0},{-80,0}},
				thickness=0.0625));
		annotation(
			reactionwheelsimple_noelectricity1(bodyShape1(
				frame_a(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				frame_b(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				r_0(flags=2),
				v_0(flags=2),
				a_0(flags=2),
				frameTranslation(
					frame_a(
						r_0(flags=2),
						R(
							T(flags=2),
							w(flags=2)),
						f(flags=2),
						t(flags=2)),
					frame_b(
						r_0(flags=2),
						R(
							T(flags=2),
							w(flags=2)),
						f(flags=2),
						t(flags=2))),
				body(
					frame_a(
						r_0(flags=2),
						R(
							T(flags=2),
							w(flags=2)),
						f(flags=2),
						t(flags=2)),
					r_0(flags=2),
					v_0(flags=2),
					a_0(flags=2),
					w_a(flags=2),
					z_a(flags=2),
					g_0(flags=2)))),
			viewinfo[0](
				viewSettings(clrRaster=12632256),
				typename="ModelInfo"),
			experiment(
				StopTime=1,
				StartTime=0));
	end basic_wheel1x;
end buildingblocks;
