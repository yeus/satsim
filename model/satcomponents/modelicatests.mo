// CP: 65001
// SimulationX Version: 3.6.5.34033
within ;
package modelicatests
	model test
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R=0.1) annotation(Placement(
			visible=true,
			transformation(
				origin={-58.0612, 29.7164},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={-45.93, -52.7844},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.ConstantCurrent constantcurrent1 annotation(Placement(
			visible=true,
			transformation(
				origin={-59.9717, -16.1245},
				extent={{12, 12}, {-12, -12}},
				rotation=-180)));
		Modelica.Electrical.Analog.Basic.Resistor resistor2(R=10) annotation(Placement(
			visible=true,
			transformation(
				origin={-17.256, 29.4201},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=10) annotation(Placement(
			visible=true,
			transformation(
				origin={-16.1245, -15.2758},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Resistor resistor3 annotation(Placement(
			visible=true,
			transformation(
				origin={43.8472, 29.1372},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		solarcell solarcell1 annotation(Placement(
			visible=true,
			transformation(
				origin={43.2815, -14.71},
				extent={{12, 12}, {-12, -12}},
				rotation=-180)));
		Modelica.Blocks.Sources.Constant const(k=100) annotation(Placement(
			visible=true,
			transformation(
				origin={15.5587, -70.4385},
				extent={{-12, -12}, {12, 12}},
				rotation=0)));
		equation
			connect(resistor3.p, solarcell1.n) annotation(Line(points = {{31.8472, 29.1372}, {21.2164, 29.1372}, {21.2164, -14.71}, {31.2815, -14.71}, {31.2815, -14.71}}));
			connect(solarcell1.p, resistor3.n) annotation(Line(points = {{55.2815, -14.71}, {64.215, -14.71}, {64.215, 29.1372}, {55.8472, 29.1372}, {55.8472, 29.1372}}));
			connect(const.y, solarcell1.E_s) annotation(Line(points = {{28.7587, -70.4385}, {43.2815, -70.4385}, {43.2815, -23.2299}, {43.4336, -23.2299}}));
			connect(resistor3.n, ground1.p) annotation(Line(points = {{55.8472, 29.1372}, {64.215, 29.1372}, {64.215, -36.7751}, {-45.5446, -36.7751}, {-45.5446, -40.7844}, {-45.93, -40.7844}}));
			connect(resistor2.n, constantvoltage1.n) annotation(Line(points = {{-5.25601, 29.4201}, {-0.565771, 29.4201}, {-0.565771, -15.2758}, {-4.12447, -15.2758}, {-4.12447, -15.2758}}));
			connect(constantvoltage1.p, resistor2.p) annotation(Line(points = {{-28.1245, -15.2758}, {-35.0778, -15.2758}, {-35.0778, 29.703}, {-29.256, 29.703}, {-29.256, 29.4201}}));
			connect(constantvoltage1.n, ground1.p) annotation(Line(points = {{-4.12447, -15.2758}, {3.39463, -15.2758}, {3.39463, -36.7751}, {-45.5446, -36.7751}, {-45.5446, -40.7844}, {-45.93, -40.7844}}));
			connect(resistor1.n, constantcurrent1.p) annotation(Line(points = {{-46.0612, 29.7164}, {-42.1499, 29.7164}, {-42.1499, -16.1245}, {-47.9717, -16.1245}, {-47.9717, -16.1245}}));
			connect(constantcurrent1.n, resistor1.p) annotation(Line(points = {{-71.9717, -16.1245}, {-76.0962, -16.1245}, {-76.0962, 29.9859}, {-70.0612, 29.9859}, {-70.0612, 29.7164}}));
			connect(constantcurrent1.p, ground1.p) annotation(Line(points = {{-47.9717, -16.1245}, {-45.8274, -16.1245}, {-45.8274, -40.7844}, {-45.93, -40.7844}}));
	end test;
	model tabletest
		Modelica.Blocks.Sources.Ramp ramp1(duration=10) annotation(Placement(
			visible=true,
			transformation(
				origin={-63.9659, 11.9403},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(
			visible=true,
			transformation(
				origin={30.2772, -14.9254},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Blocks.Tables.CombiTable1D combitable1ds1(
			table=[0.0, 0.5; 0.9, 3.0; 1.0, 4.0],
			columns={2, 3},
			n=1) annotation(Placement(
			visible=true,
			transformation(
				origin={-14.9254, 11.5139},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={47.3968, -64.27290000000001},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(
			visible=true,
			transformation(
				origin={30.8797, -43.447},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(resistor1.n, signalvoltage1.n) annotation(Line(points = {{40.8797, -43.447}, {47.0377, -43.447}, {47.0377, -14.3627}, {40.5745, -14.3627}, {40.5745, -14.3627}}));
			connect(resistor1.n, ground1.p) annotation(Line(points = {{40.8797, -43.447}, {46.6786, -43.447}, {46.6786, -54.5781}, {46.6786, -54.5781}}));
			connect(signalvoltage1.p, resistor1.p) annotation(Line(points = {{20.2772, -14.9254}, {6.10413, -14.9254}, {6.10413, -44.1652}, {20.4668, -44.1652}, {20.4668, -44.1652}}));
			connect(combitable1ds1.y[1], signalvoltage1.v) annotation(Line(points = {{-3.9254, 11.5139}, {30.1616, 11.5139}, {30.1616, -7.18133}, {30.1616, -7.18133}}));
			connect(ramp1.y, combitable1ds1.u[1]) annotation(Line(points = {{-52.9659, 11.9403}, {-27.6481, 11.9403}, {-27.6481, 10.772}, {-27.6481, 10.772}}));
		annotation(experiment(
			StartTime=0.0,
			StopTime=10.0,
			Tolerance=0.0001));
	end tabletest;
	model noise_sampled "noise_sampled"
		satcomponents.blocks.noise_ung noise_ung1[3](
			amplitude=1.0,
			seed={1, 2, 3}) annotation(Placement(transformation(extent={{-25, 39}, {-4, 50}})));
		Modelica.Blocks.Discrete.Sampler sampler1[3](samplePeriod=0.001) annotation(Placement(transformation(extent={{15, 35}, {35, 55}})));
		equation
			connect(noise_ung1.y, sampler1.u) annotation(Line(points = {{-7.7, 45.7}, {-2.7, 45.7}, {8, 45.7}, {8, 45}, {13, 45}}, color = {0, 0, 127}, thickness = 0.0625));
		annotation(
			noise_ung1(y(flags=2)),
			sampler1(y(flags=2)),
			experiment(
				StopTime=100,
				StartTime=0));
	end noise_sampled;
	model simplependulum
		inner Modelica.Mechanics.MultiBody.World world annotation(Placement(transformation(
			origin={-72.03619999999999, -1.67937},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Mechanics.Rotational.Components.Damper damper2(d=0.1) annotation(Placement(transformation(
			origin={-31.9961, 35.4135},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(
			useAxisFlange=true,
			n={0, 0, 1},
			phi(start=3.14159 / 2.0)) annotation(Placement(transformation(
			origin={-28.3295, -1.25318},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Mechanics.MultiBody.Parts.Body body1(
			r_CM={0, 0, 0},
			m=0.5) annotation(Placement(transformation(
			origin={46.4644, -0.839688},
			extent={{-10, -10}, {10, 10}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r={0, -0.2, 0}) annotation(Placement(transformation(
			origin={11.1437, -0.879765},
			extent={{-10, -10}, {10, 10}})));
		equation
			connect(fixedtranslation1.frame_b, body1.frame_a) annotation(Line(points = {{21.1437, -0.879765}, {36.0704, -0.879765}, {36.0704, -0.293255}, {36.0704, -0.293255}}));
			connect(revolute1.frame_b, fixedtranslation1.frame_a) annotation(Line(points = {{-18.3295, -1.25318}, {0.58651, -1.25318}, {0.58651, -1.17302}, {0.58651, -1.17302}}));
			connect(world.frame_b, revolute1.frame_a) annotation(Line(points = {{-62.0362, -1.67937}, {-38.1232, -1.67937}, {-38.1232, -0.879765}, {-38.1232, -0.879765}}));
			connect(revolute1.axis, damper2.flange_b) annotation(Line(points = {{-28.3295, 8.74682}, {-13.6628, 9.04008}, {-13.6628, 35.7067}, {-22.3294, 35.7067}, {-22.3294, 35.4135}}));
			connect(damper2.flange_a, revolute1.support) annotation(Line(points = {{-41.9961, 35.4135}, {-45.6628, 35.4135}, {-45.6628, 8.74682}, {-34.9961, 8.74682}, {-34.3295, 8.74682}}));
	end simplependulum;
	model Kreisel
		inner Modelica.Mechanics.MultiBody.World world annotation(Placement(
			visible=true,
			transformation(
				origin={-70.6666, -2.99997},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodycylinder1 annotation(Placement(
			visible=true,
			transformation(
				origin={-3.66667, -4},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		annotation(
			Diagram(coordinateSystem(
				extent={{-100, -100}, {100, 100}},
				preserveAspectRatio=true,
				initialScale=0.1,
				grid={2, 2})),
			Icon(
				coordinateSystem(
					extent={{-100, -100}, {100, 100}},
					preserveAspectRatio=true,
					initialScale=0.1,
					grid={2, 2}),
				graphics={Polygon(origin = {-5.1492, -15.9409}, fillColor = {192, 192, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-25.8508, 50.9409}, {51.1492, -19.0591}, {-50.8508, -50.7258}, {-25.8508, 50.9409}}), Polygon(origin = {31.3167, 27.9803}, fillPattern = FillPattern.Solid, points = {{-31.6501, -20.3137}, {15.3499, 33.6863}, {31.6833, 16.6863}, {-17.3167, -33.647}, {-31.6501, -20.3137}}), Polygon(origin = {-4.36176, 0.25555}, fillColor = {0, 128, 0}, fillPattern = FillPattern.Solid, points = {{-30.3049, 53.4111}, {66.3618, -39.9222}, {26.6951, -74.9222}, {-66.3049, 12.4111}, {-30.3049, 53.4111}})}));
	end Kreisel;
	model OpticalWireless
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R=120) annotation(Placement(
			visible=true,
			transformation(
				origin={-49.711, -20.2312},
				extent={{-10, -10}, {10, 10}},
				rotation=90)));
		Modelica.Electrical.Analog.Basic.Resistor resistor2(R=120) annotation(Placement(
			visible=true,
			transformation(
				origin={-16.7052, -20.7514},
				extent={{-10, -10}, {10, 10}},
				rotation=90)));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C=1e-10) annotation(Placement(
			visible=true,
			transformation(
				origin={13.5838, -48.2659},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C=1e-10) annotation(Placement(
			visible=true,
			transformation(
				origin={12.4855, -8.901730000000001},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={53.4682, -36.9942},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=5) annotation(Placement(
			visible=true,
			transformation(
				origin={-51.4451, 73.4104},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Semiconductors.NPN npn1 annotation(Placement(
			visible=true,
			transformation(
				origin={-51.1561, 29.4798},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(capacitor1.n, ground1.p) annotation(Line(points = {{23.5838, -48.2659}, {33.237, -48.8439}, {32.948, -26.8786}, {53.7572, -27.4566}, {53.4682, -26.9942}}));
			connect(capacitor2.n, ground1.p) annotation(Line(points = {{22.4855, -8.901730000000001}, {53.4682, -8.901730000000001}, {53.4682, -26.9942}, {53.4682, -26.9942}}));
			connect(resistor2.n, capacitor2.p) annotation(Line(points = {{-16.7052, -10.7514}, {-16.7052, -8.381500000000001}, {2.48555, -8.381500000000001}, {2.48555, -8.901730000000001}}));
			connect(resistor2.p, capacitor1.p) annotation(Line(points = {{-16.7052, -30.7514}, {-16.4162, -48.5549}, {-15.7803, -48.8439}, {3.58381, -48.2659}}));
			connect(resistor1.n, resistor2.n) annotation(Line(points = {{-49.711, -10.2312}, {-49.711, -10.9827}, {-16.4162, -10.9827}, {-16.7052, -10.7514}}));
			connect(resistor1.p, resistor2.p) annotation(Line(points = {{-49.711, -30.2312}, {-49.711, -31.5029}, {-16.4162, -31.5029}, {-16.7052, -30.7514}}));
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
	end OpticalWireless;
	model Transistortest
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R=0.1) annotation(Placement(
			visible=true,
			transformation(
				origin={-12.1387, 71.09829999999999},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={42.7746, -5.49133},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=5) annotation(Placement(
			visible=true,
			transformation(
				origin={45.6647, 71.3873},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(
			V=0.1,
			freqHz=10) annotation(Placement(
			visible=true,
			transformation(
				origin={-57.5145, 19.0751},
				extent={{10, -10}, {-10, 10}},
				rotation=90)));
		Modelica.Electrical.Analog.Semiconductors.PNP pnp1 annotation(Placement(
			visible=true,
			transformation(
				origin={-20.2312, 36.7052},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Resistor resistor2(R=0.1) annotation(Placement(
			visible=true,
			transformation(
				origin={-10.4046, 17.6301},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		equation
			connect(resistor2.n, ground1.p) annotation(Line(points = {{-10.4046, 7.63006}, {-10.4046, 4.62428}, {42.7746, 4.62428}, {42.7746, 4.62428}}));
			connect(pnp1.E, resistor2.p) annotation(Line(points = {{-10.2312, 31.7052}, {-9.826589999999999, 31.7052}, {-9.826589999999999, 27.4566}, {-9.826589999999999, 27.4566}}));
			connect(resistor1.n, pnp1.C) annotation(Line(points = {{-12.1387, 61.0983}, {-12.1387, 41.6185}, {-9.826589999999999, 41.6185}, {-9.826589999999999, 41.6185}}));
			connect(sinevoltage1.p, pnp1.B) annotation(Line(points = {{-57.5145, 29.0751}, {-57.5145, 36.7052}, {-30.3468, 36.7052}, {-30.3468, 36.7052}}));
			connect(sinevoltage1.n, ground1.p) annotation(Line(points = {{-57.5145, 9.075139999999999}, {-57.5145, 4.91329}, {42.7746, 4.91329}, {42.7746, 4.91329}}));
			connect(constantvoltage1.n, ground1.p) annotation(Line(points = {{45.6647, 61.3873}, {45.6647, 4.91329}, {42.4855, 4.91329}, {42.4855, 4.91329}}));
			connect(resistor1.p, constantvoltage1.p) annotation(Line(points = {{-12.1387, 81.09829999999999}, {-12.1387, 87.5723}, {45.6647, 87.5723}, {45.6647, 81.2139}, {45.6647, 81.2139}}));
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
	end Transistortest;
	model Capacitortest
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={-26.0606, -30.6061},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor1(
			C=0.1,
			v(start=100)) annotation(Placement(
			visible=true,
			transformation(
				origin={-53.6364, 3.33333},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R=100) annotation(Placement(
			visible=true,
			transformation(
				origin={10.303, 5.75758},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		equation
			connect(ground1.p, capacitor1.n) annotation(Line(points = {{-26.0606, -20.6061}, {-53.3333, -20.6061}, {-53.3333, -6.36364}, {-53.3333, -6.36364}}));
			connect(resistor1.n, ground1.p) annotation(Line(points = {{10.303, -4.24242}, {10.303, -20.303}, {-26.3636, -20.303}, {-26.3636, -20.303}}));
			connect(capacitor1.p, resistor1.p) annotation(Line(points = {{-53.6364, 13.3333}, {-53.6364, 32.7273}, {10.303, 32.7273}, {10.303, 15.4545}, {10.303, 15.4545}}));
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
	end Capacitortest;
	model variableresistortest
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={12.4242, -24.8485},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(
			visible=true,
			transformation(
				origin={8.787879999999999, 36.0606},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor1 annotation(Placement(
			visible=true,
			transformation(
				origin={8.787879999999999, 8.48485},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(
			visible=true,
			transformation(
				origin={-31.8182, 35.7576},
				extent={{10, -10}, {-10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.VariableResistor vr1 annotation(Placement(
			visible=true,
			transformation(
				origin={-31.2121, 66.9697},
				extent={{10, -10}, {-10, 10}},
				rotation=0)));
		equation
			connect(vr1.n, signalvoltage1.n) annotation(Line(points = {{-41.2121, 66.9697}, {-47.2727, 66.9697}, {-47.2727, 35.7576}, {-41.8182, 35.7576}, {-41.8182, 35.7576}}));
			connect(vr1.p, signalvoltage1.p) annotation(Line(points = {{-21.2121, 66.9697}, {-16.9697, 66.9697}, {-16.9697, 35.4545}, {-21.8182, 35.4545}, {-21.8182, 35.4545}}));
			signalvoltage1.v = sin(time * 0.001);
			vr1.R = 100000.0 / (1 + exp(-100.0 * signalvoltage1.v));
			connect(signalvoltage1.n, ground1.p) annotation(Line(points = {{-41.8182, 35.7576}, {-52.4242, 35.7576}, {-52.4242, -15.1515}, {12.1212, -15.1515}, {12.1212, -15.1515}}));
			connect(signalvoltage1.p, capacitor1.p) annotation(Line(points = {{-21.8182, 35.7576}, {-15.1515, 35.7576}, {-15.1515, 8.48485}, {-0.606061, 8.48485}, {-0.606061, 8.48485}}));
			connect(signalvoltage1.p, resistor1.p) annotation(Line(points = {{-21.8182, 35.7576}, {-1.51515, 35.7576}, {-1.51515, 35.7576}, {-1.51515, 35.7576}}));
			connect(ground1.p, capacitor1.n) annotation(Line(points = {{12.4242, -14.8485}, {24.2424, -14.8485}, {24.2424, 8.787879999999999}, {18.4848, 8.787879999999999}, {18.4848, 8.787879999999999}}));
			connect(resistor1.n, ground1.p) annotation(Line(points = {{18.7879, 36.0606}, {33.3333, 36.0606}, {33.3333, -15.1515}, {12.4242, -15.1515}, {12.4242, -15.1515}}));
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
	end variableresistortest;
	model pChannelMOSFETtest
		Modelica.Electrical.Analog.Basic.Resistor resistor1(R=500) annotation(Placement(
			visible=true,
			transformation(
				origin={-30.6358, 26.0116},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Resistor resistor3(R=0.5) annotation(Placement(
			visible=true,
			transformation(
				origin={65.896, 13.8728},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=100) annotation(Placement(
			visible=true,
			transformation(
				origin={-71.6763, 10.9827},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={41.0405, -82.65900000000001},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C=1e-08) annotation(Placement(
			visible=true,
			transformation(
				origin={24.5665, 25.1445},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.PulseVoltage pulsevoltage1(
			V=50,
			width=50,
			period=1.0) annotation(Placement(
			visible=true,
			transformation(
				origin={-47.1098, -40.4624},
				extent={{10, -10}, {-10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Resistor resistor2(R=500) annotation(Placement(
			visible=true,
			transformation(
				origin={-5.20231, -3.75723},
				extent={{10, -10}, {-10, 10}},
				rotation=90)));
		Modelica.Electrical.Analog.Semiconductors.NMOS nmos1 annotation(Placement(
			visible=true,
			transformation(
				origin={-16.7889, -35.5491},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Semiconductors.PMOS pmos1 annotation(Placement(
			visible=true,
			transformation(
				origin={-13.2948, 58.9595},
				extent={{-10, -10}, {10, 10}},
				rotation=90)));
		equation
			connect(pmos1.S, resistor3.p) annotation(Line(points = {{-8.2948, 68.95950000000001}, {-8.2948, 69.9213}, {65.82680000000001, 69.9213}, {65.82680000000001, 24.252}, {65.82680000000001, 24.252}}));
			connect(pmos1.B, pmos1.D) annotation(Line(points = {{-13.2948, 68.95950000000001}, {-13.2948, 83.7795}, {-18.2677, 83.7795}, {-18.2677, 69.6063}, {-18.2677, 69.6063}}));
			connect(resistor1.p, constantvoltage1.p) annotation(Line(points = {{-40.6358, 26.0116}, {-71.81100000000001, 26.0116}, {-71.81100000000001, 21.4173}, {-71.81100000000001, 21.4173}}));
			connect(pmos1.D, resistor1.p) annotation(Line(points = {{-18.2948, 68.95950000000001}, {-18.2948, 70.2362}, {-40.9449, 70.2362}, {-40.9449, 25.8268}, {-40.9449, 25.8268}}));
			connect(resistor1.n, pmos1.G) annotation(Line(points = {{-20.6358, 26.0116}, {0, 26.0116}, {0, 48.8439}, {-18.2948, 48.9595}, {-8.2948, 48.9595}}));
			connect(capacitor1.p, pmos1.G) annotation(Line(points = {{14.5665, 25.1445}, {0, 25.1445}, {0, 48.8439}, {-18.2948, 48.9595}, {-8.2948, 48.9595}}));
			connect(nmos1.B, nmos1.S) annotation(Line(points = {{-6.78895, -35.5491}, {1.25984, -35.5491}, {1.25984, -40.6299}, {-6.29921, -40.6299}, {-6.29921, -40.6299}}));
			connect(nmos1.D, resistor2.n) annotation(Line(points = {{-6.78895, -30.5491}, {-5.03937, -30.5491}, {-5.03937, -13.8583}, {-5.03937, -13.8583}}));
			connect(nmos1.S, ground1.p) annotation(Line(points = {{-6.78895, -40.5491}, {40.9449, -40.5491}, {40.9449, -73.07089999999999}, {40.9449, -73.07089999999999}}));
			connect(pulsevoltage1.p, nmos1.G) annotation(Line(points = {{-37.1098, -40.4624}, {-26.3006, -40.4624}, {-26.7889, -40.5491}, {-26.7889, -40.5491}}));
			connect(resistor2.p, resistor1.n) annotation(Line(points = {{-5.20231, 6.24277}, {-5.20231, 26.1417}, {-21.1024, 26.1417}, {-21.1024, 26.1417}}));
			connect(capacitor1.n, resistor3.p) annotation(Line(points = {{34.5665, 25.1445}, {65.51179999999999, 25.1445}, {65.51179999999999, 24.5669}, {65.51179999999999, 24.5669}}));
			connect(pulsevoltage1.n, constantvoltage1.n) annotation(Line(points = {{-57.1098, -40.4624}, {-71.9653, -40.4624}, {-71.9653, 0.9826589999999999}, {-71.6763, 0.9826589999999999}}));
			connect(ground1.p, constantvoltage1.n) annotation(Line(points = {{41.0405, -72.65900000000001}, {-71.9653, -72.65900000000001}, {-71.9653, 0.578035}, {-71.9653, 0.578035}}));
			connect(resistor3.n, ground1.p) annotation(Line(points = {{65.896, 3.87283}, {65.896, -27.1676}, {40.7514, -72.65900000000001}, {41.0405, -72.65900000000001}}));
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
				grid={2, 2})),
			experiment(
				StartTime=0.0,
				StopTime=20.0,
				Tolerance=1e-06));
	end pChannelMOSFETtest;
	model efunc
		Real x(start=1.0);
		equation
			x = der(x);
	end efunc;
	model freemotiontest
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity) annotation(Placement(
			visible=true,
			transformation(
				origin={-60, 60},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body1(
			m=1.0,
			r_0(start={0, 0.6, 0})) annotation(Placement(
			visible=true,
			transformation(
				origin={20, 60},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
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
	end freemotiontest;
	model pgwpm2test
		extends Modelica.Icons.Example;
		model PointMass = Modelica.Mechanics.MultiBody.Parts.PointMass(
			m=1,
			sphereColor={255, 0, 0})  "Point mass used at all places of this example";
		PointMass pointMass1(
			r_0(
				start={3, 0, 0},
				each fixed=true),
			v_0(
				start={0, 0, -1},
				each fixed=true)) annotation(Placement(transformation(
			extent={{60, -10}, {80, 10}},
			rotation=0)));
		PointMass pointMass2 annotation(Placement(transformation(
			extent={{-60, -10}, {-40, 10}},
			rotation=0)));
		PointMass pointMass3(v_0(
			start={0, 0, -1},
			each fixed=true)) annotation(Placement(transformation(
			extent={{60, 20}, {80, 40}},
			rotation=0)));
		PointMass pointMass4 annotation(Placement(transformation(
			extent={{-50, -40}, {-30, -20}},
			rotation=0)));
		PointMass pointMass5 annotation(Placement(transformation(
			extent={{0, 80}, {20, 100}},
			rotation=0)));
		PointMass pointMass6 annotation(Placement(transformation(
			extent={{0, -100}, {20, -80}},
			rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r={1, 0, 0}) annotation(Placement(transformation(
			extent={{20, -10}, {40, 10}},
			rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r={-1, 0, 0}) annotation(Placement(transformation(
			extent={{0, -10}, {-20, 10}},
			rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r={0, 1, 0}) annotation(Placement(transformation(
			extent={{20, 20}, {40, 40}},
			rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r={0, -1, 0}) annotation(Placement(transformation(
			extent={{0, -40}, {-20, -20}},
			rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r={0, 0, 1}) annotation(Placement(transformation(
			origin={10, 60},
			extent={{-10, -10}, {10, 10}},
			rotation=90)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r={0, 0, -1}) annotation(Placement(transformation(
			origin={10, -60},
			extent={{10, -10}, {-10, 10}},
			rotation=90)));
		inner Modelica.Mechanics.MultiBody.World world(
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity,
			mue=5) annotation(Placement(transformation(
			extent={{-80, 60}, {-60, 80}},
			rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion annotation(Placement(transformation(
			extent={{-40, 60}, {-20, 80}},
			rotation=0)));
		equation
			connect(fixedTranslation1.frame_a, fixedTranslation.frame_a) annotation(Line(points = {{0, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation1.frame_a, fixedTranslation2.frame_a) annotation(Line(points = {{0, 0}, {10, 0}, {10, 30}, {20, 30}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation3.frame_a, fixedTranslation.frame_a) annotation(Line(points = {{0, -30}, {10, -30}, {10, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation1.frame_a, fixedTranslation4.frame_a) annotation(Line(points = {{0, 0}, {10, 0}, {10, 50}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation5.frame_a, fixedTranslation.frame_a) annotation(Line(points = {{10, -50}, {10, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation2.frame_b, pointMass3.frame_a) annotation(Line(points = {{40, 30}, {70, 30}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation3.frame_b, pointMass4.frame_a) annotation(Line(points = {{-20, -30}, {-40, -30}}, color = {95, 95, 95}, thickness = 0.5));
			connect(pointMass5.frame_a, fixedTranslation4.frame_b) annotation(Line(points = {{10, 90}, {10, 70}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation5.frame_b, pointMass6.frame_a) annotation(Line(points = {{10, -70}, {10, -90}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation.frame_b, pointMass1.frame_a) annotation(Line(points = {{40, 0}, {70, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation1.frame_b, pointMass2.frame_a) annotation(Line(points = {{-20, 0}, {-50, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(world.frame_b, freeMotion.frame_a) annotation(Line(points = {{-60, 70}, {-40, 70}}, color = {95, 95, 95}, thickness = 0.5));
			connect(freeMotion.frame_b, fixedTranslation1.frame_a) annotation(Line(points = {{-20, 70}, {-10, 70}, {-10, 20}, {10, 20}, {10, 0}, {0, 0}}, color = {95, 95, 95}, thickness = 0.5));
	end pgwpm2test;
	model PointGravityWithPointMasses2 "Rigidly connected point masses in a point gravity field"
		extends Modelica.Icons.Example;
		PointMass pointMass1(
			r_0(
				start={3, 0, 0},
				fixed=true),
			v_0(
				start={0, 0, -1},
				fixed=true)) annotation(Placement(transformation(extent={{60, -10}, {80, 10}})));
		PointMass pointMass2 annotation(Placement(transformation(extent={{-60, -10}, {-40, 10}})));
		PointMass pointMass3(
			r_0(start={2, 1, 0}),
			v_0(
				start={0, 0, -1},
				fixed=true)) annotation(Placement(transformation(extent={{60, 20}, {80, 40}})));
		PointMass pointMass4 annotation(Placement(transformation(extent={{-50, -40}, {-30, -20}})));
		PointMass pointMass5 annotation(Placement(transformation(extent={{0, 80}, {20, 100}})));
		PointMass pointMass6 annotation(Placement(transformation(extent={{0, -100}, {20, -80}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r={1, 0, 0}) annotation(Placement(transformation(extent={{20, -10}, {40, 10}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r={-1, 0, 0}) annotation(Placement(transformation(extent={{0, -10}, {-20, 10}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r={0, 1, 0}) annotation(Placement(transformation(extent={{20, 20}, {40, 40}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r={0, -1, 0}) annotation(Placement(transformation(extent={{0, -40}, {-20, -20}})));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r={0, 0, 1}) annotation(Placement(transformation(
			origin={10, 60},
			extent={{-10, -10}, {10, 10}},
			rotation=90)));
		Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r={0, 0, -1}) annotation(Placement(transformation(
			origin={10, -60},
			extent={{10, -10}, {-10, 10}},
			rotation=90)));
		inner Modelica.Mechanics.MultiBody.World world(
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity,
			mue=5) annotation(Placement(transformation(extent={{-80, 60}, {-60, 80}})));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion annotation(Placement(transformation(extent={{-40, 60}, {-20, 80}})));
		model PointMass = Modelica.Mechanics.MultiBody.Parts.PointMass(
			m=1,
			sphereColor={255, 0, 0})  "Point mass used at all places of this example";
		equation
			connect(fixedTranslation1.frame_a, fixedTranslation.frame_a) annotation(Line(points = {{0, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation1.frame_a, fixedTranslation2.frame_a) annotation(Line(points = {{0, 0}, {10, 0}, {10, 30}, {20, 30}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation3.frame_a, fixedTranslation.frame_a) annotation(Line(points = {{0, -30}, {10, -30}, {10, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation1.frame_a, fixedTranslation4.frame_a) annotation(Line(points = {{0, 0}, {10, 0}, {10, 50}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation5.frame_a, fixedTranslation.frame_a) annotation(Line(points = {{10, -50}, {10, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation2.frame_b, pointMass3.frame_a) annotation(Line(points = {{40, 30}, {70, 30}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation3.frame_b, pointMass4.frame_a) annotation(Line(points = {{-20, -30}, {-40, -30}}, color = {95, 95, 95}, thickness = 0.5));
			connect(pointMass5.frame_a, fixedTranslation4.frame_b) annotation(Line(points = {{10, 90}, {10, 70}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation5.frame_b, pointMass6.frame_a) annotation(Line(points = {{10, -70}, {10, -90}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation.frame_b, pointMass1.frame_a) annotation(Line(points = {{40, 0}, {70, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(fixedTranslation1.frame_b, pointMass2.frame_a) annotation(Line(points = {{-20, 0}, {-50, 0}}, color = {95, 95, 95}, thickness = 0.5));
			connect(world.frame_b, freeMotion.frame_a) annotation(Line(points = {{-60, 70}, {-40, 70}}, color = {95, 95, 95}, thickness = 0.5));
			connect(freeMotion.frame_b, fixedTranslation1.frame_a) annotation(Line(points = {{-20, 70}, {-10, 70}, {-10, 20}, {10, 20}, {10, 0}, {0, 0}}, color = {95, 95, 95}, thickness = 0.5));
	end PointGravityWithPointMasses2;
	package bus_simulation
		expandable connector modcom "modcom"
			Real a[10];
			annotation(Icon(graphics={Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-73.3, 76.7}, {80, -76.7}}), Text(textString = "iCOM", lineColor = {0, 0, 0}, extent = {{-46.7, 50}, {53.3, -50}})}));
		end modcom;
		block Sensor
			Modelica.Blocks.Interfaces.RealOutput speed;
			equation
				speed = sin(time);
		end Sensor;
		block Actuator
			Modelica.Blocks.Interfaces.RealInput speed;
		end Actuator;
		model Engine
			EngineBus bus;
			Sensor sensor;
			Actuator actuator;
			equation
				connect(bus.speed, sensor.speed);
				// provides the non-input from sensor.speed
				connect(bus.speed, actuator.speed);
		end Engine;
		model Test
			import Modelica.Constants.small;
			expandable connector Bus
			end Bus;
			expandable connector SubBus
			end SubBus;
			connector C
				Real x;
			end C;
			model Component1
				Bus bus;
				SubBus subBus;
				C c;
				equation
					connect(bus.subBus, subBus);
					connect(subBus.c, c);
					c.x = 42;
			end Component1;
			Component1 component;
			C c;
			Bus bus;
			equation
				connect(bus, component.bus);
				connect(c, bus.subBus.c);
		end Test;
		model signalbustest
			modcom modcom1 annotation(Placement(transformation(extent={{-70, 20}, {-50, 40}})));
			modcom modcom2 annotation(Placement(transformation(extent={{20, 20}, {40, 40}})));
			Modelica.Blocks.Math.Cos cos1 annotation(Placement(transformation(
				origin={115, -5},
				extent={{-10, -10}, {10, 10}})));
			modelicatests.bus_simulation.modcom modcom3 annotation(Placement(
				visible=true,
				transformation(
					origin={-20, -20},
					extent={{-10, -10}, {10, 10}},
					rotation=0),
				iconTransformation(
					origin={-20, -20},
					extent={{-10, -10}, {10, 10}},
					rotation=0)));
			modelicatests.bus_simulation.modcom modcom4 annotation(Placement(
				visible=true,
				transformation(
					origin={20, -40},
					extent={{-10, -10}, {10, 10}},
					rotation=0),
				iconTransformation(
					origin={20, -40},
					extent={{-10, -10}, {10, 10}},
					rotation=0)));
			Modelica.Blocks.Sources.Sine sine2(
				amplitude=2.0,
				freqHz=0.1) annotation(Placement(
				visible=true,
				transformation(
					origin={-80, 0},
					extent={{-10, -10}, {10, 10}},
					rotation=0)));
			Modelica.Blocks.Sources.Sine sine1(
				amplitude=2.0,
				freqHz=0.1) annotation(Placement(
				visible=true,
				transformation(
					origin={-20, -80},
					extent={{-10, -10}, {10, 10}},
					rotation=0)));
			Modelica.Blocks.Math.Gain gain1 annotation(Placement(
				visible=true,
				transformation(
					origin={-20, 60},
					extent={{-10, -10}, {10, 10}},
					rotation=0)));
			equation
				connect(modcom1.s2, gain1.u) annotation(Line(points = {{-60, 30}, {-33.0275, 30}, {-33.0275, 60.0917}, {-33.0275, 60.0917}}));
				connect(sine1.y, modcom4.s2) annotation(Line(points = {{-9, -80}, {19.2661, -80}, {19.2661, -41.7431}, {19.2661, -41.7431}}));
				connect(sine2.y, modcom1.s1) annotation(Line(points = {{-69, 0}, {-56.8807, 0}, {-56.8807, 26.1468}, {-56.8807, 26.1468}}));
				connect(modcom4, modcom2) annotation(Line(points = {{20, -40}, {27.9817, -40}, {27.9817, 24.3119}, {27.9817, 24.3119}}));
				connect(modcom3, modcom4) annotation(Line(points = {{-20, -20}, {17.8899, -20}, {17.8899, -40.367}, {17.8899, -40.367}}));
				connect(modcom3, modcom1) annotation(Line(points = {{-20, -20}, {-51.8349, -20}, {-51.8349, 29.8165}, {-51.8349, 29.8165}}));
				connect(modcom2.s1, cos1.u) annotation(Line(points = {{30, 30}, {65.5963, 30}, {65.5963, -4.58716}, {101.835, -4.58716}, {101.835, -4.58716}}));
			annotation(
				sine1(y(flags=2)),
				tanh1(y(flags=2)),
				realValue1(showNumber(flags=2)),
				sine2(y(flags=2)),
				experiment(
					StartTime=0,
					StopTime=100,
					Tolerance=0.0001,
					Interval=0.2));
		end signalbustest;
		model signalbusarraytest
			modcom modcom1 annotation(Placement(transformation(extent={{-60, 20}, {-40, 40}})));
			modcom modcom2 annotation(Placement(transformation(extent={{30, 20}, {50, 40}})));
			Modelica.Blocks.Math.Cos cos1 annotation(Placement(transformation(
				origin={115, -5},
				extent={{-10, -10}, {10, 10}})));
			modcom modcom3 annotation(Placement(
				transformation(
					origin={-20, -20},
					extent={{-10, -10}, {10, 10}}),
				iconTransformation(
					origin={-20, -20},
					extent={{-10, -10}, {10, 10}})));
			modcom modcom4 annotation(Placement(
				transformation(
					origin={20, -40},
					extent={{-10, -10}, {10, 10}}),
				iconTransformation(
					origin={20, -40},
					extent={{-10, -10}, {10, 10}})));
			Modelica.Blocks.Sources.Sine sine2(
				amplitude=4.0,
				freqHz=0.1) annotation(Placement(transformation(
				origin={-80, -25},
				extent={{-10, -10}, {10, 10}})));
			Modelica.Blocks.Math.Gain gain1 annotation(Placement(transformation(
				origin={15, 70},
				extent={{-10, -10}, {10, 10}})));
			Modelica.Blocks.Sources.Pulse pulse1(startTime=5) annotation(Placement(transformation(extent={{-110, 35}, {-90, 55}})));
			equation
				connect(modcom1, modcom3) annotation(Line(points = {{-50, 30}, {-45, 30}, {-25, 30}, {-25, -20}, {-20, -20}}, color = {0, 0, 0}, thickness = 0.0625));
				connect(modcom3, modcom4) annotation(Line(points = {{-20, -20}, {-15, -20}, {15, -20}, {15, -40}, {20, -40}}, color = {0, 0, 0}, thickness = 0.0625));
				connect(modcom2, modcom4) annotation(Line(points = {{40, 30}, {35, 30}, {25, 30}, {25, -40}, {20, -40}}, color = {0, 0, 0}, thickness = 0.0625));
				connect(sine2.y, modcom3.a[2]) annotation(Line(points = {{-69, -25}, {-64, -25}, {-25, -25}, {-25, -20}, {-20, -20}}, color = {0, 0, 127}, thickness = 0.0625));
				connect(cos1.u, modcom2.a[2]) annotation(Line(points = {{103, -5}, {98, -5}, {45, -5}, {45, 30}, {40, 30}}, color = {0, 0, 127}, thickness = 0.0625));
				connect(gain1.u, modcom3.a[1]) annotation(Line(points = {{3, 70}, {-2, 70}, {-15, 70}, {-15, -20}, {-20, -20}}, color = {0, 0, 127}, thickness = 0.0625));
				connect(pulse1.y, modcom1.a[1]) annotation(Line(points = {{-89, 45}, {-84, 45}, {-55, 45}, {-55, 30}, {-50, 30}}, color = {0, 0, 127}, thickness = 0.0625));
			annotation(
				modcom2(a(flags=2)),
				experiment(
					StopTime=100,
					StartTime=0));
		end signalbusarraytest;
	end bus_simulation;
	package openmodelica_cpp
		model coding_interface
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
		end coding_interface;
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
	end openmodelica_cpp;
	model statespace_control "statespace_control"
		Modelica.Blocks.Continuous.StateSpace stateSpace1 annotation(Placement(transformation(extent={{15, 35}, {35, 55}})));
		annotation(experiment(
			StopTime=1,
			StartTime=0));
	end statespace_control;
	package Random
		import Modelica.Math;
		constant Real NV_MAGICCONST=4 * exp(-0.5) / sqrt(2.0);
		type Seed = Integer[3];
		function random "input random number generator with external storage of the seed"
			input Seed si "input random seed";
			output Real x "uniform random variate between 0 and 1";
			output Seed so "output random seed";
			algorithm
				so[1] := rem(171 * si[1], 30269);
				so[2] := rem(172 * si[2], 30307);
				so[3] := rem(170 * si[3], 30323);
				// zero is a poor Seed, therfore substitute 1;
				if so[1] == 0 then
				  so[1] := 1;
				end if;
				if so[2] == 0 then
				  so[2] := 1;
				end if;
				if so[3] == 0 then
				  so[3] := 1;
				end if;
				x := rem(so[1] / 30269.0 + so[2] / 30307.0 + so[3] / 30323.0, 1.0);
		end random;
		function normalvariate "normally distributed random variable"
			input Real mu "mean value";
			input Real sigma "standard deviation";
			input Seed si "input random seed";
			output Real x "gaussian random variate";
			output Seed so "output random seed";
			protected
				Seed s1;
				Seed s2;
				Real z;
				Real zz;
				Real u1;
				Real u2;
			algorithm
				s1 := si;
				u2 := 1;
				while true loop
				  (u1, s2) := random(s1);
				  (u2, s1) := random(s2);
				  z := NV_MAGICCONST * (u1 - 0.5) / u2;
				  zz := z * z / 4.0;
				  if zz <= (-Math.log(u2)) then
				    break;
				  end if;
				end while;
				x := mu + z * sigma;
				so := s1;
		end normalvariate;
		connector discreteConnector
			discrete Boolean dcon;
		end discreteConnector;
		annotation(dateModified="2014-03-25 16:26:09Z");
	end Random;
	model momentum_add "momentum_add"
		inner Modelica.Mechanics.MultiBody.World world(
			gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity,
			redeclare replaceable function gravityAcceleration = Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration) annotation(Placement(transformation(extent={{-115, 70}, {-95, 90}})));
		Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(
			r={1.0, 0, 0},
			r_shape={-0.5, 0, 0},
			widthDirection={0, 0.5, 0},
			density=300000) annotation(Placement(transformation(extent={{10, 40}, {30, 60}})));
		Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox2(
			r={1.0, 0, 0},
			r_shape={-0.5, 0, 0},
			widthDirection={0, 0.5, 0},
			density=300000) annotation(Placement(transformation(extent={{10, -25}, {30, -5}})));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion1 annotation(Placement(transformation(extent={{-55, 70}, {-35, 90}})));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion2 annotation(Placement(transformation(extent={{-50, -10}, {-30, 10}})));
		Modelica.Mechanics.MultiBody.Joints.Cylindrical cylindrical1 annotation(Placement(transformation(extent={{55, -15}, {75, 5}})));
		equation
			connect(world.frame_b, freeMotion1.frame_a) annotation(Line(points = {{-95, 80}, {-90, 80}, {-60, 80}, {-55, 80}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(freeMotion1.frame_b, bodyBox1.frame_a) annotation(Line(points = {{-35, 80}, {-30, 80}, {5, 80}, {5, 50}, {10, 50}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(world.frame_b, freeMotion2.frame_a) annotation(Line(points = {{-95, 80}, {-90, 80}, {-55, 80}, {-55, 0}, {-50, 0}}, color = {95, 95, 95}, thickness = 0.0625));
			connect(freeMotion2.frame_b, bodyBox2.frame_a) annotation(Line(points = {{-30, 0}, {-25, 0}, {5, 0}, {5, -15}, {10, -15}}, color = {95, 95, 95}, thickness = 0.0625));
		annotation(experiment(
			StopTime=1,
			StartTime=0));
	end momentum_add;
	model trajectory_with_pointmass
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(
			visible=true,
			transformation(
				origin={-64, 26},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body(useQuaternions=false) annotation(Placement(
			visible=true,
			transformation(
				origin={16, -6},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.Constraints.Prismatic constraint(
			x_locked=false,
			y_locked=true,
			z_locked=true) annotation(Placement(
			visible=true,
			transformation(
				origin={-26, 6},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(constraint.frame_b, body.frame_a) annotation(Line(points = {{-16, 6}, {6, 6}, {6, -6}, {6, -6}}, color = {95, 95, 95}));
			connect(world.frame_b, constraint.frame_a) annotation(Line(points = {{-54, 26}, {-46, 26}, {-46, 6}, {-36, 6}, {-36, 6}}, color = {95, 95, 95}));
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
	end trajectory_with_pointmass;
	model constraints_test
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(
			visible=true,
			transformation(
				origin={-44, -12},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Translational.Sources.Position position1(exact=false) annotation(Placement(
			visible=true,
			transformation(
				origin={10, 24},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(m=10) annotation(Placement(
			visible=true,
			transformation(
				origin={68, -12},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(
			useAxisFlange=true,
			stateSelect=StateSelect.never) annotation(Placement(
			visible=true,
			transformation(
				origin={8, -12},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Sensors.CutForce cutforce1 annotation(Placement(
			visible=true,
			transformation(
				origin={40, -12},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Blocks.Interfaces.RealInput u annotation(Placement(
			visible=true,
			transformation(
				origin={-78, 26},
				extent={{-10, -10}, {10, 10}},
				rotation=0),
			iconTransformation(
				origin={-52, 26},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(u, position1.s_ref) annotation(Line(points = {{-78, 26}, {-2, 26}, {-2, 24}, {-2, 24}}, color = {0, 0, 127}));
			connect(cutforce1.frame_b, pointmass1.frame_a) annotation(Line(points = {{50, -12}, {68, -12}, {68, -12}, {68, -12}}, color = {95, 95, 95}));
			connect(cutforce1.frame_a, prismatic1.frame_b) annotation(Line(points = {{30, -12}, {18, -12}, {18, -12}, {18, -12}}, color = {95, 95, 95}));
			connect(position1.support, prismatic1.support) annotation(Line(points = {{10, 14}, {-6, 14}, {-6, -6}, {4, -6}}, color = {0, 127, 0}));
			connect(position1.flange, prismatic1.axis) annotation(Line(points = {{20, 24}, {30, 24}, {30, -6}, {16, -6}}, color = {0, 127, 0}));
			connect(prismatic1.frame_a, world.frame_b) annotation(Line(points = {{-2, -12}, {-34, -12}}, color = {95, 95, 95}));
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
	end constraints_test;
	model momentumexchange_test
		import SI = Modelica.SIunits;
		import Modelica.Mechanics.MultiBody.Frames;
		parameter Real pi=3.1415927;
		SI.AngularMomentum L0[3];
		SI.AngularMomentum L1[3];
		SI.AngularMomentum L2[3];
		SI.AngularMomentum LL[3];
		SI.AngularMomentum LL2[3];
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(
			visible=true,
			transformation(
				origin={-66, 66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion2(
			w_rel_a_start={pi / 10.0, pi / 20.0, pi / 10},
			enforceStates=false,
			useQuaternions=true,
			w_rel_a_fixed=true,
			angles_start={0.1, 0.1, 0}) annotation(Placement(
			visible=true,
			transformation(
				origin={-22, 66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(
			useAxisFlange=false,
			w(start=1.0),
			n={0, 0, 1},
			stateSelect=StateSelect.default) annotation(Placement(
			visible=true,
			transformation(
				origin={-20, -56},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body5(
			m=10,
			I_11=1,
			I_22=1,
			I_33=1,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={62, -30},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(
			w_rel_a_start={pi / 10.0, pi / 20.0, pi / 10},
			enforceStates=false,
			useQuaternions=true,
			w_rel_a_fixed=true,
			angles_start={0.1, 0.1, 0}) annotation(Placement(
			visible=true,
			transformation(
				origin={-20, 4},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body1(
			m=10,
			I_11=1,
			I_22=1,
			I_33=1,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={64, -56},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Forces.Torque t2 annotation(Placement(
			visible=true,
			transformation(
				origin={-20, -82},
				extent={{-10, 10}, {10, -10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Forces.Torque t1 annotation(Placement(
			visible=true,
			transformation(
				origin={-20, -20},
				extent={{-10, 10}, {10, -10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedrotation1(n={1, 0, 0}) annotation(Placement(
			visible=true,
			transformation(
				origin={34, -12},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Mechanics.MultiBody.Parts.Body body4(
			m=30,
			I_11=10.0,
			I_22=10.0,
			I_33=20.0,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={60, 4},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedrotation2(
			n={1, 0, 0},
			angle=45) annotation(Placement(
			visible=true,
			transformation(
				origin={2, 46},
				extent={{-10, -10}, {10, 10}},
				rotation=-90)));
		Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(
			useAxisFlange=false,
			w(start=1.0),
			n={0, 0, 1},
			stateSelect=StateSelect.default) annotation(Placement(
			visible=true,
			transformation(
				origin={36, 32},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body3(
			m=10,
			I_11=1,
			I_22=1,
			I_33=1,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={72, 32},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body2(
			m=30,
			I_11=10.0,
			I_22=10.0,
			I_33=20.0,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={26, 80},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Rotational.Components.Disc disc1 annotation(Placement(
			visible=true,
			transformation(
				origin={32, 60},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(revolute1.support, disc1.flange_a) annotation(Line(points = {{30, 42}, {16, 42}, {16, 60}, {22, 60}, {22, 60}}));
			connect(disc1.flange_b, revolute1.axis) annotation(Line(points = {{42, 60}, {54, 60}, {54, 42}, {36, 42}, {36, 42}}));
			connect(fixedrotation2.frame_a, body2.frame_a) annotation(Line(points = {{2, 56}, {2, 80}, {16, 80}}, color = {95, 95, 95}));
			connect(body2.frame_a, freemotion2.frame_b) annotation(Line(points = {{16, 80}, {1, 80}, {1, 66}, {-12, 66}}, color = {95, 95, 95}));
			connect(fixedrotation2.frame_b, revolute1.frame_a) annotation(Line(points = {{2, 36}, {2, 36}, {2, 32}, {26, 32}, {26, 32}}, color = {95, 95, 95}));
			connect(body3.frame_a, revolute1.frame_b) annotation(Line(points = {{62, 32}, {46, 32}}, color = {95, 95, 95}));
			connect(fixedrotation1.frame_b, body5.frame_a) annotation(Line(points = {{34, -22}, {34, -22}, {34, -30}, {52, -30}, {52, -30}}, color = {95, 95, 95}));
			connect(fixedrotation1.frame_a, body4.frame_a) annotation(Line(points = {{34, -2}, {34, -2}, {34, 4}, {50, 4}, {50, 4}}, color = {95, 95, 95}));
			connect(freemotion1.frame_b, body4.frame_a) annotation(Line(points = {{-10, 4}, {50, 4}}, color = {95, 95, 95}));
			connect(freemotion1.frame_a, t1.frame_a) annotation(Line(points = {{-30, 4}, {-44, 4}, {-44, -20}, {-30, -20}}, color = {95, 95, 95}));
			connect(t1.frame_b, freemotion1.frame_b) annotation(Line(points = {{-10, -20}, {-10, 4}}, color = {95, 95, 95}));
			connect(revolute2.frame_a, t2.frame_a) annotation(Line(points = {{-30, -56}, {-40, -56}, {-40, -82}, {-30, -82}}, color = {95, 95, 95}));
			connect(t2.frame_b, revolute2.frame_b) annotation(Line(points = {{-10, -82}, {0, -82}, {0, -56}, {-10, -56}}, color = {95, 95, 95}));
			connect(body1.frame_a, revolute2.frame_b) annotation(Line(points = {{54, -56}, {-10, -56}}, color = {95, 95, 95}));
			connect(world.frame_b, freemotion1.frame_a) annotation(Line(points = {{-56, 66}, {-44, 66}, {-44, 4}, {-30, 4}}, color = {95, 95, 95}));
			connect(world.frame_b, revolute2.frame_a) annotation(Line(points = {{-56, 66}, {-44, 66}, {-44, -56}, {-30, -56}}, color = {95, 95, 95}));
			connect(world.frame_b, freemotion2.frame_a) annotation(Line(points = {{-56, 66}, {-32, 66}}, color = {95, 95, 95}));
			LL = body1.I * body1.w_a;
			//body1.w_a = Frames.angularVelocity1(body1.frame_a.R);
			LL2 = Frames.resolve1(body1.frame_a.R, LL);
			L0 = Frames.resolve1(body2.frame_a.R, body2.I * body2.w_a);
			L1 = Frames.resolve1(body3.frame_a.R, body3.I * body3.w_a);
			L2 = L0 + L1;
			t1.torque = {0, 0, 0};
			t2.torque = {0, 0, 0};
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
	end momentumexchange_test;
	model rw_test
		Modelica.Mechanics.Rotational.Components.Inertia inertia1 annotation(Placement(
			visible=true,
			transformation(
				origin={4, 32},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Rotational.Components.Fixed fixed1 annotation(Placement(
			visible=true,
			transformation(
				origin={16, -4},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Rotational.Sources.Torque torque1(useSupport=true) annotation(Placement(
			visible=true,
			transformation(
				origin={-34, 32},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Blocks.Sources.Sine sine1 annotation(Placement(
			visible=true,
			transformation(
				origin={-76, 34},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Rotational.Sources.Torque torque2(useSupport=true) annotation(Placement(
			visible=true,
			transformation(
				origin={44, 32},
				extent={{10, -10}, {-10, 10}},
				rotation=0)));
		Modelica.Blocks.Sources.Constant const(k=-0.1) annotation(Placement(
			visible=true,
			transformation(
				origin={84, 32},
				extent={{10, -10}, {-10, 10}},
				rotation=0)));
		equation
			connect(const.y, torque2.tau) annotation(Line(points = {{73, 32}, {56, 32}, {56, 32}, {56, 32}}, color = {0, 0, 127}));
			connect(torque2.support, fixed1.flange) annotation(Line(points = {{44, 22}, {44, 22}, {44, -4}, {16, -4}, {16, -4}}));
			connect(inertia1.flange_b, torque2.flange) annotation(Line(points = {{14, 32}, {34, 32}, {34, 32}, {34, 32}}));
			connect(sine1.y, torque1.tau) annotation(Line(points = {{-65, 34}, {-46, 34}, {-46, 32}}, color = {0, 0, 127}));
			connect(torque1.support, fixed1.flange) annotation(Line(points = {{-34, 22}, {-34, 22}, {-34, 0}, {16, 0}, {16, -4}, {16, -4}}));
			connect(torque1.flange, inertia1.flange_a) annotation(Line(points = {{-24, 32}, {-6, 32}, {-6, 32}, {-6, 32}}));
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
	end rw_test;
	model rigidbody_with_joints
		import SI = Modelica.SIunits;
		import Modelica.Mechanics.MultiBody.Frames;
		parameter Real pi=3.1415927;
		SI.AngularMomentum L0[3];
		SI.AngularMomentum L1[3];
		SI.AngularMomentum L2[3];
		SI.AngularMomentum LL[3];
		SI.AngularMomentum LL2[3];
		inner Modelica.Mechanics.MultiBody.World world(gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(
			visible=true,
			transformation(
				origin={-66, 66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(
			w_rel_a_start={pi / 10.0, pi / 20.0, pi / 10},
			enforceStates=false,
			useQuaternions=true,
			w_rel_a_fixed=true,
			angles_start={0.1, 0.1, 0}) annotation(Placement(
			visible=true,
			transformation(
				origin={-20, 66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion2(
			w_rel_a_start={pi / 10.0, pi / 20.0, pi / 10},
			enforceStates=false,
			useQuaternions=true,
			w_rel_a_fixed=true,
			angles_start={0.1, 0.1, 0}) annotation(Placement(
			visible=true,
			transformation(
				origin={-22, 40},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body2(
			m=30,
			I_11=10.0,
			I_22=10.0,
			I_33=20.0,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={22, 40},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(
			useAxisFlange=false,
			w(start=1.0),
			n={0, 1, 1},
			stateSelect=StateSelect.default) annotation(Placement(
			visible=true,
			transformation(
				origin={22, 14},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body3(
			m=10,
			I_11=1,
			I_22=1,
			I_33=1,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={78, 14},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body1(
			m=30,
			I_11=10.0,
			I_22=10.0,
			I_33=20.0,
			enforceStates=false) annotation(Placement(
			visible=true,
			transformation(
				origin={20, 66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body5(
			m=30,
			I_11=10.0,
			I_22=10.0,
			I_33=20.0,
			enforceStates=false,
			w_0_start={0, 0, 1.0}) annotation(Placement(
			visible=true,
			transformation(
				origin={10, -36},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(
			useAxisFlange=false,
			w(start=1.0),
			n={0, 0, 1},
			stateSelect=StateSelect.prefer) annotation(Placement(
			visible=true,
			transformation(
				origin={-20, -36},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.Body body4(
			m=10,
			I_11=1,
			I_22=1,
			I_33=1,
			enforceStates=false,
			w_0_start={0, 1.0, 1.0}) annotation(Placement(
			visible=true,
			transformation(
				origin={44, -66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(
			useAxisFlange=false,
			w(start=1.0),
			n={0, 1, 1},
			stateSelect=StateSelect.prefer) annotation(Placement(
			visible=true,
			transformation(
				origin={12, -66},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteangularvelocity1(resolveInFrame=Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_resolve) annotation(Placement(
			visible=true,
			transformation(
				origin={48, -10},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedrotation1(
			n={1, 0, 0},
			angle=45.0) annotation(Placement(
			visible=true,
			transformation(
				origin={10, -12},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(absoluteangularvelocity1.frame_resolve, fixedrotation1.frame_b) annotation(Line(points = {{48, -20}, {26, -20}, {26, -12}, {20, -12}, {20, -12}}, color = {95, 95, 95}));
			connect(fixedrotation1.frame_b, absoluteangularvelocity1.frame_a) annotation(Line(points = {{20, -12}, {38, -12}, {38, -10}, {38, -10}}, color = {95, 95, 95}));
			connect(revolute3.frame_b, fixedrotation1.frame_a) annotation(Line(points = {{-10, -36}, {-6, -36}, {-6, -12}, {0, -12}, {0, -12}}, color = {95, 95, 95}));
			connect(revolute2.frame_b, body4.frame_a) annotation(Line(points = {{22, -66}, {34, -66}}, color = {95, 95, 95}));
			connect(revolute3.frame_b, revolute2.frame_a) annotation(Line(points = {{-10, -36}, {-6, -36}, {-6, -66}, {-2, -66}, {-2, -66}, {2, -66}}, color = {95, 95, 95}));
			connect(world.frame_b, revolute3.frame_a) annotation(Line(points = {{-56, 66}, {-46, 66}, {-46, -36}, {-30, -36}}, color = {95, 95, 95}));
			connect(revolute3.frame_b, body5.frame_a) annotation(Line(points = {{-10, -36}, {0, -36}}, color = {95, 95, 95}));
			connect(freemotion1.frame_b, body1.frame_a) annotation(Line(points = {{-10, 66}, {10, 66}}, color = {95, 95, 95}));
			connect(body3.frame_a, revolute1.frame_b) annotation(Line(points = {{68, 14}, {32, 14}, {32, 14}, {32, 14}, {32, 14}, {32, 14}, {32, 14}, {32, 14}}, color = {95, 95, 95}));
			connect(body2.frame_a, revolute1.frame_a) annotation(Line(points = {{12, 40}, {6, 40}, {6, 40}, {0, 40}, {0, 14}, {12, 14}, {12, 14}, {12, 14}, {12, 14}}, color = {95, 95, 95}));
			connect(body2.frame_a, freemotion2.frame_b) annotation(Line(points = {{12, 40}, {0, 40}, {0, 40}, {-12, 40}, {-12, 40}, {-12, 40}, {-12, 40}, {-12, 40}}, color = {95, 95, 95}));
			connect(world.frame_b, freemotion2.frame_a) annotation(Line(points = {{-56, 66}, {-46, 66}, {-46, 40}, {-32, 40}}, color = {95, 95, 95}));
			connect(world.frame_b, freemotion1.frame_a) annotation(Line(points = {{-56, 66}, {-30, 66}, {-30, 66}, {-30, 66}}, color = {95, 95, 95}));
			LL = body1.I * body1.w_a;
			//body1.w_a = Frames.angularVelocity1(body1.frame_a.R);
			LL2 = Frames.resolve1(body1.frame_a.R, LL);
			L0 = Frames.resolve1(body2.frame_a.R, body2.I * body2.w_a);
			L1 = Frames.resolve1(body3.frame_a.R, body3.I * body3.w_a);
			L2 = L0 + L1;
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
	end rigidbody_with_joints;
	model motortest
		Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet dcpm annotation(Placement(
			visible=true,
			transformation(
				origin={-18, 0},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Rotational.Components.Fixed fixed1 annotation(Placement(
			visible=true,
			transformation(
				origin={-6, -38},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1 annotation(Placement(
			visible=true,
			transformation(
				origin={-18, 46},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={20, 34},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		Modelica.Mechanics.Rotational.Components.Inertia inertia1(J=1) annotation(Placement(
			visible=true,
			transformation(
				origin={32, 2},
				extent={{-10, -10}, {10, 10}},
				rotation=0)));
		equation
			connect(constantvoltage1.n, ground1.p) annotation(Line(points = {{-8, 46}, {20, 46}, {20, 44}, {20, 44}}, color = {0, 0, 255}));
			connect(dcpm.flange, inertia1.flange_a) annotation(Line(points = {{-8, 0}, {7, 0}, {7, 2}, {22, 2}}));
			connect(constantvoltage1.p, dcpm.pin_an) annotation(Line(points = {{-28, 46}, {-38, 46}, {-38, 10}, {-24, 10}, {-24, 10}}, color = {0, 0, 255}));
			connect(constantvoltage1.n, dcpm.pin_ap) annotation(Line(points = {{-8, 46}, {-2, 46}, {-2, 10}, {-12, 10}, {-12, 10}}, color = {0, 0, 255}));
			connect(dcpm.support, fixed1.flange) annotation(Line(points = {{-8, -10}, {-8, -23}, {-6, -23}, {-6, -38}}));
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
	end motortest;
	model NewModel1 "NewModel1"
		Modelica.Electrical.Analog.Basic.Resistor resistor1[1] annotation(Placement(transformation(extent={{-5,75},{15,95}})));
		Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage1 annotation(Placement(transformation(extent={{-5,20},{15,40}})));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(extent={{20,5},{40,25}})));
		equation
			connect(resistor1[1].p,sineVoltage1.p) annotation(Line(
				points={{-5,85},{-10,85},{-10,30},{-5,30}},
				thickness=0.0625));
			connect(sineVoltage1.n,resistor1[1].n) annotation(Line(
				points={{15,30},{20,30},{20,85},{15,85}},
				thickness=0.0625));
			connect(sineVoltage1.n,ground1.p) annotation(Line(
				points={{15,30},{20,30},{30,30},{30,25}},
				thickness=0.0625));
		annotation(experiment(
			StopTime=1,
			StartTime=0));
	end NewModel1;
	model multidimensional_motor
		Modelica.Blocks.Sources.TimeTable timetable1(table=[0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]) annotation(Placement(transformation(
			origin={-61,55},
			extent={{-13,-13},{13,13}})));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(
			origin={-46,-54},
			extent={{-10,-10},{10,10}})));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=20) annotation(Placement(transformation(
			origin={-54,-4},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm[1] annotation(Placement(transformation(extent={{20,-10},{40,10}})));
		equation
			connect(constantvoltage1.n,ground1.p) annotation(Line(points={{-54,-14},{-54,-19},{-54,-39},{-46,-39},{-46,-44}}));
			connect(constantvoltage1.p,dcpm[1].pin_ap) annotation(Line(
				points={{-54,6},{-54,11},{-54,15},{36,15},{36,10}},
				thickness=0.0625));
			connect(constantvoltage1.n,dcpm[1].pin_an) annotation(Line(
				points={{-54,-14},{-54,-19},{-15,-19},{-15,15},{24,15},{24,
				10}},
				thickness=0.0625));
		annotation(experiment(
			StopTime=100,
			StartTime=0,
			Tolerance=1e-012,
			Interval=0.02));
	end multidimensional_motor;
end modelicatests;
