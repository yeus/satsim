// CP: 65001
// SimulationX Version: 3.6.1.26028
within satcomponents;
package satellites
	model generic_sat
		parameter Integer size_x=3;
		parameter Integer size_y=1;
		parameter Integer size_z=1;
		bb_catalogue.bb_verbraucher bb[size_x, size_y, size_z] annotation(Placement(
			visible=true,
			transformation(
				origin={16.9731, -61.6691},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		bb_catalogue.bb_solar bbs;
		connectionelement connelem_s;
		connectionelement connelem_x[size_x - 1, size_y, size_z];
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			width=1000,
			period=3000,
			rising=60,
			falling=60) annotation(Placement(
			visible=true,
			transformation(
				origin={-71.8473, 7.01273},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		equation
			connect(trapezoid1.y, bbs.u) annotation(Line(points = {{-58.6473, 7.01273}, {-17.8218, 7.01273}, {-17.8218, -0.0889732}, {26.557, -0.0889732}}));
			connect(bbs.Xp, connelem_s.int1);
			connect(bb[1, 1, 1].Xn, connelem_s.int2);
			//connect other buildingblocks
			for i in 1:size_x - 1, j in 1:size_y, k in 1:size_z loop
			  connect(bb[i, j, k].Xp, connelem_x[i, j, k].int1);
			  connect(bb[i + 1, j, k].Xn, connelem_x[i, j, k].int2);
			end for;
			for i in 1:size_x, j in 1:size_y - 1, k in 1:size_z loop
			  connect(bb[i, j, k].Xp, connelem_y[i, j, k].int1);
			  connect(bb[i, j + 1, k].Xn, connelem_y[i, j, k].int2);
			end for;
			for i in 1:size_x, j in 1:size_y, k in 1:size_z - 1 loop
			  connect(bb[i, j, k].Xp, connelem_z[i, j, k].int1);
			  connect(bb[i, j, k + 1].Xn, connelem_z[i, j, k].int2);
			end for;
			//*/
		annotation(experiment(
			StartTime=0.0,
			StopTime=20000.0,
			Tolerance=1e-06));
	end generic_sat;
	model EVS2x2x1
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={1, -17},
			extent={{-6, -5}, {12, 12}})));
		buildingblocks.verbraucher v1 annotation(Placement(transformation(
			origin={27, 33},
			extent={{-12, -12}, {8, 7}})));
		components.connectionelement connectionelement3 annotation(Placement(transformation(
			origin={2, 36},
			extent={{-12, -12}, {4, 4}})));
		buildingblocks.verbraucher v2(shortcircuitproblem=15000) annotation(Placement(transformation(
			origin={-23, 33},
			extent={{-12, -12}, {8, 7}})));
		buildingblocks.solar s1 annotation(Placement(transformation(
			origin={-23, -12},
			extent={{-7, 8}, {12, -12}},
			rotation=-90)));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={32, 13},
			extent={{-2, 3}, {12, -12}},
			rotation=-90)));
		buildingblocks.battery b1(
			SOC_start=0.5,
			capacity=20) annotation(Placement(transformation(
			origin={30, -15},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000,
			startTime=100) annotation(Placement(transformation(
			origin={-73.4187, -43.5587},
			extent={{-12, -12}, {12, 12}})));
		components.connectionelement connectionelement4 annotation(Placement(transformation(
			origin={-23, 14},
			extent={{-1, 3}, {12, -12}},
			rotation=-90)));
		equation
			connect(connectionelement4.int1, s1.Xn) annotation(Line(points = {{-28, 3}, {-28, -2}, {-27, -2}, {-27, 0}, {-25, 0}, {-25, -5}}));
			connect(b1.Xn, connectionelement1.int1) annotation(Line(points = {{20, -15}, {15, -15}, {15, -14}, {17, -14}, {17, -13}, {12, -13}}));
			connect(connectionelement2.int1, b1.Yp) annotation(Line(points = {{27, 2}, {27, -3}, {28, -3}, {28, 0}, {30, 0}, {30, -5}}));
			connect(v1.Yn, connectionelement2.int2) annotation(Line(points = {{25, 22}, {25, 17}, {26, 17}, {26, 19}, {27, 19}, {27, 14}}));
			connect(connectionelement3.int1, v1.Xn) annotation(Line(points = {{5, 32}, {10, 32}, {10, 30}, {15, 30}}));
			connect(v2.Xp, connectionelement3.int2) annotation(Line(points = {{-15, 31}, {-10, 31}, {-10, 31}, {-14, 31}, {-14, 32}, {-9, 32}}));
			connect(connectionelement4.int2, v2.Yn) annotation(Line(points = {{-28, 14}, {-28, 19}, {-26, 19}, {-26, 17}, {-25, 17}, {-25, 22}}));
			connect(trapezoid1.y, s1.u) annotation(Line(points = {{-60, -44}, {-55, -44}, {-25, -44}, {-25, -41}, {-25, -36}}));
			connect(s1.Yn, connectionelement1.int2) annotation(Line(points = {{-16, -14}, {-11, -14}, {-9, -14}, {-9, -13}, {-4, -13}}, color = {0, 0, 0}));
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
			origin={-51.1429, -3.42857},
			extent={{-12, -12}, {12, 12}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={6.28571, -3.71429},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.verbraucher bb_verbraucher1 annotation(Placement(transformation(
			origin={-22.8571, -2.85714},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.verbraucher bb_verbraucher2 annotation(Placement(transformation(
			origin={34.5714, -2.57143},
			extent={{-12, -12}, {12, 12}})));
		components.connectionelement connectionelement3 annotation(Placement(transformation(
			origin={62, -2.85714},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.verbraucher bb_verbraucher3 annotation(Placement(transformation(
			origin={91.7308, -2},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.solar bb_solar1(panelarea=100) annotation(Placement(transformation(
			origin={-83, -2},
			extent={{-12, 12}, {12, -12}},
			rotation=-90)));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000) annotation(Placement(transformation(
			origin={-82.6673, -70.14830000000001},
			extent={{-12, -12}, {12, 12}})));
		equation
			connect(trapezoid1.y, bb_solar1.u) annotation(Line(points = {{-69, -70}, {-64, -70}, {-64, -52}, {-83, -52}, {-83, -34}, {-83, -29}}));
			connect(bb_solar1.Yn, connectionelement1.int2) annotation(Line(points = {{-72, -2}, {-67, -2}, {-67, -2}, {-67, -3}, {-62, -3}}));
			connect(bb_verbraucher3.Xn, connectionelement3.int1) annotation(Line(points = {{79.5475, -2.05594}, {73.4286, -2.05594}, {73.4286, -2.314}, {72.62520000000001, -2.314}}));
			connect(connectionelement3.int2, bb_verbraucher2.Xp) annotation(Line(points = {{51.4509, -2.37375}, {46.5714, -2.37375}, {46.5714, -2.5664}, {46.3341, -2.5664}}));
			connect(bb_verbraucher2.Xn, connectionelement2.int1) annotation(Line(points = {{22.5616, -2.59269}, {16.2857, -2.59269}, {16.2857, -3.17115}, {16.9109, -3.17115}}));
			connect(bb_verbraucher1.Xn, connectionelement1.int1) annotation(Line(points = {{-34.867, -2.8784}, {-40.2857, -2.8784}, {-40.2857, -2.88543}, {-40.5177, -2.88543}}));
			connect(connectionelement2.int2, bb_verbraucher1.Xp) annotation(Line(points = {{-4.26343, -3.23089}, {-11.1429, -3.23089}, {-11.1429, -2.85211}, {-11.0945, -2.85211}}));
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
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS4x1x1;
	model EVS2x2x3
		buildingblocks.verbraucher bb9(shortcircuitproblem=1e+91) annotation(Placement(transformation(
			origin={10, 25},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb8 annotation(Placement(transformation(
			origin={35.0094, 25.4955},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb6 annotation(Placement(transformation(
			origin={9.9688, 52.1413},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn19 annotation(Placement(transformation(
			origin={22.8756, 25.3731},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn18 annotation(Placement(transformation(
			origin={22.8756, 51.6978},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb2 annotation(Placement(transformation(
			origin={-40.594, 28.5453},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb4 annotation(Placement(transformation(
			origin={-65.31359999999999, 53.1044},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb5 annotation(Placement(transformation(
			origin={-41.0755, 52.1413},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn16 annotation(Placement(transformation(
			origin={-52.8884, 52.1794},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn17 annotation(Placement(transformation(
			origin={-53.0489, 28.1019},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn9 annotation(Placement(transformation(
			origin={-16.451, 61.4894},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn8 annotation(Placement(transformation(
			origin={-16.13, 48.648},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn7 annotation(Placement(transformation(
			origin={-16.13, 35.3251},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn6 annotation(Placement(transformation(
			origin={-15.9695, 22.1627},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb11 annotation(Placement(transformation(
			origin={10.7714, -10.7813},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb12 annotation(Placement(transformation(
			origin={10.4503, -34.3773},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn20 annotation(Placement(transformation(
			origin={23.3571, -10.9037},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn1 annotation(Placement(transformation(
			origin={23.6782, -34.6602},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb7 annotation(Placement(transformation(
			origin={35, 52},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb10 annotation(Placement(transformation(
			origin={35.491, -10.2998},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		buildingblocks.verbraucher bb1 annotation(Placement(transformation(
			origin={35.9725, -34.5378},
			extent={{-5.08917, -5.08917}, {5.08917, 5.08917}})));
		components.connectionelement conn12 annotation(Placement(transformation(
			origin={10, -23},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn13 annotation(Placement(transformation(
			origin={35.5564, -22.6214},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn15 annotation(Placement(transformation(
			origin={9.552670000000001, 39.9801},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn11 annotation(Placement(transformation(
			origin={-41.0101, 40.7827},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn10 annotation(Placement(transformation(
			origin={-65.5692, 40.6222},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn4 annotation(Placement(transformation(
			origin={19.8257, 6.75313},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn3 annotation(Placement(transformation(
			origin={32.8276, 6.75313},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn14 annotation(Placement(transformation(
			origin={35.3959, 39.1775},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn5 annotation(Placement(transformation(
			origin={6.66337, 6.59262},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement conn2 annotation(Placement(transformation(
			origin={45.0269, 7.07417},
			extent={{-5.08917, 5.08917}, {5.08917, -5.08917}},
			rotation=-90)));
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={-11.0535, -10.7081},
			extent={{-6.77369, -6.77369}, {6.77369, 6.77369}})));
		buildingblocks.battery battery1(SOC_start=0.9399999999999999) annotation(Placement(transformation(
			origin={-70, 25},
			extent={{-5.49199, -5.49199}, {5.49199, 5.49199}})));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000,
			startTime=500) annotation(Placement(transformation(
			origin={-66, 11},
			extent={{-4.20593, -4.20593}, {4.20593, 4.20593}})));
		buildingblocks.solar bb_solar1(panelarea=100) annotation(Placement(transformation(
			origin={-40, -10},
			extent={{5.08917, 5.08917}, {-5.08917, -5.08917}})));
		Modelica.SIunits.Power connectionloss;
		equation
			connectionloss = connectionelement1.LossPower + conn1.LossPower + conn2.LossPower + conn3.LossPower + conn4.LossPower + conn5.LossPower + conn6.LossPower + conn7.LossPower + conn8.LossPower + conn9.LossPower + conn10.LossPower + conn11.LossPower + conn12.LossPower + conn13.LossPower + conn14.LossPower + conn15.LossPower + conn16.LossPower + conn17.LossPower + conn18.LossPower + conn19.LossPower;
			connect(connectionelement1.int1, bb11.Xn) annotation(Line(points = {{-5, -10}, {0, -10}, {1, -10}, {1, -11}, {6, -11}}));
			connect(bb_solar1.Xn, connectionelement1.int2) annotation(Line(points = {{-35, -10}, {-30, -10}, {-22, -10}, {-22, -10}, {-17, -10}}));
			connect(conn2.int1, bb1.Zn) annotation(Line(points = {{45, 3}, {45, -2}, {46, -2}, {46, -37}, {41, -37}}));
			connect(conn3.int1, bb10.Zn) annotation(Line(points = {{33, 2}, {33, -3}, {46, -3}, {46, -13}, {41, -13}}));
			connect(conn4.int1, bb12.Zn) annotation(Line(points = {{20, 2}, {20, -3}, {21, -3}, {21, -37}, {16, -37}}));
			connect(conn5.int1, bb11.Zn) annotation(Line(points = {{6, 2}, {6, -3}, {21, -3}, {21, -13}, {16, -13}}));
			connect(conn2.int2, bb8.Zn) annotation(Line(points = {{45, 12}, {45, 17}, {45, 17}, {45, 23}, {40, 23}}));
			connect(conn4.int2, bb9.Zn) annotation(Line(points = {{20, 11}, {20, 16}, {20, 16}, {20, 22}, {15, 22}}));
			connect(conn5.int2, bb6.Zn) annotation(Line(points = {{6, 11}, {6, 16}, {20, 16}, {20, 50}, {15, 50}}));
			connect(conn7.int1, bb8.Zp) annotation(Line(points = {{-12, 36}, {-7, 36}, {25, 36}, {25, 28}, {30, 28}}));
			connect(conn6.int1, bb9.Zp) annotation(Line(points = {{-11, 22}, {-6, 22}, {0, 22}, {0, 28}, {5, 28}}));
			connect(conn8.int1, bb6.Zp) annotation(Line(points = {{-12, 49}, {-7, 49}, {0, 49}, {0, 55}, {5, 55}}));
			connect(bb4.Zn, conn8.int2) annotation(Line(points = {{-60, 51}, {-55, 51}, {-26, 51}, {-26, 49}, {-21, 49}}));
			connect(bb2.Zn, conn7.int2) annotation(Line(points = {{-36, 26}, {-31, 26}, {-26, 26}, {-26, 36}, {-21, 36}}));
			connect(bb5.Zn, conn9.int2) annotation(Line(points = {{-36, 50}, {-31, 50}, {-26, 50}, {-26, 62}, {-21, 62}}));
			connect(bb12.Yp, conn12.int1) annotation(Line(points = {{10, -29}, {10, -24}, {10, -24}, {10, -33}, {10, -33}, {10, -28}}));
			connect(conn1.int2, bb12.Xp) annotation(Line(points = {{19, -34}, {14, -34}, {21, -34}, {16, -34}}));
			connect(bb1.Xn, conn1.int1) annotation(Line(points = {{31, -35}, {26, -35}, {33, -35}, {33, -34}, {28, -34}}));
			connect(conn13.int1, bb1.Yp) annotation(Line(points = {{35, -27}, {35, -32}, {36, -32}, {36, -24}, {36, -24}, {36, -29}}));
			connect(bb10.Yn, conn13.int2) annotation(Line(points = {{35, -15}, {35, -20}, {35, -13}, {35, -18}}));
			connect(conn20.int1, bb10.Xn) annotation(Line(points = {{28, -11}, {33, -11}, {25, -11}, {25, -10}, {30, -10}}));
			connect(bb11.Xp, conn20.int2) annotation(Line(points = {{16, -11}, {21, -11}, {14, -11}, {19, -11}}));
			connect(bb11.Yn, conn12.int2) annotation(Line(points = {{11, -15}, {11, -20}, {10, -20}, {10, -14}, {10, -14}, {10, -19}}));
			connect(bb9.Yp, conn15.int1) annotation(Line(points = {{10, 30}, {10, 35}, {10, 35}, {10, 30}, {9, 30}, {9, 35}}));
			connect(conn19.int2, bb9.Xp) annotation(Line(points = {{18, 26}, {13, 26}, {13, 25}, {20, 25}, {20, 25}, {15, 25}}));
			connect(bb8.Xn, conn19.int1) annotation(Line(points = {{30, 25}, {25, 25}, {32, 25}, {32, 26}, {27, 26}}));
			connect(conn14.int1, bb8.Yp) annotation(Line(points = {{35, 35}, {35, 30}, {35, 36}, {35, 31}}));
			connect(bb6.Xp, conn18.int2) annotation(Line(points = {{15, 52}, {20, 52}, {13, 52}, {18, 52}}));
			connect(bb6.Yn, conn15.int2) annotation(Line(points = {{10, 48}, {10, 43}, {10, 43}, {10, 49}, {9, 49}, {9, 44}}));
			connect(bb4.Xp, conn16.int2) annotation(Line(points = {{-60, 53}, {-55, 53}, {-55, 53}, {-62, 53}, {-62, 52}, {-57, 52}}));
			connect(conn10.int2, bb4.Yn) annotation(Line(points = {{-66, 45}, {-66, 50}, {-66, 43}, {-65, 43}, {-65, 48}}));
			connect(bb2.Xn, conn17.int1) annotation(Line(points = {{-46, 29}, {-51, 29}, {-44, 29}, {-44, 28}, {-49, 28}}));
			connect(conn11.int1, bb2.Yp) annotation(Line(points = {{-41, 36}, {-41, 31}, {-41, 31}, {-41, 39}, {-41, 39}, {-41, 34}}));
			connect(bb5.Yn, conn11.int2) annotation(Line(points = {{-41, 48}, {-41, 43}, {-41, 50}, {-41, 50}, {-41, 45}}));
			connect(conn16.int1, bb5.Xn) annotation(Line(points = {{-48, 52}, {-43, 52}, {-51, 52}, {-51, 52}, {-46, 52}}));
			connect(trapezoid1.y, bb_solar1.u) annotation(Line(points = {{-61, 11}, {-56, 11}, {-56, -10}, {-51, -10}}, color = {0, 0, 127}, thickness = 0.0625));
			connect(battery1.Yp, conn10.int1) annotation(Line(points = {{-70, 30}, {-70, 35}, {-68, 35}, {-68, 31}, {-66, 31}, {-66, 36}}, color = {0, 0, 0}));
			connect(battery1.Xp, conn17.int2) annotation(Line(points = {{-65, 25}, {-60, 25}, {-60, 27}, {-63, 27}, {-63, 28}, {-58, 28}}, color = {0, 0, 0}));
			connect(conn6.int2, battery1.Zn) annotation(Line(points = {{-20, 22}, {-25, 22}, {-60, 22}, {-65, 22}}, color = {0, 0, 0}));
			connect(conn18.int1, bb7.Xn) annotation(Line(points = {{27, 52}, {32, 52}, {25, 52}, {30, 52}}, color = {0, 0, 0}));
			connect(bb7.Yn, conn14.int2) annotation(Line(points = {{35, 47}, {35, 42}, {35, 49}, {35, 49}, {35, 44}}, color = {0, 0, 0}));
			connect(conn3.int2, bb7.Zn) annotation(Line(points = {{33, 11}, {35, 16}, {45, 15}, {45, 49}, {40, 49}}, color = {0, 0, 0}));
			connect(conn9.int1, bb7.Zp) annotation(Line(points = {{-12, 62}, {-7, 62}, {25, 62}, {25, 55}, {30, 55}}, color = {0, 0, 0}));
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
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS2x2x3;
	model EVS4x1x1batteries
		components.connectionelement connectionelement1 annotation(Placement(transformation(
			origin={-51.1429, -3.42857},
			extent={{-12, -12}, {12, 12}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={6.28571, -3.71429},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.verbraucher bb_verbraucher1 annotation(Placement(transformation(
			origin={-22.8571, -2.85714},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.verbraucher bb_verbraucher2(P_payload=150) annotation(Placement(transformation(
			origin={34.5714, -2.57143},
			extent={{-12, -12}, {12, 12}})));
		components.connectionelement connectionelement3 annotation(Placement(transformation(
			origin={62, -2.85714},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.verbraucher bb_verbraucher3 annotation(Placement(transformation(
			origin={91.7308, -2},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.solar bb_solar1 annotation(Placement(transformation(
			origin={-83.1891, -3.43188},
			extent={{-12, 12}, {12, -12}},
			rotation=-90)));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000,
			startTime=100) annotation(Placement(transformation(
			origin={-128, -82},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.battery battery1 annotation(Placement(transformation(extent={{-35, -80}, {-10, -55}})));
		components.connectionelement connectionelement4 annotation(Placement(transformation(
			origin={-25, -35},
			extent={{-10, -10}, {10, 10}},
			rotation=-90)));
		buildingblocks.battery battery2(SOC_start=0.5) annotation(Placement(transformation(extent={{25, -80}, {50, -55}})));
		components.connectionelement connectionelement5 annotation(Placement(transformation(
			origin={35, -35},
			extent={{-10, -10}, {10, 10}},
			rotation=-90)));
		buildingblocks.solar bb_solar2 annotation(Placement(transformation(
			origin={-128, -2},
			extent={{-12, 12}, {12, -12}},
			rotation=-90)));
		buildingblocks.battery battery3(SOC_start=0.7) annotation(Placement(transformation(extent={{85, -80}, {110, -55}})));
		components.connectionelement connectionelement6 annotation(Placement(transformation(
			origin={90, -35},
			extent={{-10, -10}, {10, 10}},
			rotation=-90)));
		components.connectionelement connectionelement7 annotation(Placement(transformation(extent={{0, -80}, {20, -60}})));
		components.connectionelement connectionelement8 annotation(Placement(transformation(extent={{60, -75}, {80, -55}})));
		equation
			connect(trapezoid1.y, bb_solar1.u) annotation(Line(points = {{-115, -82}, {-110, -82}, {-78, -82}, {-78, -30}, {-83, -30}}));
			connect(bb_solar1.Yn, connectionelement1.int2) annotation(Line(points = {{-72, -3}, {-67, -3}, {-67, -3}, {-67, -3}, {-62, -3}}));
			connect(bb_verbraucher3.Xn, connectionelement3.int1) annotation(Line(points = {{80, -2}, {75, -2}, {78, -2}, {78, -2}, {73, -2}}));
			connect(connectionelement3.int2, bb_verbraucher2.Xp) annotation(Line(points = {{51, -2}, {46, -2}, {52, -2}, {52, -3}, {47, -3}}));
			connect(bb_verbraucher2.Xn, connectionelement2.int1) annotation(Line(points = {{23, -3}, {18, -3}, {18, -3}, {22, -3}, {22, -3}, {17, -3}}));
			connect(bb_verbraucher1.Xn, connectionelement1.int1) annotation(Line(points = {{-35, -3}, {-40, -3}, {-36, -3}, {-41, -3}}));
			connect(connectionelement2.int2, bb_verbraucher1.Xp) annotation(Line(points = {{-4, -3}, {-9, -3}, {-9, -3}, {-6, -3}, {-6, -3}, {-11, -3}}));
			connect(bb_verbraucher1.Yn, connectionelement4.int2) annotation(Line(points = {{-23, -14}, {-23, -19}, {-23, -21}, {-25, -21}, {-25, -26}}, color = {0, 0, 0}));
			connect(connectionelement4.int1, battery1.Yp) annotation(Line(points = {{-25, -44}, {-25, -49}, {-25, -50}, {-22, -50}, {-22, -55}}, color = {0, 0, 0}));
			connect(connectionelement5.int1, battery2.Yp) annotation(Line(points = {{35, -44}, {35, -49}, {35, -50}, {38, -50}, {38, -55}}, color = {0, 0, 0}));
			connect(bb_verbraucher2.Yn, connectionelement5.int2) annotation(Line(points = {{35, -13}, {35, -18}, {35, -21}, {35, -21}, {35, -26}}, color = {0, 0, 0}));
			connect(bb_solar2.Yn, bb_solar1.Yp) annotation(Line(points = {{-117, -2}, {-112, -2}, {-100, -2}, {-100, -3}, {-95, -3}}, color = {0, 0, 0}));
			connect(bb_solar2.u, trapezoid1.y) annotation(Line(points = {{-128, -29}, {-128, -34}, {-110, -34}, {-110, -82}, {-115, -82}}, color = {0, 0, 127}, thickness = 0.0625));
			connect(connectionelement6.int1, battery3.Yp) annotation(Line(points = {{90, -44}, {90, -49}, {90, -50}, {98, -50}, {98, -55}}, color = {0, 0, 0}));
			connect(bb_verbraucher3.Yn, connectionelement6.int2) annotation(Line(points = {{92, -13}, {92, -18}, {92, -21}, {90, -21}, {90, -26}}, color = {0, 0, 0}));
			connect(battery1.Xp, connectionelement7.int2) annotation(Line(points = {{-10, -67}, {-5, -67}, {-4, -67}, {-4, -70}, {1, -70}}, color = {0, 0, 0}));
			connect(battery2.Xn, connectionelement7.int1) annotation(Line(points = {{25, -68}, {20, -68}, {20, -69}, {24, -69}, {24, -70}, {19, -70}}, color = {0, 0, 0}));
			connect(battery2.Xp, connectionelement8.int2) annotation(Line(points = {{50, -67}, {55, -67}, {56, -67}, {56, -65}, {61, -65}}, color = {0, 0, 0}));
			connect(connectionelement8.int1, battery3.Xn) annotation(Line(points = {{79, -65}, {84, -65}, {84, -66}, {80, -66}, {80, -68}, {85, -68}}, color = {0, 0, 0}));
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
			origin={-51.1429, -3.42857},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.solar bb_solar1(panelarea=100) annotation(Placement(transformation(
			origin={-83, -2},
			extent={{-12, 12}, {12, -12}},
			rotation=-90)));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000) annotation(Placement(transformation(
			origin={-82.6673, -70.14830000000001},
			extent={{-12, -12}, {12, 12}})));
		buildingblocks.battery battery1 annotation(Placement(transformation(extent={{-15, -10}, {5, 10}})));
		buildingblocks.verbraucher verbraucher1 annotation(Placement(transformation(extent={{-15, -65}, {5, -45}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={-5, -30},
			extent={{-10, -10}, {10, 10}},
			rotation=90)));
		equation
			connect(trapezoid1.y, bb_solar1.u) annotation(Line(points = {{-69, -70}, {-64, -70}, {-64, -52}, {-83, -52}, {-83, -34}, {-83, -29}}));
			connect(bb_solar1.Yn, connectionelement1.int2) annotation(Line(points = {{-72, -2}, {-67, -2}, {-67, -2}, {-67, -3}, {-62, -3}}));
			connect(connectionelement1.int1, battery1.Xn) annotation(Line(points = {{-41, -3}, {-36, -3}, {-20, -3}, {-20, 0}, {-15, 0}}, color = {0, 0, 0}));
			connect(battery1.Yn, connectionelement2.int1) annotation(Line(points = {{-5, -9}, {-5, -14}, {-5, -16}, {-5, -16}, {-5, -21}}, color = {0, 0, 0}));
			connect(connectionelement2.int2, verbraucher1.Yp) annotation(Line(points = {{-5, -39}, {-5, -44}, {-5, -40}, {-5, -40}, {-5, -45}}, color = {0, 0, 0}));
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
			experiment(
				StopTime=10000,
				StartTime=0));
	end EVS4x1x1battery;
	model EVS1x1x1battery
		buildingblocks.battery battery1(
			SOC_start=0.4,
			capacity=2.0) annotation(Placement(transformation(
			origin={-45, -10},
			extent={{-10, -10}, {10, 10}})));
		buildingblocks.verbraucher verbraucher1 annotation(Placement(transformation(extent={{5, -20}, {25, 0}})));
		components.connectionelement connectionelement1 annotation(Placement(transformation(extent={{-25, -20}, {-5, 0}})));
		iboss.buildingblocks.verbraucher verbraucher2 annotation(Placement(transformation(extent={{5, -70}, {25, -50}})));
		components.connectionelement connectionelement2 annotation(Placement(transformation(
			origin={15, -35},
			extent={{-10, -10}, {10, 10}},
			rotation=-90)));
		equation
			connect(battery1.Xp, connectionelement1.int2) annotation(Line(points = {{-35, -10}, {-30, -10}, {-29, -10}, {-29, -10}, {-24, -10}}, color = {0, 0, 0}));
			connect(connectionelement1.int1, verbraucher1.Xn) annotation(Line(points = {{-6, -10}, {-1, -10}, {0, -10}, {0, -10}, {5, -10}}, color = {0, 0, 0}));
			connect(verbraucher1.Yn, connectionelement2.int2) annotation(Line(points = {{15, -19}, {15, -24}, {15, -21}, {15, -21}, {15, -26}}, color = {0, 0, 0}));
			connect(connectionelement2.int1, verbraucher2.Yp) annotation(Line(points = {{15, -44}, {15, -49}, {15, -45}, {15, -45}, {15, -50}}, color = {0, 0, 0}));
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
		buildingblocks.solar solar1 annotation(Placement(transformation(extent={{-25, -25}, {-5, -5}})));
		Modelica.Blocks.Sources.Trapezoid trapezoid1(
			amplitude=1367,
			rising=60,
			width=1000,
			falling=60,
			period=3000) annotation(Placement(transformation(
			origin={47, -12},
			extent={{12, -12}, {-12, 12}})));
		equation
			connect(trapezoid1.y, solar1.u) annotation(Line(points = {{34, -12}, {29, -12}, {12, -12}, {12, -15}, {7, -15}}, color = {0, 0, 127}, thickness = 0.0625));
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
	model structure1x1x1
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(
			visible=true,
			transformation(
				origin={-60, 60},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(
			w_rel_a_start={0.3, 0.3, 0.1},
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0})) annotation(Placement(
			visible=true,
			transformation(
				origin={-25.2708, 59.6844},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		iboss.buildingblocks.basic_wheel3x basic_wheel3x1 annotation(Placement(
			visible=true,
			transformation(
				origin={3.30379, 13.7915},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(freemotion1.frame_b, basic_wheel3x1.Yp) annotation(Line(points = {{-15.2708, 59.6844}, {3.42466, 59.6844}, {3.42466, 21.9178}, {3.42466, 21.9178}}));
			connect(world.frame_b, freemotion1.frame_a) annotation(Line(points = {{-50, 60}, {-35.2941, 60}, {-35.2708, 60.5452}, {-35.2708, 59.6844}}));
		annotation(
			Icon(coordinateSystem(
				extent={{-100, -100}, {100, 100}},
				preserveAspectRatio=true,
				initialScale=0.1,
				grid={2, 2})),
			Diagram(coordinateSystem(
				extent={{-100, -100}, {100, 100}},
				preserveAspectRatio=true,
				initialScale=0.1,
				grid={2, 2})));
	end structure1x1x1;
	model passivestructure3x2x1
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(
			origin={-60, 60},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0}),
			w_rel_a_start={0.1, 0.5, 0.0}) annotation(Placement(transformation(
			origin={-25.2708, 59.6844},
			extent={{-10, -10}, {10, 10}})));
		iboss.buildingblocks.basic_structure bs2 annotation(Placement(transformation(
			origin={0, 0},
			extent={{-10, -10}, {10, 10}})));
		iboss.buildingblocks.basic_structure bs1 annotation(Placement(transformation(
			origin={-40, 0},
			extent={{-10, -10}, {10, 10}})));
		iboss.buildingblocks.basic_structure bs3 annotation(Placement(transformation(
			origin={40, 0},
			extent={{-10, -10}, {10, 10}})));
		equation
			connect(world.frame_b, r.frame_a) annotation(Line(points = {{-50, 60}, {-35.2941, 60}, {-35.2708, 60.5452}, {-35.2708, 59.6844}}));
			connect(r.frame_b, bs2.Yps) annotation(Line(points = {{-15.3, 59.7}, {-10.3, 59.7}, {2, 59.7}, {2, 13}, {2, 8}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(bs2.Xns, bs1.Xps) annotation(Line(points = {{-8, 2}, {-13, 2}, {-27, 2}, {-27, -2}, {-32, -2}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(bs2.Xps, bs3.Xns) annotation(Line(points = {{8, -2}, {13, -2}, {27, -2}, {27, 2}, {32, 2}}, color = {95, 95, 95}, thickness = 0.0625));
		annotation(experiment(
			StopTime=100,
			StartTime=0));
	end passivestructure3x2x1;
	model generic_sat_aocs
		parameter Integer size_x=3;
		parameter Integer size_y=1;
		parameter Integer size_z=1;
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity);
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0}),
			w_rel_a_start={0.1, 0.5, 0.0});
		iboss.buildingblocks.basic_structure bs[size_x] annotation(Placement(transformation(extent={{-10, -10}, {10, 10}})));
		equation
			connect(bs[1].Yps, r.frame_b);
			connect(world.frame_b, r.frame_a);
			//connect other buildingblocks
			for i in 1:size_x - 1 loop
			  connect(bs[i].Xps, bs[i + 1].Xns);
			end for;
			/*for i in 1:size_x - 1, j in 1:size_y, k in 1:size_z loop
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
			StopTime=100,
			StartTime=0,
			Tolerance=1e-06));
	end generic_sat_aocs;
	model ass3x1x1
		satcomponents.AOCS.ctrl.ACS_bus aCS_bus1 annotation(Placement(transformation(extent={{25, 25}, {45, 45}})));
		inner Modelica.Mechanics.MultiBody.World world(
			enableAnimation=animation,
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(
			origin={-20, 80},
			extent={{-10, -10}, {10, 10}})));
		parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			animation=false,
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0}),
			w_rel_a_fixed=true,
			w_rel_a_start={0.0, 0.0, 0.2},
			enforceStates=true) annotation(Placement(transformation(
			origin={20, 80},
			extent={{-10, -10}, {10, 10}})));
		buildingblocks.basic_wheel1x basic_wheel1x1(id=4) annotation(Placement(transformation(
			origin={117.5, 47.5},
			extent={{-17.5, -17.5}, {17.5, 17.5}})));
		buildingblocks.basic basic1(id=1) annotation(Placement(transformation(extent={{140, 30}, {175, 65}})));
		buildingblocks.basic basic4(id=2) annotation(Placement(transformation(extent={{60, 30}, {95, 65}})));
		Modelica.Blocks.Sources.Constant const(k=0) annotation(Placement(transformation(
			origin={-105, 35},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Blocks.Math.Gain gain1(k=10.0) annotation(Placement(transformation(extent={{-40, 25}, {-20, 45}})));
		Modelica.Blocks.Math.Add error(k2=-1) annotation(Placement(transformation(extent={{-75, 20}, {-55, 40}})));
		equation
			connect(world.frame_b, r.frame_a) annotation(Line(points = {{-10, 80}, {-5, 80}, {5, 80}, {10, 80}}, color = {95, 95, 95}, thickness = 0.015625));
			connect(r.frame_b, basic_wheel1x1.Yps) annotation(Line(points = {{30, 80}, {35, 80}, {121, 80}, {121, 66.7}, {121, 61.7}}, color = {95, 95, 95}, thickness = 0.015625));
			connect(basic4.Xps, basic_wheel1x1.Xns) annotation(Line(points = {{91.3, 44}, {96.3, 44}, {98.7, 44}, {98.7, 51}, {103.7, 51}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic_wheel1x1.Xps, basic1.Xns) annotation(Line(points = {{131.3, 44}, {136.3, 44}, {138.7, 44}, {138.7, 51}, {143.7, 51}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic4.Xp, basic_wheel1x1.Xn) annotation(Line(points = {{91.3, 47.3}, {96.3, 47.3}, {98.7, 47.3}, {103.7, 47.3}}));
			connect(basic_wheel1x1.Xp, basic1.Xn) annotation(Line(points = {{131.3, 47.3}, {136.3, 47.3}, {138.7, 47.3}, {143.7, 47.3}}));
			connect(basic4.Xn.sat_bus.acs_bus, aCS_bus1) annotation(Line(points = {{63.7, 47.3}, {58.7, 47.3}, {40, 47.3}, {40, 35}, {35, 35}}));
			connect(const.y, error.u1) annotation(Line(points = {{-94, 35}, {-89, 35}, {-82, 35}, {-82, 36}, {-77, 36}}, color = {0, 0, 127}, thickness = 0.0625));
			connect(error.y, gain1.u) annotation(Line(points = {{-54, 30}, {-49, 30}, {-47, 30}, {-47, 35}, {-42, 35}}, color = {0, 0, 127}, thickness = 0.0625));
			connect(error.u2, aCS_bus1.w[2, 3]) annotation(Line(points = {{-77, 24}, {-82, 24}, {-82, 0}, {30, 0}, {35, 35}}, color = {0, 0, 127}, thickness = 0.0625), AutoRoute = false);
			connect(gain1.y, aCS_bus1.w_a[4, 3]) annotation(Line(points = {{-19, 35}, {-14, 35}, {30, 35}, {35, 35}}, color = {0, 0, 127}, thickness = 0.0625));
		annotation(
			aCS_bus1(
				w(flags=2),
				w_a(flags=2),
				u(flags=2),
				y(flags=2)),
			basic_wheel1x1(
				r(flags=2),
				w(flags=2),
				Struktur(
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
					g_0(flags=2)),
				Zps(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				Yps(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				Xps(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				Zns(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				Yns(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				Xns(
					r_0(flags=2),
					R(
						T(flags=2),
						w(flags=2)),
					f(flags=2),
					t(flags=2)),
				rZp(
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
				rYp(
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
				rZn(
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
				rYn(
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
				rXn(
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
				rXp(
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
				Zp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				Zn(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				Xn(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				Xp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				Yp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				Yn(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				imu(
					acs_bus(
						w(flags=2),
						w_a(flags=2),
						u(flags=2),
						y(flags=2)),
					absoluteangularvelocity1(frame_a(
						r_0(flags=2),
						R(
							T(flags=2),
							w(flags=2)),
						f(flags=2),
						t(flags=2))),
					frame_a(
						r_0(flags=2),
						R(
							T(flags=2),
							w(flags=2)),
						f(flags=2),
						t(flags=2)),
					noise_ung(y(flags=2))),
				reactionwheelsimple_noelectricity1(
					acs_bus(
						w(flags=2),
						w_a(flags=2),
						u(flags=2),
						y(flags=2)),
					frame_a(
						r_0(flags=2),
						R(
							T(flags=2),
							w(flags=2)),
						f(flags=2),
						t(flags=2)),
					revolute1(
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
						phi(flags=2),
						w(flags=2),
						a(flags=2),
						tau(flags=2),
						angle(flags=2)),
					bodyShape1(
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
							g_0(flags=2))),
					torque1(
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
						basicTorque(
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
							frame_resolve(
								r_0(flags=2),
								R(
									T(flags=2),
									w(flags=2)),
								f(flags=2),
								t(flags=2)),
							r_0(flags=2),
							t_b_0(flags=2))))),
			basic1(
				Struktur(
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
					g_0(flags=2)),
				Zp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				imu(noise_ung(y(flags=2)))),
			basic4(
				Struktur(
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
					g_0(flags=2)),
				Zp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				Xp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2),
					u(flags=2),
					y(flags=2)))),
				imu(noise_ung(y(flags=2)))),
			gain1(y(flags=2)),
			error(y(flags=2)),
			experiment(
				StopTime=100,
				StartTime=0));
	end ass3x1x1;
	model ass3x2x1
		inner Modelica.Mechanics.MultiBody.World world(
			enableAnimation=animation,
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(
			origin={-20,80},
			extent={{-10,-10},{10,10}})));
		parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			animation=false,
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0}),
			w_rel_a_fixed=true,
			w_rel_a_start={0.05, 0.1, 0.1},
			enforceStates=true) annotation(Placement(transformation(
			origin={20,80},
			extent={{-10,-10},{10,10}})));
		buildingblocks.basic_wheel3x basic_wheel3x1(
			id=1,
			net_delay=0,
			redeclare replaceable satcomponents.AOCS.Parts.IMU_nonoise imu) annotation(Placement(transformation(extent={{-20,20},{15,55}})));
		buildingblocks.basic basic1(
			id=2,
			net_delay=0.1,
			redeclare replaceable satcomponents.AOCS.Parts.IMU_no_sam_delay imu) annotation(Placement(transformation(extent={{20,20},{55,55}})));
		buildingblocks.basic basic2(
			id=3,
			net_delay=0.08,
			redeclare replaceable satcomponents.AOCS.Parts.IMU_no_sam_delay imu) annotation(Placement(transformation(extent={{-20,-20},{15,15}})));
		satcomponents.AOCS.ctrl.ACS_P aCS_P1(gain1(k=3.0)) annotation(Placement(transformation(extent={{-65,25},{-45,45}})));
		equation
			connect(world.frame_b, r.frame_a) annotation(Line(points = {{-10, 80}, {-5, 80}, {5, 80}, {10, 80}}, color = {95, 95, 95}, thickness = 0.015625));
			connect(r.frame_b, basic_wheel3x1.Yps) annotation(Line(points = {{30, 80}, {35, 80}, {35, 68.3}, {1, 68.3}, {1, 56.7}, {1, 51.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic_wheel3x1.Xps, basic1.Xns) annotation(Line(points = {{11.3, 34}, {16.3, 34}, {18.7, 34}, {18.7, 41}, {23.7, 41}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic_wheel3x1.Yns, basic2.Yps) annotation(Line(points = {{-6, 23.3}, {-6, 18.3}, {-6, 16.7}, {1, 16.7}, {1, 11.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(aCS_P1.acs_bus, basic_wheel3x1.Xn.sat_bus.acs_bus) annotation(Line(points = {{-45, 35}, {-40, 35}, {-21.3, 35}, {-21.3, 37.3}, {-16.3, 37.3}}, thickness = 0.0625));
		annotation(
			r(frame_b(
				r_0(flags=2),
				R(
					T(flags=2),
					w(flags=2)),
				f(flags=2),
				t(flags=2))),
			basic_wheel3x1(
				Struktur(
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
					g_0(flags=2)),
				reactionwheel3axis_noelectricity1(
					wheel_x(
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
							g_0(flags=2))),
					wheel_y(
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
							g_0(flags=2))),
					wheel_z(
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
							g_0(flags=2))))),
			basic1(imu(
				add1(y(flags=2)),
				noise_ung2(y(flags=2)),
				noise_ung1(y(flags=2)),
				noise_ung3(y(flags=2)))),
			basic2(imu(
				noise_ung2(y(flags=2)),
				noise_ung1(y(flags=2)),
				noise_ung3(y(flags=2)))),
			aCS_P1(
				acs_bus(
					w(flags=2),
					w_a(flags=2)),
				error(y(flags=2))),
			viewinfo[0](
				viewSettings(clrRaster=12632256),
				typename="ModelInfo"),
			experiment(
				StopTime=100,
				StartTime=0));
	end ass3x2x1;
	model ass3x2x1_spring
		inner Modelica.Mechanics.MultiBody.World world(
			enableAnimation=animation,
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(
			origin={-20, 80},
			extent={{-10, -10}, {10, 10}})));
		parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
		parameter Real C_const;
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			animation=false,
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0}),
			w_rel_a_fixed=true,
			w_rel_a_start={0.0, 0.1, 0.5},
			enforceStates=true) annotation(Placement(transformation(
			origin={20, 80},
			extent={{-10, -10}, {10, 10}})));
		buildingblocks.basic_wheel3x basic_wheel3x1(id=1) annotation(Placement(transformation(extent={{60, 25}, {95, 60}})));
		buildingblocks.basic basic1(
			r(start={0.41, 0, 0}),
			id=2) annotation(Placement(transformation(extent={{145, 25}, {180, 60}})));
		buildingblocks.basic basic4(
			r(start={0.82, 0, 0}),
			id=3) annotation(Placement(transformation(extent={{225, 25}, {260, 60}})));
		satcomponents.AOCS.ctrl.ACS_P aCS_P1 annotation(Placement(transformation(extent={{-5, 25}, {15, 45}})));
		buildingblocks.basic_wheel3x basic_wheel3x2(id=1) annotation(Placement(transformation(extent={{60, -55}, {95, -20}})));
		buildingblocks.basic basic2(
			r(start={0.41, 0, 0}),
			id=2) annotation(Placement(transformation(extent={{145, -55}, {180, -20}})));
		buildingblocks.basic basic3(
			r(start={0.82, 0, 0}),
			id=3) annotation(Placement(transformation(extent={{225, -55}, {260, -20}})));
		components.spring_connection spring_connection1 annotation(Placement(transformation(extent={{105, 35}, {125, 45}})));
		iboss.components.spring_connection spring_connection2 annotation(Placement(transformation(extent={{110, -40}, {130, -30}})));
		iboss.components.spring_connection spring_connection3 annotation(Placement(transformation(extent={{190, 35}, {210, 45}})));
		iboss.components.spring_connection spring_connection4 annotation(Placement(transformation(extent={{195, -40}, {215, -30}})));
		iboss.components.spring_connection spring_connection7(prismatic4(n={0, 1, 0})) annotation(Placement(transformation(
			origin={75, 5},
			extent={{-10, -5}, {10, 5}},
			rotation=-90)));
		iboss.components.spring_connection spring_connection5(prismatic4(n={0, 1, 0})) annotation(Placement(transformation(
			origin={160, 5},
			extent={{-10, -5}, {10, 5}},
			rotation=-90)));
		iboss.components.spring_connection spring_connection6(prismatic4(n={0, 1, 0})) annotation(Placement(transformation(
			origin={240, 5},
			extent={{-10, -5}, {10, 5}},
			rotation=-90)));
		equation
			connect(world.frame_b, r.frame_a) annotation(Line(points = {{-10, 80}, {-5, 80}, {5, 80}, {10, 80}}, color = {95, 95, 95}, thickness = 0.015625));
			connect(r.frame_b, basic_wheel3x1.Yps) annotation(Line(points = {{30, 80}, {35, 80}, {81, 80}, {81, 61.7}, {81, 56.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(aCS_P1.acs_bus, basic_wheel3x1.Xn.sat_bus.acs_bus) annotation(Line(points = {{15, 35}, {20, 35}, {58.7, 35}, {58.7, 42.3}, {63.7, 42.3}}, thickness = 0.0625));
			connect(basic_wheel3x1.Xps, spring_connection1.frame_a) annotation(Line(points = {{91.3, 39}, {96.3, 39}, {96.3, 46.3}, {109.3, 46.3}, {109.3, 41.3}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection1.frame_b, basic1.Xns) annotation(Line(points = {{122.3, 41.3}, {127.3, 41.3}, {143.7, 41.3}, {143.7, 46}, {148.7, 46}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic1.Xps, spring_connection3.frame_a) annotation(Line(points = {{176.3, 39}, {181.3, 39}, {181.3, 46.3}, {194.3, 46.3}, {194.3, 41.3}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection3.frame_b, basic4.Xns) annotation(Line(points = {{207.3, 41.3}, {212.3, 41.3}, {223.7, 41.3}, {223.7, 46}, {228.7, 46}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic4.Yns, spring_connection6.frame_a) annotation(Line(points = {{239, 28.3}, {239, 23.3}, {246.3, 23.3}, {246.3, 10.7}, {241.3, 10.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection6.frame_b, basic3.Yps) annotation(Line(points = {{241.3, -2.3}, {241.3, -7.3}, {241.3, -18.3}, {246, -18.3}, {246, -23.3}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic3.Xns, spring_connection4.frame_b) annotation(Line(points = {{228.7, -34}, {223.7, -34}, {217.3, -34}, {217.3, -33.7}, {212.3, -33.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection4.frame_a, basic2.Xps) annotation(Line(points = {{199.3, -33.7}, {199.3, -28.7}, {190.3, -28.7}, {190.3, -41}, {181.3, -41}, {176.3, -41}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic2.Xns, spring_connection2.frame_b) annotation(Line(points = {{148.7, -34}, {143.7, -34}, {132.3, -34}, {132.3, -33.7}, {127.3, -33.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection2.frame_a, basic_wheel3x2.Xps) annotation(Line(points = {{114.3, -33.7}, {114.3, -28.7}, {105.3, -28.7}, {105.3, -41}, {96.3, -41}, {91.3, -41}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection7.frame_b, basic_wheel3x2.Yps) annotation(Line(points = {{76.3, -2.3}, {76.3, -7.3}, {76.3, -18.3}, {81, -18.3}, {81, -23.3}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection7.frame_a, basic_wheel3x1.Yns) annotation(Line(points = {{76.3, 10.7}, {81.3, 10.7}, {81.3, 17}, {74, 17}, {74, 23.3}, {74, 28.3}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(basic1.Yns, spring_connection5.frame_a) annotation(Line(points = {{159, 28.3}, {159, 23.3}, {166.3, 23.3}, {166.3, 10.7}, {161.3, 10.7}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(spring_connection5.frame_b, basic2.Yps) annotation(Line(points = {{161.3, -2.3}, {161.3, -7.3}, {161.3, -18.3}, {166, -18.3}, {166, -23.3}}, color = {95, 95, 95}, thickness = 0.0625));
		annotation(
			basic_wheel3x1(reactionwheel3axis_noelectricity1(
				wheel_x(
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
						g_0(flags=2))),
				wheel_y(
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
						g_0(flags=2))),
				wheel_z(
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
						g_0(flags=2))))),
			aCS_P1(error(y(flags=2))),
			basic_wheel3x2(reactionwheel3axis_noelectricity1(
				wheel_x(
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
						g_0(flags=2))),
				wheel_y(
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
						g_0(flags=2))),
				wheel_z(
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
						g_0(flags=2))))),
			experiment(
				StopTime=100,
				StartTime=0));
	end ass3x2x1_spring;
	model ass1x1x1
		inner Modelica.Mechanics.MultiBody.World world(
			enableAnimation=animation,
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(
			origin={-20,80},
			extent={{-10,-10},{10,10}})));
		parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			animation=false,
			r_rel_a(start={0.0, 0.0, 0.0}),
			v_rel_a(start={0.0, 0.0, 0.0}),
			w_rel_a_fixed=true,
			w_rel_a_start={0.0, 0.4, 0.2},
			enforceStates=true) annotation(Placement(transformation(
			origin={20,80},
			extent={{-10,-10},{10,10}})));
		buildingblocks.basic basic1(
			id=1,
			net_delay=0.001,
			redeclare replaceable satcomponents.AOCS.Parts.IMU imu) annotation(Placement(transformation(
			origin={20,20},
			extent={{-17.5,-17.5},{17.5,17.5}})));
		equation
			connect(r.frame_b,basic1.Yps) annotation(Line(
				points={{30,80},{35,80},{35,59.7},{23.3,59.7},{23.3,39},{23.3,
				34}},
				color={95,95,95},
				thickness=0.0625));
			connect(world.frame_b,r.frame_a) annotation(Line(
				points={{-10,80},{-5,80},{5,80},{10,80}},
				color={95,95,95},
				thickness=0.015625));
		annotation(
			r(
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
				r_rel_a(flags=2),
				v_rel_a(flags=2),
				a_rel_a(flags=2)),
			basic1(
				Zp(sat_bus(acs_bus(
					w(flags=2),
					w_a(flags=2)))),
				imu(
					noise_ung2(y(flags=2)),
					noise_ung1(y(flags=2)),
					noise_ung3(y(flags=2)))),
			viewinfo[0](
				viewSettings(clrRaster=12632256),
				typename="ModelInfo"),
			experiment(
				StopTime=100,
				StartTime=0));
	end ass1x1x1;
	model ass3x2x1_wheels
		parameter Real K=5;
		parameter Real ti=0.8;
		inner Modelica.Mechanics.MultiBody.World world(
			enableAnimation=animation,
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(
			origin={-20,80},
			extent={{-10,-10},{10,10}})));
		parameter Boolean animation=false "= true, if animation shall be enabled (show cylinder and sphere)";
		Modelica.Mechanics.MultiBody.Joints.FreeMotion r(
			animation=false,
			enforceStates=true) annotation(Placement(transformation(
			origin={20,80},
			extent={{-10,-10},{10,10}})));
		buildingblocks.basic_wheel3x basic_wheel3x1(
			id=1,
			net_delay=0,
			redeclare replaceable satcomponents.AOCS.Parts.IMU_nonoise imu) annotation(Placement(transformation(extent={{-20,20},{15,55}})));
		buildingblocks.basic_wheel3x basic_wheel3x2(
			id=3,
			net_delay=0.0,
			redeclare replaceable satcomponents.AOCS.Parts.IMU_nonoise imu) annotation(Placement(transformation(extent={{-20,-20},{15,15}})));
		buildingblocks.basic_wheel3x basic_wheel3x3(
			id=2,
			net_delay=0.0,
			redeclare replaceable satcomponents.AOCS.Parts.IMU_nonoise imu) annotation(Placement(transformation(extent={{20,20},{55,55}})));
		satcomponents.AOCS.ctrl.ACS_PID aCS_PID1(PID(
			each k=K,
			each Ti=ti)) annotation(Placement(transformation(extent={{-55,30},{-35,50}})));
		satcomponents.satcomponents.AOCS.ctrl.ACS_PID aCS_PID2(
			id=3,
			PID(
				each k=K,
				each Ti=ti)) annotation(Placement(transformation(extent={{-55,-15},{-35,5}})));
		satcomponents.satcomponents.AOCS.ctrl.ACS_PID aCS_PID3(
			id=2,
			PID(
				each k=K,
				each Ti=ti)) annotation(Placement(transformation(
			origin={35,-5},
			extent={{-10,-10},{10,10}},
			rotation=90)));
		equation
			connect(world.frame_b,r.frame_a) annotation(Line(
				points={{-10,80},{-5,80},{5,80},{10,80}},
				color={95,95,95},
				thickness=0.015625));
			connect(r.frame_b,basic_wheel3x1.Yps) annotation(Line(
				points={{30,80},{35,80},{35,68.3},{1,68.3},{1,56.7},{1,
				51.7}},
				color={95,95,95},
				thickness=0.0625));
			connect(basic_wheel3x1.Xps,basic_wheel3x3.Xns) annotation(Line(
				points={{11.3,34},{16.3,34},{18.7,34},{18.7,41},{23.7,41}},
				color={95,95,95},
				thickness=0.0625));
			connect(basic_wheel3x1.Yns,basic_wheel3x2.Yps) annotation(Line(
				points={{-6,23.3},{-6,18.3},{-6,16.7},{1,16.7},{1,11.7}},
				color={95,95,95},
				thickness=0.0625));
			connect(aCS_PID1.acs_bus,basic_wheel3x1.Xn.sat_bus.acs_bus) annotation(Line(
				points={{-35,40},{-30,40},{-21.3,40},{-21.3,37.3},{-16.3,37.3}},
				thickness=0.0625));
			connect(aCS_PID2.acs_bus,basic_wheel3x2.Xn.sat_bus.acs_bus) annotation(Line(
				points={{-35,-5},{-30,-5},{-21.3,-5},{-21.3,-2.7},{-16.3,-2.7}},
				thickness=0.0625));
			connect(basic_wheel3x3.Yn.sat_bus.acs_bus,aCS_PID3.acs_bus) annotation(Line(points={{37.7,23.3},{37.7,18.3},{37.7,10},{35,10},{35,5}}));
		annotation(
			r(
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
				r_rel_a(flags=2),
				v_rel_a(flags=2),
				a_rel_a(flags=2)),
			basic_wheel3x1(
				Struktur(
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
					g_0(flags=2)),
				reactionwheel3axis_noelectricity1(
					wheel_x(
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
							g_0(flags=2))),
					wheel_y(
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
							g_0(flags=2))),
					wheel_z(
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
							g_0(flags=2))))),
			basic_wheel3x2(
				Struktur(
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
					g_0(flags=2)),
				reactionwheel3axis_noelectricity1(
					wheel_x(
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
							g_0(flags=2))),
					wheel_y(
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
							g_0(flags=2))),
					wheel_z(
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
							g_0(flags=2))))),
			basic_wheel3x3(
				Struktur(
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
					g_0(flags=2)),
				reactionwheel3axis_noelectricity1(
					wheel_x(
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
							g_0(flags=2))),
					wheel_y(
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
							g_0(flags=2))),
					wheel_z(
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
							g_0(flags=2))))),
			aCS_PID1(acs_bus(
				w(flags=2),
				w_a(flags=2))),
			aCS_PID2(acs_bus(
				w(flags=2),
				w_a(flags=2))),
			aCS_PID3(acs_bus(
				w(flags=2),
				w_a(flags=2))),
			viewinfo[0](
				optimizeForODE=true,
				typename="GSASettings"),
			viewinfo[1](
				viewSettings(clrRaster=12632256),
				typename="ModelInfo"),
			experiment(
				StopTime=15,
				StartTime=0));
	end ass3x2x1_wheels;
end satellites;
