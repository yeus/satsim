package satcomponents
  // CP: 65001
  // SimulationX Version: 3.6.1.26028

  model Cubesat
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-99.711, 0.289017}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-99.711, 0.289017}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    satcomponents.AOCS.Parts.Struktur struktur1 annotation(Placement(visible = true, transformation(origin = {-54.711, 0.086705}, extent = {{-24.6532, -24.6532}, {24.6532, 24.6532}}, rotation = 0)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-0.843931, -68.1985}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode2 annotation(Placement(visible = true, transformation(origin = {-0.984619, -41.1638}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    satcomponents.power.solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {23.9884, -78.6127}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {54.6243, -88.7283}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Semiconductors.ZDiode zdiode1(Bv = 39) annotation(Placement(visible = true, transformation(origin = {23.998, -54.422}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    satcomponents.power.batteries.battery battery1 annotation(Placement(visible = true, transformation(origin = {25.7225, -20.5202}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {2.02312, -101.445}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-0.867052, -96.5318}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    satcomponents.data.OBC obc1 annotation(Placement(visible = true, transformation(origin = {24.8555, 25.4335}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0, 0.04, 0.03}) annotation(Placement(visible = true, transformation(origin = {-20, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    satcomponents.AOCS.Parts.reactionwheel3axis_noelectricity reactionwheel3axis_noelectricity1(id = 1) annotation(Placement(visible = true, transformation(origin = {20, 60}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
    satcomponents.AOCS.ctrl.ACS acs1 annotation(Placement(visible = true, transformation(origin = {60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(reactionwheel3axis_noelectricity1.acs_bus, acs1.acs_bus) annotation(Line(points = {{33, 63}, {78, 63}, {78, 40}, {70, 40}, {70, 40}}));
    connect(fixedtranslation1.frame_b, reactionwheel3axis_noelectricity1.frame_a) annotation(Line(points = {{-10, 60}, {5.61404, 60}, {5.61404, 61.0526}, {5.61404, 61.0526}}));
    connect(fixedtranslation1.frame_a, struktur1.frame_a) annotation(Line(points = {{-30, 60}, {-54.3353, 60}, {-54.3353, 0.867052}, {-54.3353, 0.867052}}));
    connect(obc1.pin_n, battery1.n) annotation(Line(points = {{24.7989, 15.5325}, {35.8382, 15.5325}, {35.8382, -20.8092}, {35.8382, -20.8092}}));
    connect(obc1.pin_p, battery1.p) annotation(Line(points = {{20.5839, 15.6174}, {15.0289, 15.6174}, {15.0289, -20.5202}, {15.0289, -20.5202}}));
    connect(u, solarcell_simple1.E_s) annotation(Line(points = {{2.02312, -101.445}, {2.02312, -89.8844}, {23.9884, -89.8844}, {23.9884, -86.4162}, {23.9884, -86.4162}}));
    connect(zdiode1.p, ground1.p) annotation(Line(points = {{33.998, -54.422}, {54.9133, -54.422}, {54.9133, -79.1908}, {54.9133, -79.1908}}));
    connect(battery1.n, ground1.p) annotation(Line(points = {{35.7225, -20.5202}, {54.9133, -20.5202}, {54.9133, -78.6127}, {54.9133, -78.6127}}));
    connect(zdiode1.n, idealdiode2.p) annotation(Line(points = {{13.998, -54.422}, {-0.867052, -54.422}, {-0.867052, -51.1561}, {-0.867052, -51.1561}}));
    connect(idealdiode2.n, battery1.p) annotation(Line(points = {{-0.984619, -31.1638}, {-0.984619, -20.5202}, {15.6069, -20.5202}, {15.6069, -20.5202}}));
    connect(idealdiode1.n, idealdiode2.p) annotation(Line(points = {{-0.843931, -58.1985}, {-0.843931, -51.4451}, {-0.867052, -51.4451}, {-0.867052, -51.4451}}));
    connect(idealdiode1.p, solarcell_simple1.n) annotation(Line(points = {{-0.843931, -78.1985}, {-0.843931, -78.90170000000001}, {13.8728, -78.90170000000001}, {13.8728, -78.90170000000001}}));
    connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{33.9884, -78.6127}, {54.6243, -78.6127}, {54.6243, -78.3237}, {54.6243, -78.3237}}));
    connect(frame_a, struktur1.frame_a) annotation(Line(points = {{-99.711, 0.289017}, {-56.0694, 0.289017}, {-53.9273, 0.289017}, {-53.9273, 0.94173}}));
    annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {-8.81503, 2.02312}, fillColor = {160, 160, 160}, fillPattern = FillPattern.Solid, extent = {{-67.1966, 69.36409999999999}, {89.4509, -89.01730000000001}}), Polygon(origin = {2.45663, 25.1445}, fillColor = {0, 0, 128}, fillPattern = FillPattern.Solid, points = {{-72.6878, 41.0405}, {-72.10980000000001, -19.0752}, {-55.6358, -32.3699}, {60.8381, -31.7919}, {73.2659, -15.029}, {73.5549, 40.7515}, {-72.6878, 41.0405}}), Text(origin = {-3.49187e-07, 85.4046}, fillColor = {255, 255, 255}, extent = {{-68.7861, 16.3295}, {68.7861, -16.3295}}, textString = "%name"), Polygon(origin = {3.09246, -50.8092}, fillColor = {0, 0, 128}, fillPattern = FillPattern.Solid, points = {{-72.6878, 41.0405}, {-72.10980000000001, -19.0752}, {-55.6358, -32.3699}, {60.8381, -31.7919}, {73.2659, -15.029}, {73.5549, 40.7515}, {-72.6878, 41.0405}})}), experiment(StartTime = 0, StopTime = 20000, Tolerance = 0.0001, Interval = 40));
  end Cubesat;

  package data
    model OBC
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-42.7157, -98.16119999999999}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-42.7157, -98.16119999999999}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-0.565771, -99.0099}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-0.565771, -99.0099}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {-22.0651, -36.7751}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(k = 6.25) annotation(Placement(visible = true, transformation(origin = {-51.4851, -2.26308}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    equation
      connect(const.y, variableresistor1.R) annotation(Line(points = {{-38.2851, -2.26308}, {-22.6308, -2.26308}, {-22.6308, -23.5751}, {-22.0651, -23.5751}}));
      connect(variableresistor1.n, pin_n) annotation(Line(points = {{-10.0651, -36.7751}, {-0.282885, -36.7751}, {-0.282885, -99.0099}, {-0.565771, -99.0099}}));
      connect(variableresistor1.p, pin_p) annotation(Line(points = {{-34.0651, -36.7751}, {-43.2815, -36.7751}, {-43.2815, -98.16119999999999}, {-42.7157, -98.16119999999999}}));
      annotation(Diagram, Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-80.90519999999999, 86.5629}, {86.2801, -87.12869999999999}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.3069, 56.0113}, {69.024, -52.3338}}, textString = "OBC")}));
    end OBC;
  end data;

  package power
    model PCU
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(transformation(origin = {100.141, -63.9321}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {100.141, -63.9321}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(transformation(origin = {-100.99, -44.413}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-100.99, -44.413}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC annotation(Placement(transformation(origin = {-100.707, 7.92079}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-100.707, 7.92079}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC3 annotation(Placement(transformation(origin = {100.141, -23.1966}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {100.141, -23.1966}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC5 annotation(Placement(transformation(origin = {99.8586, 8.769450000000001}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {99.8586, 8.769450000000001}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC12 annotation(Placement(transformation(origin = {99.2928, 44.6959}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {99.2928, 44.6959}, extent = {{-12, -12}, {12, 12}})));
      satcomponents.power.dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 3.3, V_in_min = 5) annotation(Placement(transformation(origin = {56.9364, -28.6127}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.power.dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2 annotation(Placement(transformation(origin = {57.5145, 3.75723}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.power.dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 12, V_in_min = 15) annotation(Placement(transformation(origin = {57.2254, 41.0405}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Capacitor C1(C(displayUnit = "nF") = 1e-07) annotation(Placement(transformation(origin = {-30, -15}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.01) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.01) annotation(Placement(transformation(extent = {{-75, -10}, {-55, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.01) annotation(Placement(transformation(extent = {{-55, -45}, {-75, -25}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.01) annotation(Placement(transformation(extent = {{10, -45}, {-10, -25}})));
    equation
      connect(dcdc_ideal_simple_improved1.n2, gnd) annotation(Line(points = {{66.2433, -33.3086}, {76.87860000000001, -33.3086}, {76.87860000000001, -63.5838}, {100, -63.5838}, {100, -63.5838}}));
      connect(dcdc_ideal_simple_improved2.n2, dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{66.8214, -0.93867}, {76.87860000000001, -0.93867}, {76.87860000000001, -33.237}, {66.474, -33.237}, {66.474, -33.237}}));
      connect(dcdc_ideal_simple_improved3.n2, dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{66.53230000000001, 36.3446}, {77.16759999999999, 36.3446}, {77.16759999999999, -0.578035}, {66.76300000000001, -0.578035}, {66.76300000000001, -0.578035}}));
      connect(dcdc_ideal_simple_improved3.n1, dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{47.9468, 36.9952}, {37.2832, 36.9952}, {37.2832, -0.289017}, {48.2659, -0.289017}, {48.2659, -0.289017}}));
      connect(dcdc_ideal_simple_improved2.n1, dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{48.2359, -0.28803}, {37.2832, -0.28803}, {37.2832, -32.659}, {47.3988, -32.659}, {47.3988, -32.659}}));
      connect(dcdc_ideal_simple_improved1.p2, VCC3) annotation(Line(points = {{66.18680000000001, -24.3694}, {99.13290000000001, -24.3694}, {99.13290000000001, -24.2775}, {99.13290000000001, -24.2775}}));
      connect(dcdc_ideal_simple_improved3.p2, VCC12) annotation(Line(points = {{66.47580000000001, 45.2837}, {98.8439, 45.2837}, {98.8439, 45.0867}, {98.8439, 45.0867}}));
      connect(dcdc_ideal_simple_improved2.p2, VCC5) annotation(Line(points = {{66.76479999999999, 8.00051}, {98.2659, 8.00051}, {98.2659, 7.80347}, {98.2659, 7.80347}}));
      connect(dcdc_ideal_simple_improved1.p1, dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{47.7143, -24.426}, {28.3237, -24.426}, {28.3237, 8.381500000000001}, {48.5549, 8.381500000000001}, {48.5549, 8.381500000000001}}));
      connect(dcdc_ideal_simple_improved2.p1, dcdc_ideal_simple_improved3.p1) annotation(Line(points = {{48.2924, 7.94393}, {28.3237, 7.94393}, {28.3237, 45.6647}, {47.6879, 45.6647}, {47.6879, 45.6647}}));
      connect(resistor2.p, VCC) annotation(Line(points = {{-75, 0}, {-80, 0}, {-96, 0}, {-96, 8}, {-101, 8}}, thickness = 0.0625));
      connect(resistor3.n, GND) annotation(Line(points = {{-75, -35}, {-80, -35}, {-96, -35}, {-96, -44}, {-101, -44}}, thickness = 0.0625));
      connect(resistor3.p, resistor4.n) annotation(Line(points = {{-55, -35}, {-50, -35}, {-15, -35}, {-10, -35}}, thickness = 0.0625));
      connect(dcdc_ideal_simple_improved2.n1, resistor4.p) annotation(Line(points = {{48, 0}, {43, 0}, {20, 0}, {20, -35}, {10, -35}}, thickness = 0.0625), AutoRoute = false);
      connect(dcdc_ideal_simple_improved2.p1, resistor1.n) annotation(Line(points = {{48, 8}, {43, 8}, {15, 8}, {15, 0}, {10, 0}}, thickness = 0.0625));
      connect(resistor1.p, resistor2.n) annotation(Line(points = {{-10, 0}, {-15, 0}, {-50, 0}, {-55, 0}}, thickness = 0.0625));
      connect(resistor1.p, C1.p) annotation(Line(points = {{-10, 0}, {-15, 0}, {-30, 0}, {-30, -5}}, thickness = 0.0625));
      connect(resistor4.n, C1.n) annotation(Line(points = {{-10, -35}, {-15, -35}, {-30, -35}, {-30, -30}, {-30, -25}}, thickness = 0.0625));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Text(textString = "PCU", fillColor = {0, 0, 255}, extent = {{-72.4187, 45.5445}, {24.894, -36.4922}}), Text(textString = "GND", fillColor = {0, 0, 255}, extent = {{22.9137, -45.8274}, {83.7341, -80.0566}}), Text(textString = "3.3V", fillColor = {0, 0, 255}, extent = {{34.2291, -11.3154}, {78.07640000000001, -40.4526}}), Text(textString = "5V", fillColor = {0, 0, 255}, extent = {{31.1174, 21.7822}, {78.6421, -8.769450000000001}}), Text(textString = "12V", fillColor = {0, 0, 255}, extent = {{31.6832, 60.8204}, {76.66200000000001, 26.3083}}), Rectangle(fillColor = {0, 0, 255}, extent = {{-88.82599999999999, 94.4837}, {88.2603, -94.7666}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
    end PCU;

    package batteries
      model battery
        extends Modelica.Electrical.Analog.Interfaces.TwoPin;
        parameter Real startSOC = 0.5;
        Real soc(start = startSOC) "State of Charge";
        Real SOD "State of Discharge";
        parameter Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah capacity_Ah = 2.0;
        Modelica.SIunits.Current i;
        parameter Modelica.SIunits.Voltage Vnominal = 4.0;
        Modelica.Electrical.Analog.Sources.SignalVoltage voltage(v(start = Vnominal * (1 - (1.0 - startSOC) * 0.35 - 0.025 * sin((1.0 - startSOC) * 2 * pi)) * (1 - 1 / (1 + exp(-100 * (1.0 - startSOC - 1)))))) annotation(Placement(transformation(origin = {46.2642, -2.33333}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.VariableResistor R_overload(R_actual(start = 10000000.0), R(start = 1000000.0)) annotation(Placement(transformation(origin = {44.9904, 34.3674}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Capacitor C_t(C(displayUnit = "F") = 10) annotation(Placement(transformation(origin = {-10.5646, -39.6955}, extent = {{10, -10}, {-10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor R_t(R = 0.02) annotation(Placement(transformation(origin = {-9.65199, -2.45688}, extent = {{10, -10}, {-10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.02) annotation(Placement(transformation(origin = {-52.2531, -1.99445}, extent = {{10, -10}, {-10, 10}})));
      protected
        parameter Real pi = 3.14159265359;
        parameter Modelica.SIunits.ElectricCharge capacity = capacity_Ah * 3600;
      equation
        connect(C_t.p, R_t.p) annotation(Line(points = {{-0.564587, -39.6955}, {0.867052, -39.6955}, {0.867052, -2.60116}, {0.867052, -2.60116}}));
        connect(R_t.n, C_t.n) annotation(Line(points = {{-19.652, -2.45688}, {-21.0983, -2.45688}, {-21.0983, -40.1734}, {-21.0983, -40.1734}}));
        connect(R_t.p, voltage.p) annotation(Line(points = {{0.348014, -2.45688}, {36.4162, -2.45688}, {36.4162, -1.7341}, {36.4162, -1.7341}}));
        connect(resistor1.p, R_t.n) annotation(Line(points = {{-42.2531, -1.99445}, {-19.3642, -1.99445}, {-19.3642, -1.7341}, {-19.3642, -1.7341}}));
        connect(p, resistor1.n) annotation(Line(points = {{-100, 0}, {-62.7168, 0}, {-62.7168, -1.7341}, {-62.7168, -1.7341}}));
        R_overload.R = 100000.0 / (1 + exp(-100.0 * SOD));
        voltage.v = Vnominal * (1 - SOD * 0.35 - 0.025 * sin(SOD * 2 * pi)) * (1 - 1 / (1 + exp(-100 * (SOD - 1))));
        connect(R_overload.n, voltage.n) annotation(Line(points = {{54.9904, 34.3674}, {56, 34.3674}, {56, -2}, {56, -2}}));
        connect(R_overload.p, voltage.p) annotation(Line(points = {{34.9904, 34.3674}, {36.3333, 34.3674}, {36.3333, -2}, {36.3333, -2}}));
        connect(voltage.n, n) annotation(Line(points = {{56.2642, -2.33333}, {99, -2.33333}, {99, -0.333333}, {99, -0.333333}}));
        i = voltage.i;
        der(soc) = i / capacity;
        SOD = 1 - soc;
        /*exp-fucntion: logistic function*/
        annotation(v(flags = 2), soc(flags = 2), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Line(points = {{-90, 0}, {-10, 0}}), Line(points = {{-10, 60}, {-10, -60}}), Line(points = {{0, 30}, {0, -30}}), Line(points = {{0, 0}, {90, 0}}), Text(textString = "%capacity_Ah Ah", extent = {{-150, -112}, {150, -72}}), Text(textString = "+", extent = {{-120, 50}, {-20, 0}}), Text(textString = "-", extent = {{20, 50}, {120, 0}})}), experiment(StopTime = 10000, StartTime = 0, Tolerance = 0.0001));
      end battery;

      model batteriekennlinie
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-16.0598, -43.6034}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {24.4165, -5.74506}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        batteries.battery battery1(Vnominal = 100.0, startSOC = 1.0) annotation(Placement(visible = true, transformation(origin = {-59.605, -3.68024}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Blocks.Sources.Constant const(k = 5) annotation(Placement(visible = true, transformation(origin = {45.8043, 45.7362}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(battery1.p, variableresistor1.p) annotation(Line(points = {{-59.605, 6.31976}, {-59.605, 20.8259}, {24.4165, 20.8259}, {24.4165, 4.66786}, {24.4165, 4.66786}}));
        connect(const.y, variableresistor1.R) annotation(Line(points = {{56.8043, 45.7362}, {66.0682, 45.7362}, {66.0682, -5.386}, {36.2657, -5.386}, {36.2657, -5.386}}));
        connect(ground1.p, battery1.n) annotation(Line(points = {{-16.0598, -33.6034}, {-59.605, -33.6034}, {-59.605, -15.386}, {-59.605, -13.6802}}));
        connect(variableresistor1.n, ground1.p) annotation(Line(points = {{24.4165, -15.7451}, {24.4165, -33.3932}, {-16.5171, -33.3932}, {-16.5171, -33.3932}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.0001));
      end batteriekennlinie;

      block Exprgenerator "Generate exponential signal"
        parameter Real alpha = 1;
        parameter Real beta = 1;
        extends Modelica.Blocks.Interfaces.SO;
      equation
        //y = alpha * exp(beta * time);exp function
        y = exp(alpha * time) - 1;
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{0, -80}, {0, 68}}, color = {192, 192, 192}), Polygon(points = {{0, 90}, {-8, 68}, {8, 68}, {0, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-86, 50}, {-14, 2}}, lineColor = {192, 192, 192}, textString = "exp"), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Line(points = {{-90, -80.3976}, {68, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{90, -80.3976}, {68, -72.3976}, {68, -88.3976}, {90, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{0, 80}, {-8, 80}}, color = {192, 192, 192}), Line(points = {{0, -80}, {-8, -80}}, color = {192, 192, 192}), Line(points = {{0, -90}, {0, 84}}, color = {192, 192, 192}), Text(extent = {{9, 100}, {40, 80}}, lineColor = {160, 160, 164}, textString = "y"), Polygon(points = {{0, 100}, {-6, 84}, {6, 84}, {0, 100}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-100, -80.3976}, {84, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{100, -80.3976}, {84, -74.3976}, {84, -86.3976}, {100, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-31, 72}, {-11, 88}}, textString = "20", lineColor = {0, 0, 255}), Text(extent = {{-92, -83}, {-72, -103}}, textString = "-3", lineColor = {0, 0, 255}), Text(extent = {{70, -83}, {90, -103}}, textString = "3", lineColor = {0, 0, 255}), Text(extent = {{-18, -53}, {2, -73}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{66, -52}, {96, -72}}, lineColor = {160, 160, 164}, textString = "u")}));
      end Exprgenerator;

      model Akkuaufladung
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-11.3919, -34.9858}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        batteries.battery battery1(soc(start = 0.5)) annotation(Placement(visible = true, transformation(origin = {-54.9371, 4.93735}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 6) annotation(Placement(visible = true, transformation(origin = {30.5206, 5.02693}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      equation
        connect(constantvoltage1.p, battery1.p) annotation(Line(points = {{30.5206, 15.0269}, {30.5206, 30.8797}, {-55.2962, 30.8797}, {-55.2962, 14.7217}, {-55.2962, 14.7217}}));
        connect(ground1.p, constantvoltage1.n) annotation(Line(points = {{-11.3919, -24.9858}, {30.1616, -24.9858}, {30.1616, -5.02693}, {30.1616, -5.02693}}));
        connect(ground1.p, battery1.n) annotation(Line(points = {{-11.3919, -24.9858}, {-55.2962, -24.6268}, {-54.9371, -6.76841}, {-54.9371, -5.06261}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.0001));
      end Akkuaufladung;

      model Pulsverhalten
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-11.3919, -34.9858}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        batteries.battery battery1(capacity_Ah = 2) annotation(Placement(visible = true, transformation(origin = {-54.9371, 4.93735}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.5) annotation(Placement(visible = true, transformation(origin = {24.4165, 2.51346}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealclosingswitch1 annotation(Placement(visible = true, transformation(origin = {-10.4129, 32.675}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.BooleanPulse booleanpulse1(period = 200, width = 80) annotation(Placement(visible = true, transformation(origin = {-56.7325, 72.1724}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(booleanpulse1.y, idealclosingswitch1.control) annotation(Line(points = {{-45.7325, 72.1724}, {-10.4129, 72.1724}, {-10.4129, 40.2154}, {-10.4129, 40.2154}}));
        connect(idealclosingswitch1.p, battery1.p) annotation(Line(points = {{-20.4129, 32.675}, {-54.219, 32.675}, {-54.219, 14.7217}, {-54.219, 14.7217}}));
        connect(idealclosingswitch1.n, resistor1.p) annotation(Line(points = {{-0.412926, 32.675}, {24.7756, 32.675}, {24.7756, 12.5673}, {24.7756, 12.5673}}));
        connect(resistor1.n, ground1.p) annotation(Line(points = {{24.4165, -7.48654}, {24.4165, -24.7756}, {-11.1311, -24.7756}, {-11.1311, -24.7756}}));
        connect(ground1.p, battery1.n) annotation(Line(points = {{-11.3919, -24.9858}, {-55.2962, -24.6268}, {-54.9371, -6.76841}, {-54.9371, -5.06261}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 4000.0, Tolerance = 1e-06));
      end Pulsverhalten;

      package examples
        model battery_cross_flow
          satcomponents.power.batteries.battery battery1 annotation(Placement(visible = true, transformation(origin = {-47.0405, -13.0841}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
          satcomponents.power.batteries.battery battery2(startSOC = 0.9, Vnominal = 3.9) annotation(Placement(visible = true, transformation(origin = {-15.8255, -12.0872}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
          satcomponents.power.batteries.battery battery3(startSOC = 0.3, Vnominal = 4.1) annotation(Placement(visible = true, transformation(origin = {14.7664, -12.0249}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
          Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1) annotation(Placement(visible = true, transformation(origin = {38.9408, 25.2336}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {28.0374, -40.81}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        equation
          connect(battery3.n, ground1.p) annotation(Line(points = {{14.7664, -22.0249}, {14.7664, -24.9221}, {28.0374, -24.9221}, {28.0374, -30.5296}, {28.0374, -30.5296}}));
          connect(resistor1.n, battery3.n) annotation(Line(points = {{48.9408, 25.2336}, {56.6978, 25.2336}, {56.6978, -22.1184}, {15.2648, -22.1184}, {15.2648, -22.1184}}));
          connect(battery3.p, resistor1.p) annotation(Line(points = {{14.7664, -2.02492}, {14.7664, 24.9221}, {28.3489, 24.9221}, {28.3489, 24.9221}}));
          connect(battery2.n, battery1.n) annotation(Line(points = {{-15.514, -23.3333}, {-15.514, -23.676}, {-47.6636, -23.676}, {-47.6636, -23.676}}));
          connect(battery3.n, battery2.n) annotation(Line(points = {{14.7664, -22.0249}, {14.7664, -23.676}, {-15.5763, -23.676}, {-15.5763, -23.676}}));
          connect(battery2.p, battery3.p) annotation(Line(points = {{-15.514, -3.33333}, {-15.514, -1.24611}, {15.2648, -1.24611}, {15.2648, -1.24611}}));
          connect(battery1.p, battery2.p) annotation(Line(points = {{-47.0405, -3.08411}, {-47.0405, -3.11526}, {-15.5763, -3.11526}, {-15.5763, -2.80374}, {-15.5763, -2.80374}}));
          annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 3000.0, Tolerance = 1e-06));
        end battery_cross_flow;

        model Batterycontrollertest
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-47.117, -31.9605}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 2) annotation(Placement(visible = true, transformation(origin = {-41.5271, 49.1044}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          parameter Modelica.SIunits.Voltage Vmax = 4.0;
          Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor2 annotation(Placement(visible = true, transformation(origin = {15.4408, -3.64869}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
          Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealopeningswitch1(control(start = false), Ron = 1e-05, Goff = 1e-05) annotation(Placement(visible = true, transformation(origin = {-7.08738, 47.8045}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
          Modelica.Blocks.Logical.OnOffController onoffcontroller2(bandwidth = 0.1, pre_y_start = false) annotation(Placement(visible = true, transformation(origin = {-14.6604, 16.2939}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
          Modelica.Blocks.Sources.Constant constant1(k = 2.9) annotation(Placement(visible = true, transformation(origin = {73.13079999999999, 23.1997}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
          Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.02) annotation(Placement(visible = true, transformation(origin = {25.8717, 48.2952}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
          satcomponents.power.batteries.battery battery1(startSOC = 0.8) annotation(Placement(visible = true, transformation(origin = {49.1329, -9.537570000000001}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
          Modelica.Electrical.Analog.Sources.ConstantCurrent constantcurrent1(I = 0.3) annotation(Placement(visible = true, transformation(origin = {77.45659999999999, -10.1156}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        equation
          connect(constantcurrent1.p, battery1.n) annotation(Line(points = {{77.45659999999999, -20.1156}, {77.45659999999999, -25.1445}, {49.1329, -25.1445}, {49.1329, -19.6532}, {49.1329, -19.6532}}));
          connect(constantcurrent1.n, battery1.p) annotation(Line(points = {{77.45659999999999, -0.115607}, {77.45659999999999, 5.20231}, {49.422, 5.20231}, {49.422, 0.289017}, {49.422, 0.289017}}));
          connect(ground1.p, voltagesensor2.n) annotation(Line(points = {{-47.117, -21.9605}, {15.3179, -21.9605}, {15.3179, -13.2948}, {15.3179, -13.2948}}));
          connect(battery1.n, voltagesensor2.n) annotation(Line(points = {{49.1329, -19.5376}, {49.1329, -18.2081}, {15.3179, -18.2081}, {15.3179, -13.2948}, {15.3179, -13.2948}}));
          connect(voltagesensor2.p, battery1.p) annotation(Line(points = {{15.4408, 6.35131}, {15.4408, 9.537570000000001}, {49.1329, 9.537570000000001}, {49.1329, 0}, {49.1329, 0}}));
          connect(battery1.p, resistor2.p) annotation(Line(points = {{49.1329, 0.462428}, {49.1329, 48.5549}, {35.8382, 48.5549}, {35.8382, 48.5549}}));
          connect(idealopeningswitch1.p, resistor2.n) annotation(Line(points = {{2.91262, 47.8045}, {16.185, 47.8045}, {16.185, 48.5549}, {16.185, 48.5549}}));
          connect(idealopeningswitch1.n, resistor1.n) annotation(Line(points = {{-17.0874, 47.8045}, {-30.9249, 47.8045}, {-30.9249, 48.8439}, {-30.9249, 48.8439}}));
          connect(onoffcontroller2.y, idealopeningswitch1.control) annotation(Line(points = {{-25.6604, 16.2939}, {-29.1908, 16.2939}, {-29.1908, 39.8844}, {-6.35838, 39.8844}, {-6.35838, 39.8844}}));
          connect(onoffcontroller2.u, voltagesensor2.v) annotation(Line(points = {{-2.66042, 10.2939}, {1.7341, 10.2939}, {1.7341, -3.17919}, {6.35838, -3.17919}, {6.35838, -3.17919}}));
          connect(constant1.y, onoffcontroller2.reference) annotation(Line(points = {{62.1308, 23.1997}, {-1.7341, 23.1997}, {-1.7341, 22.8324}, {-1.7341, 22.8324}}));
          connect(resistor1.p, ground1.p) annotation(Line(points = {{-51.5271, 49.1044}, {-61.285, 49.1044}, {-61.285, -21.4168}, {-47.7759, -21.4168}, {-47.7759, -21.4168}}));
          annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.01));
        end Batterycontrollertest;

        model Batterycontrollertest2
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-47.117, -31.9605}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 4) annotation(Placement(visible = true, transformation(origin = {-41.5271, 49.1044}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          parameter Modelica.SIunits.Voltage Vmax = 4.0;
          satcomponents.power.batteries.battery battery1(startSOC = 0.8, capacity_Ah = 0.5) annotation(Placement(visible = true, transformation(origin = {47.9768, 15.3179}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
          satcomponents.power.batteries.BDR bdr1 annotation(Placement(visible = true, transformation(origin = {10.1156, 48.5549}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Electrical.Analog.Sources.ConstantCurrent constantcurrent1(I = 0.2) annotation(Placement(visible = true, transformation(origin = {78.6127, 15.0289}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        equation
          connect(constantcurrent1.p, battery1.n) annotation(Line(points = {{78.6127, 5.0289}, {78.6127, 5.20231}, {47.9769, 5.20231}, {47.9769, 5.20231}}));
          connect(constantcurrent1.n, battery1.p) annotation(Line(points = {{78.6127, 25.0289}, {78.6127, 25.1445}, {47.9769, 25.1445}, {47.9769, 25.1445}}));
          connect(bdr1.pin_n, battery1.n) annotation(Line(points = {{9.274480000000001, 39.178}, {9.02256, 39.178}, {9.02256, 5.41353}, {48.1203, 5.41353}, {48.1203, 5.41353}}));
          connect(bdr1.p2, battery1.p) annotation(Line(points = {{20.0103, 49.1865}, {47.8195, 49.1865}, {47.8195, 25.2632}, {47.8195, 25.2632}}));
          connect(bdr1.p1, resistor1.n) annotation(Line(points = {{0.220859, 48.7053}, {-31.5789, 48.7053}, {-31.5789, 48.7218}, {-31.5789, 48.7218}}));
          connect(battery1.n, ground1.p) annotation(Line(points = {{47.9768, 5.31792}, {47.9768, -21.6763}, {-47.3988, -21.6763}, {-47.3988, -21.6763}}));
          connect(resistor1.p, ground1.p) annotation(Line(points = {{-51.5271, 49.1044}, {-61.285, 49.1044}, {-61.285, -21.4168}, {-47.7759, -21.4168}, {-47.7759, -21.4168}}));
          annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.01));
        end Batterycontrollertest2;

        model battery_with_dcmotor
          Modelica.Mechanics.Rotational.Components.Inertia inertia1 annotation(Placement(visible = true, transformation(origin = {22, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet dcpm annotation(Placement(visible = true, transformation(origin = {-26, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Mechanics.Rotational.Components.Fixed fixed1 annotation(Placement(visible = true, transformation(origin = {-16, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          battery battery1(capacity_Ah = 0.1) annotation(Placement(visible = true, transformation(origin = {-28, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {10, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Mechanics.Rotational.Components.BearingFriction bearingfriction1 annotation(Placement(visible = true, transformation(origin = {52, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        equation
          connect(bearingfriction1.support, fixed1.flange) annotation(Line(points = {{52, 2}, {36, 2}, {36, -44}, {-16, -44}, {-16, -44}}));
          connect(inertia1.flange_b, bearingfriction1.flange_a) annotation(Line(points = {{32, 12}, {42, 12}, {42, 12}, {42, 12}}));
          connect(battery1.p, ground1.p) annotation(Line(points = {{-18, 52}, {10, 52}}, color = {0, 0, 255}));
          connect(battery1.n, dcpm.pin_an) annotation(Line(points = {{-38, 52}, {-48, 52}, {-48, 22}, {-32, 22}, {-32, 22}}, color = {0, 0, 255}));
          connect(battery1.p, dcpm.pin_ap) annotation(Line(points = {{-18, 52}, {-14, 52}, {-14, 22}, {-20, 22}, {-20, 22}}, color = {0, 0, 255}));
          connect(fixed1.flange, dcpm.support) annotation(Line(points = {{-16, -44}, {-16, 2}}));
          connect(dcpm.flange, inertia1.flange_a) annotation(Line(points = {{-16, 12}, {12, 12}, {12, 12}, {12, 12}}));
          annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
        end battery_with_dcmotor;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end examples;

      model BDR
        parameter Modelica.SIunits.Voltage Vmin = 3.3;
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-8.411210000000001, -93.76949999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-8.411210000000001, -93.76949999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Logical.OnOffController onoffcontroller2(bandwidth = Vmin * 0.05, pre_y_start = false) annotation(Placement(visible = true, transformation(origin = {22.3338, -37.7523}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor2 annotation(Placement(visible = true, transformation(origin = {50.4119, -43.8221}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Blocks.Sources.Constant constant1(k = Vmin) annotation(Placement(visible = true, transformation(origin = {76.021, -22.465}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {-98.9474, 1.50376}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-98.9474, 1.50376}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin p2 annotation(Placement(visible = true, transformation(origin = {98.9474, 6.31579}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {98.9474, 6.31579}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor RS_on(R = 0.001) annotation(Placement(visible = true, transformation(origin = {48.2283, 0.857694}, extent = {{-9.431319999999999, -9.431319999999999}, {9.431319999999999, 9.431319999999999}}, rotation = 0)));
        Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealopeningswitch1(control(start = false)) annotation(Placement(visible = true, transformation(origin = {-20.3, 0.454327}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
      equation
        connect(onoffcontroller2.y, idealopeningswitch1.control) annotation(Line(points = {{11.3338, -37.7523}, {-20.7519, -37.7523}, {-20.7519, -7.81955}, {-20.7519, -7.81955}}));
        connect(idealopeningswitch1.n, p1) annotation(Line(points = {{-30.3, 0.454327}, {-96.2406, 0.454327}, {-96.2406, 1.80451}, {-96.2406, 1.80451}}));
        connect(RS_on.p, idealopeningswitch1.p) annotation(Line(points = {{38.797, 0.857694}, {-10.5263, 0.857694}, {-10.5263, 0.601504}, {-10.5263, 0.601504}}));
        connect(voltagesensor2.n, pin_n) annotation(Line(points = {{50.4119, -53.8221}, {50.4119, -93.83459999999999}, {-6.61654, -93.83459999999999}, {-6.61654, -93.83459999999999}}));
        connect(voltagesensor2.p, RS_on.n) annotation(Line(points = {{50.4119, -33.8221}, {50.4119, -10.5263}, {57.7444, -10.5263}, {57.6596, -0.419401}, {57.6596, 0.857694}}));
        connect(RS_on.n, p2) annotation(Line(points = {{57.6596, 0.857694}, {97.1429, 0.857694}, {97.1429, 6.31579}, {98.9474, 6.31579}}));
        connect(onoffcontroller2.u, voltagesensor2.v) annotation(Line(points = {{34.3338, -43.7523}, {40.6015, -43.7523}, {40.6015, -43.609}, {40.6015, -43.609}}));
        connect(constant1.y, onoffcontroller2.reference) annotation(Line(points = {{65.021, -22.465}, {44.2105, -22.465}, {44.2105, -31.8797}, {35.4887, -31.8797}, {35.4887, -31.8797}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {-1.01156, 2.89017}, extent = {{-95.5202, 78.90170000000001}, {95.5202, -78.90170000000001}}), Text(origin = {3.46821, 39.0173}, extent = {{-62.4277, 29.7688}, {62.4277, -29.7688}}, textString = "Battery"), Text(origin = {-23.6416, -14.104}, extent = {{-62.4277, 29.7688}, {107.225, -3.75724}}, textString = "Discharge"), Text(origin = {2.65896, -39.8266}, extent = {{-62.4277, 29.7688}, {62.4277, -29.7688}}, textString = "Regulator")}));
      end BDR;

      model BCR "BCR"
        extends Modelica.Electrical.Analog.Interfaces.TwoPin;
        parameter Modelica.SIunits.Voltage Vmax = 4.0;
        parameter Modelica.SIunits.Voltage Vmin = 3.3;
      equation
        connect(p, n) annotation(Line(points = {{-100, 0}, {-95, 0}, {95, 0}, {100, 0}}, color = {0, 0, 0}, thickness = 0));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-95.5202, 78.90170000000001}, {95.5202, -78.90170000000001}}, origin = {-1.01156, 2.89017}), Text(textString = "Battery \\n Charge \\n Regulator", lineColor = {0, 0, 0}, extent = {{-80, 63}, {67, -37}})}), experiment(StopTime = 1, StartTime = 0));
      end BCR;
    end batteries;

    package solar_power
      model solarcell_simple_characteristic_lightconditions
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {11.7392, 13.6853}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(rising = 5, width = 1000, falling = 5, period = 3000) annotation(Placement(visible = true, transformation(origin = {-84.29989999999999, 38.4724}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        solar_power.solarcell_simple solarcell_simple2(Maxexp = 16, R_sh = 10) annotation(Placement(visible = true, transformation(origin = {-42.562, 39.2562}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {29.375, 41.875}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      equation
        connect(trapezoid1.y, solarcell_simple2.E_s) annotation(Line(points = {{-71.09990000000001, 38.4724}, {-52.0509, 38.4724}, {-52.0509, 39.1041}, {-51.0818, 39.1041}}));
        connect(resistor1.p, solarcell_simple2.n) annotation(Line(points = {{29.375, 53.875}, {-42.8125, 53.875}, {-42.8125, 51.2562}, {-42.562, 51.2562}}));
        connect(ground1.p, resistor1.n) annotation(Line(points = {{11.7392, 25.6853}, {11.7392, 29.6875}, {29.0625, 29.6875}, {29.0625, 29.875}, {29.375, 29.875}}));
        connect(solarcell_simple2.p, ground1.p) annotation(Line(points = {{-42.562, 27.2562}, {11.9835, 27.2562}, {11.9835, 25.6853}, {11.7392, 25.6853}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11000, Tolerance = 1e-06));
      end solarcell_simple_characteristic_lightconditions;

      model diode_characteristic
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-27.5819, -19.9781}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Semiconductors.Diode diode1(Vt = 2.25) annotation(Placement(visible = true, transformation(origin = {-31.4003, 42.1499}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 100, duration = 1) annotation(Placement(visible = true, transformation(origin = {-71.56999999999999, 17.5389}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.001) annotation(Placement(visible = true, transformation(origin = {3.11174, 22.3479}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      equation
        connect(resistor1.n, ground1.p) annotation(Line(points = {{3.11174, 10.3479}, {-27.4399, 10.3479}, {-27.4399, -7.97807}, {-27.5819, -7.97807}}));
        connect(diode1.n, resistor1.p) annotation(Line(points = {{-19.4003, 42.1499}, {2.54597, 42.1499}, {2.54597, 34.3479}, {3.11174, 34.3479}}));
        connect(diode1.p, rampvoltage1.p) annotation(Line(points = {{-43.4003, 42.1499}, {-71.2871, 42.1499}, {-71.2871, 29.5389}, {-71.56999999999999, 29.5389}}));
        connect(rampvoltage1.n, ground1.p) annotation(Line(points = {{-71.56999999999999, 5.5389}, {-27.4399, 5.5389}, {-27.4399, -7.97807}, {-27.5819, -7.97807}}));
      end diode_characteristic;

      block Exprgenerator "Generate exponential signal"
        parameter Real alpha = 1;
        parameter Real beta = 1;
        extends Modelica.Blocks.Interfaces.SO;
      equation
        //y = alpha * exp(beta * time);exp function
        y = exp(alpha * time) - 1;
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{0, -80}, {0, 68}}, color = {192, 192, 192}), Polygon(points = {{0, 90}, {-8, 68}, {8, 68}, {0, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-86, 50}, {-14, 2}}, lineColor = {192, 192, 192}, textString = "exp"), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Line(points = {{-90, -80.3976}, {68, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{90, -80.3976}, {68, -72.3976}, {68, -88.3976}, {90, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{0, 80}, {-8, 80}}, color = {192, 192, 192}), Line(points = {{0, -80}, {-8, -80}}, color = {192, 192, 192}), Line(points = {{0, -90}, {0, 84}}, color = {192, 192, 192}), Text(extent = {{9, 100}, {40, 80}}, lineColor = {160, 160, 164}, textString = "y"), Polygon(points = {{0, 100}, {-6, 84}, {6, 84}, {0, 100}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-100, -80.3976}, {84, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{100, -80.3976}, {84, -74.3976}, {84, -86.3976}, {100, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-31, 72}, {-11, 88}}, textString = "20", lineColor = {0, 0, 255}), Text(extent = {{-92, -83}, {-72, -103}}, textString = "-3", lineColor = {0, 0, 255}), Text(extent = {{70, -83}, {90, -103}}, textString = "3", lineColor = {0, 0, 255}), Text(extent = {{-18, -53}, {2, -73}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{66, -52}, {96, -72}}, lineColor = {160, 160, 164}, textString = "u")}));
      end Exprgenerator;

      model solarcell_characteristic
        extends Modelica.Icons.Example;
        Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863, -42.6184}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotatibe151982db6cf70df9edce98f7fde8aca304d663on = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {38.5987, -59.042}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763, 52.0374}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {38.1913, 52.3255}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-28.7743, 52.5267}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
      equation
        connect(const.y, solarcell1.E_s) annotation(Line(points = {{-59.6763, 52.0374}, {-37.6033, 52.0374}, {-37.6033, 52.3746}, {-37.2941, 52.3746}}));
        connect(exprgenerator1.y, variableresistor1.R) annotation(Line(points = {{66.5825, -42.6184}, {72.161, -42.6184}, {72.161, 52.657}, {51.3913, 52.657}, {51.3913, 52.3255}}));
        connect(solarcell1.p, variableresistor1.n) annotation(Line(points = {{-28.7743, 40.5267}, {38.4298, 40.5267}, {38.4298, 40.3255}, {38.1913, 40.3255}}));
        connect(variableresistor1.n, ground1.p) annotation(Line(points = {{38.1913, 40.3255}, {38.5525, 40.3255}, {38.5525, -47.042}, {38.5987, -47.042}}));
        connect(solarcell1.n, variableresistor1.p) annotation(Line(points = {{-28.7743, 64.52670000000001}, {37.9867, 64.52670000000001}, {37.9867, 64.32550000000001}, {38.1913, 64.32550000000001}}));
        annotation(experiment(StopTime = 1), Diagram, Icon);
      end solarcell_characteristic;

      model solarcell_characteristicV
        extends Modelica.Icons.Example;
        Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763, 52.0374}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-3.55006, 5.00759}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = -100) annotation(Placement(visible = true, transformation(origin = {35.9504, 66.52889999999999}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 300, duration = 1) annotation(Placement(visible = true, transformation(origin = {59.5041, 54.9587}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-37.6033, 52.8926}, extent = {{12, -12}, {-12, 12}}, rotation = -270)));
      equation
        connect(solarcell_simple1.n, constantvoltage1.p) annotation(Line(points = {{-37.6033, 64.8926}, {-37.9066, 64.8926}, {-37.9066, 66.4781}, {23.9504, 66.4781}, {23.9504, 66.52889999999999}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-37.6033, 40.8926}, {-3.71901, 40.8926}, {-3.71901, 17.0076}, {-3.55006, 17.0076}}));
        connect(constantvoltage1.n, rampvoltage1.p) annotation(Line(points = {{47.9504, 66.52889999999999}, {59.5041, 66.52889999999999}, {59.5041, 66.95869999999999}, {59.5041, 66.95869999999999}}));
        connect(ground1.p, rampvoltage1.n) annotation(Line(points = {{-3.55006, 17.0076}, {-3.55006, 40.4959}, {59.5041, 40.4959}, {59.5041, 42.9587}}));
        annotation(experimbe151982db6cf70df9edce98f7fde8aca304d663ent(StopTime = 1), Diagram, Icon);
      end solarcell_characteristicV;

      model solarcell_charactristic2
        extends Modelica.Icons.Example;
        Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {54.2395, 64.74769999999999}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {14.5514, -18.3734}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {15.2695, 21.2575}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-23.9521, 27.8443}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 5, width = 2000, period = 5000, falling = 5, offset = 0) annotation(Placement(visible = true, transformation(origin = {-82.3197, -20.3677}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-50.3989, 7.63791}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {55.2928, 6.2722}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-25.1497, -7.48503}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
      equation
        connect(trapezoid1.y, solarcell1.E_s) annotation(Line(points = {{-69.11969999999999, -20.3677}, {-59.6888, -20.3677}, {-59.6888, 7.48577}, {-58.9187, 7.48577}}));
        connect(const.y, variableresistor1.R) annotation(Line(points = {{67.4395, 64.74769999999999}, {83.4512, 64.74769999999999}, {83.4512, 6.22348}, {68.4928, 6.22348}, {68.4928, 6.2722}}));
        connect(dcdc_ideal_simple1.n2, ground1.p) annotation(Line(points = {{27.2695, 15.2575}, {27.157, 15.2575}, {27.157, 4.24328}, {14.1443, 4.24328}, {14.1443, -6.3734}, {14.5514, -6.3734}}));
        connect(dcdc_ideal_simple1.n1, ground1.p) annotation(Line(points = {{3.2695, 15.2575}, {3.11174, 15.2575}, {3.11174, 4.24328}, {14.1443, 4.24328}, {14.1443, -6.3734}, {14.5514, -6.3734}}));
        connect(resistor2.n, solarcell1.p) annotation(Line(points = {{-37.1497, -7.48503}, {-50.3536, -7.48503}, {-50.3536, -4.36209}, {-50.3989, -4.36209}}));
        connect(ground1.p, resistor2.p) annotation(Line(points = {{14.5514, -6.3734}, {14.5514, -7.35502}, {-13.1497, -7.35502}, {-13.1497, -7.48503}}));
        connect(variableresistor1.n, ground1.p) annotation(Line(points = {{55.2928, -5.7278}, {14.71, -5.7278}, {14.71, -6.3734}, {14.5514, -6.3734}}));
        connect(dcdc_ideal_simple1.p2, variableresistor1.p) annotation(Line(points = {{27.2695, 27.2575}, {55.7284, 27.2575}, {55.7284, 18.2722}, {55.2928, 18.2722}}));
        connect(resistor1.n, dcdc_ideal_simple1.p1) annotation(Line(points = {{-11.9521, 27.8443}, {2.82885, 27.8443}, {2.82885, 27.2575}, {3.2695, 27.2575}}));
        connect(solarcell1.n, resistor1.p) annotation(Line(points = {{-50.3989, 19.6379}, {-50.3536, 19.6379}, {-50.3536, 28.0057}, {-35.9521, 28.0057}, {-35.9521, 27.8443}}));
      end solarcell_charactristic2;

      model solarcell_dcdccharactristic3
        extends Modelica.Icons.Example;
        Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {54.2395, 64.74769999999999}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-23.9521, 27.8443}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {16.9731, 22.0651}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {55.2928, 6.2722}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-25.1497, -7.48503}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
        solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-66.52889999999999, 11.5702}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 100, width = 1500, falling = 100, period = 5000) annotation(Placement(visible = true, transformation(origin = {-107.333, 11.6667}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {7.3041, -27.5606}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      equation
        connect(resistor2.n, ground1.p) annotation(Line(points = {{-13.1497, -7.48503}, {7.33333, -7.48503}, {7.33333, -15}, {7.33333, -15}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-96.33329999999999, 11.6667}, {-76, 11.6667}, {-76, 11.6667}, {-76, 11.6667}}));
        connect(solarcell_simple1.p, resistor2.n) annotation(Line(points = {{-66.52889999999999, -0.429752}, {-66.52889999999999, -0.429752}, {-66.52889999999999, -7.02479}, {-37.1497, -7.02479}, {-37.1497, -7.48503}}));
        connect(solarcell_simple1.n, resistor1.p) annotation(Line(points = {{-66.52889999999999, 23.5702}, {-67.3554, 23.5702}, {-67.3554, 27.686}, {-35.9521, 27.686}, {-35.9521, 27.8443}}));
        connect(dcdc_ideal_simple1.n1, resistor2.p) annotation(Line(points = {{4.97313, 16.0651}, {4.80905, 16.0651}, {4.80905, -7.35502}, {-13.1497, -7.35502}, {-13.1497, -7.48503}}));
        connect(dcdc_ideal_simple1.n2, dcdc_ideal_simple1.n1) annotation(Line(points = {{28.9731, 16.0651}, {29.1372, 16.0651}, {29.1372, 5.94059}, {4.80905, 5.94059}, {4.80905, 16.0651}, {4.97313, 16.0651}}));
        connect(dcdc_ideal_simple1.p2, variableresistor1.p) annotation(Line(points = {{28.9731, 28.0651}, {54.8798, 28.0651}, {54.8798, 18.2722}, {55.2928, 18.2722}}));
        connect(resistor1.n, dcdc_ideal_simple1.p1) annotation(Line(points = {{-11.9521, 27.8443}, {4.24328, 27.8443}, {4.24328, 28.0651}, {4.97313, 28.0651}}));
        connect(resistor2.p, variableresistor1.n) annotation(Line(points = {{-13.1497, -7.48503}, {55.4455, -7.48503}, {55.4455, -5.7278}, {55.2928, -5.7278}}));
        connect(const.y, variableresistor1.R) annotation(Line(points = {{67.4395, 64.74769999999999}, {83.4512, 64.74769999999999}, {83.4512, 6.22348}, {68.4928, 6.22348}, {68.4928, 6.2722}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11111.0, Tolerance = 1e-06));
      end solarcell_dcdccharactristic3;

      model solarcell
        import Modelica.SIunits;
        import Modelica.Constants.*;
        import Modelica.Blocks.*;
        parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage";
        parameter SIunits.CurrentDensity I_sc = 168 "[A/mÃ‚Â²] Short Circuit Current on Earth using solar Constant of ";
        parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage";
        parameter SIunits.CurrentDensity I_mp = 160 "[A/mÃ‚Â²] Maximum Powerpoint Current";
        parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cmÃ‚Â²";
        parameter Real N_p = 100.0 "Numper of parallel solar cells per string";
        parameter Real N_s = 25.0 "Number of series-connected solar cells per string";
        parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation.";
        SIunits.CurrentDensity I_sc_actual;
        Real C_a = (V_mp / V_oc - 1) / log(1 - I_mp / I_sc);
        Real C_b = (1 - I_mp / I_sc) * exp(-V_mp / (C_a * V_oc));
        constant Real E0(final quantity = "Power", final unit = "W") = 1367.0 "Solarkonstante";
        extends Modelica.Electrical.Analog.Interfaces.OnePort;
        Modelica.Blocks.Interfaces.RealInput E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(visible = true, transformation(origin = {-1.26783, 70.9984}, extent = {{-12, 12}, {12, -12}}, rotation = -90), iconTransformation(origin = {-1.26783, 70.9984}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      protected
        SIunits.Voltage V_Sperr = 20;
        Real alpha = I_sc_actual * A_cell * N_p * (1 - C_b * (exp(-V_Sperr / (C_a * V_oc * N_s)) - 1));
      equation
        I_sc_actual = I_sc * E_s / E0;
        i = noEvent(if v < V_Sperr then I_sc_actual * A_cell * N_p * (1 - C_b * (exp(-v / (C_a * V_oc * N_s)) - 1)) else alpha + (v - V_Sperr) * 3);
        //i=10.0-0.01*(exp(v)-1);
        annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-48.9392, 47.8076}, {46.6761, -50.0707}}), Line(points = {{-78.3593, 89.10890000000001}, {-41.5842, 46.6761}, {-43.5644, 60.5375}, {-41.867, 46.6761}, {-53.7482, 50.0707}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-56.5771, 92.22069999999999}, {-26.8741, 55.7284}, {-37.9066, 59.4059}, {-27.4399, 56.0113}, {-27.7228, 66.1952}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-89.6747, 0.282885}, {-19.5191, 0.282885}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{89.6747, 0.282885}, {5.09194, 0.282885}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.3876, -37.3409}, {-18.3876, 40.1697}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{4.24328, -17.5389}, {4.24328, 18.6704}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{76.9449, -20.3678}, {76.9449, -52.6167}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{63.3664, -35.6436}, {90.2405, -35.6436}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-92.22069999999999, -34.512}, {-66.4781, -34.512}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}), Diagram);
      end solarcell;

      model solarcell_simple_characteristic
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {11.7392, 13.6853}, extent = {{-12, -12}, {12, 12}})));
        Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(transformation(origin = {42.6838, 13.9932}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}})));
        Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(transformation(origin = {-81.875, 39.0625}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(transformation(origin = {38.1913, 52.3255}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        solar_power.solarcell_simple solarcell_simple2(N_p = 50.0, Maxexp = 16, R_sh = 10, N_s = 45.0) annotation(Placement(transformation(origin = {-42.562, 39.2562}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
      equation
        connect(solarcell_simple2.n, variableresistor1.p) annotation(Line(points = {{-42.562, 51.2562}, {-43.2815, 51.2562}, {-43.2815, 65.06359999999999}, {38.1913, 65.06359999999999}, {38.1913, 64.32550000000001}}));
        connect(const.y, solarcell_simple2.E_s) annotation(Line(points = {{-68.675, 39.0625}, {-51.25, 39.0625}, {-51.25, 39.1041}, {-51.0818, 39.1041}}));
        connect(solarcell_simple2.p, ground1.p) annotation(Line(points = {{-42.562, 27.2562}, {11.9835, 27.2562}, {11.9835, 25.6853}, {11.7392, 25.6853}}));
        connect(variableresistor1.R, exprgenerator1.y) annotation(Line(points = {{51.3913, 52.3255}, {51.3913, 51.6529}, {79.33880000000001, 51.6529}, {79.33880000000001, 13.6364}, {50.88, 13.6364}, {50.88, 13.9932}}));
        connect(variableresistor1.n, ground1.p) annotation(Line(points = {{38.1913, 40.3255}, {11.5702, 40.3255}, {11.5702, 25.6853}, {11.7392, 25.6853}}));
        annotation(variableresistor1(v(flags = 2), i(flags = 2)), experiment(StopTime = 1, StartTime = 0));
      end solarcell_simple_characteristic;

      model solarcell_simple
        import Modelica.SIunits;
        import Modelica.Constants.*;
        import Modelica.Blocks.*;
        extends Modelica.Electrical.Analog.Interfaces.TwoPin;
        parameter Real N_p = 100.0 "Numper of parallel solar cells per string" annotation(Placement(transformation(origin = {68.595, 65.2893}, extent = {{-12, -12}, {12, 12}})));
        parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cm2" annotation(Placement(transformation(origin = {71.4876, 69.42149999999999}, extent = {{-12, -12}, {12, 12}})));
        parameter SIunits.CurrentDensity I_mp = 160 "[A/m2] Maximum Powerpoint Current" annotation(Placement(transformation(origin = {65.7025, 64.4628}, extent = {{-12, -12}, {12, 12}})));
        parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage" annotation(Placement(transformation(origin = {65.2893, 57.0248}, extent = {{-12, -12}, {12, 12}})));
        parameter SIunits.CurrentDensity I_sc = 168 "[A/m2] Short Circuit Current on Earth using solar Constant of " annotation(Placement(transformation(origin = {63.6364, 58.2645}, extent = {{-12, -12}, {12, 12}})));
        parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage" annotation(Placement(transformation(origin = {69.00830000000001, 71.9008}, extent = {{-12, -12}, {12, 12}})));
        constant Real E0(final quantity = "Power", final unit = "W") = 1367.0 "Solarkonstante" annotation(Placement(transformation(origin = {65.7025, 66.1157}, extent = {{-12, -12}, {12, 12}})));
        SIunits.CurrentDensity i_sc_actual(start = 0) annotation(Placement(transformation(origin = {65.7025, 66.1157}, extent = {{-12, -12}, {12, 12}})));
        parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation." annotation(Placement(transformation(origin = {68.1818, 62.3967}, extent = {{-12, -12}, {12, 12}})));
        parameter Real N_s = 25.0 "Number of series-connected solar cells per string" annotation(Placement(transformation(origin = {69.8347, 63.2231}, extent = {{-12, -12}, {12, 12}})));
        SIunits.Current i_sc = A_cell * N_p * I_sc annotation(Placement(transformation(origin = {69.42149999999999, 67.76860000000001}, extent = {{-12, -12}, {12, 12}})));
        parameter Real Maxexp = 17 "Maximum exponent" annotation(Placement(transformation(origin = {61.3861, 65.9123}, extent = {{-12, -12}, {12, 12}})));
        parameter SIunits.Resistance R_sh = 10000 annotation(Placement(transformation(origin = {62.5177, 58.2744}, extent = {{-12, -12}, {12, 12}})));
        SIunits.Current i(start = 0) annotation(Placement(transformation(origin = {65.6294, 64.4979}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Sources.SignalCurrent I_photonic annotation(Placement(transformation(origin = {-43, 3}, extent = {{12, -12}, {-12, 12}}, rotation = -90)));
        Modelica.Electrical.Analog.Semiconductors.Diode D_shunt(Vt = N_s * V_oc / log(I_sc / Ids + 1), Maxexp = Maxexp) annotation(Placement(transformation(origin = {-13, 3}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor R_shunt(R = R_sh) annotation(Placement(transformation(origin = {22, 3}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        input Modelica.Blocks.Interfaces.RealInput E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(transformation(origin = {-1.26783, 70.9984}, extent = {{-12, 12}, {12, -12}}, rotation = -90), iconTransformation(origin = {-1.26783, 70.9984}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor R_series(R = 1e-05) annotation(Placement(visible = true, transformation(origin = {57.422, -1.93449}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      protected
        parameter SIunits.CurrentDensity Ids = 1e-06 "Diode Saturation Current" annotation(Placement(transformation(origin = {66.1952, 63.0834}, extent = {{-12, -12}, {12, 12}})));
      equation
        i = n.i;
        i_sc_actual = i_sc * E_s / E0;
        I_photonic.i = i_sc_actual;
        connect(D_shunt.p, R_shunt.p) annotation(Line(points = {{-13, 15}, {-13, 21.2838}, {21.9595, 21.2838}, {21.9595, 14.8649}, {21.9595, 14.8649}}));
        connect(I_photonic.n, D_shunt.p) annotation(Line(points = {{-43, 15}, {-43, 21.9595}, {-13.1757, 21.9595}, {-13.1757, 15.8784}, {-13.1757, 15.8784}}));
        connect(D_shunt.n, I_photonic.p) annotation(Line(points = {{-13, -9}, {-13, -9.12162}, {-43.5811, -9.12162}, {-43.5811, -9.12162}}));
        connect(R_shunt.n, D_shunt.n) annotation(Line(points = {{22, -9}, {22, -8.78378}, {-13.1757, -8.78378}, {-13.1757, -8.78378}}));
        connect(R_shunt.p, R_series.p) annotation(Line(points = {{22, 15}, {22, 21.2838}, {45.6081, 21.2838}, {45.6081, -1.35135}, {45.6081, -1.35135}}));
        connect(p, I_photonic.p) annotation(Line(points = {{-100, 0}, {-76.3514, 0}, {-76.3514, -9.12162}, {-42.9054, -9.12162}, {-42.9054, -9.12162}}));
        connect(R_series.n, n) annotation(Line(points = {{69.422, -1.93449}, {98.98650000000001, -1.93449}, {98.98650000000001, -2.36486}, {98.98650000000001, -2.36486}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(fillColor = {0, 0, 255}, extent = {{-48.9392, 47.8076}, {46.6761, -50.0707}}), Line(points = {{-78.3593, 89.10890000000001}, {-41.5842, 46.6761}, {-43.5644, 60.5375}, {-41.867, 46.6761}, {-53.7482, 50.0707}}), Line(points = {{-56.5771, 92.22069999999999}, {-26.8741, 55.7284}, {-37.9066, 59.4059}, {-27.4399, 56.0113}, {-27.7228, 66.1952}}), Line(points = {{-89.6747, 0.282885}, {-19.5191, 0.282885}}), Line(points = {{89.6747, 0.282885}, {5.09194, 0.282885}}), Line(points = {{-18.3876, -37.3409}, {-18.3876, 40.1697}}), Line(points = {{4.24328, -17.5389}, {4.24328, 18.6704}}), Line(points = {{76.9449, -20.3678}, {76.9449, -52.6167}}), Line(points = {{63.3664, -35.6436}, {90.2405, -35.6436}}), Line(points = {{-92.22069999999999, -34.512}, {-66.4781, -34.512}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
      end solarcell_simple;

      model EVS4
        Modelica.Blocks.Sources.Sine sine1(amplitude = 500, freqHz = 0.001, phase = -90, offset = 500) annotation(Placement(visible = true, transformation(origin = {-74.8314, -3.05553}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-9.9095, -43.1523}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-31.0897, -2.88462}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359, -6.41026}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      equation
        connect(resistor1.n, ground1.p) annotation(Line(points = {{59.9359, -18.4103}, {-10, -18.4103}, {-10, -31.1523}, {-9.9095, -31.1523}}));
        connect(solarcell_simple1.n, resistor1.p) annotation(Line(points = {{-31.0897, 9.11538}, {59.7059, 9.11538}, {59.7059, 5.58974}, {59.9359, 5.58974}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-31.0897, -14.8846}, {-9.9359, -14.8846}, {-9.9359, -31.1523}, {-9.9095, -31.1523}}));
        connect(sine1.y, solarcell_simple1.E_s) annotation(Line(points = {{-61.6314, -3.05553}, {-39.8868, -3.05553}, {-39.8868, -3.03675}, {-39.6096, -3.03675}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 1e-06));
      end EVS4;

      model SA_Regulator
        extends Modelica.Electrical.Analog.Interfaces.TwoPin;
        parameter Modelica.SIunits.Voltage Vmax = 40.0;
        Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode2 annotation(Placement(visible = true, transformation(origin = {21.0715, 4.47616}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
        Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-21.8513, 4.60906}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Semiconductors.ZDiode zdiode1(Bv = Vmax) annotation(Placement(visible = true, transformation(origin = {0.100457, -27.8571}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-2.10526, -97.1429}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-2.10526, -97.1429}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(idealdiode1.p, p) annotation(Line(points = {{-31.8513, 4.60906}, {-98.64660000000001, 4.60906}, {-98.64660000000001, 1.20301}, {-98.64660000000001, 1.20301}}));
        connect(idealdiode2.n, n) annotation(Line(points = {{31.0715, 4.47616}, {100.752, 4.47616}, {100.752, 1.80451}, {100.752, 1.80451}}));
        connect(zdiode1.p, pin_n) annotation(Line(points = {{0.100457, -37.8571}, {0.100457, -96.8421}, {-0.601504, -96.8421}, {-0.601504, -96.8421}}));
        connect(idealdiode1.n, zdiode1.n) annotation(Line(points = {{-11.8513, 4.60906}, {0, 4.60906}, {0, -18.0451}, {0, -18.0451}}));
        connect(zdiode1.n, idealdiode2.p) annotation(Line(points = {{0.100457, -17.8571}, {0.100457, 4.51128}, {10.8271, 4.51128}, {10.8271, 4.51128}}));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {0.9022559999999999, -1.50376}, extent = {{-96.2406, 88.4211}, {96.2406, -88.4211}}), Text(origin = {-20.0009, -4.96504}, extent = {{-81.66, 72.03}, {113.237, -64.5123}}, textString = "SA \n regulator")}));
      end SA_Regulator;
    end solar_power;

    package dcmodel
      model dcdc_characteristic
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-36.7751, -39.8868}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {65.6294, 40.4526}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {22.9137, 69.3069}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {22.9138, 35.9265}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {-38.1895, 14.1442}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {50.0707, -6.50636}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(visible = true, transformation(origin = {-78.5311, -4.30002}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {12.447, -24.8939}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
      equation
        connect(dcdc_ideal_simple1.p2, variableresistor1.p) annotation(Line(points = {{-26.1895, 20.1442}, {-5.09194, 20.1442}, {-5.09194, 5.65771}, {50.3536, 5.65771}, {50.3536, 5.49364}, {50.0707, 5.49364}}));
        connect(ground1.p, dcdc_ideal_simple1.n2) annotation(Line(points = {{-36.7751, -27.8868}, {-36.7751, -1.9802}, {-26.0255, -1.9802}, {-26.0255, 8.14423}, {-26.1895, 8.14423}}));
        connect(dcdc_ideal_simple1.n1, ground1.p) annotation(Line(points = {{-50.1895, 8.14423}, {-50.0707, 8.14423}, {-50.0707, -1.9802}, {-36.7751, -1.9802}, {-36.7751, -27.8868}, {-36.7751, -27.8868}}));
        connect(constantvoltage1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-78.5311, 7.69998}, {-78.3593, 7.69998}, {-78.3593, 20.9335}, {-50.1895, 20.9335}, {-50.1895, 20.1442}}));
        connect(ground1.p, constantvoltage1.n) annotation(Line(points = {{-36.7751, -27.8868}, {-36.7751, -25.1768}, {-78.925, -25.1768}, {-78.925, -16.3}, {-78.5311, -16.3}}));
        connect(resistor1.n, ground1.p) annotation(Line(points = {{0.447, -24.8939}, {-36.7751, -24.8939}, {-36.7751, -27.8868}, {-36.7751, -27.8868}}));
        connect(variableresistor1.n, resistor1.p) annotation(Line(points = {{50.0707, -18.5064}, {50.0707, -18.5064}, {50.0707, -24.8939}, {24.447, -24.8939}, {24.447, -24.8939}}));
        connect(add1.y, variableresistor1.R) annotation(Line(points = {{78.82940000000001, 40.4526}, {84.29989999999999, 40.4526}, {84.29989999999999, -6.50636}, {63.2707, -6.50636}, {63.2707, -6.50636}}));
        connect(const.y, add1.u2) annotation(Line(points = {{36.1138, 35.9265}, {49.7878, 35.9265}, {49.7878, 33.2526}, {51.2294, 33.2526}}));
        connect(ramp1.y, add1.u1) annotation(Line(points = {{36.1137, 69.3069}, {40.4526, 69.3069}, {40.4526, 47.5248}, {51.2294, 47.5248}, {51.2294, 47.6526}}));
        annotation(Diagram(graphics = {Line(points = {{25.7426, 63.3663}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 1e-06));
      end dcdc_characteristic;

      model dc_limiter_test
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285, -43.5643}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-16.2777, 18.9533}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 10, V_in_max = 100, slope = 5) annotation(Placement(visible = true, transformation(origin = {16.4074, 3.9604}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {57.1428, 5.9406}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726, -13.0493}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
        Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 100, duration = 1) annotation(Placement(visible = true, transformation(origin = {-72.4187, 7.92079}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      equation
        connect(rampvoltage1.p, resistor2.p) annotation(Line(points = {{-72.4187, 19.9208}, {-28.8543, 19.9208}, {-28.8543, 18.9533}, {-28.2777, 18.9533}}));
        connect(rampvoltage1.n, resistor3.n) annotation(Line(points = {{-72.4187, -4.07921}, {-72.1358, -4.07921}, {-72.1358, -13.2956}, {-48.2726, -13.2956}, {-48.2726, -13.0493}}));
        connect(dcdc_ideal_simple1.n2, dcdc_ideal_simple1.n1) annotation(Line(points = {{28.4074, -2.0396}, {28.2885, -2.0396}, {28.2885, -10.1839}, {4.80905, -10.1839}, {4.80905, -2.0396}, {4.40736, -2.0396}}));
        connect(resistor1.p, dcdc_ideal_simple1.p2) annotation(Line(points = {{57.1428, 17.9406}, {39.3211, 17.9406}, {39.3211, 10.1839}, {28.4074, 10.1839}, {28.4074, 9.9604}}));
        connect(dcdc_ideal_simple1.n2, resistor1.n) annotation(Line(points = {{28.4074, -2.0396}, {34.7949, -2.0396}, {34.7949, -6.78925}, {57.1428, -6.78925}, {57.1428, -6.0594}}));
        connect(dcdc_ideal_simple1.n1, resistor3.p) annotation(Line(points = {{4.40736, -2.0396}, {4.52617, -2.0396}, {4.52617, -13.0127}, {-24.2726, -13.0127}, {-24.2726, -13.0493}}));
        connect(resistor2.n, dcdc_ideal_simple1.p1) annotation(Line(points = {{-4.2777, 18.9533}, {4.52617, 18.9533}, {4.52617, 9.9604}, {4.40736, 9.9604}}));
        connect(ground1.p, resistor3.n) annotation(Line(points = {{-55.7285, -31.5643}, {-55.7285, -13.5785}, {-48.3734, -13.5785}, {-48.3734, -13.0493}, {-48.2726, -13.0493}}));
        annotation(experiment(StartTime = 0, StopTime = 2, Tolerance = 1e-06, Interval = 0.004));
      end dc_limiter_test;

      model DCtoDCModel "DC/DC Converter Model nach Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
        model SignalCurrent "Generic current source using the input signal asource current"
          extends Modelica.Electrical.Analog.Interfaces.OnePort;
          Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-0.565771, 71.0042}, extent = {{-12, 12}, {12, -12}}, rotation = -90), iconTransformation(origin = {-0.565771, 71.0042}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
          annotation(Diagram, Icon(graphics = {Line(points = {{-88.2603, -0.282885}, {-52.6167, -0.282885}, {-48.3734, -0.282885}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25), Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-42.7157, 46.6761}, {47.8076, -49.505}}), Line(points = {{51.4851, 0.282885}, {89.10890000000001, 0.565771}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}));
        end SignalCurrent;

        model CCS
          extends Modelica.Electrical.Analog.Interfaces.TwoPort;
        equation
          i1 = 0;
          annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.372, 71.0042}, {91.372, -69.024}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-66.4781, 34.2291}, {66.4781, -29.703}}, textString = "CCS")}));
        end CCS;

        Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025, 45.7711}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-99.5025, 45.7711}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497, 46.1028}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {100.497, 46.1028}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));

        class LimPICont
          parameter Real Pout;
          parameter Real Vref;
          Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {99.5757, 5.65771}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {99.5757, 5.65771}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-97.3126, 1.13154}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-97.3126, 1.13154}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Math.Gain Gain1(k = 10) annotation(Placement(visible = true, transformation(origin = {-22.3479, 40.4526}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Math.Add Add1 annotation(Placement(visible = true, transformation(origin = {31.4003, 5.09194}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref, k = 1) annotation(Placement(visible = true, transformation(origin = {-26.0255, -41.3013}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        equation
          connect(Add1.y, y) annotation(Line(points = {{44.6003, 5.09194}, {91.372, 5.09194}, {91.372, 5.65771}, {99.5757, 5.65771}}));
          connect(Gain1.u, u) annotation(Line(points = {{-36.7479, 40.4526}, {-48.9392, 40.4526}, {-48.9392, 1.13154}, {-97.3126, 1.13154}}));
          connect(Gain1.y, Add1.u1) annotation(Line(points = {{-9.14795, 40.4526}, {0.848674, 40.4526}, {0.848674, 12.2919}, {17.0003, 12.2919}}));
          connect(LimIntegrator1.u, u) annotation(Line(points = {{-40.4255, -41.3013}, {-48.9392, -41.3013}, {-48.9392, 1.13154}, {-97.3126, 1.13154}}));
          connect(LimIntegrator1.y, Add1.u2) annotation(Line(points = {{-12.8255, -41.3013}, {1.41445, -41.3013}, {1.41445, -2.10806}, {17.0003, -2.10806}}));
          annotation(Diagram, Icon(graphics = {Line(points = {{-80, 78}, {-80, -90}}, rotation = 0, color = {192, 192, 192}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, rotation = 0, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-90, -80}, {82, -80}}, rotation = 0, color = {192, 192, 192}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{90, -80}, {68, -72}, {68, -88}, {90, -80}}, rotation = 0, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-80, -80}, {-80, 50}, {-80, -20}, {30, 60}, {80, 60}}, rotation = 0, color = {0, 0, 127}, pattern = LinePattern.Solid, thickness = 0.25), Text(rotation = 0, lineColor = {192, 192, 192}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20, -20}, {80, -60}}, textString = "LimPI")}));
        end LimPICont;

        Real Iout annotation(Placement(visible = true, transformation(origin = {67.619, 78.5277}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {67.4051, 79.2675}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Vref annotation(Placement(visible = true, transformation(origin = {70.3991, 78.9255}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Pout annotation(Placement(visible = true, transformation(origin = {66.761, 79.2079}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {68.56570000000001, 78.6802}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real eff annotation(Placement(visible = true, transformation(origin = {67.5608, 79.1375}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {-52.1354, 79.2469}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = Pout / Vref, uMin = 0) annotation(Placement(visible = true, transformation(origin = {27.8677, 79.723}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant Constant1(k = Vref) annotation(Placement(visible = true, transformation(origin = {-80.6833, 79.0128}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        CCS CCS1 annotation(Placement(visible = true, transformation(origin = {-13.4794, -3.13342}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {100.829, -55.7992}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {100.829, -55.7992}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-99.9705, -57.2039}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-99.9705, -57.2039}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-82.9539, 32.7429}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {82.72029999999999, 25.0863}, extent = {{12, -12}, {-12, 12}}, rotation = -270)));
        Modelica.Electrical.Analog.Basic.Resistor Rhk(R = 10000000) annotation(Placement(visible = true, transformation(origin = {-47.5463, -2.79786}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {95.9451, -7.11907}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Capacitor Cin(C = 5e-05) annotation(Placement(visible = true, transformation(origin = {-76.77549999999999, -2.72419}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        SignalCurrent SignalCurrent1 annotation(Placement(visible = true, transformation(origin = {18.5897, -5.33737}, extent = {{12, -12}, {-12, 12}}, rotation = -270)));
        Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {61.2614, -6.05931}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Capacitor Cout(C = 5e-05) annotation(Placement(visible = true, transformation(origin = {38.7774, -6.20137}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        LimPICont LimPI(Pout = Pout, Vref = Vref) annotation(Placement(visible = true, transformation(origin = {-20, 80}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      equation
        connect(LimPI.y, Limiter1.u) annotation(Line(points = {{-8.05092, 80.6789}, {13.1455, 80.6789}, {13.1455, 79.8122}, {13.1455, 79.8122}}));
        connect(Feedback1.y, LimPI.u) annotation(Line(points = {{-41.3354, 79.2469}, {-31.4554, 79.2469}, {-31.4554, 79.34269999999999}, {-31.4554, 79.34269999999999}}));
        connect(Dout.n, Cout.p) annotation(Line(points = {{95.9451, 4.88093}, {89.6747, 4.88093}, {89.6747, 5.79863}, {38.7774, 5.79863}}));
        connect(Dout.p, Cout.n) annotation(Line(points = {{95.9451, -19.1191}, {76.66200000000001, -19.1191}, {76.66200000000001, -18.2014}, {38.7774, -18.2014}}));
        connect(Cout.n, Volt.n) annotation(Line(points = {{38.7774, -18.2014}, {23.1966, -18.2014}, {23.1966, -18.0593}, {61.2614, -18.0593}}));
        connect(Volt.p, Cout.p) annotation(Line(points = {{61.2614, 5.94069}, {74.116, 5.94069}, {74.116, 5.79863}, {38.7774, 5.79863}}));
        connect(Volt.p, Amp.p) annotation(Line(points = {{61.2614, 5.94069}, {57.1429, 5.94069}, {57.1429, 13.0863}, {82.72029999999999, 13.0863}}));
        connect(Feedback1.u2, Volt.v) annotation(Line(points = {{-52.1354, 69.6469}, {-52.1354, 39.3211}, {51.768, 39.3211}, {51.768, -6.05931}, {49.2614, -6.05931}}));
        connect(Volt.n, n1) annotation(Line(points = {{61.2614, -18.0593}, {63.0835, -18.0593}, {63.0835, -55.7992}, {100.829, -55.7992}}));
        connect(Limiter1.y, SignalCurrent1.u) annotation(Line(points = {{41.0677, 79.723}, {46.1103, 79.723}, {46.1103, -5.40527}, {10.0692, -5.40527}}));
        connect(Dout.n, SignalCurrent1.n) annotation(Line(points = {{95.9451, 4.88093}, {95.6153, 4.88093}, {95.6153, 6.66263}, {18.5897, 6.66263}}));
        connect(SignalCurrent1.p, Dout.p) annotation(Line(points = {{18.5897, -17.3374}, {10.4668, -17.3374}, {10.4668, -19.1191}, {95.9451, -19.1191}}));
        connect(Cin.n, Rhk.n) annotation(Line(points = {{-76.77549999999999, -14.7242}, {-38.1895, -14.7242}, {-38.1895, -14.7979}, {-47.5463, -14.7979}}));
        connect(Rhk.p, Cin.p) annotation(Line(points = {{-47.5463, 9.20214}, {-62.2348, 9.20214}, {-62.2348, 9.27581}, {-76.77549999999999, 9.27581}}));
        connect(Cin.n, n) annotation(Line(points = {{-76.77549999999999, -14.7242}, {-76.0962, -14.7242}, {-76.0962, -57.2039}, {-99.9705, -57.2039}}));
        connect(Din.n, Cin.p) annotation(Line(points = {{-82.9539, 20.7429}, {-32.8147, 20.7429}, {-32.8147, 9.27581}, {-76.77549999999999, 9.27581}}));
        connect(CCS1.p2, Rhk.p) annotation(Line(points = {{-1.47945, 2.86658}, {1.69733, 2.86658}, {1.69733, 9.20214}, {-47.5463, 9.20214}}));
        connect(CCS1.n2, Rhk.n) annotation(Line(points = {{-1.47945, -9.133419999999999}, {2.54599, -9.133419999999999}, {2.54599, -14.7979}, {-47.5463, -14.7979}}));
        connect(CCS1.n1, n1) annotation(Line(points = {{-25.4794, -9.133419999999999}, {-37.6237, -9.133419999999999}, {-37.6237, -55.7992}, {100.829, -55.7992}}));
        connect(CCS1.p1, p1) annotation(Line(points = {{-25.4794, 2.86658}, {-21.4993, 2.86658}, {-21.4993, 46.1028}, {100.497, 46.1028}}));
        connect(Amp.n, p1) annotation(Line(points = {{82.72029999999999, 37.0863}, {82.8854, 37.0863}, {82.8854, 46.1028}, {100.497, 46.1028}}));
        connect(Constant1.y, Feedback1.u1) annotation(Line(points = {{-67.4833, 79.0128}, {-62.5177, 79.0128}, {-62.5177, 79.2469}, {-61.7354, 79.2469}}));
        connect(p, Din.p) annotation(Line(points = {{-99.5025, 45.7711}, {-83.1683, 45.7711}, {-83.1683, 44.7429}, {-82.9539, 44.7429}}));
        Iout = Pout / Vref;
        CCS1.i2 = CCS1.v1 * Amp.i / ((CCS1.v2 + 1e-10) * eff);
        SignalCurrent1.i = if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.u else 0;
        annotation(Diagram, Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.69450000000001, 78.6421}, {88.5431, -74.6818}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668, 68.1754}, {76.37909999999999, 30.2687}}, textString = "%Vref V"), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492, 18.9533}, {57.9915, -33.0976}}, textString = "DCDC")}));
      end DCtoDCModel;

      model dcdc_ideal "DC/DC Converter Model nach Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
        model CCS
          extends Modelica.Electrical.Analog.Interfaces.TwoPort;
        equation
          i1 = 0;
          annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.372, 71.0042}, {91.372, -69.024}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-66.4781, 34.2291}, {66.4781, -29.703}}, textString = "CCS")}));
        end CCS;

        Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025, 45.7711}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-99.5025, 45.7711}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497, 46.1028}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {100.497, 46.1028}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));

        class LimPICont
          parameter Real Pout;
          parameter Real Vref;
          parameter Real gain = 1;
          parameter Real gainI = 1;
          Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {99.5757, 5.65771}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {99.5757, 5.65771}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-97.3126, 1.13154}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-97.3126, 1.13154}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Math.Gain Gain1(k = gain) annotation(Placement(visible = true, transformation(origin = {-22.3479, 40.4526}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Math.Add Add1 annotation(Placement(visible = true, transformation(origin = {31.4003, 5.09194}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref, k = gainI) annotation(Placement(visible = true, transformation(origin = {-26.0255, -41.3013}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        equation
          connect(Add1.y, y) annotation(Line(points = {{44.6003, 5.09194}, {91.372, 5.09194}, {91.372, 5.65771}, {99.5757, 5.65771}}));
          connect(Gain1.u, u) annotation(Line(points = {{-36.7479, 40.4526}, {-48.9392, 40.4526}, {-48.9392, 1.13154}, {-97.3126, 1.13154}}));
          connect(Gain1.y, Add1.u1) annotation(Line(points = {{-9.14795, 40.4526}, {0.848674, 40.4526}, {0.848674, 12.2919}, {17.0003, 12.2919}}));
          connect(LimIntegrator1.u, u) annotation(Line(points = {{-40.4255, -41.3013}, {-48.9392, -41.3013}, {-48.9392, 1.13154}, {-97.3126, 1.13154}}));
          connect(LimIntegrator1.y, Add1.u2) annotation(Line(points = {{-12.8255, -41.3013}, {1.41445, -41.3013}, {1.41445, -2.10806}, {17.0003, -2.10806}}));
          annotation(Diagram, Icon(graphics = {Line(points = {{-80, 78}, {-80, -90}}, rotation = 0, color = {192, 192, 192}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, rotation = 0, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-90, -80}, {82, -80}}, rotation = 0, color = {192, 192, 192}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{90, -80}, {68, -72}, {68, -88}, {90, -80}}, rotation = 0, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-80, -80}, {-80, 50}, {-80, -20}, {30, 60}, {80, 60}}, rotation = 0, color = {0, 0, 127}, pattern = LinePattern.Solid, thickness = 0.25), Text(rotation = 0, lineColor = {192, 192, 192}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20, -20}, {80, -60}}, textString = "LimPI")}));
        end LimPICont;

        Real Iout annotation(Placement(visible = true, transformation(origin = {67.619, 78.5277}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {67.4051, 79.2675}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Vref annotation(Placement(visible = true, transformation(origin = {70.3991, 78.9255}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Pout annotation(Placement(visible = true, transformation(origin = {66.761, 79.2079}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {68.56570000000001, 78.6802}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        parameter Real eff annotation(Placement(visible = true, transformation(origin = {67.5608, 79.1375}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {-52.1354, 79.2469}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = Pout / Vref, uMin = 0) annotation(Placement(visible = true, transformation(origin = {27.8677, 79.723}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        LimPICont LimPI(Pout = Pout, Vref = Vref, gain = 10, gainI = 1) annotation(Placement(visible = true, transformation(origin = {-16.2708, 79.1807}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {100.829, -55.7992}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {100.829, -55.7992}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-99.9705, -57.2039}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-99.9705, -57.2039}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Logical.GreaterThreshold greaterthreshold1(threshold = Vinmin) annotation(Placement(visible = true, transformation(origin = {-27.7228, 35.9264}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0)));
        Modelica.Blocks.Logical.LessThreshold lessthreshold1(threshold = Vinmax) annotation(Placement(visible = true, transformation(origin = {-27.7228, 20.6506}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {6.78922, 52.3338}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
        Modelica.Blocks.Logical.Nand nand1 annotation(Placement(visible = true, transformation(origin = {0, 31.1174}, extent = {{-5.59809, -5.59809}, {5.59809, 5.59809}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant Constant1(k = Vref) annotation(Placement(visible = true, transformation(origin = {-85.20950000000001, 79.2957}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0)));
        CCS CCS1 annotation(Placement(visible = true, transformation(origin = {-13.4794, -12.1858}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {82.72029999999999, 25.0863}, extent = {{12, -12}, {-12, 12}}, rotation = -270)));
        Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {63.2416, -6.90797}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {41.0653, -5.98753}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor1 annotation(Placement(visible = true, transformation(origin = {-61.1033, -1.41443}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalCurrent signalcurrent1 annotation(Placement(visible = true, transformation(origin = {23.4795, -5.9406}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-84.9341, 27.0852}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Blocks.Logical.Switch switch1 annotation(Placement(visible = true, transformation(origin = {22.9137, 28.8543}, extent = {{-6.1579, 6.1579}, {6.1579, -6.1579}}, rotation = -90)));
      equation
        connect(voltagesensor1.p, CCS1.p2) annotation(Line(points = {{-61.1033, 10.5856}, {-1.41443, 10.5856}, {-1.41443, -6.1858}, {-1.4794, -6.1858}}));
        connect(CCS1.n1, n1) annotation(Line(points = {{-25.4794, -18.1858}, {-37.6237, -18.1858}, {-37.6237, -55.7992}, {100.829, -55.7992}}));
        connect(CCS1.n2, n) annotation(Line(points = {{-1.4794, -18.1858}, {-1.69731, -18.1858}, {-1.69731, -23.4795}, {-72.1358, -23.4795}, {-72.1358, -57.1429}, {-99.9705, -57.1429}, {-99.9705, -57.2039}}));
        connect(CCS1.p1, p1) annotation(Line(points = {{-25.4794, -6.18575}, {-40.4526, -6.18575}, {-40.4526, 46.1028}, {100.497, 46.1028}}));
        connect(switch1.y, signalcurrent1.i) annotation(Line(points = {{22.9137, 22.0806}, {22.9137, 22.0806}, {22.9137, 12.1641}, {5.65771, 12.1641}, {5.65771, -5.94059}, {15.0795, -5.94059}, {15.0795, -5.9406}}));
        connect(Constant1.y, Feedback1.u1) annotation(Line(points = {{-77.75839999999999, 79.2957}, {-63.3663, 79.2957}, {-63.3663, 79.2469}, {-61.7354, 79.2469}}));
        connect(nand1.y, switch1.u2) annotation(Line(points = {{6.1579, 31.1174}, {11.3154, 31.1174}, {11.3154, 42.4328}, {22.9137, 42.4328}, {22.9137, 36.2438}, {22.9137, 36.2438}}));
        connect(greaterthreshold1.y, nand1.u1) annotation(Line(points = {{-20.9491, 35.9264}, {-13.2956, 35.9264}, {-13.2956, 31.1174}, {-6.71771, 31.1174}, {-6.71771, 31.1174}}));
        connect(lessthreshold1.y, nand1.u2) annotation(Line(points = {{-20.9491, 20.6506}, {-13.5785, 20.6506}, {-13.5785, 26.8741}, {-6.71771, 26.8741}, {-6.71771, 26.6389}}));
        connect(switch1.u3, Limiter1.y) annotation(Line(points = {{17.9874, 36.2438}, {18.1047, 36.2438}, {18.1047, 57.1429}, {45.8274, 57.1429}, {45.8274, 79.77370000000001}, {41.0677, 79.77370000000001}, {41.0677, 79.723}}));
        connect(const.y, switch1.u1) annotation(Line(points = {{14.9854, 52.3338}, {27.4399, 52.3338}, {27.4399, 36.2438}, {27.8401, 36.2438}}));
        connect(p, Din.p) annotation(Line(points = {{-99.5025, 45.7711}, {-83.1683, 45.7711}, {-83.1683, 39.0852}, {-84.9341, 39.0852}}));
        connect(Din.n, voltagesensor1.p) annotation(Line(points = {{-84.9341, 15.0852}, {-61.3861, 15.0852}, {-61.3861, 10.5856}, {-61.1033, 10.5856}}));
        connect(greaterthreshold1.u, voltagesensor1.v) annotation(Line(points = {{-35.1122, 35.9264}, {-48.6563, 35.9264}, {-48.6563, 20.6506}, {-72.4187, 20.6506}, {-72.4187, -1.41443}, {-73.1033, -1.41443}}));
        connect(lessthreshold1.u, voltagesensor1.v) annotation(Line(points = {{-35.1122, 20.6506}, {-72.4187, 20.6506}, {-72.4187, -1.41443}, {-73.1033, -1.41443}}));
        connect(signalcurrent1.p, Dout.p) annotation(Line(points = {{23.4795, -17.9406}, {41.3013, -17.9406}, {41.3013, -17.9875}, {41.0653, -17.9875}}));
        connect(signalcurrent1.n, Dout.n) annotation(Line(points = {{23.4795, 6.0594}, {40.7355, 6.0594}, {40.7355, 6.01247}, {41.0653, 6.01247}}));
        connect(voltagesensor1.n, n) annotation(Line(points = {{-61.1033, -13.4144}, {-61.3861, -13.4144}, {-61.3861, -57.1429}, {-99.9705, -57.1429}, {-99.9705, -57.2039}}));
        connect(Volt.p, Dout.n) annotation(Line(points = {{63.2416, 5.09203}, {41.3013, 5.09203}, {41.3013, 6.01247}, {41.0653, 6.01247}}));
        connect(Dout.p, Volt.n) annotation(Line(points = {{41.0653, -17.9875}, {63.3663, -17.9875}, {63.3663, -18.908}, {63.2416, -18.908}}));
        connect(Volt.p, Amp.p) annotation(Line(points = {{63.2416, 5.09203}, {62.8006, 5.09203}, {62.8006, 13.0863}, {82.72029999999999, 13.0863}}));
        connect(Volt.n, n1) annotation(Line(points = {{63.2416, -18.908}, {63.0835, -18.908}, {63.0835, -55.7992}, {100.829, -55.7992}}));
        connect(Feedback1.u2, Volt.v) annotation(Line(points = {{-52.1354, 69.6469}, {-52.1354, 39.3211}, {51.768, 39.3211}, {51.768, -6.90797}, {51.2416, -6.90797}}));
        connect(Amp.n, p1) annotation(Line(points = {{82.72029999999999, 37.0863}, {82.8854, 37.0863}, {82.8854, 46.1028}, {100.497, 46.1028}}));
        connect(LimPI.y, Limiter1.u) annotation(Line(points = {{-4.32175, 79.8596}, {12.447, 79.8596}, {12.447, 79.723}, {13.4677, 79.723}}));
        connect(Feedback1.y, LimPI.u) annotation(Line(points = {{-41.3354, 79.2469}, {-28.0057, 79.2469}, {-28.0057, 79.3165}, {-27.9484, 79.3165}}));
        Iout = Pout / Vref;
        CCS1.i2 = smooth(0, CCS1.v1 * Amp.i / ((CCS1.v2 + 1e-07) * eff));
        //SignalCurrent1.i = smooth(0, if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.u else 0);
        annotation(Diagram, Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.69450000000001, 78.6421}, {88.5431, -74.6818}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668, 68.1754}, {76.37909999999999, 30.2687}}, textString = "%Vref V"), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492, 18.9533}, {57.9915, -33.0976}}, textString = "DCDC")}));
      end dcdc_ideal;

      connector Powerconnector_out
        output Modelica.SIunits.Power power;
        annotation(Icon(graphics = {Polygon(points = {{-38.7553, 84.29989999999999}, {34.7949, 84.5827}, {89.10890000000001, 3.9604}, {40.4526, -86.2801}, {-41.5842, -87.41160000000001}, {-88.82599999999999, 6.78925}, {-38.7553, 84.29989999999999}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25)}), Diagram(graphics = {Polygon(points = {{-20.3678, 42.7157}, {22.0651, 42.4328}, {41.867, 9.33522}, {22.6308, -31.4003}, {-24.0453, -31.1174}, {-44.6959, 5.37482}, {-45.5446, 7.63791}, {-20.3678, 42.7157}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-58.8402, 74.9646}, {61.1033, 49.7878}}, textString = "Power Connector")}));
      end Powerconnector_out;

      connector Powerconnector_in
        input Modelica.SIunits.Power power;
        annotation(Icon(graphics = {Polygon(points = {{-38.7553, 84.29989999999999}, {34.7949, 84.5827}, {89.10890000000001, 3.9604}, {40.4526, -86.2801}, {-41.5842, -87.41160000000001}, {-88.82599999999999, 6.78925}, {-38.7553, 84.29989999999999}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25)}), Diagram(graphics = {Polygon(points = {{-20.3678, 42.7157}, {22.0651, 42.4328}, {41.867, 9.33522}, {22.6308, -31.4003}, {-24.0453, -31.1174}, {-44.6959, 5.37482}, {-45.5446, 7.63791}, {-20.3678, 42.7157}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-58.8402, 74.9646}, {61.1033, 49.7878}}, textString = "Power Connector")}));
      end Powerconnector_in;

      model DCtoPower "generic ideal DC/DC Converter with Power Output"
        parameter Modelica.SIunits.Voltage V_in_max;
        parameter Modelica.SIunits.Voltage V_in_min;
        parameter Real eff = 0.85;
        parameter Integer m(min = 1) = 3 "Number of Power Outputs";
        Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-100.141, 38.4724}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-100.141, 38.4724}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-100.141, -39.604}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-100.141, -39.604}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        dcmodel.Powerconnector_out power_out[m] annotation(Placement(visible = true, transformation(origin = {100.99, -0.848656}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {100.99, -0.848656}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.SIunits.Voltage v(start = 0);
        Modelica.SIunits.Current i(start = 0);
        Modelica.SIunits.Power powersum(start = 1);
      equation
        v = p.v - n.v;
        0 = p.i + n.i;
        i = p.i;
        powersum = sum(power_out.power);
        i = if v > V_in_min and v < V_in_max then powersum / (v * eff) else 0;
        annotation(Diagram, Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.9774, 80.3395}, {98.16119999999999, -79.77370000000001}})}));
      end DCtoPower;

      model dcdc_ideal_simple
        import Modelica.Constants.pi;
        extends Modelica.Electrical.Analog.Interfaces.TwoPort;
        parameter Real eff = 0.85 annotation(Placement(transformation(origin = {71.521, -76.3754}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_out = 5;
        parameter Modelica.SIunits.Voltage V_in_min = 6.5;
        parameter Modelica.SIunits.Voltage V_in_max = 100;
        parameter Real slope = 0.01;
      equation
        if v1 < V_in_max and v1 > V_in_min + slope * 0.5 then
          v2 = V_out;
          i1 = (-i2 * v2) / (v1 * eff);
        elseif v1 >= V_in_min - slope * 0.5 then
          v2 = V_out * (sin((v1 - V_in_min - slope * 0.5) * pi * 0.5 / slope * 2 + pi * 0.5) + 1) * 0.5;
          i1 = (-i2 * v2) / (v1 * eff);
        else
          v2 = 0;
          i1 = 0;
        end if;
        /*if v1 < V_in_max and v1 > V_in_min then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					  v2 = V_out;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					  i1 = (-i2 * v2) / v1;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					elseif v1 >= V_in_min - slope then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					  v2 = V_out / slope * (v1 - V_in_min + slope);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					  i1 = (-i2 * v2) / v1;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					  v2 = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					  i1 = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					                                                                                                                                                                                                                                                                                                                                                                                                					end if;*/
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, extent = {{-87.69450000000001, 78.6421}, {88.5431, -74.6818}}), Text(textString = "%V_out", fillColor = {0, 0, 255}, extent = {{10.4668, 68.1754}, {76.37909999999999, 30.2687}}), Text(textString = "DCDC", fillColor = {0, 0, 255}, extent = {{-63.6492, 18.9533}, {57.9915, -33.0976}})}), experiment(StopTime = 1, StartTime = 0));
      end dcdc_ideal_simple;

      model dcdc_ideal_simple_improved
        parameter Real eff = 0.85 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_out = 5 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_in_min = 6.5 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_in_max = 100 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Voltage v1 "Voltage drop over the left port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Voltage v2 "Voltage drop over the right port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Current i1 "Current flowing from pos. to neg. pin of the left port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Current i2 "Current flowing from pos. to neg. pin of the right port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = eff, V_out = V_out, V_in_min = V_in_min, V_in_max = V_in_max) annotation(Placement(transformation(origin = {-3.67751, 6.78922}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-9) annotation(Placement(visible = true, transformation(origin = {-52, 4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-68, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-36, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-70, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-38, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin p2 annotation(Placement(visible = true, transformation(origin = {100.504, 40.4328}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {92.5035, 42.4328}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {-99, -40}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-92.7864, -40.4526}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin n2 annotation(Placement(visible = true, transformation(origin = {99.0693, -40.959}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {93.0693, -46.959}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-94, 40}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      equation
        connect(capacitor1.p, resistor1.n) annotation(Line(points = {{-52, 14}, {-54, 14}, {-54, 54}, {-60, 54}, {-60, 54}}, color = {0, 0, 255}));
        connect(resistor2.n, capacitor1.n) annotation(Line(points = {{-58, -50}, {-52, -50}, {-52, -6}, {-52, -6}}, color = {0, 0, 255}));
        connect(resistor2.p, n1) annotation(Line(points = {{-78, -50}, {-84, -50}, {-84, -40}, {-98, -40}, {-98, -40}}, color = {0, 0, 255}));
        connect(resistor4.p, resistor2.n) annotation(Line(points = {{-46, -50}, {-58, -50}, {-58, -50}, {-58, -50}}, color = {0, 0, 255}));
        connect(resistor4.n, dcdc_ideal_simple1.n1) annotation(Line(points = {{-26, -50}, {-16, -50}, {-16, 0}, {-16, 0}}, color = {0, 0, 255}));
        connect(dcdc_ideal_simple1.n2, n2) annotation(Line(points = {{8, 1}, {22, 1}, {22, -42}, {100, -42}, {100, -42}}, color = {0, 0, 255}));
        connect(dcdc_ideal_simple1.p2, p2) annotation(Line(points = {{8, 13}, {22, 13}, {22, 40}, {100, 40}, {100, 40}}, color = {0, 0, 255}));
        connect(resistor3.n, dcdc_ideal_simple1.p1) annotation(Line(points = {{-28, 54}, {-16, 54}, {-16, 14}, {-16, 14}}, color = {0, 0, 255}));
        connect(resistor1.n, resistor3.p) annotation(Line(points = {{-60, 54}, {-48, 54}, {-48, 54}, {-48, 54}}, color = {0, 0, 255}));
        connect(p1, resistor1.p) annotation(Line(points = {{-100, 40}, {-80, 40}, {-80, 54}, {-80, 54}}, color = {0, 0, 255}));
        v1 = p1.v - n1.v;
        v2 = p2.v - n2.v;
        i1 = p1.i;
        i2 = p2.i;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, extent = {{-87.69450000000001, 78.6421}, {88.5431, -74.6818}}), Text(textString = "%V_out", fillColor = {0, 0, 255}, extent = {{-8.486520000000001, 67.6096}, {57.4258, 29.7029}}), Text(textString = "DCDC", fillColor = {0, 0, 255}, extent = {{-63.6492, 18.9533}, {57.9915, -33.0976}}), Text(textString = "V", fillColor = {0, 0, 255}, extent = {{54.314, 63.3663}, {75.8133, 32.8147}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
      end dcdc_ideal_simple_improved;

      package examples
        model powerdctest
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285, -43.5643}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726, -13.0493}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
          Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 35, phase = 90, freqHz = 0.0002) annotation(Placement(visible = true, transformation(origin = {-78.3593, -1.69731}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
          dcmodel.DCtoPower dctopower1(m = 1, V_in_max = 100, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {24.373, 6.47989}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 10) annotation(Placement(visible = true, transformation(origin = {-48.6014, 20.979}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
          Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-7.34162, 21.0003}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          iboss_power_consumption.OBCpower obcpower1 annotation(Placement(visible = true, transformation(origin = {72.7273, 23.4266}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        equation
          connect(dctopower1.power_out[1], obcpower1.power_in) annotation(Line(points = {{36.4918, 6.37805}, {55.5944, 6.37805}, {55.5944, 23.3846}, {60.9371, 23.3846}}));
          connect(constantvoltage1.p, resistor2.p) annotation(Line(points = {{-36.6014, 20.979}, {-19.9301, 20.979}, {-19.9301, 21.0003}, {-19.3416, 21.0003}}));
          connect(resistor2.n, dctopower1.p) annotation(Line(points = {{4.65838, 21.0003}, {12.2378, 21.0003}, {12.2378, 11.0966}, {12.3561, 11.0966}}));
          connect(constantvoltage1.n, sinevoltage1.p) annotation(Line(points = {{-60.6014, 20.979}, {-78.6713, 20.979}, {-78.6713, 10.3027}, {-78.3593, 10.3027}}));
          connect(dctopower1.n, resistor3.p) annotation(Line(points = {{12.3561, 1.72741}, {12.9371, 1.72741}, {12.9371, -12.9371}, {-24.2726, -12.9371}, {-24.2726, -13.0493}}));
          connect(sinevoltage1.n, resistor3.n) annotation(Line(points = {{-78.3593, -13.6973}, {-47.5248, -13.6973}, {-47.5248, -13.0493}, {-48.2726, -13.0493}}));
          connect(ground1.p, resistor3.n) annotation(Line(points = {{-55.7285, -31.5643}, {-55.7285, -13.5785}, {-48.3734, -13.5785}, {-48.3734, -13.0493}, {-48.2726, -13.0493}}));
          annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 1e-06));
        end powerdctest;

        model dcdc_pid_characteristic
          extends Modelica.Icons.Example;
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-36.7751, -39.8868}, extent = {{-12, -12}, {12, 12}})));
          Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(transformation(origin = {47, 53}, extent = {{-12, -12}, {12, 12}})));
          Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(transformation(origin = {7, 83}, extent = {{-12, -12}, {12, 12}})));
          Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(transformation(origin = {7, 48}, extent = {{-12, -12}, {12, 12}})));
          Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(transformation(origin = {50.0707, -6.50636}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
          Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(transformation(origin = {-78.5311, -4.30002}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
          Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(transformation(origin = {12.447, -24.8939}, extent = {{-12, 12}, {12, -12}}, rotation = -180)));
          dcdc_pid dcdc_pid1 annotation(Placement(transformation(extent = {{-40, 10}, {-20, 30}})));
        equation
          connect(ground1.p, constantvoltage1.n) annotation(Line(points = {{-37, -28}, {-37, -23}, {-37, -21}, {-79, -21}, {-79, -16}}));
          connect(resistor1.n, ground1.p) annotation(Line(points = {{0, -25}, {-5, -25}, {-5, -23}, {-37, -23}, {-37, -28}}));
          connect(variableresistor1.n, resistor1.p) annotation(Line(points = {{50, -19}, {50, -24}, {50, -25}, {29, -25}, {24, -25}}));
          connect(add1.y, variableresistor1.R) annotation(Line(points = {{60, 53}, {65, 53}, {68, 53}, {68, -7}, {63, -7}}));
          connect(const.y, add1.u2) annotation(Line(points = {{20, 48}, {34, 48}, {34, 45}, {35, 45}}));
          connect(ramp1.y, add1.u1) annotation(Line(points = {{20, 83}, {24, 83}, {24, 61}, {35, 61}, {35, 61}}));
          connect(constantvoltage1.p, dcdc_pid1.p1) annotation(Line(points = {{-79, 8}, {-79, 13}, {-79, 24}, {-44, 24}, {-39, 24}}, thickness = 0.0625));
          connect(dcdc_pid1.p2, variableresistor1.p) annotation(Line(points = {{-20.66667175292969, 24.33333587646484}, {-16, 20}, {50, 20}, {50, 10}, {50, 5.333335876464844}}, thickness = 0.0625), AutoRoute = false);
          connect(dcdc_pid1.n2, dcdc_pid1.n1) annotation(Line(points = {{-21, 15}, {-16, 15}, {-16, 5}, {-44, 5}, {-44, 16}, {-39, 16}}, thickness = 0.0625), AutoRoute = false);
          connect(dcdc_pid1.n1, ground1.p) annotation(Line(points = {{-39, 16}, {-44, 16}, {-44, -3}, {-37, -3}, {-37, -23}, {-37, -28}}, thickness = 0.0625));
          annotation(variableresistor1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), dcdc_pid1(v1(flags = 2), v2(flags = 2)), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{10, 75}})}), experiment(StopTime = 1, StartTime = 0, Tolerance = 1e-06));
        end dcdc_pid_characteristic;

        model dc_sin_test
          extends Modelica.Icons.Example;
          Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {57.1428, 5.9406}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-25.7285, -35.5643}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
          Modelica.Electrical.Analog.Sources.CosineVoltage cosinevoltage1(V = 20, freqHz = 0.1, offset = 0, startTime = 2) annotation(Placement(visible = true, transformation(origin = {-58, 4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
          dcdc_ideal_simple_improved dcdc_ideal_simple_improved1 annotation(Placement(visible = true, transformation(origin = {20, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        equation
          connect(cosinevoltage1.n, dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-58, -6}, {11, -6}, {11, 6}}, color = {0, 0, 255}));
          connect(cosinevoltage1.p, dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-58, 14}, {11, 14}}, color = {0, 0, 255}));
          connect(dcdc_ideal_simple_improved1.n1, dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{10.7214, 5.95474}, {9.72136, 5.95474}, {9.72136, -8.04526}, {28.7214, -8.04526}, {28.7214, 4.95474}}, color = {0, 0, 255}));
          connect(dcdc_ideal_simple_improved1.n2, resistor1.n) annotation(Line(points = {{29, 5}, {36, 5}, {36, -6}, {57, -6}}, color = {0, 0, 255}));
          connect(dcdc_ideal_simple_improved1.p2, resistor1.p) annotation(Line(points = {{29, 14}, {42, 14}, {42, 18}, {57, 18}}, color = {0, 0, 255}));
          connect(cosinevoltage1.n, ground1.p) annotation(Line(points = {{-58, -6}, {-26, -6}, {-26, -24}, {-26, -24}}, color = {0, 0, 255}));
          annotation(experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.2));
        end dc_sin_test;
      end examples;

      model dcdc_pid
        parameter Modelica.SIunits.Power P_out = 100;
        parameter Real eff = 0.85 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_out = 5 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_in_min = 6.5 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        parameter Modelica.SIunits.Voltage V_in_max = 100 annotation(Placement(transformation(origin = {60.2546, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Interfaces.NegativePin n2 annotation(Placement(transformation(origin = {93.0693, -46.959}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {93.0693, -46.959}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(transformation(origin = {-93, -47}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-92.7864, -40.4526}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(transformation(origin = {-92.22069999999999, 41.867}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-92.22069999999999, 41.867}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Interfaces.PositivePin p2 annotation(Placement(transformation(origin = {92.5035, 42.4328}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {92.5035, 42.4328}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Voltage v1 "Voltage drop over the left port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Voltage v2 "Voltage drop over the right port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Current i1 "Current flowing from pos. to neg. pin of the left port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.SIunits.Current i2 "Current flowing from pos. to neg. pin of the right port" annotation(Placement(transformation(origin = {60.5375, -80.6223}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesens annotation(Placement(transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalCurrent I1 annotation(Placement(transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalCurrent I2 annotation(Placement(transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Blocks.Continuous.LimPID pID(controllerType = Modelica.Blocks.Types.SimpleController.PD, k = 10000, yMax = P_out / V_out, yMin = 0, initType = Modelica.Blocks.Types.InitPID.NoInit) annotation(Placement(transformation(extent = {{-25, 45}, {-5, 65}})));
        Modelica.Blocks.Sources.Constant const(k = V_out) annotation(Placement(transformation(extent = {{-65, 45}, {-45, 65}})));
        Modelica.Blocks.Logical.OnOffController onOffController1 annotation(Placement(transformation(extent = {{-15, -5}, {0, 10}})));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(Placement(transformation(origin = {-35, 0}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
        Modelica.Blocks.Sources.Constant const1(k = V_in_min) annotation(Placement(transformation(extent = {{-45, 20}, {-25, 40}})));
        Modelica.Blocks.Math.Product product1 annotation(Placement(transformation(extent = {{20, 0}, {35, 15}})));
        Modelica.Blocks.MathBoolean.Not nor1 annotation(Placement(transformation(extent = {{5, -20}, {15, -10}})));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit = "nF") = 1e-07) annotation(Placement(transformation(origin = {-75, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit = "nF") = 1e-07) annotation(Placement(transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      equation
        v1 = p1.v - n1.v;
        v2 = p2.v - n2.v;
        i1 = p1.i;
        i2 = p2.i;
        //I2.i= if v1 > V_in_min and v1< V_in_max then pID.y else 0;
        I1.i = I2.i * I2.v / ((I1.v + 1e-10) * eff);
      equation
        connect(I2.p, n2) annotation(Line(points = {{50, -10}, {50, -15}, {50, -47}, {88, -47}, {93, -47}}, thickness = 0.0625));
        connect(I2.n, p2) annotation(Line(points = {{50, 10}, {50, 15}, {50, 42}, {88, 42}, {93, 42}}, thickness = 0.0625));
        connect(I2.p, voltagesens.n) annotation(Line(points = {{50, -10}, {50, -15}, {70, -15}, {70, -10}}, thickness = 0.0625));
        connect(voltagesens.p, I2.n) annotation(Line(points = {{70, 10}, {70, 15}, {50, 15}, {50, 10}}, thickness = 0.0625));
        connect(pID.u_m, voltagesens.v) annotation(Line(points = {{-15, 43}, {-15, 38}, {-15, 35}, {60, 35}, {60, 0}}, color = {0, 0, 127}, thickness = 0.0625), AutoRoute = false);
        connect(const.y, pID.u_s) annotation(Line(points = {{-44, 55}, {-39, 55}, {-32, 55}, {-27, 55}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(I1.n, n1) annotation(Line(points = {{-55, -10}, {-55, -15}, {-55, -47}, {-88, -47}, {-93, -47}}, thickness = 0.0625));
        connect(I1.p, p1) annotation(Line(points = {{-55, 10}, {-55, 15}, {-55, 20}, {-87, 20}, {-92.33332824707031, 42}}, thickness = 0.0625), AutoRoute = false);
        connect(voltageSensor1.v, onOffController1.u) annotation(Line(points = {{-25, 0}, {-20, 0}, {-20, -1}, {-22, -1}, {-22, -2}, {-17, -2}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(const1.y, onOffController1.reference) annotation(Line(points = {{-24, 30}, {-19, 30}, {-19, 19}, {-22, 19}, {-22, 7}, {-17, 7}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(pID.y, product1.u1) annotation(Line(points = {{-4, 55}, {1, 55}, {13, 55}, {13, 12}, {18, 12}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(product1.y, I2.i) annotation(Line(points = {{36, 7}, {41, 7}, {41, 4}, {38, 4}, {38, 0}, {43, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(onOffController1.y, nor1.u) annotation(Line(points = {{1, 2}, {6, 2}, {6, -6}, {-2, -6}, {-2, -15}, {3, -15}}, color = {255, 0, 255}, thickness = 0.0625));
        connect(nor1.y, product1.u2) annotation(Line(points = {{16, -15}, {21, -15}, {21, -6}, {13, -6}, {13, 3}, {18, 3}}, color = {255, 0, 255}, thickness = 0.0625));
        connect(voltageSensor1.n, I1.n) annotation(Line(points = {{-35, -10}, {-35, -15}, {-55, -15}, {-55, -10}}, thickness = 0.0625));
        connect(voltageSensor1.p, I1.p) annotation(Line(points = {{-35, 10}, {-35, 15}, {-55, 15}, {-55, 10}}, thickness = 0.0625));
        connect(voltagesens.p, capacitor2.p) annotation(Line(points = {{70, 10}, {70, 15}, {90, 15}, {90, 10}}, thickness = 0.0625));
        connect(capacitor2.n, voltagesens.n) annotation(Line(points = {{90, -10}, {90, -15}, {70, -15}, {70, -10}}, thickness = 0.0625));
        connect(capacitor1.p, I1.p) annotation(Line(points = {{-75, 10}, {-75, 15}, {-55, 15}, {-55, 10}}, thickness = 0.0625));
        connect(I1.n, capacitor1.n) annotation(Line(points = {{-55, -10}, {-55, -15}, {-75, -15}, {-75, -10}}, thickness = 0.0625));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, extent = {{-87.69450000000001, 78.6421}, {88.5431, -74.6818}}), Text(textString = "%V_out", fillColor = {0, 0, 255}, extent = {{-8.486520000000001, 67.6096}, {57.4258, 29.7029}}), Text(textString = "DCDC", fillColor = {0, 0, 255}, extent = {{-63.6492, 18.9533}, {57.9915, -33.0976}}), Text(textString = "V", fillColor = {0, 0, 255}, extent = {{54.314, 63.3663}, {75.8133, 32.8147}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
      end dcdc_pid;
    end dcmodel;

    package examples
      model unregulated_DET
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-39.6389, -49.1485}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 90, width = 3600, falling = 90, period = 5000) annotation(Placement(transformation(origin = {-84, -5}, extent = {{-10, -10}, {10, 10}})));
        solar_power.solarcell_simple solarcell_simple1(N_p = 2, N_s = 40.0) annotation(Placement(transformation(origin = {-52, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        batteries.battery battery1(soc(start = 0.5), Vnominal = 100) annotation(Placement(transformation(origin = {13.9999, -3}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        PCU_pid pcu1 annotation(Placement(transformation(origin = {46.8208, 5.20231}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 13) annotation(Placement(transformation(origin = {75.9248, 26.9653}, extent = {{-9.62429, -9.62429}, {9.62429, 9.62429}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 20) annotation(Placement(transformation(origin = {76.3005, 6.06937}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(transformation(origin = {76.3006, -16.763}, extent = {{-10, -10}, {10, 10}})));
        solar_power.SA_Regulator sa_regulator1(Vmax = 95) annotation(Placement(transformation(origin = {-22.5564, 24.9624}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(sa_regulator1.n, battery1.p) annotation(Line(points = {{-13, 25}, {-8, 25}, {14, 25}, {14, 12}, {14, 7}}));
        connect(sa_regulator1.pin_n, solarcell_simple1.p) annotation(Line(points = {{-23, 15}, {-23, 10}, {-23, -20}, {-52, -20}, {-52, -15}}));
        connect(solarcell_simple1.n, sa_regulator1.p) annotation(Line(points = {{-52, 5}, {-52, 10}, {-52, 25}, {-38, 25}, {-33, 25}}));
        connect(resistor3.n, pcu1.gnd) annotation(Line(points = {{86, -17}, {91, -17}, {91, -1}, {62, -1}, {57, -1}}));
        connect(resistor2.n, resistor3.n) annotation(Line(points = {{86, 6}, {91, 6}, {91, -17}, {86, -17}}));
        connect(resistor1.n, resistor2.n) annotation(Line(points = {{86, 27}, {91, 27}, {91, 27}, {91, 6}, {86, 6}}));
        connect(resistor2.p, pcu1.VCC5) annotation(Line(points = {{66, 6}, {61, 6}, {62, 6}, {57, 6}}));
        connect(pcu1.VCC3, resistor3.p) annotation(Line(points = {{57, 3}, {62, 3}, {62, -7}, {61, -7}, {61, -17}, {66, -17}}));
        connect(resistor1.p, pcu1.VCC12) annotation(Line(points = {{66, 27}, {61, 27}, {61, 18}, {62, 18}, {62, 10}, {57, 10}}));
        connect(pcu1.GND, battery1.n) annotation(Line(points = {{37, 1}, {32, 1}, {32, -18}, {14, -18}, {14, -13}}));
        connect(pcu1.gnd, pcu1.GND) annotation(Line(points = {{57, -1}, {62, -1}, {62, -10}, {32, -10}, {32, 1}, {37, 1}}), AutoRoute = false);
        connect(battery1.p, pcu1.VCC) annotation(Line(points = {{14, 7}, {14, 12}, {23, 12}, {23, 6}, {32, 6}, {37, 6}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{14, -13}, {14, -18}, {14, -32}, {-40, -32}, {-40, -37}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-52, -15}, {-52, -20}, {-52, -32}, {-40, -32}, {-40, -37}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-73, -5}, {-68, -5}, {-64, -5}, {-59, -5}}));
        annotation(battery1(v(flags = 2), soc(flags = 2)), pcu1(V_in(flags = 2), V_3(flags = 2), V_5(flags = 2), V_12(flags = 2)), resistor3(v(flags = 2)), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 40000, StartTime = 0, Tolerance = 1e-06));
      end unregulated_DET;

      model PID_verbraucher
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 10, freqHz = 0.1, offset = 20) annotation(Placement(visible = true, transformation(origin = {-29.6667, -60.3333}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        satpower.verbraucher verbraucher1 annotation(Placement(visible = true, transformation(origin = {-15.3333, 27}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-19, -81.66670000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(sinevoltage1.n, ground1.p) annotation(Line(points = {{-19.6667, -60.3333}, {-19.3333, -60.3333}, {-19.3333, -71}, {-19.3333, -71}}));
        connect(sinevoltage1.n, verbraucher1.pin_n) annotation(Line(points = {{-19.6667, -60.3333}, {-10, -60.3333}, {-10, 16.6667}, {-10, 16.6667}}));
        connect(verbraucher1.pin_p, sinevoltage1.p) annotation(Line(points = {{-20.3, 17.0667}, {-40.6667, 17.0667}, {-40.6667, -60.6667}, {-40.6667, -60.6667}}));
        annotation(experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 1e-06));
      end PID_verbraucher;

      model EVS3
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(transformation(origin = {59.9359, -6.41026}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 12, V_in_min = 15) annotation(Placement(transformation(origin = {24.611, 3.39463}, extent = {{-12, -12}, {12, 12}})));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2(V_out = 5, V_in_min = 8) annotation(Placement(transformation(origin = {24.611, 33.3805}, extent = {{-12, -12}, {12, 12}})));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 3.3, V_in_min = 5) annotation(Placement(transformation(origin = {23.4795, 66.4781}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 25) annotation(Placement(transformation(origin = {59.6888, 34.512}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 25) annotation(Placement(transformation(origin = {60.2546, 67.0438}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1000, rising = 2, width = 1000, falling = 2, period = 3000) annotation(Placement(transformation(origin = {-77.5106, -1.41443}, extent = {{-12, -12}, {12, 12}})));
        solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(transformation(origin = {-44.9511, -2.60173}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-28.0029, -43.6886}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor5 annotation(Placement(transformation(origin = {-14.4272, 25.1768}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor4 annotation(Placement(transformation(origin = {-13.5785, -1.69731}, extent = {{-12, -12}, {12, 12}})));
      equation
        connect(resistor5.p, solarcell_simple1.n) annotation(Line(points = {{-26.4272, 25.1768}, {-45.8274, 25.1768}, {-45.8274, 9.39827}, {-44.9511, 9.39827}}));
        connect(resistor4.p, ground1.p) annotation(Line(points = {{-25.5785, -1.69731}, {-28.0057, -1.69731}, {-28.0057, -31.6886}, {-28.0029, -31.6886}}));
        connect(resistor4.n, dcdc_ideal_simple_improved3.n1) annotation(Line(points = {{-1.5785, -1.69731}, {6.22348, -1.69731}, {6.22348, 61.669}, {12.3451, 61.669}, {12.3451, 61.6238}}));
        connect(resistor4.n, dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-1.5785, -1.69731}, {5.94059, -1.69731}, {5.94059, 28.5714}, {13.4767, 28.5714}, {13.4767, 28.5262}}));
        connect(resistor4.n, dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-1.5785, -1.69731}, {13.0127, -1.69731}, {13.0127, -1.45968}, {13.4767, -1.45968}}));
        connect(resistor5.n, dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-2.42716, 25.1768}, {-2.26308, 25.1768}, {-2.26308, 9.05233}, {13.5446, 9.05233}, {13.5446, 8.418670000000001}}));
        connect(resistor5.n, dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-2.42716, 25.1768}, {-2.26308, 25.1768}, {-2.26308, 38.4724}, {13.5445, 38.4724}, {13.5445, 38.4045}}));
        connect(resistor5.n, dcdc_ideal_simple_improved3.p1) annotation(Line(points = {{-2.42716, 25.1768}, {-2.54597, 25.1768}, {-2.54597, 71.56999999999999}, {12.413, 71.56999999999999}, {12.413, 71.5021}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-64.31059999999999, -1.41443}, {-54.314, -1.41443}, {-54.314, -2.75387}, {-53.4709, -2.75387}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-44.9511, -14.6017}, {-41.3362, -14.6017}, {-41.3362, -31.6886}, {-28.0029, -31.6886}}));
        connect(resistor2.n, dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{59.6888, 22.512}, {46.3932, 22.512}, {46.3932, 28.2885}, {35.7793, 28.2885}, {35.7793, 27.7454}}));
        connect(dcdc_ideal_simple_improved2.p2, resistor2.p) annotation(Line(points = {{35.7115, 38.4724}, {46.6761, 38.4724}, {46.6761, 48.3734}, {59.1231, 48.3734}, {59.1231, 46.512}, {59.6888, 46.512}}));
        connect(resistor3.n, dcdc_ideal_simple_improved3.n2) annotation(Line(points = {{60.2546, 55.0438}, {46.1103, 55.0438}, {46.1103, 61.1033}, {34.6478, 61.1033}, {34.6478, 60.843}}));
        connect(dcdc_ideal_simple_improved3.p2, resistor3.p) annotation(Line(points = {{34.5799, 71.56999999999999}, {43.2815, 71.56999999999999}, {43.2815, 80.0566}, {60.2546, 80.0566}, {60.2546, 79.0438}}));
        connect(resistor1.n, dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359, -18.4103}, {42.4328, -18.4103}, {42.4328, -2.24045}, {35.7794, -2.24045}}));
        connect(dcdc_ideal_simple_improved1.p2, resistor1.p) annotation(Line(points = {{35.7115, 8.486560000000001}, {59.9717, 8.486560000000001}, {59.9717, 5.58974}, {59.9359, 5.58974}}));
        annotation(resistor2(v(flags = 2)), experiment(StopTime = 11000, StartTime = 0, Tolerance = 1e-06));
      end EVS3;

      model EVS5
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {24.611, 3.39463}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1000, rising = 60, falling = 60, period = 3000, width = 1000) annotation(Placement(visible = true, transformation(origin = {-77.5106, -1.41443}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-28.0029, -43.6886}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.001) annotation(Placement(visible = true, transformation(origin = {-13.5785, -1.69731}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359, -6.41026}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-44.9511, -2.60173}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor5(R = 0.001) annotation(Placement(visible = true, transformation(origin = {-14.1443, 17.5389}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2 annotation(Placement(visible = true, transformation(origin = {25.4597, 32.2489}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 25) annotation(Placement(visible = true, transformation(origin = {59.6888, 29.703}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1 annotation(Placement(visible = true, transformation(origin = {6.22348, -22.6308}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      equation
        connect(capacitor1.n, ground1.p) annotation(Line(points = {{6.22348, -34.6308}, {-8.769450000000001, -34.6308}, {-8.769450000000001, -31.6832}, {-28.0029, -31.6832}, {-28.0029, -31.6886}}));
        connect(dcdc_ideal_simple_improved1.n1, capacitor1.p) annotation(Line(points = {{13.4766, -1.45968}, {5.94059, -1.45968}, {5.94059, -10.6308}, {6.22348, -10.6308}}));
        connect(dcdc_ideal_simple_improved2.n2, resistor2.n) annotation(Line(points = {{36.628, 26.6139}, {47.2419, 26.6139}, {47.2419, 17.8218}, {59.6888, 17.8218}, {59.6888, 17.703}}));
        connect(dcdc_ideal_simple_improved2.p2, resistor2.p) annotation(Line(points = {{36.5601, 37.3409}, {47.2419, 37.3409}, {47.2419, 41.5842}, {59.6888, 41.5842}, {59.6888, 41.703}}));
        connect(resistor5.n, dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-2.14431, 17.5389}, {-1.69731, 17.5389}, {-1.69731, 37.6238}, {14.3932, 37.6238}, {14.3932, 37.273}}));
        connect(resistor4.n, dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-1.5785, -1.69731}, {6.50636, -1.69731}, {6.50636, 27.7228}, {14.3253, 27.7228}, {14.3253, 27.3946}}));
        connect(resistor5.p, solarcell_simple1.n) annotation(Line(points = {{-26.1443, 17.5389}, {-45.8274, 17.5389}, {-45.8274, 9.39827}, {-44.9511, 9.39827}}));
        connect(resistor5.n, dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-2.14431, 17.5389}, {-2.26308, 17.5389}, {-2.26308, 9.05233}, {13.5445, 9.05233}, {13.5445, 8.418670000000001}}));
        connect(resistor4.p, ground1.p) annotation(Line(points = {{-25.5785, -1.69731}, {-28.0057, -1.69731}, {-28.0057, -31.6886}, {-28.0029, -31.6886}}));
        connect(resistor4.n, dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-1.5785, -1.69731}, {13.0127, -1.69731}, {13.0127, -1.45968}, {13.4767, -1.45968}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-64.31059999999999, -1.41443}, {-54.314, -1.41443}, {-54.314, -2.75387}, {-53.4709, -2.75387}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-44.9511, -14.6017}, {-41.3362, -14.6017}, {-41.3362, -31.6886}, {-28.0029, -31.6886}}));
        connect(resistor1.n, dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359, -18.4103}, {42.4328, -18.4103}, {42.4328, -2.24045}, {35.7794, -2.24045}}));
        connect(dcdc_ideal_simple_improved1.p2, resistor1.p) annotation(Line(points = {{35.7115, 8.486560000000001}, {59.9717, 8.486560000000001}, {59.9717, 5.58974}, {59.9359, 5.58974}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 1e-06));
      end EVS5;

      model PCU_example
        extends Modelica.Icons.Example;
        satcomponents.power.batteries.battery battery1(Vnominal = 20, soc(start = 0.9)) annotation(Placement(visible = true, transformation(origin = {-86.1272, -5.49133}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        satcomponents.power.PCU pcu1(C1.v(start = 20)) annotation(Placement(visible = true, transformation(origin = {-37.2832, 4.04624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {23.9884, 22.2543}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 100) annotation(Placement(visible = true, transformation(origin = {24.2775, 1.15607}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(visible = true, transformation(origin = {24.5665, -21.3873}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-63.2948, -24.2775}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(pcu1.GND, pcu1.gnd) annotation(Line(points = {{-47.3822, -0.39506}, {-48.2659, -0.39506}, {-48.2659, -10.1156}, {-26.8786, -10.1156}, {-26.8786, -2.60116}, {-26.8786, -2.60116}}));
        connect(ground1.p, pcu1.GND) annotation(Line(points = {{-63.2948, -14.2775}, {-48.2659, -14.2775}, {-48.2659, 0}, {-48.2659, 0}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{-86.1272, -15.4913}, {-86.1272, -14.4509}, {-63.2948, -14.4509}, {-63.2948, -14.4509}}));
        connect(battery1.p, pcu1.VCC) annotation(Line(points = {{-86.1272, 4.50867}, {-86.1272, 4.91329}, {-47.9769, 4.91329}, {-47.9769, 4.91329}}));
        connect(pcu1.gnd, resistor3.n) annotation(Line(points = {{-27.2691, -2.34697}, {-21.0983, -2.34697}, {-21.0983, -40.4624}, {42.7746, -40.4624}, {42.7746, -21.3873}, {34.3931, -21.3873}, {34.3931, -21.3873}}));
        connect(resistor2.n, resistor1.n) annotation(Line(points = {{34.2775, 1.15607}, {42.4855, 1.15607}, {42.4855, 22.2543}, {34.104, 22.2543}, {34.104, 22.2543}}));
        connect(resistor3.n, resistor2.n) annotation(Line(points = {{34.5665, -21.3873}, {42.7746, -21.3873}, {42.7746, 1.15607}, {34.104, 1.15607}, {34.104, 1.15607}}));
        connect(pcu1.VCC3, resistor3.p) annotation(Line(points = {{-27.2691, 1.72658}, {-15.3179, 1.72658}, {-15.3179, -21.3873}, {14.4509, -21.3873}, {14.4509, -21.3873}}));
        connect(pcu1.VCC5, resistor2.p) annotation(Line(points = {{-27.2973, 4.92318}, {-12.1387, 4.92318}, {-12.1387, 1.15607}, {14.1618, 1.15607}, {14.1618, 1.15607}}));
        connect(resistor1.p, pcu1.VCC12) annotation(Line(points = {{13.9884, 22.2543}, {-12.1387, 22.2543}, {-12.1387, 8.67052}, {-27.1676, 8.67052}, {-27.1676, 8.67052}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end PCU_example;

      model solarpowerwithbattery
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-39.6389, -49.1485}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 90, width = 3600, falling = 90, period = 5000) annotation(Placement(visible = true, transformation(origin = {-84, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        power.solar_power.solarcell_simple solarcell_simple1(N_p = 1, N_s = 25.0) annotation(Placement(visible = true, transformation(origin = {-52, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        power.batteries.battery battery1(soc(start = 0.5), Vnominal = 40) annotation(Placement(visible = true, transformation(origin = {13.0976, -21.9474}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        satcomponents.power.batteries.BDR bdr1(Vmin = 27) annotation(Placement(visible = true, transformation(origin = {3.60902, 30.9774}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 40) annotation(Placement(visible = true, transformation(origin = {-22.2511, -1.29973}, extent = {{-9.62429, -9.62429}, {9.62429, 9.62429}}, rotation = -90)));
      equation
        connect(bdr1.p2, battery1.p) annotation(Line(points = {{13.5038, 31.609}, {20.1504, 31.609}, {20.1504, -11.4286}, {12.6316, -11.4286}, {12.6316, -11.4286}}));
        connect(resistor1.n, ground1.p) annotation(Line(points = {{-22.2511, -10.924}, {-22.2511, -36.9925}, {-39.6992, -36.9925}, {-39.6992, -36.9925}}));
        connect(bdr1.p1, resistor1.p) annotation(Line(points = {{-6.28572, 31.1278}, {-21.6541, 31.1278}, {-21.6541, 8.7218}, {-21.6541, 8.7218}}));
        connect(bdr1.pin_n, battery1.n) annotation(Line(points = {{2.7679, 21.6005}, {-1.50376, 21.6005}, {-1.50376, -32.782}, {12.3308, -32.782}, {12.3308, -32.782}}));
        connect(bdr1.p1, solarcell_simple1.n) annotation(Line(points = {{-6.28572, 31.1278}, {-52.3308, 31.1278}, {-52.3308, 5}, {-52, 5}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{13.0976, -31.9474}, {13.0976, -37}, {-39.6667, -37}, {-39.6667, -37}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-52, -15}, {-52, -37}, {-39.6667, -37}, {-39.6667, -37}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-73, -5}, {-60.3333, -5}, {-60.3333, -5}, {-60.3333, -5}}));
        annotation(Diagram, Icon, experiment(StartTime = 0.0, StopTime = 40000.0, Tolerance = 1e-06));
      end solarpowerwithbattery;

      model EPS_without_GND
        satcomponents.power.solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-34.3931, -37.2832}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        satcomponents.power.batteries.battery battery1(Vnominal = 40.0) annotation(Placement(visible = true, transformation(origin = {-33.815, 8.381500000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 10, width = 1200, falling = 10, period = 5000, startTime = 1000) annotation(Placement(visible = true, transformation(origin = {-82.94799999999999, -17.341}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor Kontaktwiederstand(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-13.5838, 29.1908}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor Kontaktwiderstand2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-13.8728, -15.6069}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {51.7341, -19.9422}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-10) annotation(Placement(visible = true, transformation(origin = {11.5607, -36.4162}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C = 1e-10) annotation(Placement(visible = true, transformation(origin = {13.2948, 47.3988}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {-33.237, 48.5549}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(Kontaktwiderstand2.n, capacitor1.p) annotation(Line(points = {{-13.8728, -25.6069}, {-13.8728, -36.0606}, {0.909091, -36.0606}, {0.909091, -36.0606}}));
        connect(Kontaktwiderstand2.n, solarcell_simple1.p) annotation(Line(points = {{-13.8728, -25.6069}, {-13.8728, -36.9697}, {-24.8485, -36.9697}, {-24.8485, -36.9697}}));
        connect(battery1.n, Kontaktwiderstand2.p) annotation(Line(points = {{-23.815, 8.381500000000001}, {-13.9394, 8.381500000000001}, {-13.9394, -6.06061}, {-13.9394, -6.06061}}));
        connect(Kontaktwiederstand.n, battery1.n) annotation(Line(points = {{-13.5838, 19.1908}, {-13.5838, 8.18182}, {-23.6364, 8.18182}, {-23.6364, 8.18182}}));
        connect(Kontaktwiederstand.p, capacitor2.p) annotation(Line(points = {{-13.5838, 39.1908}, {-13.5838, 47.8788}, {3.33333, 47.8788}, {3.33333, 47.8788}}));
        connect(resistor1.n, Kontaktwiederstand.p) annotation(Line(points = {{-23.237, 48.5549}, {-13.9394, 48.5549}, {-13.9394, 40}, {-13.9394, 40}}));
        connect(battery1.p, resistor1.p) annotation(Line(points = {{-43.815, 8.381500000000001}, {-58.0925, 8.381500000000001}, {-57.2254, 48.5549}, {-43.237, 48.5549}, {-43.237, 48.5549}}));
        connect(capacitor2.n, ground1.p) annotation(Line(points = {{23.2948, 47.3988}, {51.7341, 47.3988}, {51.7341, -9.537570000000001}, {51.7341, -9.537570000000001}}));
        connect(capacitor1.n, ground1.p) annotation(Line(points = {{21.5607, -36.4162}, {28.3237, -36.4162}, {28.3237, -9.826589999999999}, {51.4451, -9.826589999999999}, {51.4451, -9.826589999999999}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{-23.815, 8.381500000000001}, {15.6069, 8.381500000000001}, {51.7341, 7.68786}, {51.7341, -9.9422}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-71.94799999999999, -17.341}, {-34.3931, -17.341}, {-34.3931, -30.3468}, {-34.3931, -30.3468}}));
        connect(solarcell_simple1.n, battery1.p) annotation(Line(points = {{-44.3931, -37.2832}, {-58.0925, -37.2832}, {-58.0925, 8.381500000000001}, {-43.6416, 8.381500000000001}, {-43.6416, 8.381500000000001}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {-35.6936, -36.5607}, extent = {{-33.9595, 23.2659}, {34.8266, -21.2428}}), Rectangle(origin = {-35.1156, 8.959540000000001}, extent = {{-35.1156, 17.9191}, {35.1156, -17.9191}}), Rectangle(origin = {-37.5723, 53.4682}, extent = {{-30.6358, 20.2312}, {36.7052, -20.5202}}), Text(origin = {-74.85550000000001, 82.22539999999999}, extent = {{-13.2948, 5.0578}, {71.09820000000001, -10.8381}}, textString = "Verbraucherbaustein"), Text(origin = {-82.0232, 33.7283}, extent = {{-13.2948, 5.0578}, {55.4913, -12.8612}}, textString = "Batteriebaustein"), Text(origin = {-63.4682, -61.3006}, extent = {{-13.2948, 5.0578}, {28.9017, -10.5491}}, textString = "Solarbaustein")}));
      end EPS_without_GND;

      model BDRBCRwithDET
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-41.373, -8.686070000000001}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 90, width = 3600, falling = 90, period = 5000) annotation(Placement(transformation(origin = {-85.7341, 35.4624}, extent = {{-10, -10}, {10, 10}})));
        solar_power.solarcell_simple solarcell_simple1(N_p = 1, N_s = 25.0) annotation(Placement(transformation(origin = {-53.7341, 35.4624}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode2 annotation(Placement(transformation(origin = {2.19458, 67.7957}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
        Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(transformation(origin = {-40.7283, 67.9286}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Semiconductors.ZDiode zdiode1(Bv = 39) annotation(Placement(transformation(origin = {-18.7765, 35.4624}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        PCU_pid pcu1 annotation(Placement(transformation(origin = {50.578, -35.5491}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 13) annotation(Placement(transformation(origin = {79.682, -13.7861}, extent = {{-9.62429, -9.62429}, {9.62429, 9.62429}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 20) annotation(Placement(transformation(origin = {80.0577, -34.6821}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(transformation(origin = {80.0578, -57.5144}, extent = {{-10, -10}, {10, 10}})));
        batteries.battery battery1(soc(start = 0.5), Vnominal = 40) annotation(Placement(transformation(origin = {72.0924, 37.4624}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        batteries.BDR bdr(Vmin = 28) annotation(Placement(transformation(origin = {41.3295, 67.6301}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(battery1.p, bdr.p2) annotation(Line(points = {{72, 47}, {72, 52}, {72, 68}, {56, 68}, {51, 68}}));
        connect(bdr.pin_n, battery1.n) annotation(Line(points = {{40, 58}, {40, 53}, {40, 22}, {72, 22}, {72, 27}}));
        connect(idealdiode2.n, bdr.p1) annotation(Line(points = {{12, 68}, {17, 68}, {26, 68}, {31, 68}}));
        connect(idealdiode2.n, pcu1.VCC) annotation(Line(points = {{12, 68}, {17, 68}, {20, 68}, {20, -35}, {41, -35}}), AutoRoute = false);
        connect(pcu1.GND, ground1.p) annotation(Line(points = {{40, -40}, {35, -40}, {35, 8}, {-41, 8}, {-41, 3}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{72, 27}, {72, 22}, {72, 8}, {-41, 8}, {-41, 3}}));
        connect(pcu1.VCC3, resistor3.p) annotation(Line(points = {{61, -38}, {66, -38}, {66, -48}, {65, -48}, {65, -58}, {70, -58}}));
        connect(resistor2.n, resistor3.n) annotation(Line(points = {{90, -35}, {95, -35}, {95, -58}, {90, -58}}));
        connect(resistor3.n, pcu1.gnd) annotation(Line(points = {{90, -58}, {95, -58}, {95, -42}, {66, -42}, {61, -42}}));
        connect(resistor2.p, pcu1.VCC5) annotation(Line(points = {{70, -35}, {65, -35}, {66, -35}, {61, -35}}));
        connect(resistor1.n, resistor2.n) annotation(Line(points = {{89, -14}, {94, -14}, {95, -14}, {95, -35}, {90, -35}}));
        connect(resistor1.p, pcu1.VCC12) annotation(Line(points = {{70, -14}, {65, -14}, {65, -22}, {66, -22}, {66, -31}, {61, -31}}));
        connect(pcu1.gnd, pcu1.GND) annotation(Line(points = {{61, -42}, {66, -42}, {66, -32}, {35, -32}, {35, -40}, {40, -40}}));
        connect(solarcell_simple1.p, zdiode1.p) annotation(Line(points = {{-54, 25}, {-54, 20}, {-19, 20}, {-19, 25}}));
        connect(zdiode1.n, idealdiode2.p) annotation(Line(points = {{-19, 45}, {-19, 50}, {-19, 68}, {-13, 68}, {-8, 68}}));
        connect(idealdiode1.n, zdiode1.n) annotation(Line(points = {{-31, 68}, {-26, 68}, {-19, 68}, {-19, 50}, {-19, 45}}));
        connect(solarcell_simple1.n, idealdiode1.p) annotation(Line(points = {{-54, 45}, {-54, 50}, {-56, 50}, {-56, 68}, {-51, 68}}));
        connect(trapezoid1.y, solarcell_simple1.E_s) annotation(Line(points = {{-75, 35}, {-70, 35}, {-66, 35}, {-61, 35}}));
        connect(solarcell_simple1.p, ground1.p) annotation(Line(points = {{-54, 25}, {-54, 20}, {-54, 8}, {-41, 8}, {-41, 3}}));
        annotation(battery1(v(flags = 2), soc(flags = 2)), experiment(StopTime = 1, StartTime = 0));
      end BDRBCRwithDET;

      model PCU_pid_example
        extends Modelica.Icons.Example;
        batteries.battery battery1(soc(start = 0.9), Vnominal = 20) annotation(Placement(transformation(origin = {-86.1272, -5.49133}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        PCU_pid pcu1(C1(v(start = 20))) annotation(Placement(transformation(origin = {-37.2832, 4.04624}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(transformation(origin = {23.9884, 22.2543}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 100) annotation(Placement(transformation(origin = {24.2775, 1.15607}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(transformation(origin = {24.5665, -21.3873}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-63.2948, -24.2775}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(pcu1.GND, pcu1.gnd) annotation(Line(points = {{-47, 0}, {-52, 0}, {-52, -10}, {-22, -10}, {-22, -2}, {-27, -2}}));
        connect(ground1.p, pcu1.GND) annotation(Line(points = {{-63, -14}, {-63, -9}, {-63, 0}, {-52, 0}, {-47, 0}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{-86, -15}, {-86, -20}, {-75, -20}, {-75, -9}, {-63, -9}, {-63, -14}}));
        connect(battery1.p, pcu1.VCC) annotation(Line(points = {{-86, 5}, {-86, 10}, {-69, 10}, {-69, 5}, {-52, 5}, {-47, 5}}));
        connect(pcu1.gnd, resistor3.n) annotation(Line(points = {{-27, -2}, {-22, -30}, {40, -30}, {40, -21}, {35, -21}}), AutoRoute = false);
        connect(resistor2.n, resistor1.n) annotation(Line(points = {{34, 1}, {39, 1}, {39, 22}, {39, 22}, {34, 22}}));
        connect(resistor3.n, resistor2.n) annotation(Line(points = {{35, -21}, {40, -21}, {40, 1}, {39, 1}, {34, 1}}));
        connect(pcu1.VCC3, resistor3.p) annotation(Line(points = {{-27, 2}, {-22, 2}, {10, 2}, {10, -21}, {15, -21}}));
        connect(pcu1.VCC5, resistor2.p) annotation(Line(points = {{-27, 5}, {-22, 5}, {9, 5}, {9, 1}, {14, 1}}));
        connect(resistor1.p, pcu1.VCC12) annotation(Line(points = {{14, 22}, {9, 22}, {-22, 22}, {-22, 9}, {-27, 9}}));
        annotation(battery1(v(flags = 2), soc(flags = 2)), pcu1(V_in(flags = 2), V_3(flags = 2), V_5(flags = 2), V_12(flags = 2)), resistor1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), resistor2(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), resistor3(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 100000, StartTime = 0));
      end PCU_pid_example;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end examples;

    block Exprgenerator "Generate exponential signal"
      parameter Real alpha = 1;
      parameter Real beta = 1;
      extends Modelica.Blocks.Interfaces.SO;
    equation
      //y = alpha * exp(beta * time);exp function
      y = exp(alpha * time) - 1;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{0, -80}, {0, 68}}, color = {192, 192, 192}), Polygon(points = {{0, 90}, {-8, 68}, {8, 68}, {0, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-86, 50}, {-14, 2}}, lineColor = {192, 192, 192}, textString = "exp"), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Line(points = {{-90, -80.3976}, {68, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{90, -80.3976}, {68, -72.3976}, {68, -88.3976}, {90, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{0, 80}, {-8, 80}}, color = {192, 192, 192}), Line(points = {{0, -80}, {-8, -80}}, color = {192, 192, 192}), Line(points = {{0, -90}, {0, 84}}, color = {192, 192, 192}), Text(extent = {{9, 100}, {40, 80}}, lineColor = {160, 160, 164}, textString = "y"), Polygon(points = {{0, 100}, {-6, 84}, {6, 84}, {0, 100}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-100, -80.3976}, {84, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{100, -80.3976}, {84, -74.3976}, {84, -86.3976}, {100, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-31, 72}, {-11, 88}}, textString = "20", lineColor = {0, 0, 255}), Text(extent = {{-92, -83}, {-72, -103}}, textString = "-3", lineColor = {0, 0, 255}), Text(extent = {{70, -83}, {90, -103}}, textString = "3", lineColor = {0, 0, 255}), Text(extent = {{-18, -53}, {2, -73}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{66, -52}, {96, -72}}, lineColor = {160, 160, 164}, textString = "u")}));
    end Exprgenerator;

    model verbraucher_pid
      parameter Modelica.SIunits.Power power_nominal = 10.0;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-49.6667, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-49.6667, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {47.3333, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {47.3333, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Sensors.CurrentSensor currentsensor1 annotation(Placement(visible = true, transformation(origin = {-49, -53}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {-2, 16.6667}, extent = {{-10, -10}, {10, 10}}, rotation = 360)));
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor1 annotation(Placement(visible = true, transformation(origin = {-18.3333, -19.6667}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {9, -50.6667}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Continuous.LimPID PID(k = 10000, Ti = 0.01, yMax = 100000, Ni = 0.1, initType = Modelica.Blocks.Types.InitPID.SteadyState, limitsAtInit = false, controllerType = Modelica.Blocks.Types.SimpleController.PID, Td = 0.1, yMin = 1, y_start = 1000) annotation(Placement(visible = true, transformation(origin = {-27, 65.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(k = power_nominal) annotation(Placement(visible = true, transformation(origin = {-74, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(PID.u_m, product1.y) annotation(Line(points = {{-27, 53.3333}, {35, 53.3333}, {35, -51}, {19.6667, -51}, {19.6667, -51}}));
      connect(PID.y, variableresistor1.R) annotation(Line(points = {{-16, 65.33329999999999}, {-1.66667, 65.33329999999999}, {-1.66667, 28.6667}, {-1.66667, 28.6667}}));
      connect(const.y, PID.u_s) annotation(Line(points = {{-63, 65}, {-40, 65}, {-40, 65.66670000000001}, {-40, 65.66670000000001}}));
      connect(variableresistor1.n, pin_n) annotation(Line(points = {{8, 16.6667}, {46.3333, 16.6667}, {46.3333, -98.33329999999999}, {46.3333, -98.33329999999999}}));
      connect(voltagesensor1.n, pin_n) annotation(Line(points = {{-8.33333, -19.6667}, {46.3333, -19.6667}, {46.3333, -97}, {46.3333, -97}}));
      connect(currentsensor1.n, voltagesensor1.p) annotation(Line(points = {{-49, -43}, {-49, -19.6667}, {-28.6667, -19.6667}, {-28.6667, -19.6667}}));
      connect(currentsensor1.n, variableresistor1.p) annotation(Line(points = {{-49, -43}, {-49, 16.6667}, {-12, 16.6667}, {-12, 16.3333}, {-12, 16.3333}}));
      connect(pin_p, currentsensor1.p) annotation(Line(points = {{-49.6667, -99.33329999999999}, {-49.3333, -99.33329999999999}, {-49.3333, -63}, {-49.3333, -63}}));
      connect(voltagesensor1.v, product1.u1) annotation(Line(points = {{-18.3333, -29.6667}, {-18, -29.6667}, {-18, -44.6667}, {13.6667, -44.6667}, {-3, -44.6667}}));
      connect(currentsensor1.i, product1.u2) annotation(Line(points = {{-39, -53}, {-39, -57}, {13.6667, -56.6667}, {-3, -56.6667}}));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {1.83333, -2.83333}, extent = {{-84.16670000000001, -92.16670000000001}, {84.16670000000001, 92.16670000000001}}), Text(origin = {1.66667, 63}, extent = {{-63.3333, 10.6667}, {63.3333, -10.6667}}, textString = "Verbraucher"), Text(origin = {3, -23}, extent = {{-61.3333, 35.3333}, {61.3333, -35.3333}}, textString = "%power_nominal W")}), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 1e-06));
    end verbraucher_pid;

    model verbraucher
      parameter Modelica.SIunits.Power power_nominal = 10.0;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-49.6667, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-49.6667, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {47.3333, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {47.3333, -99.33329999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {1.83333, -2.83333}, extent = {{-84.16670000000001, -92.16670000000001}, {84.16670000000001, 92.16670000000001}}), Text(origin = {1.66667, 63}, extent = {{-63.3333, 10.6667}, {63.3333, -10.6667}}, textString = "Verbraucher"), Text(origin = {3, -23}, extent = {{-61.3333, 35.3333}, {61.3333, -35.3333}}, textString = "%power_nominal W")}), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 1e-06));
    end verbraucher;

    model PCU_pid
      Modelica.SIunits.Voltage V_in;
      Modelica.SIunits.Voltage V_3;
      Modelica.SIunits.Voltage V_5;
      Modelica.SIunits.Voltage V_12;
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(transformation(origin = {100.141, -63.9321}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {100.141, -63.9321}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(transformation(origin = {-100.99, -44.413}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-100.99, -44.413}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC annotation(Placement(transformation(origin = {-100.707, 7.92079}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-100.707, 7.92079}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC3 annotation(Placement(transformation(origin = {100.141, -23.1966}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {100.141, -23.1966}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC5 annotation(Placement(transformation(origin = {99.8586, 8.769450000000001}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {99.8586, 8.769450000000001}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC12 annotation(Placement(transformation(origin = {99.2928, 44.6959}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {99.2928, 44.6959}, extent = {{-12, -12}, {12, 12}})));
      dcmodel.dcdc_ideal_simple_improved dcdc_pid3(V_out = 3.3, V_in_min = 5) annotation(Placement(transformation(origin = {57, -29}, extent = {{-10, -10}, {10, 10}})));
      dcmodel.dcdc_ideal_simple_improved dcdc_pid5 annotation(Placement(transformation(origin = {57.5145, 3.75723}, extent = {{-10, -10}, {10, 10}})));
      dcmodel.dcdc_ideal_simple_improved dcdc_pid12(V_out = 12, V_in_min = 15) annotation(Placement(transformation(origin = {57.2254, 41.0405}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Capacitor C1(C(displayUnit = "nF") = 1e-07) annotation(Placement(transformation(origin = {-30, -15}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.01) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.01) annotation(Placement(transformation(extent = {{-75, -10}, {-55, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.01) annotation(Placement(transformation(extent = {{-55, -45}, {-75, -25}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.01) annotation(Placement(transformation(extent = {{10, -45}, {-10, -25}})));
    equation
      V_in = VCC.v - GND.v;
      V_3 = VCC3.v - GND.v;
      V_5 = VCC5.v - GND.v;
      V_12 = VCC12.v - GND.v;
      connect(resistor2.p, VCC) annotation(Line(points = {{-75, 0}, {-80, 0}, {-96, 0}, {-96, 8}, {-101, 8}}, thickness = 0.0625));
      connect(resistor3.n, GND) annotation(Line(points = {{-75, -35}, {-80, -35}, {-96, -35}, {-96, -44}, {-101, -44}}, thickness = 0.0625));
      connect(resistor3.p, resistor4.n) annotation(Line(points = {{-55, -35}, {-50, -35}, {-15, -35}, {-10, -35}}, thickness = 0.0625));
      connect(resistor1.p, resistor2.n) annotation(Line(points = {{-10, 0}, {-15, 0}, {-50, 0}, {-55, 0}}, thickness = 0.0625));
      connect(resistor1.p, C1.p) annotation(Line(points = {{-10, 0}, {-15, 0}, {-30, 0}, {-30, -5}}, thickness = 0.0625));
      connect(resistor4.n, C1.n) annotation(Line(points = {{-10, -35}, {-15, -35}, {-30, -35}, {-30, -30}, {-30, -25}}, thickness = 0.0625));
      connect(resistor1.n, dcdc_pid12.p1) annotation(Line(points = {{10, 0}, {25, 0}, {25, 45}, {48, 45}}, thickness = 0.0625), AutoRoute = false);
      connect(dcdc_pid5.p1, resistor1.n) annotation(Line(points = {{48.33332824707031, 8}, {43, 8}, {25, 8}, {25, 0}, {10, 0}}, thickness = 0.0625), AutoRoute = false);
      connect(resistor1.n, dcdc_pid3.p1) annotation(Line(points = {{10, 0}, {15, 0}, {25, 0}, {25, -25}, {47.66667175292969, -24.66667175292969}}, thickness = 0.0625), AutoRoute = false);
      connect(dcdc_pid5.n1, resistor4.p) annotation(Line(points = {{48.33332824707031, -0.3333358764648438}, {43, 0}, {35, 0}, {35, -35}, {10, -35}}, thickness = 0.0625), AutoRoute = false);
      connect(dcdc_pid12.n1, resistor4.p) annotation(Line(points = {{48, 37}, {43, 37}, {35, 37}, {35, -35}, {10, -35}}, thickness = 0.0625), AutoRoute = false);
      connect(dcdc_pid3.n1, resistor4.p) annotation(Line(points = {{47.66667175292969, -33}, {43, -33}, {35, -33}, {35, -35}, {10, -35}}, thickness = 0.0625), AutoRoute = false);
      connect(dcdc_pid12.p2, VCC12) annotation(Line(points = {{66, 45}, {71, 45}, {94, 45}, {94, 45}, {99, 45}}, thickness = 0.0625));
      connect(dcdc_pid5.p2, VCC5) annotation(Line(points = {{67, 8}, {72, 8}, {95, 8}, {95, 9}, {100, 9}}, thickness = 0.0625));
      connect(dcdc_pid3.p2, VCC3) annotation(Line(points = {{66, -25}, {71, -25}, {95, -25}, {95, -23}, {100, -23}}, thickness = 0.0625));
      connect(dcdc_pid12.n2, dcdc_pid5.n2) annotation(Line(points = {{67, 36}, {72, 36}, {72, -1}, {67, -1}}, thickness = 0.0625));
      connect(dcdc_pid5.n2, dcdc_pid3.n2) annotation(Line(points = {{67, -1}, {72, -1}, {72, -34}, {71, -34}, {66, -34}}, thickness = 0.0625));
      connect(dcdc_pid3.n2, gnd) annotation(Line(points = {{66, -34}, {71, -34}, {85, -34}, {85, -64}, {100, -64}}, thickness = 0.0625), AutoRoute = false);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Text(textString = "PCU", fillColor = {0, 0, 255}, extent = {{-72.4187, 45.5445}, {24.894, -36.4922}}), Text(textString = "GND", fillColor = {0, 0, 255}, extent = {{22.9137, -45.8274}, {83.7341, -80.0566}}), Text(textString = "3.3V", fillColor = {0, 0, 255}, extent = {{34.2291, -11.3154}, {78.07640000000001, -40.4526}}), Text(textString = "5V", fillColor = {0, 0, 255}, extent = {{31.1174, 21.7822}, {78.6421, -8.769450000000001}}), Text(textString = "12V", fillColor = {0, 0, 255}, extent = {{31.6832, 60.8204}, {76.66200000000001, 26.3083}}), Rectangle(fillColor = {0, 0, 255}, extent = {{-88.82599999999999, 94.4837}, {88.2603, -94.7666}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
    end PCU_pid;

    model HBridge
      extends Modelica.Blocks.Icons.Block;
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealclosingswitch4 annotation(Placement(visible = true, transformation(origin = {-34, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealclosingswitch3 annotation(Placement(visible = true, transformation(origin = {36, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealclosingswitch1 annotation(Placement(visible = true, transformation(origin = {-32, 38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealclosingswitch2 annotation(Placement(visible = true, transformation(origin = {34, 38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.BooleanInput forward annotation(Placement(visible = true, transformation(origin = {-34, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {32, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Blocks.Interfaces.BooleanInput reverse annotation(Placement(visible = true, transformation(origin = {30, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-32, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p1 annotation(Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n1 annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(pin_n, idealclosingswitch4.n) annotation(Line(points = {{-100, -60}, {-34, -60}, {-34, -50}, {-34, -50}}, color = {0, 0, 255}));
      connect(pin_n1, idealclosingswitch3.p) annotation(Line(points = {{100, -60}, {70, -60}, {70, -30}, {36, -30}, {36, -30}}, color = {0, 0, 255}));
      connect(pin_p1, idealclosingswitch1.n) annotation(Line(points = {{100, 60}, {-12, 60}, {-12, 28}, {-32, 28}, {-32, 28}}, color = {0, 0, 255}));
      connect(pin_p, idealclosingswitch1.p) annotation(Line(points = {{-100, 60}, {-32, 60}, {-32, 48}, {-32, 48}}, color = {0, 0, 255}));
      connect(reverse, idealclosingswitch4.control) annotation(Line(points = {{30, -102}, {30, -62}, {10, -62}, {10, -40}, {-26, -40}}, color = {255, 0, 255}));
      connect(reverse, idealclosingswitch2.control) annotation(Line(points = {{30, -102}, {30, -62}, {10, -62}, {10, 16}, {54, 16}, {54, 38}, {42, 38}}, color = {255, 0, 255}));
      connect(forward, idealclosingswitch1.control) annotation(Line(points = {{-34, -102}, {-34, -102}, {-34, -72}, {-2, -72}, {-2, 38}, {-24, 38}, {-24, 38}}, color = {255, 0, 255}));
      connect(forward, idealclosingswitch3.control) annotation(Line(points = {{-34, -102}, {-34, -102}, {-34, -72}, {48, -72}, {48, -40}, {42, -40}, {42, -40}}, color = {255, 0, 255}));
      connect(idealclosingswitch2.n, idealclosingswitch3.p) annotation(Line(points = {{34, 28}, {36, 28}, {36, -30}, {36, -30}}, color = {0, 0, 255}));
      connect(idealclosingswitch1.n, idealclosingswitch4.p) annotation(Line(points = {{-32, 28}, {-34, 28}, {-34, -30}, {-34, -30}}, color = {0, 0, 255}));
      connect(idealclosingswitch4.n, idealclosingswitch3.n) annotation(Line(points = {{-34, -50}, {36, -50}, {36, -50}, {36, -50}}, color = {0, 0, 255}));
      connect(idealclosingswitch1.p, idealclosingswitch2.p) annotation(Line(points = {{-32, 48}, {34, 48}, {34, 48}, {34, 48}}, color = {0, 0, 255}));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-49, 13}, extent = {{-27, 11}, {13, -39}}, textString = "IN"), Text(origin = {45, 41}, extent = {{-37, -19}, {45, -65}}, textString = "OUT"), Text(origin = {-11, -49}, extent = {{-47, -5}, {-1, -41}}, textString = "FW"), Text(origin = {55, -49}, extent = {{-47, -5}, {-1, -41}}, textString = "RV")}));
    end HBridge;

    model dc_power
      parameter Modelica.SIunits.Resistance r_internal = 0.1;
      parameter Modelica.SIunits.Voltage v = 5;
      parameter Modelica.SIunits.Capacitance c_int = 1e-9 "internal capacitance";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = v) annotation(Placement(visible = true, transformation(origin = {-30, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = c_int) annotation(Placement(visible = true, transformation(origin = {32, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = r_internal) annotation(Placement(visible = true, transformation(origin = {-2, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = r_internal) annotation(Placement(visible = true, transformation(origin = {66, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor4(R = r_internal) annotation(Placement(visible = true, transformation(origin = {66, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = r_internal) annotation(Placement(visible = true, transformation(origin = {-2, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(resistor4.n, pin_n) annotation(Line(points = {{76, -24}, {98, -24}, {98, -42}, {98, -42}}, color = {0, 0, 255}));
      connect(resistor2.n, pin_p) annotation(Line(points = {{76, 28}, {98, 28}, {98, 42}, {98, 42}}, color = {0, 0, 255}));
      connect(capacitor1.n, resistor3.n) annotation(Line(points = {{32, -4}, {8, -4}, {8, -24}, {8, -24}}, color = {0, 0, 255}));
      connect(capacitor1.n, resistor4.p) annotation(Line(points = {{32, -4}, {56, -4}, {56, -24}, {56, -24}}, color = {0, 0, 255}));
      connect(capacitor1.p, resistor2.p) annotation(Line(points = {{32, 16}, {56, 16}, {56, 28}, {56, 28}}, color = {0, 0, 255}));
      connect(resistor1.n, capacitor1.p) annotation(Line(points = {{8, 30}, {32, 30}, {32, 16}, {32, 16}}, color = {0, 0, 255}));
      connect(constantvoltage1.n, resistor3.p) annotation(Line(points = {{-30, -4}, {-30, -4}, {-30, -24}, {-12, -24}, {-12, -24}}, color = {0, 0, 255}));
      connect(constantvoltage1.p, resistor1.p) annotation(Line(points = {{-30, 16}, {-30, 16}, {-30, 30}, {-12, 30}, {-12, 30}}, color = {0, 0, 255}));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Line(rotation = -90, points = {{-38, 0}, {-10, 0}}, color = {0, 0, 255}), Line(rotation = -90, points = {{-10, 22}, {-10, -24}}, color = {0, 0, 255}), Line(rotation = -90, points = {{0, 12}, {0, -12}}, color = {0, 0, 255}), Line(rotation = -90, points = {{0, 0}, {28, 0}}, color = {0, 0, 255}), Text(origin = {-80, 2}, lineColor = {0, 0, 255}, extent = {{18, -104}, {150, -72}}, textString = "%name=%V"), Text(origin = {202, 20}, lineColor = {0, 0, 255}, extent = {{-166, 64}, {-124, 22}}, textString = "+"), Text(origin = {16, -76}, lineColor = {0, 0, 255}, extent = {{20, 50}, {66, 6}}, textString = "-"), Rectangle(origin = {7, 10}, extent = {{-91, 78}, {91, -78}})}));
    end dc_power;
  end power;

  package AOCS
    model freerotatingcube
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(transformation(origin = {-63.3333, 16.6667}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Parts.BodyBox bodybox1(r = {0, 0.1, 0.0}, r_shape = {0, 0, 0}, lengthDirection = {0, 1, 0}, widthDirection = {1, 0, 0}, length = 0.1, width = 0.2, height = 0.1, innerWidth = 0, innerHeight = 0, angles_fixed = true, w_0_fixed = true, w_0_start = {0.1, 0.2, 0.3}, z_0_fixed = false, useQuaternions = false, mo = 1) annotation(Placement(transformation(origin = {10.3333, 17.6667}, extent = {{-10, -10}, {10, 10}})));
      Parts.IMU iMU1(id = 1, noise_ung(amplitude = 0.1, seed = {1, 2, 3})) annotation(Placement(transformation(extent = {{45, 5}, {65, 25}})));
    equation
      connect(iMU1.frame_a, bodybox1.frame_b) annotation(Line(points = {{45, 15}, {40, 15}, {25.3, 15}, {25.3, 17.7}, {20.3, 17.7}}, color = {95, 95, 95}, thickness = 0.0625));
      annotation(iMU1(acs_bus(w(flags = 2), w_a(flags = 2), u(flags = 2), y(flags = 2)), noise_ung(y(flags = 2)), add1(y(flags = 2))), experiment(StopTime = 500, StartTime = 0, Tolerance = 0.0001));
    end freerotatingcube;

    model gyroeffects
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-74.9845, 45.4769}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0, 0.03, 0.02}) annotation(Placement(visible = true, transformation(origin = {-34.688, 0.5999409999999999}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder Reaktionsrad(r = {0, 0, 0.01}, diameter = 0.03) annotation(Placement(visible = true, transformation(origin = {43.8322, -0.369059}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
      Modelica.Mechanics.MultiBody.Parts.Body Struktur(m = 1, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, r_CM = {0, 0, 0.05}, useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-65.7255, 0.291741}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n = {0, 0, 1}, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {5.49878, 0.5687410000000001}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
      Modelica.Mechanics.Rotational.Sources.Torque torque1 annotation(Placement(visible = true, transformation(origin = {2.11161, -32.8808}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(rising = 0.5, width = 2.0, falling = 0.5, startTime = 5.0, period = 10, nperiod = 2, amplitude = 0.001) annotation(Placement(visible = true, transformation(origin = {-57.9059, -33.6468}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-44.2197, 45.3757}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(world.frame_b, freemotion1.frame_a) annotation(Line(points = {{-64.9845, 45.4769}, {-54.6243, 45.4769}, {-54.2197, 45.6647}, {-54.2197, 45.3757}}));
      connect(freemotion1.frame_b, Struktur.frame_a) annotation(Line(points = {{-34.2197, 45.3757}, {-27.4566, 45.3757}, {-27.4566, 23.4104}, {-50, 23.4104}, {-50, 0.289017}, {-56.0694, 0.289017}, {-56.0694, 0.289017}}));
      connect(trapezoid1.y, torque1.tau) annotation(Line(points = {{-46.9059, -33.6468}, {-10.5581, -33.6468}, {-10.5581, -33.1825}, {-10.5581, -33.1825}}));
      connect(revolute1.axis, torque1.flange) annotation(Line(points = {{5.49878, -9.43126}, {22.9261, -9.43126}, {22.9261, -33.1825}, {12.0664, -33.1825}, {12.0664, -33.1825}}));
      connect(torque1.support, revolute1.support) annotation(Line(points = {{2.11161, -42.8808}, {-20.5128, -42.8808}, {-20.5128, -9.049770000000001}, {-0.603318, -9.049770000000001}, {-0.603318, -9.049770000000001}}));
      connect(revolute1.frame_a, fixedtranslation1.frame_b) annotation(Line(points = {{-4.50122, 0.5687410000000001}, {-24.8555, 0.5687410000000001}, {-24.8555, 0.289017}, {-24.8555, 0.289017}}));
      connect(revolute1.frame_b, Reaktionsrad.frame_a) annotation(Line(points = {{15.4988, 0.5687410000000001}, {33.526, 0.5687410000000001}, {33.526, 0}, {33.526, 0}}));
      connect(Struktur.frame_a, fixedtranslation1.frame_a) annotation(Line(points = {{-55.7255, 0.291741}, {-44.9344, 0.291741}, {-44.9344, 0.244841}, {-44.9344, 0.244841}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 30, Tolerance = 0.0001));
    end gyroeffects;

    model cubesatwith3axisreactionwheel
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-74.9845, 45.4769}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(useQuaternions = false, w_rel_a_start = {0.0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-44.2197, 45.3757}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(rising = 20, width = 1000, falling = 20, startTime = 2000, period = 5000, nperiod = -1, amplitude = 1367) annotation(Placement(visible = true, transformation(origin = {-29.8712, -10.2364}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      satcomponents.Cubesat cubesat1 annotation(Placement(visible = true, transformation(origin = {-7.80347, 46.2428}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(cubesat1.u, trapezoid1.y) annotation(Line(points = {{-7.60116, 36.0983}, {-7.22543, 36.0983}, {-7.22543, -10.4046}, {-18.7861, -10.4046}, {-18.7861, -10.4046}}));
      connect(freemotion1.frame_b, cubesat1.frame_a) annotation(Line(points = {{-34.2197, 45.3757}, {-18.2081, 45.3757}, {-18.2081, 46.5318}, {-18.2081, 46.5318}}));
      connect(world.frame_b, freemotion1.frame_a) annotation(Line(points = {{-64.9845, 45.4769}, {-54.6243, 45.4769}, {-54.2197, 45.6647}, {-54.2197, 45.3757}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-05, Interval = 0.2));
    end cubesatwith3axisreactionwheel;

    model reactionwheelexample
      extends Modelica.Icons.Example;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0, 0.03, 0.02}) annotation(Placement(visible = true, transformation(origin = {12.1328, -11.8278}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
      satcomponents.AOCS.Parts.reactionwheelsimple reactionwheel1 annotation(Placement(visible = true, transformation(origin = {46.3006, -7.86127}, extent = {{-19.0173, -19.0173}, {19.0173, 19.0173}}, rotation = -90)));
      Modelica.Electrical.Analog.Sources.PulseVoltage pulsevoltage1(V = 0.5, width = 0.5, period = 7.5, startTime = 10) annotation(Placement(visible = true, transformation(origin = {36.7052, -58.9595}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {8.670500000000001, -69.36409999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-40.7515, 41.3295}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {1.02706, 61.3729}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
      satcomponents.AOCS.Parts.Struktur struktur1 annotation(Placement(visible = true, transformation(origin = {-42.8613, -15.5202}, extent = {{-31.3006, -31.3006}, {31.3006, 31.3006}}, rotation = 0)));
    equation
      connect(struktur1.frame_a, fixedtranslation1.frame_a) annotation(Line(points = {{-41.8662, -14.4347}, {2.60116, -14.4347}, {2.60116, -11.2717}, {2.60116, -11.2717}}));
      connect(freemotion1.frame_b, struktur1.frame_a) annotation(Line(points = {{-40.7515, 31.3295}, {-40.7515, -13.8728}, {-42.1965, -13.8728}, {-42.1965, -13.8728}}));
      connect(world.frame_b, freemotion1.frame_a) annotation(Line(points = {{-8.972939999999999, 61.3729}, {-41.0405, 61.3729}, {-41.0405, 51.1561}, {-41.0405, 51.1561}}));
      connect(pulsevoltage1.n, ground1.p) annotation(Line(points = {{26.7052, -58.9595}, {8.9595, -58.6705}, {8.9595, -59.5375}, {8.959490000000001, -59.5375}}));
      connect(pulsevoltage1.n, reactionwheel1.pin_n) annotation(Line(points = {{26.7052, -58.9595}, {26.3006, -58.6705}, {26.3006, -26.5896}, {32.948, -26.3006}, {32.948, -26.5896}}));
      connect(reactionwheel1.pin_p, pulsevoltage1.p) annotation(Line(points = {{39.76, -26.8786}, {39.705, -26.5896}, {56.0694, -26.5896}, {56.0694, -58.6705}, {46.8208, -58.6705}, {46.8758, -58.8496}}));
      connect(fixedtranslation1.frame_b, reactionwheel1.frame_a) annotation(Line(points = {{22.1328, -11.8278}, {29.7688, -11.5388}, {29.7688, -11.4889}, {29.7566, -11.4889}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0.0, StopTime = 30.0, Tolerance = 0.0001));
    end reactionwheelexample;

    package Parts
      model Struktur
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {3.17919, 3.46821}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {3.17919, 3.46821}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.Body Struktur(m = 1, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, r_CM = {0, 0, -0.01}, useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-48.9625, 4.04896}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
      protected
        outer Modelica.Mechanics.MultiBody.World world;
      equation
        connect(Struktur.frame_a, frame_a) annotation(Line(points = {{-38.9625, 4.04896}, {3.17919, 4.04896}, {3.17919, 3.75723}, {3.17919, 3.75723}}));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {65.289, 14.2775}, fillColor = {160, 160, 160}, fillPattern = FillPattern.Solid, extent = {{-4.76879, -70.8092}, {4.76879, 38.7283}}), Rectangle(origin = {-42.6878, 13.526}, fillColor = {160, 160, 160}, fillPattern = FillPattern.Solid, extent = {{-4.76879, -70.8092}, {4.76879, 38.7283}}), Polygon(origin = {-3.02666, -68.7861}, fillColor = {160, 160, 160}, fillPattern = FillPattern.Solid, points = {{-41.482, 11.8497}, {70.0787, 12.1387}, {42.333, -12.1387}, {-70.0947, -12.1387}, {-41.482, 11.8497}}), Rectangle(origin = {-71.5318, -12.4277}, fillColor = {160, 160, 160}, fillPattern = FillPattern.Solid, extent = {{-4.76879, -70.8092}, {4.76879, 38.7283}}), Rectangle(origin = {36.9075, -12.3699}, fillColor = {160, 160, 160}, fillPattern = FillPattern.Solid, extent = {{-4.76879, -70.8092}, {4.76879, 38.7283}}), Text(origin = {5.78035, 71.6763}, extent = {{-86.1272, 13.2948}, {86.1272, -13.2948}}, textString = "%name")}));
      end Struktur;

      model reactionwheelsimple
        Modelica.Mechanics.MultiBody.Joints.Revolute Gelenk(n = {0, 0, 1}, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-0.859602, -18.5064}, extent = {{10, -10}, {-10, 10}}, rotation = 270)));
        Modelica.Mechanics.Rotational.Sources.Torque Moment annotation(Placement(visible = true, transformation(origin = {39.3948, -16.4068}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {19.0752, -86.99420000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {19, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {99.711, -67.6301}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {98.2659, -73.4104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Sensors.PowerSensor powersensor1 annotation(Placement(visible = true, transformation(origin = {71.3873, -23.9884}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {71.3873, -55.4913}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {100, -34.3931}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {98.2659, -37.8613}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.Body Schwungmasse(r_CM = {0, 0, 0}, m = 0.02, I_11 = 1e-07, I_22 = 1e-07, I_33 = 1e-07) annotation(Placement(visible = true, transformation(origin = {-0.867052, 28.0347}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      equation
        connect(Schwungmasse.frame_a, Gelenk.frame_b) annotation(Line(points = {{-0.867052, 18.0347}, {-0.867052, -8.67052}, {-0.578035, -8.67052}, {-0.578035, -8.67052}}));
        connect(powersensor1.pc, pin_p) annotation(Line(points = {{71.3873, -13.9884}, {71.3873, -3.46821}, {88.7283, -3.46821}, {88.7283, -34.3931}, {100, -34.3931}, {100, -34.3931}}));
        connect(powersensor1.pv, resistor1.p) annotation(Line(points = {{81.3873, -23.9884}, {81.3873, -45.3757}, {71.6763, -45.3757}, {71.6763, -45.3757}}));
        connect(powersensor1.nv, resistor1.n) annotation(Line(points = {{61.3873, -23.9884}, {61.3873, -65.31789999999999}, {71.6763, -65.31789999999999}, {71.6763, -65.31789999999999}}));
        connect(resistor1.n, pin_n) annotation(Line(points = {{71.3873, -65.4913}, {71.3873, -67.6301}, {100, -67.6301}, {100, -67.6301}}));
        connect(powersensor1.nc, resistor1.p) annotation(Line(points = {{71.3873, -33.9884}, {71.3873, -45.6647}, {71.3873, -45.6647}, {71.3873, -45.6647}}));
        connect(powersensor1.power, Moment.tau) annotation(Line(points = {{60.3873, -15.9884}, {60.3873, -16.474}, {51.7341, -16.474}, {51.7341, -16.474}}));
        connect(frame_a, Gelenk.frame_a) annotation(Line(points = {{19.0752, -86.99420000000001}, {19.0752, -54.0462}, {-1.15607, -54.0462}, {-1.15607, -28.9017}, {-1.15607, -28.9017}}));
        connect(Moment.support, Gelenk.support) annotation(Line(points = {{39.3948, -26.4068}, {20.5202, -26.4068}, {20.5202, -24.8555}, {9.24855, -24.8555}, {9.24855, -24.8555}}));
        connect(Moment.flange, Gelenk.axis) annotation(Line(points = {{29.3948, -16.4068}, {20.5202, -16.4068}, {20.5202, -18.4971}, {8.381500000000001, -18.4971}, {8.381500000000001, -18.4971}}));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 30, Tolerance = 0.0001), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Ellipse(origin = {19.7977, -28.6127}, fillColor = {192, 192, 255}, fillPattern = FillPattern.Solid, extent = {{-49.5665, 9.537570000000001}, {49.5665, -9.537570000000001}}, endAngle = 360), Rectangle(origin = {19.6532, -22.5434}, fillColor = {192, 192, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-48.8439, 6.93642}, {48.8439, -6.93642}}), Ellipse(origin = {19.2775, -17.2832}, fillPattern = FillPattern.Solid, extent = {{-49.5665, 9.537570000000001}, {49.5665, -9.537570000000001}}, endAngle = 360), Text(origin = {5.67671, -6.18507}, extent = {{-38.1503, 29.0462}, {1.94049, -3.66549}}, textString = "1D"), Rectangle(origin = {18.0636, 18.3526}, fillColor = {255, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-4.19075, 13.4393}, {5.34682, -34.5376}}), Polygon(origin = {19.0566, 42.6365}, fillColor = {255, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-1.42648, 13.1438}, {11.0013, -12.5788}, {-10.9641, -12.5788}, {-1.42648, 13.1438}}), Rectangle(origin = {21.3873, -62.4277}, extent = {{-8.67052, 24.2775}, {2.31214, -25.7225}}), Rectangle(origin = {18.3526, -61.5607}, fillColor = {0, 64, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-17.7746, 11.8497}, {17.7746, -11.8497}}), Line(origin = {56.9364, -46.9653}, points = {{-30.9249, -8.81503}, {20.5202, -8.81503}, {20.5202, 8.81503}, {30.9249, 8.81503}}), Line(origin = {61.9942, -69.79770000000001}, points = {{26.1561, -3.90173}, {16.0405, -3.90173}, {16.0405, 3.90173}, {-26.1561, 3.90173}}), Text(origin = {82.6589, -11.5607}, extent = {{-15.896, 13.0058}, {15.896, -13.0058}}, textString = "+"), Text(origin = {80.20229999999999, -95.2312}, extent = {{-18.6416, 23.5549}, {18.9306, -18.3526}}, textString = "-"), Text(origin = {-47.8536, 39.6233}, extent = {{-33.6717, 47.8849}, {133.164, 11.3368}}, textString = "%name")}));
      end reactionwheelsimple;

      model reactionwheel3axis
        parameter Integer id;
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(origin = {-99.422, 5.20231}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-99.422, 5.20231}, extent = {{-10, -10}, {10, 10}})));
        reactionwheelsimple X_wheel annotation(Placement(transformation(origin = {-23.8, 63.7}, extent = {{-16.2717, -16.2717}, {16.2717, 16.2717}}, rotation = -90)));
        reactionwheelsimple Z_wheel annotation(Placement(transformation(origin = {-23.7, -31.3}, extent = {{-16.2717, -16.2717}, {16.2717, 16.2717}}, rotation = -90)));
        reactionwheelsimple Y_wheel annotation(Placement(transformation(origin = {-23.8, 18.8}, extent = {{-16.2717, -16.2717}, {16.2717, 16.2717}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltageY annotation(Placement(transformation(origin = {18.5549, -1.6763}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltageZ annotation(Placement(transformation(origin = {20.0578, -53.9306}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation X_axis annotation(Placement(transformation(origin = {-59.9, 60.1}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation Y_axis(angles = {-90, 0, 0}) annotation(Placement(transformation(origin = {-60.1, 15.1}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation Z_axis(angles = {0, -90, 0}) annotation(Placement(transformation(origin = {-59.9, -35.2}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltageX annotation(Placement(transformation(origin = {19.9422, 52.8902}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(transformation(origin = {-26.8786, -97.9769}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-26.8786, -97.9769}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(transformation(origin = {26.3006, -96.82080000000001}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {26.3006, -96.82080000000001}, extent = {{-10, -10}, {10, 10}})));
        ctrl.ACS_bus acs_bus annotation(Placement(transformation(extent = {{70, -5}, {90, 15}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(transformation(origin = {-2.60116, -81.2139}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(extent = {{25, 10}, {45, 30}})));
        Modelica.Electrical.Analog.Basic.Ground ground2 annotation(Placement(transformation(extent = {{25, -35}, {45, -15}})));
        Modelica.Electrical.Analog.Basic.Ground ground3 annotation(Placement(transformation(extent = {{40, -85}, {60, -65}})));
      equation
        connect(resistor1.n, pin_n) annotation(Line(points = {{7.3, -81.3}, {12.3, -81.3}, {21.3, -81.3}, {21.3, -96.7}, {26.3, -96.7}}));
        connect(resistor1.p, pin_p) annotation(Line(points = {{-12.7, -81.3}, {-17.7, -81.3}, {-22, -81.3}, {-22, -98}, {-27, -98}}));
        connect(Z_axis.frame_b, Z_wheel.frame_a) annotation(Line(points = {{-50, -35.3}, {-45, -35.3}, {-45, -34.3}, {-40, -34.3}}));
        connect(Y_axis.frame_b, Y_wheel.frame_a) annotation(Line(points = {{-50, 15}, {-45, 15}, {-45, 15.7}, {-40, 15.7}}));
        connect(Z_axis.frame_a, frame_a) annotation(Line(points = {{-70, -35.3}, {-75, -35.3}, {-94.3, -35.3}, {-94.3, 5.3}, {-99.3, 5.3}}));
        connect(Y_axis.frame_a, frame_a) annotation(Line(points = {{-70, 15}, {-75, 15}, {-94.3, 15}, {-94.3, 5.3}, {-99.3, 5.3}}));
        connect(X_axis.frame_a, frame_a) annotation(Line(points = {{-70, 60}, {-75, 60}, {-94.3, 60}, {-94.3, 5.3}, {-99.3, 5.3}}));
        connect(X_axis.frame_b, X_wheel.frame_a) annotation(Line(points = {{-50, 60}, {-45, 60}, {-45, 60.7}, {-40, 60.7}}));
        connect(signalvoltageY.n, ground2.p) annotation(Line(points = {{18.7, -11.7}, {18.7, -16.7}, {26.7, -16.7}, {26.7, -10}, {35, -10}, {35, -15}}, thickness = 0.0625));
        connect(signalvoltageY.p, Y_wheel.pin_p) annotation(Line(points = {{18.7, 8.300000000000001}, {18.7, 13.3}, {-5.7, 13.3}, {-5.7, -2.3}, {-30, -2.3}, {-30, 2.7}}));
        connect(signalvoltageY.n, Y_wheel.pin_n) annotation(Line(points = {{18.7, -11.7}, {18.7, -16.7}, {-35.7, -16.7}, {-35.7, -2.3}, {-35.7, 2.7}}));
        connect(ground1.p, signalvoltageX.n) annotation(Line(points = {{35, 30}, {35, 35}, {35, 38}, {20, 38}, {20, 43}}, thickness = 0.0625));
        connect(signalvoltageX.p, X_wheel.pin_p) annotation(Line(points = {{20, 63}, {20, 68}, {-5, 68}, {-5, 42.7}, {-30, 42.7}, {-30, 47.7}}));
        connect(signalvoltageX.n, X_wheel.pin_n) annotation(Line(points = {{20, 43}, {20, 38}, {-35.7, 38}, {-35.7, 42.7}, {-35.7, 47.7}}));
        connect(signalvoltageZ.n, ground3.p) annotation(Line(points = {{20, -64}, {20, -69}, {35, -69}, {35, -60}, {50, -60}, {50, -65}}, thickness = 0.0625));
        connect(signalvoltageZ.p, Z_wheel.pin_p) annotation(Line(points = {{20, -44}, {20, -39}, {-5, -39}, {-5, -52.3}, {-30, -52.3}, {-30, -47.3}}));
        connect(signalvoltageZ.n, Z_wheel.pin_n) annotation(Line(points = {{20, -64}, {20, -69}, {-35.7, -69}, {-35.7, -52.3}, {-35.7, -47.3}}));
        connect(signalvoltageX.v, acs_bus.w_a[id, 1]) annotation(Line(points = {{27, 53}, {32, 53}, {75, 53}, {75, 5}, {80, 5}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, extent = {{-90.02889999999999, 54.3352}, {61.7052, -76.87860000000001}}, origin = {0.144508, 13.2948}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-71.2428, -8.092499999999999}, {5.6358, -80.0578}}, origin = {2.16763, 20.2312}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{35.6936, 25.7225}, {70.6647, -52.0231}}, origin = {-0.144509, 13.2948}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{2.45662, -18.2081}, {85.98260000000001, -50.8671}}, origin = {-46.9653, 97.6879}), Rectangle(pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-16.0405, 25.8671}, {-12.8613, 5.92483}}, origin = {11.4162, -3.32367}), Polygon(points = {{-2.87157, 16.034}, {1.46373, -3.90828}, {-6.91786, -3.61926}, {-2.87157, 16.034}}, pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, origin = {-0.307609, 23.5614}), Text(textString = "+", extent = {{-15.896, 13.0058}, {15.896, -13.0058}}, origin = {-26.3006, -74.2775}), Text(textString = "-", extent = {{-18.6416, 23.5549}, {18.9306, -18.3526}}, origin = {25.578, -76.1561}), Polygon(points = {{-2.87157, 16.034}, {1.46373, -3.90828}, {-6.91786, -3.61926}, {-2.87157, 16.034}}, pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, origin = {19.6924, 1.07585}, rotation = -90), Rectangle(pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-16.0405, 25.8671}, {-12.8613, 5.92483}}, origin = {-9.91328, -10.4913}, rotation = -90), Polygon(points = {{-7.80347, -5.05026}, {5.49133, 7.08847}, {7.80347, 4.77633}, {-5.78035, -7.07338}, {-7.80347, -5.05026}}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, origin = {-9.537570000000001, -2.17522}), Polygon(points = {{-2.00451, 2.45016}, {5.22095, -9.68863}, {-6.91786, -3.61926}, {-2.00451, 2.45016}}, pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, origin = {-14.9319, -12.1611}, rotation = -90), Text(textString = "Z", extent = {{-14.4509, 10.8382}, {14.4509, -10.8382}}, origin = {-4.62427, 56.2139}), Text(textString = "Y", extent = {{-14.4509, 10.8382}, {14.4509, -10.8382}}, origin = {47.4567, 3.38154}), Text(textString = "X", extent = {{-14.4509, 10.8382}, {14.4509, -10.8382}}, origin = {-31.9652, -24.5953})}), experiment(StopTime = 30, StartTime = 0, Tolerance = 0.0001));
      end reactionwheel3axis;

      model IMU
        parameter Real noiseamp = 0.05;
        //parameter Modelica.SIunits.Time net_delay(start = 0.001) "Delay time of output with respect to input signal";
        Modelica.Blocks.Math.Add add1[3] annotation(Placement(transformation(extent = {{0, -10}, {20, 10}})));
        satcomponents.blocks.noise_ung noise_ung2(amplitude = noiseamp, seed = 2) annotation(Placement(transformation(extent = {{-40, 14}, {-19, 25}})));
        satcomponents.blocks.noise_ung noise_ung1(amplitude = noiseamp, seed = 1) annotation(Placement(transformation(extent = {{-40, 29}, {-19, 40}})));
        satcomponents.blocks.noise_ung noise_ung3(amplitude = noiseamp, seed = 30) annotation(Placement(transformation(extent = {{-40, 44}, {-20, 55}})));
        Modelica.Blocks.Discrete.Sampler sampler1[3](each samplePeriod = 0.05) annotation(Placement(transformation(extent = {{30, -10}, {50, 10}})));
        Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput ang_vel[3] annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-106, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(ang_vel, add1.u2) annotation(Line(points = {{-110, 0}, {-60, 0}, {-60, -6}, {-2, -6}, {-2, -6}}, color = {0, 0, 127}));
        connect(sampler1.y, y) annotation(Line(points = {{51, 0}, {100, 0}, {100, 0}, {100, 0}}, color = {0, 0, 127}));
        connect(noise_ung2.y, add1[2].u1) annotation(Line(points = {{-18, 19.3}, {-13, 19.3}, {-7, 19.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung1.y, add1[1].u1) annotation(Line(points = {{-18, 34.3}, {-13, 34.3}, {-7, 34.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung3.y, add1[3].u1) annotation(Line(points = {{-19.3, 49.3}, {-14.3, 49.3}, {-7, 49.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(add1.y, sampler1.u) annotation(Line(points = {{21, 0}, {26, 0}, {23, 0}, {28, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2)), Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Sphere, extent = {{-90.11, 86.91}, {90.11, -86.91}}, origin = {4.04682, -1.67855}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-75.20999999999999, 71.87}, {75.20999999999999, -71.87}}, origin = {0.00144847, -2.21986}), Text(textString = "IMU", lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, extent = {{-68.11, 50.28}, {68.11, -50.28}}, origin = {0.42, -4.6})}), experiment(StopTime = 1, StartTime = 0));
      end IMU;

      model reactionwheelsimple_noelectricity "reactionwheelsimple_noelectricity"
        Modelica.Blocks.Interfaces.RealInput pseudo_torque annotation(Placement(visible = true, transformation(origin = {-110, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput torque annotation(Placement(visible = true, transformation(origin = {110, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput ang_mom annotation(Placement(visible = true, transformation(origin = {110, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput ctrl_torque annotation(Placement(visible = true, transformation(origin = {-6, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {2, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Mechanics.Rotational.Sources.Torque torque1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-62, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 0.1, stateSelect = StateSelect.default) annotation(Placement(visible = true, transformation(origin = {-18, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1e-1, strict = true) annotation(Placement(visible = true, transformation(origin = {6, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Torque torque2(useSupport = false) annotation(Placement(visible = true, transformation(origin = {46, 16}, extent = {{10, -10}, {-10, 10}}, rotation = 360)));
        Modelica.Mechanics.Rotational.Sensors.TorqueSensor torquesensor1 annotation(Placement(visible = true, transformation(origin = {12, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(torquesensor1.flange_b, torque2.flange) annotation(Line(points = {{22, 16}, {36, 16}}));
        connect(inertia.flange_b, torquesensor1.flange_a) annotation(Line(points = {{-8, 16}, {2, 16}}));
        connect(torquesensor1.tau, torque) annotation(Line(points = {{4, 5}, {4.75, 5}, {4.75, -21}, {76, -21}, {76, -52}, {110, -52}}, color = {0, 0, 127}));
        connect(limiter1.y, torque2.tau) annotation(Line(points = {{17, -66}, {68, -66}, {68, 16}, {60, 16}, {60, 16}}, color = {0, 0, 127}));
        connect(pseudo_torque, torque1.tau) annotation(Line(points = {{-110, 18}, {-76, 18}, {-76, 16}, {-76, 16}}, color = {0, 0, 127}));
        connect(ctrl_torque, limiter1.u) annotation(Line(points = {{-6, -110}, {-6, -84}, {-18, -84}, {-18, -66}, {-6, -66}}, color = {0, 0, 127}));
        connect(torque1.flange, inertia.flange_a) annotation(Line(points = {{-52, 16}, {-28, 16}}));
        ang_mom = inertia.J * inertia.w;
        annotation(bodyShape1(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), experiment(StopTime = 100, StartTime = 0), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Ellipse(origin = {3.7977, -22.6127}, fillColor = {192, 192, 255}, fillPattern = FillPattern.Solid, extent = {{-49.5665, 9.53757}, {49.5665, -9.53757}}, endAngle = 360), Rectangle(origin = {3.6532, -16.5434}, fillColor = {192, 192, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-48.8439, 6.93642}, {48.8439, -6.93642}}), Ellipse(origin = {3.2775, -11.2832}, fillPattern = FillPattern.Solid, extent = {{-49.5665, 9.53757}, {49.5665, -9.53757}}, endAngle = 360), Text(origin = {-10.3233, -0.18507}, extent = {{-38.1503, 29.0462}, {1.94049, -3.66549}}, textString = "1D"), Rectangle(origin = {2.0636, 24.3526}, fillColor = {255, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-4.19075, 13.4393}, {5.34682, -34.5376}}), Polygon(origin = {3.0566, 48.6365}, fillColor = {255, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-1.42648, 13.1438}, {11.0013, -12.5788}, {-10.9641, -12.5788}, {-1.42648, 13.1438}}), Rectangle(origin = {5.3873, -56.4277}, extent = {{-8.67052, 24.2775}, {2.31214, -25.7225}}), Rectangle(origin = {2.3526, -55.5607}, fillColor = {0, 64, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-17.7746, 11.8497}, {17.7746, -11.8497}}), Text(origin = {-51.8536, 47.6233}, extent = {{-33.6717, 47.8849}, {133.164, 11.3368}}, textString = "%name"), Text(origin = {63, -68}, extent = {{-31, 14}, {31, -14}}, textString = "J = %inertia.J")}));
      end reactionwheelsimple_noelectricity;

      model reactionwheel3axis_noelectricity
        parameter Integer id;
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(origin = {-99.422, 5.20231}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-99.422, 5.20231}, extent = {{-10, -10}, {10, 10}})));
        ctrl.ACS_bus acs_bus annotation(Placement(transformation(extent = {{75, 10}, {95, 30}})));
        Modelica.Mechanics.MultiBody.Joints.Revolute x_axis(animation = false, n = {1, 0, 0}) annotation(Placement(transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Parts.BodyShape wheel_x(animation = false, animateSphere = false) annotation(Placement(transformation(origin = {5, 90}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
        Modelica.Mechanics.MultiBody.Forces.Torque torque_x(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a) annotation(Placement(transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
        Modelica.Mechanics.MultiBody.Joints.Revolute y_axis(animation = false, n = {0, 1, 0}) annotation(Placement(transformation(origin = {-30, 25}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Parts.BodyShape wheel_y(animation = false, animateSphere = false) annotation(Placement(transformation(origin = {5, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
        Modelica.Mechanics.MultiBody.Forces.Torque torque_y(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a) annotation(Placement(transformation(origin = {-10, -5}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
        Modelica.Mechanics.MultiBody.Joints.Revolute z_axis(useAxisFlange = false, animation = false, n = {0, 0, 1}) annotation(Placement(transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Parts.BodyShape wheel_z(animation = false, animateSphere = false) annotation(Placement(transformation(origin = {5, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
        Modelica.Mechanics.MultiBody.Forces.Torque torque_z(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a) annotation(Placement(transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
      equation
        torque_x.torque[2:3] = {0, 0};
        torque_y.torque[1] = 0;
        torque_y.torque[3] = 0;
        torque_z.torque[1:2] = {0, 0};
        connect(wheel_x.frame_b, x_axis.frame_b) annotation(Line(points = {{-5, 90}, {-10, 90}, {-15, 90}, {-20, 90}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(wheel_z.frame_b, z_axis.frame_b) annotation(Line(points = {{-5, -40}, {-10, -40}, {-15, -40}, {-20, -40}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(wheel_y.frame_b, y_axis.frame_b) annotation(Line(points = {{-5, 25}, {-10, 25}, {-15, 25}, {-20, 25}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(x_axis.frame_a, frame_a) annotation(Line(points = {{-40, 90}, {-45, 90}, {-94.3, 90}, {-94.3, 5.3}, {-99.3, 5.3}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(y_axis.frame_a, frame_a) annotation(Line(points = {{-40, 25}, {-45, 25}, {-94.3, 25}, {-94.3, 5.3}, {-99.3, 5.3}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(z_axis.frame_a, frame_a) annotation(Line(points = {{-40, -40}, {-45, -40}, {-94.3, -40}, {-94.3, 5.3}, {-99.3, 5.3}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(torque_x.torque[1], acs_bus.w_a[1]) annotation(Line(points = {{-5, 48}, {-5, 43}, {-5, 40}, {40, 40}, {40, 20}, {85, 20}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(torque_x.frame_b, x_axis.frame_a) annotation(Line(points = {{-20, 60}, {-25, 60}, {-45, 60}, {-45, 90}, {-40, 90}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(torque_x.frame_a, wheel_x.frame_a) annotation(Line(points = {{0, 60}, {5, 60}, {20, 60}, {20, 90}, {15, 90}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(torque_y.torque[2], acs_bus.w_a[2]) annotation(Line(points = {{-5, -17}, {-5, -22}, {37.3, -22}, {37.3, 20}, {80, 20}, {85, 20}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(torque_y.frame_a, wheel_y.frame_a) annotation(Line(points = {{0, -5}, {5, -5}, {20, -5}, {20, 25}, {15, 25}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(torque_y.frame_b, y_axis.frame_a) annotation(Line(points = {{-20, -5}, {-25, -5}, {-45, -5}, {-45, 25}, {-40, 25}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(torque_z.torque[3], acs_bus.w_a[3]) annotation(Line(points = {{-5, -82}, {-5, -87}, {37.3, -87}, {37.3, 20}, {80, 20}, {85, 20}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(torque_z.frame_a, wheel_z.frame_a) annotation(Line(points = {{0, -70}, {5, -70}, {20, -70}, {20, -40}, {15, -40}}, color = {95, 95, 95}, thickness = 0.0625));
        connect(torque_z.frame_b, z_axis.frame_a) annotation(Line(points = {{-20, -70}, {-25, -70}, {-45, -70}, {-45, -40}, {-40, -40}}, color = {95, 95, 95}, thickness = 0.0625));
        annotation(wheel_x(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), wheel_y(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), wheel_z(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid, extent = {{-90.02889999999999, 54.3352}, {61.7052, -76.87860000000001}}, origin = {0.144508, 13.2948}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-71.2428, -8.092499999999999}, {5.6358, -80.0578}}, origin = {2.16763, 20.2312}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{35.6936, 25.7225}, {70.6647, -52.0231}}, origin = {-0.144509, 13.2948}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{2.45662, -18.2081}, {85.98260000000001, -50.8671}}, origin = {-46.9653, 97.6879}), Rectangle(pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-16.0405, 25.8671}, {-12.8613, 5.92483}}, origin = {11.4162, -3.32367}), Polygon(points = {{-2.87157, 16.034}, {1.46373, -3.90828}, {-6.91786, -3.61926}, {-2.87157, 16.034}}, pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, origin = {-0.307609, 23.5614}), Text(textString = "+", extent = {{-15.896, 13.0058}, {15.896, -13.0058}}, origin = {-26.3006, -74.2775}), Text(textString = "-", extent = {{-18.6416, 23.5549}, {18.9306, -18.3526}}, origin = {25.578, -76.1561}), Polygon(points = {{-2.87157, 16.034}, {1.46373, -3.90828}, {-6.91786, -3.61926}, {-2.87157, 16.034}}, pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, origin = {19.6924, 1.07585}, rotation = -90), Rectangle(pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-16.0405, 25.8671}, {-12.8613, 5.92483}}, origin = {-9.91328, -10.4913}, rotation = -90), Polygon(points = {{-7.80347, -5.05026}, {5.49133, 7.08847}, {7.80347, 4.77633}, {-5.78035, -7.07338}, {-7.80347, -5.05026}}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, origin = {-9.537570000000001, -2.17522}), Polygon(points = {{-2.00451, 2.45016}, {5.22095, -9.68863}, {-6.91786, -3.61926}, {-2.00451, 2.45016}}, pattern = LinePattern.None, fillColor = {255, 0, 0}, fillPattern = FillPattern.VerticalCylinder, origin = {-14.9319, -12.1611}, rotation = -90), Text(textString = "Z", extent = {{-14.4509, 10.8382}, {14.4509, -10.8382}}, origin = {-4.62427, 56.2139}), Text(textString = "Y", extent = {{-14.4509, 10.8382}, {14.4509, -10.8382}}, origin = {47.4567, 3.38154}), Text(textString = "X", extent = {{-14.4509, 10.8382}, {14.4509, -10.8382}}, origin = {-31.9652, -24.5953})}), experiment(StopTime = 30, StartTime = 0, Tolerance = 0.0001));
      end reactionwheel3axis_noelectricity;

      model IMU_simple "IMU_simple"
        parameter Real noiseamp = 0.05;
        parameter Modelica.SIunits.Time net_delay(start = 0.001) "Delay time of output with respect to input signal";
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteangularvelocity1 annotation(Placement(transformation(origin = {-30, -5}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Math.Add add1[3] annotation(Placement(transformation(extent = {{0, -10}, {20, 10}})));
        satcomponents.blocks.noise_ung noise_ung2(amplitude = noiseamp, seed = 2) annotation(Placement(transformation(extent = {{-40, 14}, {-19, 25}})));
        satcomponents.blocks.noise_ung noise_ung1(amplitude = noiseamp, seed = 1) annotation(Placement(transformation(extent = {{-40, 29}, {-19, 40}})));
        satcomponents.blocks.noise_ung noise_ung3(amplitude = noiseamp, seed = 3) annotation(Placement(transformation(extent = {{-40, 44}, {-20, 55}})));
        Modelica.Blocks.Discrete.Sampler sampler1[3](each samplePeriod = 0.05) annotation(Placement(transformation(extent = {{30, -10}, {50, 10}})));
        Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(sampler1.y, y) annotation(Line(points = {{51, 0}, {100, 0}, {100, 0}, {100, 0}}, color = {0, 0, 127}));
        connect(frame_a, absoluteangularvelocity1.frame_a) annotation(Line(points = {{-100, 0}, {-95, 0}, {-45, 0}, {-45, -5}, {-40, -5}}));
        connect(absoluteangularvelocity1.w, add1.u2) annotation(Line(points = {{-19, -5.3}, {-14, -5.3}, {-7, -5.3}, {-7, -6}, {-2, -6}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(noise_ung2.y, add1[2].u1) annotation(Line(points = {{-18, 19.3}, {-13, 19.3}, {-7, 19.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung1.y, add1[1].u1) annotation(Line(points = {{-18, 34.3}, {-13, 34.3}, {-7, 34.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung3.y, add1[3].u1) annotation(Line(points = {{-19.3, 49.3}, {-14.3, 49.3}, {-7, 49.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(add1.y, sampler1.u) annotation(Line(points = {{21, 0}, {26, 0}, {23, 0}, {28, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2)), Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Sphere, extent = {{-90.11, 86.91}, {90.11, -86.91}}, origin = {4.04682, -1.67855}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-75.20999999999999, 71.87}, {75.20999999999999, -71.87}}, origin = {0.00144847, -2.21986}), Text(textString = "IMU", lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, extent = {{-68.11, 50.28}, {68.11, -50.28}}, origin = {0.42, -4.6})}), experiment(StopTime = 1, StartTime = 0));
      end IMU_simple;

      model IMU_no_sam_delay
        parameter Integer id;
        parameter Real noiseamp = 0.05;
        parameter Real net_delay = 0.001;
        ctrl.ACS_bus acs_bus annotation(Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteangularvelocity1 annotation(Placement(transformation(origin = {-30, -5}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Math.Add add1[3] annotation(Placement(transformation(extent = {{0, -10}, {20, 10}})));
        blocks.noise_ung noise_ung2(amplitude = noiseamp, seed = 2 + id) annotation(Placement(transformation(extent = {{-40, 14}, {-19, 25}})));
        blocks.noise_ung noise_ung1(amplitude = noiseamp, seed = 1 + id) annotation(Placement(transformation(extent = {{-40, 29}, {-19, 40}})));
        blocks.noise_ung noise_ung3(amplitude = noiseamp, seed = 3 + id) annotation(Placement(transformation(extent = {{-40, 44}, {-20, 55}})));
      equation
        connect(frame_a, absoluteangularvelocity1.frame_a) annotation(Line(points = {{-100, 0}, {-95, 0}, {-45, 0}, {-45, -5}, {-40, -5}}));
        connect(absoluteangularvelocity1.w, add1.u2) annotation(Line(points = {{-19, -5.3}, {-14, -5.3}, {-7, -5.3}, {-7, -6}, {-2, -6}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(noise_ung2.y, add1[2].u1) annotation(Line(points = {{-18, 19.3}, {-13, 19.3}, {-7, 19.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung1.y, add1[1].u1) annotation(Line(points = {{-18, 34.3}, {-13, 34.3}, {-7, 34.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung3.y, add1[3].u1) annotation(Line(points = {{-19.3, 49.3}, {-14.3, 49.3}, {-7, 49.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(add1.y, acs_bus.w[id, :]) annotation(Line(points = {{21, 0}, {26, 0}, {95, 0}, {100, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2)), Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Sphere, extent = {{-90.11, 86.91}, {90.11, -86.91}}, origin = {4.04682, -1.67855}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-75.20999999999999, 71.87}, {75.20999999999999, -71.87}}, origin = {0.00144847, -2.21986}), Text(textString = "IMU", lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, extent = {{-68.11, 50.28}, {68.11, -50.28}}, origin = {0.42, -4.6})}), experiment(StopTime = 1, StartTime = 0));
      end IMU_no_sam_delay;

      model IMU_nonoise
        parameter Integer id;
        parameter Real noiseamp = 0.05;
        parameter Real net_delay = 0.001;
        ctrl.ACS_bus acs_bus annotation(Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteangularvelocity1 annotation(Placement(transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Nonlinear.FixedDelay fixedDelay1[3](each delayTime = net_delay) annotation(Placement(transformation(extent = {{60, -10}, {80, 10}})));
      equation
        connect(frame_a, absoluteangularvelocity1.frame_a) annotation(Line(points = {{-100, 0}, {-95, 0}, {-35, 0}, {-30, 0}}));
        connect(fixedDelay1.y, acs_bus.w[id, :]) annotation(Line(points = {{66, 0}, {71, 0}, {95, 0}, {100, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(absoluteangularvelocity1.w[:], fixedDelay1.u) annotation(Line(points = {{-9, 0}, {-4, 0}, {53, 0}, {58, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Sphere, extent = {{-90.11, 86.91}, {90.11, -86.91}}, origin = {4.04682, -1.67855}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-75.20999999999999, 71.87}, {75.20999999999999, -71.87}}, origin = {0.00144847, -2.21986}), Text(textString = "IMU", lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, extent = {{-68.11, 50.28}, {68.11, -50.28}}, origin = {0.42, -4.6})}), experiment(StopTime = 1, StartTime = 0));
      end IMU_nonoise;

      model imu_delay
        parameter Integer id;
        parameter Real noiseamp = 0.05;
        parameter Modelica.SIunits.Time net_delay(start = 0.001) "Delay time of output with respect to input signal";
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteangularvelocity1 annotation(Placement(transformation(origin = {-30, -5}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Math.Add add1[3] annotation(Placement(transformation(extent = {{0, -10}, {20, 10}})));
        Modelica.Blocks.Nonlinear.FixedDelay fixedDelay1[3](each delayTime = net_delay) annotation(Placement(transformation(extent = {{60, -10}, {80, 10}})));
        satcomponents.blocks.noise_ung noise_ung2(amplitude = noiseamp, seed = 2 + id) annotation(Placement(transformation(extent = {{-40, 14}, {-19, 25}})));
        satcomponents.blocks.noise_ung noise_ung1(amplitude = noiseamp, seed = 1 + id) annotation(Placement(transformation(extent = {{-40, 29}, {-19, 40}})));
        satcomponents.blocks.noise_ung noise_ung3(amplitude = noiseamp, seed = 3 + id) annotation(Placement(transformation(extent = {{-40, 44}, {-20, 55}})));
        Modelica.Blocks.Discrete.Sampler sampler1[3](each samplePeriod = 0.05) annotation(Placement(transformation(extent = {{30, -10}, {50, 10}})));
        Modelica.Blocks.Interfaces.RealOutput y[3] annotation(Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(fixedDelay1.y, y) annotation(Line(points = {{81, 0}, {100, 0}, {100, 0}, {100, 0}}, color = {0, 0, 127}));
        connect(frame_a, absoluteangularvelocity1.frame_a) annotation(Line(points = {{-100, 0}, {-95, 0}, {-45, 0}, {-45, -5}, {-40, -5}}));
        connect(absoluteangularvelocity1.w, add1.u2) annotation(Line(points = {{-19, -5.3}, {-14, -5.3}, {-7, -5.3}, {-7, -6}, {-2, -6}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(noise_ung2.y, add1[2].u1) annotation(Line(points = {{-18, 19.3}, {-13, 19.3}, {-7, 19.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung1.y, add1[1].u1) annotation(Line(points = {{-18, 34.3}, {-13, 34.3}, {-7, 34.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(noise_ung3.y, add1[3].u1) annotation(Line(points = {{-19.3, 49.3}, {-14.3, 49.3}, {-7, 49.3}, {-7, 6}, {-2, 6}}, color = {0, 0, 127}, thickness = 0.015625));
        connect(add1.y, sampler1.u) annotation(Line(points = {{21, 0}, {26, 0}, {23, 0}, {28, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(sampler1.y, fixedDelay1.u) annotation(Line(points = {{51, 0}, {56, 0}, {53, 0}, {58, 0}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2)), Icon(graphics = {Rectangle(fillColor = {128, 128, 128}, fillPattern = FillPattern.Sphere, extent = {{-90.11, 86.91}, {90.11, -86.91}}, origin = {4.04682, -1.67855}), Rectangle(fillColor = {88, 88, 88}, fillPattern = FillPattern.Solid, extent = {{-75.20999999999999, 71.87}, {75.20999999999999, -71.87}}, origin = {0.00144847, -2.21986}), Text(textString = "IMU", lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, extent = {{-68.11, 50.28}, {68.11, -50.28}}, origin = {0.42, -4.6})}), experiment(StopTime = 1, StartTime = 0));
      end imu_delay;
    end Parts;

    package ctrl
      model ACS
        ACS_bus acs_bus annotation(Placement(transformation(origin = {90, 15}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Sources.Pulse pulse1[3](each amplitude = 0.0001, each period = 10, each nperiod = 3, each startTime = 20.0) annotation(Placement(transformation(extent = {{-5, -20}, {15, 0}})));
      equation
        connect(pulse1.y, acs_bus.w_a) annotation(Line(points = {{16, -10}, {21, -10}, {85, -10}, {85, 15}, {90, 15}}, color = {0, 0, 127}, thickness = 0.0625));
      end ACS;

      expandable connector sat_bus
        ACS_bus acs_bus;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {0.44, 1}, fillColor = {220, 220, 220}, fillPattern = FillPattern.Solid, extent = {{-88.27, 88.61}, {88.27, -88.61}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {-0.674206, -1.50696}, fillColor = {220, 220, 220}, fillPattern = FillPattern.Solid, extent = {{-88.27, 88.61}, {88.27, -88.61}}), Text(origin = {0.28, -1.25206}, extent = {{-81.06, 67.83}, {81.06, -67.83}}, textString = "ACS\nbus")}));
      end sat_bus;

      expandable connector ACS_bus
        Real w[10, 3](each start = 0.0, each final quantity = "AngularVelocity", each final unit = "rad/s");
        Real w_a[3](each start = 0.0, each final quantity = "AngularAcceleration", each final unit = "rad/s2");
        annotation(Icon(graphics = {Rectangle(fillColor = {220, 220, 220}, fillPattern = FillPattern.Solid, extent = {{-88.27, 88.61}, {88.27, -88.61}}, origin = {0.44, 1})}), Diagram(graphics = {Rectangle(fillColor = {220, 220, 220}, fillPattern = FillPattern.Solid, extent = {{-88.27, 88.61}, {88.27, -88.61}}, origin = {-0.674206, -1.50696}), Text(textString = "ACS
                                        bus", extent = {{-81.06, 67.83}, {81.06, -67.83}}, origin = {0.28, -1.25206})}));
      end ACS_bus;

      model busexample
        satcomponents.AOCS.ctrl.ACS_bus acs_bus1 annotation(Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        satcomponents.AOCS.ctrl.ACS_bus acs_bus2 annotation(Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        satcomponents.AOCS.ctrl.ACS acs1 annotation(Placement(visible = true, transformation(origin = {-80, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(acs_bus1, acs_bus2) annotation(Line(points = {{-40, 0}, {36.2892, 0}, {36.2892, 0.818554}, {36.2892, 0.818554}}));
        connect(acs1.acs_bus, acs_bus1) annotation(Line(points = {{-70, 40}, {-40.6548, 40}, {-40.6548, 3.27422}, {-40.6548, 3.27422}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end busexample;

      model ACS_P
        ACS_bus acs_bus annotation(Placement(transformation(origin = {90, 15}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        parameter Integer id;
        Modelica.Blocks.Math.Gain gain1[3](k = 1.0) annotation(Placement(transformation(extent = {{15, 5}, {35, 25}})));
        Modelica.Blocks.Math.Add error[3](k2 = -1) annotation(Placement(transformation(extent = {{-20, 5}, {0, 25}})));
        Modelica.Blocks.Math.Product product1[3] annotation(Placement(transformation(extent = {{50, 10}, {70, 30}})));
        Modelica.Blocks.Sources.Step step1[3](offset = 1, startTime = 5) annotation(Placement(transformation(extent = {{10, 40}, {30, 60}})));
        Modelica.Blocks.Sources.Step step3[3](height = {-0.1, 0.02, 0.05}, offset = {0.1, 0.0, 0.0}, startTime = 10) annotation(Placement(transformation(extent = {{-75, 10}, {-55, 30}})));
      equation
        connect(error.y, gain1.u) annotation(Line(points = {{1, 15}, {6, 15}, {8, 15}, {13, 15}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(error.u2, acs_bus.w[id, :]) annotation(Line(points = {{-22, 9}, {-27, 9}, {-27, -15}, {85, -15}, {85, 15}, {90, 15}}, color = {0, 0, 127}, thickness = 0.0625), AutoRoute = false);
        connect(gain1.y, product1.u2) annotation(Line(points = {{36, 15}, {41, 15}, {43, 15}, {43, 14}, {48, 14}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(product1.y, acs_bus.w_a) annotation(Line(points = {{71, 20}, {76, 20}, {85, 20}, {85, 15}, {90, 15}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(step1.y, product1.u1) annotation(Line(points = {{31, 50}, {36, 50}, {43, 50}, {43, 26}, {48, 26}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(step3.y, error.u1) annotation(Line(points = {{-54, 20}, {-49, 20}, {-27, 20}, {-27, 21}, {-22, 21}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(error(y(flags = 2)), Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-86.39, 85.40000000000001}, {93.6909, -86.0637}}, origin = {1.22, 1.55}), Text(textString = "ACS", extent = {{-80.75, 56.53}, {80.75, -56.53}}, origin = {0.44, 3.43})}), experiment(StopTime = 1, StartTime = 0));
      end ACS_P;

      model ACS_PID
        parameter Integer id = 1;
        ACS_bus acs_bus annotation(Placement(transformation(origin = {90, 15}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Continuous.LimPID PID[3](controllerType = Modelica.Blocks.Types.SimpleController.PI, k = 1, Ti = 0.1, yMax = 2, strict = true) annotation(Placement(transformation(extent = {{15, 5}, {35, 25}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable1(table = {{0, 0, 0, 0}, {5, 0.1, 0, 0}, {10, 0.05, 0.1, 0.1}}, smoothness = Modelica.Blocks.Types.Smoothness.ConstantSegments, extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint) annotation(Placement(transformation(extent = {{-30, 5}, {-10, 25}})));
      equation
        connect(PID.u_m, acs_bus.w[id, :]) annotation(Line(points = {{20, 13}, {20, -10}, {85, -10}, {90, 15}}, color = {0, 0, 127}, thickness = 0.0625), AutoRoute = false);
        connect(PID.y, acs_bus.w_a) annotation(Line(points = {{36, 15}, {41, 15}, {85, 15}, {90, 15}}, color = {0, 0, 127}, thickness = 0.0625));
        connect(combiTimeTable1.y[:], PID.u_s) annotation(Line(points = {{-9, 15}, {-4, 15}, {8, 15}, {13, 15}}, color = {0, 0, 127}, thickness = 0.0625));
        annotation(Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-86.39, 85.40000000000001}, {93.6909, -86.0637}}, origin = {1.22, 1.55}), Text(textString = "ACS", extent = {{-80.75, 56.53}, {80.75, -56.53}}, origin = {0.44, 3.43})}), experiment(StopTime = 1, StartTime = 0));
      end ACS_PID;

      model ACS_bus_ctrl "ACS_bus_ctrl"
        parameter Integer size = 10 "number of buildingblocks that get connected to bus";
        Real w[size, 3](each start = 0.0, each final quantity = "AngularVelocity", each final unit = "rad/s");
        Real w_a[3](each start = 0.0, each final quantity = "AngularAcceleration", each final unit = "rad/s2");
        ACS_bus acs_bus annotation(Placement(transformation(origin = {90, 15}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(w, acs_bus.w);
        annotation(Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-86.39, 85.40000000000001}, {93.6909, -86.0637}}, origin = {1.22, 1.55}), Text(textString = "Bus\\nCtrl", extent = {{-80.75, 56.53}, {80.75, -56.53}}, origin = {0.44, 3.43})}), experiment(StopTime = 1, StartTime = 0));
      end ACS_bus_ctrl;
    end ctrl;

    model momentum_add "momentum_add"
      inner Modelica.Mechanics.MultiBody.World world(enableAnimation = false) annotation(Placement(transformation(extent = {{-110, 65}, {-90, 85}})));
      Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(r = {1.0, 0, 0}, r_shape = {-0.5, 0, 0}, widthDirection = {0, 0.5, 0}, density = 300000) annotation(Placement(transformation(extent = {{25, 65}, {45, 85}})));
      Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox2(r = {1.0, 0, 0}, r_shape = {-0.5, 0, 0}, widthDirection = {0, 0.5, 0}, density = 300000) annotation(Placement(transformation(extent = {{30, -15}, {50, 5}})));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion1 annotation(Placement(transformation(extent = {{-50, 65}, {-30, 85}})));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion2 annotation(Placement(transformation(extent = {{-45, -15}, {-25, 5}})));
      Parts.reactionwheelsimple_noelectricity reactionwheelsimple_noelectricity1(id = 1) annotation(Placement(transformation(extent = {{55, 80}, {80, 110}})));
      Parts.reactionwheelsimple_noelectricity reactionwheelsimple_noelectricity2(id = 3) annotation(Placement(transformation(extent = {{80, 10}, {105, 35}})));
      Parts.reactionwheelsimple_noelectricity reactionwheelsimple_noelectricity3(id = 2) annotation(Placement(transformation(extent = {{-15, 10}, {10, 35}})));
      Modelica.Blocks.Sources.Pulse pulse1(amplitude = 1.0, period = 10.0, nperiod = 1, startTime = 10.0) annotation(Placement(transformation(extent = {{165, 45}, {145, 65}})));
    equation
      connect(world.frame_b, freeMotion1.frame_a) annotation(Line(points = {{-90, 75}, {-85, 75}, {-55, 75}, {-50, 75}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(freeMotion1.frame_b, bodyBox1.frame_a) annotation(Line(points = {{-30, 75}, {-25, 75}, {20, 75}, {25, 75}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(world.frame_b, freeMotion2.frame_a) annotation(Line(points = {{-90, 75}, {-85, 75}, {-50, 75}, {-50, -5}, {-45, -5}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(freeMotion2.frame_b, bodyBox2.frame_a) annotation(Line(points = {{-25, -5}, {-20, -5}, {25, -5}, {30, -5}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(bodyBox2.frame_b, reactionwheelsimple_noelectricity2.frame_a) annotation(Line(points = {{50, -5}, {55, -5}, {95, -5}, {95, 5}, {95, 10}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(bodyBox1.frame_b, reactionwheelsimple_noelectricity1.frame_a) annotation(Line(points = {{45, 75}, {50, 75}, {70, 75}, {70, 80}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(reactionwheelsimple_noelectricity3.frame_a, bodyBox2.frame_a) annotation(Line(points = {{0, 10}, {0, 5}, {0, -5}, {25, -5}, {30, -5}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(pulse1.y, reactionwheelsimple_noelectricity2.acs_bus.w_a[3, 3]) annotation(Line(points = {{144, 55}, {139, 55}, {110, 55}, {110, 20}, {105, 20}}, color = {0, 0, 127}, thickness = 0.0625));
      connect(pulse1.y, reactionwheelsimple_noelectricity3.acs_bus.w_a[2, 3]) annotation(Line(points = {{144, 55}, {139, 55}, {15, 55}, {15, 20}, {10, 20}}, color = {0, 0, 127}, thickness = 0.0625));
      connect(pulse1.y, reactionwheelsimple_noelectricity1.acs_bus.w_a[1, 3]) annotation(Line(points = {{144, 55}, {139, 55}, {85, 55}, {85, 92}, {80, 92}}, color = {0, 0, 127}, thickness = 0.0625));
      annotation(bodyBox1(body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), bodyBox2(body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), reactionwheelsimple_noelectricity1(bodyShape1(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2)))), reactionwheelsimple_noelectricity2(acs_bus(w(flags = 2), w_a(flags = 2), u(flags = 2), y(flags = 2)), bodyShape1(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2)))), reactionwheelsimple_noelectricity3(bodyShape1(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2)))), pulse1(y(flags = 2)), experiment(StopTime = 100, StartTime = 0));
    end momentum_add;
  end AOCS;

  package blocks "blocks"
    model noise_ung "noise_sampled TODO: noch eine normal-distribution erzuegen (Box-Muller oder ziggurat)"
      extends Modelica.Blocks.Interfaces.SO;
      parameter Real amplitude = 1.0;
      parameter Real seed = 0.0;
      constant Real m = 111.11 "int(2 ^ 31 - 1)";

      function rand
        input Real t;
        input Real seed;
        output Real r;
      protected
        Real x;
        constant Integer m = 2147483647 "int(2 ^ 31 - 1)";
        constant Integer a = 16807 "7 ^ 5";
      algorithm
        x := t * seed;
        for i in 1:10 loop
          x := mod(a * x + seed, m);
        end for;
        r := x / m;
      end rand;
    equation
      y = (rand(time * m, seed) - 0.5) * amplitude;
      annotation(x(flags = 2), y(flags = 2), Icon(coordinateSystem(extent = {{-101.7, -51.7}, {101.7, 51.7}}), graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 56.7}, {53.3, -40}}), Line(points = {{-70, -20}, {-66.7, 20}, {-66.7, -3.3}, {-63.3, 3.3}, {-63.3, 0}, {-63.3, 10}, {-60, -3.3}, {-56.7, 16.7}, {-56.7, -13.3}, {-53.3, 36.7}, {-50, -3.3}, {-50, 10}, {-46.7, -10}, {-43.3, 6.7}, {-43.3, -3.3}, {-36.7, -23.3}, {-36.7, -10}, {-33.3, -3.3}, {-30, -10}, {-30, -3.3}, {-30, 30}, {-26.7, 30}, {-20, 6.7}, {-20, -13.3}, {-16.7, -16.7}, {-16.7, 3.3}, {-13.3, -10}, {-13.3, 3.3}, {-13.3, -16.7}, {-13.3, 43.3}, {-10, -16.7}, {-6.7, -6.7}, {-6.7, -13.3}, {-3.3, 16.7}, {-3.3, -3.3}, {-3.3, 3.3}, {0, -10}, {3.3, -13.3}, {6.7, 23.3}, {10, 6.7}, {13.3, 0}, {16.7, -6.7}, {16.7, -16.7}, {16.7, -3.3}, {20, -23.3}, {23.3, -6.7}, {23.3, -3.3}, {33.3, -23.3}, {33.3, 6.7}, {36.7, 6.7}, {40, 10}, {43.3, 46.7}, {40, -10}, {40, -13.3}, {43.3, 0}, {46.7, 10}, {50, -6.7}, {50, 3.3}, {53.3, 13.3}}, color = {0, 0, 0})}), experiment(StopTime = 1, StartTime = 0));
    end noise_ung;

    model noise_sampled
      Modelica.Blocks.Math.Add add1 annotation(Placement(visible = true, transformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      satcomponents.blocks.noise_ung noise_ung1 annotation(Placement(visible = true, transformation(origin = {-40, 20}, extent = {{-10.17, -5.17}, {10.17, 5.17}}, rotation = 0)));
      Modelica.Blocks.Discrete.ZeroOrderHold zeroorderhold1(samplePeriod = 0.1) annotation(Placement(visible = true, transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-92, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(u, add1.u2) annotation(Line(points = {{-102, 0}, {-39, 0}, {-39, -6}, {8, -6}}, color = {0, 0, 127}));
      connect(zeroorderhold1.y, y) annotation(Line(points = {{71, 0}, {92.5852, 0}, {92.5852, 0.801603}, {92.5852, 0.801603}}));
      connect(add1.y, zeroorderhold1.u) annotation(Line(points = {{31, 0}, {46.493, 0}, {46.493, 0}, {46.493, 0}}));
      connect(noise_ung1.y, add1.u1) annotation(Line(points = {{-29, 20}, {-9.218439999999999, 20}, {-9.218439999999999, 6.81363}, {8, 6.81363}, {8, 6}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end noise_sampled;

    model noisetest
      noise_ung noise_ung1 annotation(Placement(visible = true, transformation(extent = {{-9, -1}, {12, 10}}, rotation = 0)));
      annotation(noise_ung1(y(flags = 2)), experiment(StopTime = 1, StartTime = 0));
    end noisetest;

    model sampled_noise_noevent
      noise_ung noise_ung1 annotation(Placement(visible = true, transformation(extent = {{-43, -5}, {-22, 6}}, rotation = 0)));
      satcomponents.blocks.no_event_sampler no_event_sampler1 annotation(Placement(visible = true, transformation(origin = {34, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

      function sampler
        input Real current_value;
        input Real last_value;
        output Real sampled_value;
      protected
        Real x;
        constant Integer m = 2147483647 "int(2 ^ 31 - 1)";
        constant Integer a = 16807 "7 ^ 5";
      algorithm
        sampled_value := current_value;
      end sampler;
    equation
      connect(noise_ung1.y, no_event_sampler1.u) annotation(Line(points = {{-21, 0.5}, {22, 0.5}, {22, 0}}, color = {0, 0, 127}));
      annotation(noise_ung1(y(flags = 2)), experiment(StopTime = 1, StartTime = 0));
    end sampled_noise_noevent;

    model no_event_sampler
      extends Modelica.Blocks.Interfaces.DiscreteSISO;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end no_event_sampler;

    model sample_test
      Modelica.Blocks.Discrete.ZeroOrderHold zeroorderhold1(samplePeriod = 0.1) annotation(Placement(visible = true, transformation(origin = {30, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Discrete.Sampler sampler1(samplePeriod = 0.1) annotation(Placement(visible = true, transformation(origin = {30, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Sine sine1(freqHz = 2) annotation(Placement(visible = true, transformation(origin = {-62, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(sine1.y, zeroorderhold1.u) annotation(Line(points = {{-51, 0}, {-22, 0}, {-22, -12}, {16, -12}, {16, -12}}, color = {0, 0, 127}));
      connect(sine1.y, sampler1.u) annotation(Line(points = {{-51, 0}, {-22, 0}, {-22, 32}, {18, 32}, {18, 32}}, color = {0, 0, 127}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end sample_test;

    block OnOffIdleController "On-off controller"
      extends Modelica.Blocks.Icons.Block;
      Modelica.Blocks.Interfaces.RealInput reference "Connector of Real input signal used as reference signal" annotation(Placement(transformation(extent = {{-140, 80}, {-100, 40}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal used as measurement signal" annotation(Placement(transformation(extent = {{-140, -40}, {-100, -80}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput y "Connector of Real output signal used as actuator signal" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
      parameter Real bandwidth(start = 0.1) "Bandwidth around reference signal";
    equation
      y = if u > reference + bandwidth / 2 then 1 else if u < reference - bandwidth / 2 then -1 else 0;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1), graphics = {Text(extent = {{-92, 74}, {44, 44}}, lineThickness = 0.5, textString = "reference"), Text(extent = {{-94, -52}, {-34, -74}}, textString = "u"), Line(points = {{-76.0, -32.0}, {-68.0, -6.0}, {-50.0, 26.0}, {-24.0, 40.0}, {-2.0, 42.0}, {16.0, 36.0}, {32.0, 28.0}, {48.0, 12.0}, {58.0, -6.0}, {68.0, -28.0}}, color = {0, 0, 127}), Line(points = {{-78.0, -2.0}, {-6.0, 18.0}, {82.0, -12.0}}, color = {255, 0, 0}), Line(points = {{-78.0, 12.0}, {-6.0, 30.0}, {82.0, 0.0}}), Line(points = {{-78.0, -16.0}, {-6.0, 4.0}, {82.0, -26.0}}), Line(points = {{-82.0, -18.0}, {-56.0, -18.0}, {-56.0, -40.0}, {64.0, -40.0}, {64.0, -20.0}, {90.0, -20.0}}, color = {255, 0, 255})}), Documentation(info = "<html>
<p>The block OnOffController sets the output signal <b>y</b> to <b>true</b> when
the input signal <b>u</b> falls below the <b>reference</b> signal minus half of
the bandwidth and sets the output signal <b>y</b> to <b>false</b> when the input
signal <b>u</b> exceeds the <b>reference</b> signal plus half of the bandwidth.</p>
</html>"));
    end OnOffIdleController;

    package examples
      model onoffidletest
        Modelica.Blocks.Sources.Sine sine1 annotation(Placement(visible = true, transformation(origin = {-72, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnOffIdleController onoffidlecontroller1(bandwidth = 0.05) annotation(Placement(visible = true, transformation(origin = {-18, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const(k = 0.2) annotation(Placement(visible = true, transformation(origin = {-72, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(const.y, onoffidlecontroller1.reference) annotation(Line(points = {{-61, 42}, {-30, 42}, {-30, 42}, {-30, 42}}, color = {0, 0, 127}));
        connect(sine1.y, onoffidlecontroller1.u) annotation(Line(points = {{-61, 10}, {-50, 10}, {-50, 30}, {-30, 30}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end onoffidletest;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end examples;
    annotation(dateModified = "2014-04-17 11:12:16Z");
  end blocks;
  annotation(dateModified = "2013-07-22 12:21:35Z", Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-11.5042, 31.4966}, {33.1625, 8.163309999999999}, {11.8292, -31.5034}, {-33.1708, -7.17002}, {-11.5042, 31.4966}}, origin = {-0.495835, -3.82998}), Polygon(points = {{-44.3475, -20.3811}, {-13.0141, -37.3811}, {25.6525, 27.2855}, {-5.68082, 43.9522}, {-44.3475, -20.3811}}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, origin = {41.3475, 49.7145}), Polygon(points = {{-44.3475, -20.3811}, {-13.0141, -37.3811}, {25.6525, 27.2855}, {-5.68082, 43.9522}, {-44.3475, -20.3811}}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, origin = {-23.6525, -62.9522}), Polygon(points = {{-8.16695, 13.1269}, {-13.1669, 4.12686}, {-0.500278, -13.5398}, {13.1664, 11.1269}, {-8.16695, 13.1269}}, origin = {36.1669, -23.4602}), Polygon(points = {{16.7693, 29.6823}, {14.7693, 5.68234}, {1.10267, -18.651}, {-16.8973, -29.3177}, {16.7693, 29.6823}}, origin = {-35.7693, 14.651})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
end satcomponents;