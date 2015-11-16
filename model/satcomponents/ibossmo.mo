package ibossmo
  // CP: 65001
  // SimulationX Version: 3.6.5.34033

  package components
    model iboss_interface "iboss_interface"
      Modelica.Electrical.Analog.Interfaces.PositivePin vcc_ext "Positive pin of an electric component" annotation(Placement(transformation(origin = {99.273, -14.1046}, extent = {{-12, -12}, {12, 12}}), iconTransformation(extent = {{88, 38}, {112, 62}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd_ext "Negative pin of an electric component" annotation(Placement(transformation(origin = {99.556, -40.9194}, extent = {{-12, -12}, {12, 12}}), iconTransformation(extent = {{88, -12}, {112, 12}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd_int "Negative pin of an electric component" annotation(Placement(transformation(origin = {-98, -37}, extent = {{-12, -12}, {12, 12}}), iconTransformation(extent = {{-112, -12}, {-88, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin vcc_int "Positive pin of an electric component" annotation(Placement(transformation(origin = {-98, -17}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-100, 50}, extent = {{-12, -12}, {12, 12}})));
      Comm_out comm_out annotation(Placement(transformation(origin = {-100, 82}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-50, 100}, extent = {{-10, -10}, {10, 10}})));
      Comm_in comm_in annotation(Placement(transformation(origin = {-100, 55}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin v_motor "Positive pin of an electric component" annotation(Placement(transformation(origin = {-98, 28}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-50, -100}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd_motor "Negative pin of an electric component" annotation(Placement(transformation(origin = {-98, 8}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {0, -100}, extent = {{-12, -12}, {12, 12}})));

      connector Comm_out
        Modelica.Blocks.Interfaces.RealOutput mi_pos;
        Modelica.Blocks.Interfaces.RealOutput v_ext;
        Modelica.Blocks.Interfaces.RealOutput v_int;
        Modelica.Blocks.Interfaces.RealOutput intf_current;
        Modelica.Blocks.Interfaces.RealOutput tmp;
        annotation(Icon(graphics = {Ellipse(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, 70}, {70, -70}}, origin = {0, -2})}), Diagram(graphics = {Ellipse(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-57, 59}, {57, -59}}, origin = {1, 1})}));
      end Comm_out;

      connector Comm_in
        Modelica.Blocks.Interfaces.RealInput set_pos;
        Modelica.Blocks.Interfaces.BooleanInput set_ess;
        annotation(Icon(graphics = {Ellipse(fillColor = {152, 152, 152}, fillPattern = FillPattern.Horizontal, extent = {{-69, 69}, {69, -69}}, origin = {-1, -1})}), Diagram(graphics = {Ellipse(fillColor = {119, 119, 119}, fillPattern = FillPattern.Solid, extent = {{-48, 58}, {48, -58}})}));
      end Comm_in;

      m_int mi annotation(Placement(transformation(origin = {-34, 42}, extent = {{-14, -14}, {14, 14}})));
      Modelica.Electrical.Analog.Sensors.VoltageSensor v_int annotation(Placement(transformation(origin = {-55, -31}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealopeningswitch1 annotation(Placement(transformation(origin = {-28, -6}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.001) annotation(Placement(transformation(origin = {-22, -44}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Sensors.VoltageSensor v_ext annotation(Placement(transformation(origin = {17, -31}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.02) annotation(Placement(transformation(origin = {16, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Sensors.CurrentSensor intf_current annotation(Placement(transformation(origin = {0, 28}, extent = {{10, 10}, {-10, -10}})));
    equation
      connect(gnd_motor, mi.pin_n) annotation(Line(points = {{-98, 8}, {-93, 8}, {-53, 8}, {-53, 39.3}, {-48, 39.3}}));
      connect(v_motor, mi.pin_p) annotation(Line(points = {{-98, 28}, {-93, 28}, {-53.3, 28}, {-53.3, 44.7}, {-48.3, 44.7}}));
      comm_out.tmp = 293 + sin(time * 0.001);
      connect(mi.pos_sens, comm_out.mi_pos) annotation(Line(points = {{-48, 35}, {-53, 35}, {-70, 35}, {-70, 82}, {-100, 82}}, color = {0, 0, 127}), AutoRoute = false);
      connect(comm_in.set_pos, mi.target_pos) annotation(Line(points = {{-100, 55}, {-95, 55}, {-53, 55}, {-53, 50.3}, {-48, 50.3}}));
      connect(comm_in.set_ess, idealopeningswitch1.control) annotation(Line(points = {{-100, 55}, {-95, 55}, {-28, 55}, {-28, 6}, {-28, 1}}));
      connect(v_ext.v, comm_out.v_ext) annotation(Line(points = {{27, -31}, {32, -31}, {32, 82}, {-95, 82}, {-100, 82}}, color = {0, 0, 127}));
      connect(intf_current.i, comm_out.intf_current) annotation(Line(points = {{0, 38}, {0, 43}, {0, 82}, {-95, 82}, {-100, 82}}, color = {0, 0, 127}));
      connect(v_int.v, comm_out.v_int) annotation(Line(points = {{-65, -31}, {-70, -31}, {-70, 82}, {-100, 82}}, color = {0, 0, 127}), AutoRoute = false);
      connect(intf_current.n, idealopeningswitch1.n) annotation(Line(points = {{-10, 28}, {-15, 28}, {-15, 11}, {-13, 11}, {-13, -6}, {-18, -6}}));
      connect(intf_current.p, resistor2.p) annotation(Line(points = {{10, 28}, {15, 28}, {16, 28}, {16, 21}, {16, 16}}));
      connect(resistor2.n, v_ext.p) annotation(Line(points = {{16, -4}, {16, -9}, {16, -16}, {17, -16}, {17, -21}}));
      connect(v_ext.p, vcc_ext) annotation(Line(points = {{17, -21}, {17, -16}, {17, -14}, {94.3, -14}, {99.3, -14}}));
      connect(v_ext.n, gnd_ext) annotation(Line(points = {{17, -41}, {17, -46}, {55.7, -46}, {55.7, -41}, {94.7, -41}, {99.7, -41}}));
      connect(resistor1.n, v_ext.n) annotation(Line(points = {{-12, -44}, {-7, -44}, {-7, -46}, {17, -46}, {17, -41}}));
      connect(resistor1.p, v_int.n) annotation(Line(points = {{-32, -44}, {-37, -44}, {-37, -46}, {-55, -46}, {-55, -41}}));
      connect(vcc_int, v_int.p) annotation(Line(points = {{-98, -17}, {-93, -17}, {-93, -16}, {-55, -16}, {-55, -21}}));
      connect(v_int.p, idealopeningswitch1.p) annotation(Line(points = {{-55, -21}, {-55, -16}, {-55, -6}, {-43, -6}, {-38, -6}}));
      connect(gnd_int, v_int.n) annotation(Line(points = {{-98, -37}, {-93, -37}, {-93, -46}, {-55, -46}, {-55, -41}}));
      annotation(mi(noise_ung1(y(flags = 2))), Icon(graphics = {Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-16.6902, 93.63509999999999}, {7.63791, -93.3522}}, origin = {-10, 2}, rotation = 180), Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-22.0651, 48.0905}, {-16.6902, -49.2221}}, origin = {-10, 2}, rotation = 180), Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-33.9463, 21.2164}, {15.8416, -22.9137}}, origin = {-10, 2}, rotation = 180), Rectangle(fillPattern = FillPattern.Solid, extent = {{24.0453, 66.1952}, {1.41443, 15.8416}}, origin = {-10, 2}, rotation = 180), Rectangle(fillPattern = FillPattern.Solid, extent = {{1.9802, -9.6181}, {25.1768, -61.9519}}, origin = {-10, 2}, rotation = 180), Text(textString = "GND", fillColor = {0, 0, 255}, extent = {{39.0382, -33.9463}, {85.71429999999999, -64.7807}}), Text(textString = "VCC", fillColor = {0, 0, 255}, extent = {{41.5842, -0.282893}, {80.3395, -33.6634}})}), experiment(StopTime = 100, StartTime = 0, Tolerance = 0.0001, Interval = 0.02));
    end iboss_interface;

    model connectionelement
      iboss_connector int1 annotation(Placement(transformation(origin = {88.5431, 4.52615}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {88.5431, 4.52615}, extent = {{-12, -12}, {12, 12}})));
      parameter Real R(final quantity = "Resistance", final unit = "Ohm") = 0.001;
      Modelica.SIunits.Power LossPower;
      iboss_connector int2 annotation(Placement(transformation(origin = {-87.90949999999999, 4.02826}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-87.90949999999999, 4.02826}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
      Modelica.Electrical.Analog.Basic.Resistor R_GND(R = R) annotation(Placement(transformation(origin = {22.5969, -3.84725}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Basic.Resistor R_Vcc(R = R) annotation(Placement(transformation(origin = {23.7962, 12.5262}, extent = {{-12, -12}, {12, 12}})));
    equation
      LossPower = R_GND.LossPower + R_Vcc.LossPower;
      connect(int1.Vcc, R_Vcc.n) annotation(Line(points = {{89, 5}, {84, 5}, {41, 5}, {41, 13}, {36, 13}}));
      connect(R_Vcc.p, int2.Vcc) annotation(Line(points = {{12, 13}, {7, 13}, {-83, 13}, {-83, 4}, {-88, 4}}));
      connect(R_GND.p, int2.GND) annotation(Line(points = {{11, -4}, {6, -4}, {-83, -4}, {-83, 4}, {-88, 4}}));
      connect(R_GND.n, int1.GND) annotation(Line(points = {{35, -4}, {40, -4}, {84, -4}, {84, 5}, {89, 5}}));
      annotation(LossPower(flags = 2), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, extent = {{-85.5219, 88.3168}, {87.4569, -87.12869999999999}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
    end connectionelement;

    model dockinterface
      iboss_connector iBoss_Int annotation(Placement(visible = true, transformation(origin = {-0.315956, 69.1943}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-0.315956, 69.1943}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.2765, -4.10742}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 100) annotation(Placement(visible = true, transformation(origin = {0.631912, 12.3223}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    equation
      connect(constantvoltage1.n, iBoss_Int.GND) annotation(Line(points = {{12.6319, 12.3223}, {12.7298, 12.3223}, {12.7298, 41.867}, {19.5191, 41.867}, {19.5191, 77.2277}, {6.91466, 77.2277}, {6.91466, 76.9213}}));
      connect(constantvoltage1.p, iBoss_Int.Vcc) annotation(Line(points = {{-11.3681, 12.3223}, {-11.3154, 12.3223}, {-11.3154, 61.1033}, {7.3369, 61.1033}, {7.3369, 61.784}}));
      connect(constantvoltage1.n, ground1.p) annotation(Line(points = {{12.6319, 12.3223}, {25.1768, 12.3223}, {25.1768, 7.89258}, {25.2765, 7.89258}}));
      annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-59.3997, 67.29859999999999}, {58.1359, -72.6698}})}), Diagram(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-46.7615, 68.8784}, {46.7615, -71.40600000000001}})}));
    end dockinterface;

    connector iboss_connector_ess
      import Modelica.Electrical.Analog.Interfaces;
      Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(visible = true, transformation(origin = {62.9251, 65.8292}, extent = {{-28.2954, -28.2954}, {28.2954, 28.2954}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(visible = true, transformation(origin = {61.9524, -60.6435}, extent = {{-28.2954, -28.2954}, {28.2954, 28.2954}}, rotation = 0)));
      annotation(defaultComponentName = "iBoss_connector", Diagram(graphics = {Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764, -102.343}, {97.23560000000001, -162.343}}, textString = "%name"), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125, 15.3798}, {12.5283, -10.6274}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100, 100}, {100, -100}})}));
    end iboss_connector_ess;

    connector iboss_connector
      import Modelica.Electrical.Analog.Interfaces;
      Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(visible = true, transformation(origin = {62.9251, 65.8292}, extent = {{-28.2954, -28.2954}, {28.2954, 28.2954}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(visible = true, transformation(origin = {61.9524, -60.6435}, extent = {{-28.2954, -28.2954}, {28.2954, 28.2954}}, rotation = 0)));
      annotation(defaultComponentName = "iBoss_connector", Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100, 100}, {100, -100}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-102.764, -102.343}, {97.2356, -162.343}}, textString = "%name"), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.11, 15.38}, {12.53, -10.63}})}));
    end iboss_connector;

    expandable connector iboss_int "general iboss interface"
      satcomponents.AOCS.ctrl.sat_bus sat_bus;
      annotation(defaultComponentName = "iBoss_connector", Icon(graphics = {Rectangle(fillColor = {255, 220, 168}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-100, 100}, {100, -100}}, origin = {0.22, 0})}), Diagram(graphics = {Text(textString = "%name", fillPattern = FillPattern.Solid, extent = {{-102.764, -102.343}, {97.23560000000001, -162.343}}), Rectangle(fillColor = {255, 220, 168}, fillPattern = FillPattern.Solid, extent = {{-91.81, 87.72}, {91.81, -87.72}}, origin = {-1.11, 1.88})}));
    end iboss_int;

    connector iboss_int_mech
      annotation(defaultComponentName = "iBoss_connector", Diagram(graphics = {Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764, -102.343}, {97.23560000000001, -162.343}}, textString = "%name"), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125, 15.3798}, {12.5283, -10.6274}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100, 100}, {100, -100}})}));
    end iboss_int_mech;

    model router "router"
      satcomponents.AOCS.ctrl.sat_bus sat_bus annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}), iconTransformation(extent = {{88.3, -8.300000000000001}, {108.3, 11.7}})));
      annotation(Icon(coordinateSystem(extent = {{-101.7, -51.7}, {101.7, 51.7}}), graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 83.3}, {86.7, -86.7}}), Text(textString = "ROUT", lineColor = {0, 0, 0}, extent = {{-50, 43.3}, {53.3, -46.7}})}), experiment(StopTime = 1, StartTime = 0));
    end router;

    model spring_connection "spring connection between iboss elements"
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-75, -2}, {-43, 30}}), iconTransformation(extent = {{-75, -2}, {-43, 30}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(transformation(extent = {{60, -2}, {92, 30}}), iconTransformation(extent = {{60, -2}, {92, 30}})));
      Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic4(useAxisFlange = true, animation = false) annotation(Placement(transformation(extent = {{-5, 5}, {15, 25}})));
      Modelica.Mechanics.Translational.Components.Spring spring4 annotation(Placement(transformation(extent = {{-5, 30}, {15, 50}})));
    equation
      connect(spring4.flange_a, prismatic4.support) annotation(Line(points = {{-5, 40}, {-10, 40}, {-10, 33}, {1, 33}, {1, 26}, {1, 21}}, color = {0, 127, 0}, thickness = 0.0625));
      connect(spring4.flange_b, prismatic4.axis) annotation(Line(points = {{15, 40}, {20, 40}, {20, 21}, {18, 21}, {13, 21}}, color = {0, 127, 0}, thickness = 0.0625));
      connect(prismatic4.frame_b, frame_b) annotation(Line(points = {{15, 15}, {20, 15}, {71, 15}, {71, 14}, {76, 14}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(prismatic4.frame_a, frame_a) annotation(Line(points = {{-5, 15}, {-10, 15}, {-54, 15}, {-54, 14}, {-59, 14}}, color = {95, 95, 95}, thickness = 0.0625));
      annotation(Icon(coordinateSystem(extent = {{-101.7, -51.7}, {101.7, 51.7}}), graphics = {Line(points = {{-50, 6.7}, {-33.3, 26.7}, {-23.3, 0}, {-10, 26.7}, {6.7, -6.7}, {13.3, 23.3}, {30, 0}, {40, 26.7}, {50, -3.3}, {70, 20}, {73.3, 23.3}}, color = {0, 0, 0})}), experiment(StopTime = 1, StartTime = 0));
    end spring_connection;

    model ESS_relay
      Modelica.Electrical.Analog.Semiconductors.HeatingPMOS heatingpmos1(useHeatPort = false, W = 20.0e-5, L = 6.0e-5) annotation(Placement(visible = true, transformation(origin = {-20, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Electrical.Analog.Semiconductors.HeatingPMOS heatingpmos2(useHeatPort = false, W = 20.0e-5, L = 6.0e-5) annotation(Placement(visible = true, transformation(origin = {40, 20}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {0, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {40, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 100) annotation(Placement(visible = true, transformation(origin = {-60, -20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    equation
      connect(heatingpmos1.G, ground1.p) annotation(Line(points = {{-15, 10}, {-15, -23.3068}, {0.27101, -23.3068}, {0.27101, -50.4078}, {0.27101, -50.4078}}, color = {0, 0, 255}));
      connect(heatingpmos2.B, heatingpmos2.D) annotation(Line(points = {{40, 30}, {40, 40.13}, {44.7802, 40.13}, {44.7802, 29.9683}, {44.7802, 29.9683}}, color = {0, 0, 255}));
      connect(heatingpmos1.B, heatingpmos1.D) annotation(Line(points = {{-20, 30}, {-20, 38.2354}, {-24.9736, 38.2354}, {-24.9736, 29.9683}, {-24.9736, 29.9683}}, color = {0, 0, 255}));
      connect(heatingpmos1.S, heatingpmos2.S) annotation(Line(points = {{-15, 30}, {-15, 38.806}, {35.8209, 38.806}, {35.8209, 30.2772}, {35.8209, 30.2772}}, color = {0, 0, 255}));
      connect(constantvoltage1.n, ground1.p) annotation(Line(points = {{-60, -30}, {-60, -50.1951}, {-0.260078, -50.1951}, {-0.260078, -50.1951}}, color = {0, 0, 255}));
      connect(constantvoltage1.p, heatingpmos1.D) annotation(Line(points = {{-60, -10}, {-60, 38.2315}, {-24.9675, 38.2315}, {-24.9675, 29.909}, {-24.9675, 29.909}}, color = {0, 0, 255}));
      connect(resistor1.n, heatingpmos2.D) annotation(Line(points = {{50, -40}, {73.342, -40}, {73.342, 39.0117}, {44.7334, 39.0117}, {44.7334, 30.4291}, {44.7334, 30.4291}}, color = {0, 0, 255}));
      connect(ground1.p, resistor1.p) annotation(Line(points = {{0, -50}, {30.4291, -50}, {30.4291, -39.7919}, {30.4291, -39.7919}}, color = {0, 0, 255}));
      connect(heatingpmos1.G, heatingpmos2.G) annotation(Line(points = {{-15, 10}, {-15, -1.82055}, {35.1105, -1.82055}, {35.1105, 10.143}, {35.1105, 10.143}}, color = {0, 0, 255}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end ESS_relay;

    model iboss_interface_old
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor2 annotation(Placement(transformation(origin = {-65, -25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      iboss_connector iBoss_connector annotation(Placement(transformation(origin = {-99.8586, -0.282885}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {-99.8586, -0.282885}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(transformation(origin = {101.556, -50.9194}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {101.556, -50.9194}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin vcc annotation(Placement(transformation(origin = {101.273, -18.1046}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {101.273, -18.1046}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(Placement(transformation(origin = {85, -35}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableResistor1 annotation(Placement(transformation(extent = {{-10, -5}, {10, 15}})));
      ControlBlocks.EI_control ei_ctrl(threshold = 60, outputfactor = 2000000.0) annotation(Placement(transformation(extent = {{-60, 20}, {-45, 35}})));
      Modelica.Blocks.Sources.Constant const(k = 0.001) annotation(Placement(transformation(extent = {{-25, 30}, {-10, 45}})));
    equation
      connect(voltageSensor1.p, vcc) annotation(Line(points = {{85, -25}, {85, -20}, {85, -18}, {96, -18}, {101, -18}}, thickness = 0.0625));
      connect(voltageSensor1.n, gnd) annotation(Line(points = {{85, -45}, {85, -50}, {85, -51}, {97, -51}, {102, -51}}, thickness = 0.0625));
      connect(voltageSensor2.n, iBoss_connector.GND) annotation(Line(points = {{-65, -35}, {-80, -35}, {-95, -35}, {-100, -0.3333358764648438}}, thickness = 0.0625), AutoRoute = false);
      connect(voltageSensor2.p, iBoss_connector.Vcc) annotation(Line(points = {{-65, -15}, {-65, -10}, {-65, 0}, {-95, 0}, {-100, 0}}, thickness = 0.0625));
      connect(ei_ctrl.u, voltageSensor2.v) annotation(Line(points = {{-62, 27}, {-67, 27}, {-80, 27}, {-80, -25}, {-75, -25}}, color = {0, 0, 127}, thickness = 0.0625));
      connect(variableResistor1.n, voltageSensor1.p) annotation(Line(points = {{10, 5}, {15, 5}, {85, 5}, {85, -20}, {85, -25}}, thickness = 0.0625));
      connect(const.y, variableResistor1.R) annotation(Line(points = {{-9, 37}, {-4, 37}, {0, 37}, {0, 21}, {0, 16}}, color = {0, 0, 127}, thickness = 0.0625));
      connect(voltageSensor2.p, variableResistor1.p) annotation(Line(points = {{-65, -15}, {-65, -10}, {-65, 5}, {-15, 5}, {-10, 5}}, thickness = 0.0625));
      connect(voltageSensor1.n, voltageSensor2.n) annotation(Line(points = {{85, -45}, {85, -50}, {-65, -50}, {-65, -40}, {-65, -35}}, thickness = 0.0625));
      annotation(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2)), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-16.6902, 93.63509999999999}, {7.63791, -93.3522}}), Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-22.0651, 48.0905}, {-16.6902, -49.2221}}), Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-33.9463, 21.2164}, {15.8416, -22.9137}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{24.0453, 66.1952}, {1.41443, 15.8416}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{1.9802, -9.6181}, {25.1768, -61.9519}}), Text(textString = "GND", fillColor = {0, 0, 255}, extent = {{39.0382, -33.9463}, {85.71429999999999, -64.7807}}), Text(textString = "VCC", fillColor = {0, 0, 255}, extent = {{41.5842, -0.282893}, {80.3395, -33.6634}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
    end iboss_interface_old;

    model m_int "m_int"
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p "Positive pin of an electric component" annotation(Placement(transformation(origin = {-100, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-102, 20}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(transformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}})));
      input Modelica.Blocks.Interfaces.RealInput target_pos(start = 0) annotation(Placement(transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}})));
      output Modelica.Blocks.Interfaces.RealOutput pos_sens "'output Real' as connector" annotation(Placement(transformation(origin = {-100, -68}, extent = {{10, -10}, {-10, 10}}), iconTransformation(extent = {{-90, -60}, {-110, -40}})));
      Modelica.Mechanics.Rotational.Components.BearingFriction bearingfriction1(tau_pos = [0, 0.0; 0.1, 50.0], peak = 3.0) annotation(Placement(transformation(origin = {30, -44}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 0.1 * 0.03 ^ 2, stateSelect = .StateSelect.prefer, phi(fixed = false, start = 0), w(fixed = false, start = 0), a(fixed = false, start = 0)) annotation(Placement(transformation(origin = {66, -44}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.Rotational.Sensors.AngleSensor pos annotation(Placement(transformation(origin = {80, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      satcomponents.blocks.OnOffIdleController onoffidlecontroller1(bandwidth = 0.01) annotation(Placement(transformation(origin = {34, 42}, extent = {{10, -10}, {-10, 10}})));
      Modelica.Blocks.Logical.LessThreshold lessthreshold1(threshold = -0.5) annotation(Placement(transformation(origin = {8, 34}, extent = {{4, -4}, {-4, 4}})));
      Modelica.Blocks.Logical.GreaterThreshold greaterthreshold1(threshold = 0.5) annotation(Placement(transformation(origin = {8, 48}, extent = {{4, -4}, {-4, 4}})));
      Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet dcpm(TaOperational = 60, VaNominal = 6, IaNominal = 0.012, wNominal = 6200 * 2 * 3.141 / 60, TaNominal = 338.15, Ra = 7, TaRef = 273.15, La = 480e-6, Jr = 0.0081 * 0.01 ^ 2, ia(start = 0)) annotation(Placement(transformation(origin = {-56, -44}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.power.HBridge hbridge1 annotation(Placement(transformation(origin = {-58, 4}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
      Modelica.Mechanics.Rotational.Components.IdealGear idealgear1(ratio = 22 * 400) annotation(Placement(transformation(origin = {4, -44}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.blocks.noise_ung noise_ung1(amplitude = 0.01, seed = 11.0) annotation(Placement(transformation(origin = {26, -88}, extent = {{10.17, -5.17}, {-10.17, 5.17}})));
      Modelica.Blocks.Math.Add add1 annotation(Placement(transformation(origin = {-22, -78}, extent = {{10, -10}, {-10, 10}})));
    equation
      connect(add1.u1, pos.phi) annotation(Line(points = {{-10, -72}, {92, -72}, {92, 6}, {80, 6}, {80, -6}, {80, -6}}, color = {0, 0, 127}));
      connect(add1.u2, noise_ung1.y) annotation(Line(points = {{-10, -84}, {0, -84}, {0, -88}, {16, -88}, {16, -88}}, color = {0, 0, 127}));
      connect(pos_sens, add1.y) annotation(Line(points = {{-100, -68}, {-68, -68}, {-68, -78}, {-32, -78}, {-32, -78}}, color = {0, 0, 127}));
      connect(dcpm.flange, idealgear1.flange_a) annotation(Line(points = {{-46, -44}, {-6, -44}, {-6, -44}, {-6, -44}}));
      connect(idealgear1.flange_b, bearingfriction1.flange_a) annotation(Line(points = {{14, -44}, {20, -44}}));
      connect(target_pos, onoffidlecontroller1.reference) annotation(Line(points = {{-100, 60}, {58, 60}, {58, 48}, {48, 48}, {48, 48}}, color = {0, 0, 127}));
      connect(onoffidlecontroller1.u, pos.phi) annotation(Line(points = {{46, 36}, {53, 36}, {53, 8}, {80, 8}, {80, -5}}, color = {0, 0, 127}));
      connect(pin_n, hbridge1.pin_n) annotation(Line(points = {{-100, -20}, {-82, -20}, {-82, 24}, {-52, 24}, {-52, 14}, {-52, 14}}, color = {0, 0, 255}));
      connect(pin_p, hbridge1.pin_p) annotation(Line(points = {{-100, 20}, {-64, 20}, {-64, 14}, {-64, 14}}, color = {0, 0, 255}));
      connect(lessthreshold1.y, hbridge1.reverse) annotation(Line(points = {{3.6, 34}, {-28.4, 34}, {-28.4, 7}, {-48.4, 7}}, color = {255, 0, 255}));
      connect(hbridge1.forward, greaterthreshold1.y) annotation(Line(points = {{-48, 0.8}, {-31, 0.8}, {-31, 2.8}, {-14, 2.8}, {-14, 49.8}, {-5, 49.8}, {-5, 47.8}, {4, 47.8}}, color = {255, 0, 255}));
      connect(dcpm.pin_ap, hbridge1.pin_n1) annotation(Line(points = {{-50, -34}, {-52, -34}, {-52, -6}}, color = {0, 0, 255}));
      connect(hbridge1.pin_p1, dcpm.pin_an) annotation(Line(points = {{-64, -6}, {-64, -34}, {-62, -34}}, color = {0, 0, 255}));
      connect(greaterthreshold1.u, onoffidlecontroller1.y) annotation(Line(points = {{12.8, 48}, {12.3, 48}, {12.3, 48}, {11.8, 48}, {11.8, 42}, {17.3, 42}, {17.3, 42}, {22.8, 42}}, color = {0, 0, 127}));
      connect(lessthreshold1.u, onoffidlecontroller1.y) annotation(Line(points = {{12.8, 34}, {17.8, 34}, {17.8, 42}, {22.8, 42}}, color = {0, 0, 127}));
      connect(inertia1.flange_b, pos.flange) annotation(Line(points = {{76, -44}, {77, -44}, {77, -44}, {78, -44}, {78, -42}, {80, -42}, {80, -26}}));
      connect(bearingfriction1.flange_b, inertia1.flange_a) annotation(Line(points = {{40, -44}, {48, -44}, {48, -42}, {58, -42}, {58, -42}, {58, -42}, {58, -44}, {57, -44}, {57, -44}, {56, -44}}));
      annotation(noise_ung1(y(flags = 2)), Icon(graphics = {Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-76.7, 80}, {90, -90}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-40, 36.7}, {60, -56.7}}), Ellipse(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-23.3, 16.7}, {43.3, -40}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{0, 33.3}, {23.3, 16.7}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{0, -43.3}, {23.3, -53.3}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-23.3, -3.3}, {-36.7, -20}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{56.7, -6.7}, {43.3, -23.3}})}), experiment(StopTime = 1, StartTime = 0));
    end m_int;

    package Examples
      model interface_with_dcdc
        Modelica.Blocks.Sources.TimeTable timetable1(table = [0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]) annotation(Placement(visible = true, transformation(origin = {-61, 55}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-46, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(visible = true, transformation(origin = {-54, -4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1 annotation(Placement(visible = true, transformation(origin = {-16, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        m_int m_int1 annotation(Placement(visible = true, transformation(origin = {38, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(dcdc_ideal_simple1.n2, m_int1.pin_n) annotation(Line(points = {{-6, -5}, {20, -5}, {20, 0}, {28, 0}, {28, 0}}, color = {0, 0, 255}));
        connect(m_int1.pin_p, dcdc_ideal_simple1.p2) annotation(Line(points = {{28, 4}, {-6, 4}, {-6, 6}, {-6, 6}}, color = {0, 0, 255}));
        connect(timetable1.y, m_int1.target_pos) annotation(Line(points = {{-47, 55}, {12, 55}, {12, 8}, {28, 8}, {28, 8}}, color = {0, 0, 127}));
        connect(dcdc_ideal_simple1.n2, dcdc_ideal_simple1.n1) annotation(Line(points = {{-6, -5}, {-6, -5}, {-6, -20}, {-26, -20}, {-26, -6}, {-26, -6}}, color = {0, 0, 255}));
        connect(constantvoltage1.n, dcdc_ideal_simple1.n1) annotation(Line(points = {{-54, -14}, {-26, -14}, {-26, -6}, {-26, -6}}, color = {0, 0, 255}));
        connect(constantvoltage1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-54, 6}, {-26, 6}, {-26, 6}, {-26, 6}}, color = {0, 0, 255}));
        connect(constantvoltage1.n, ground1.p) annotation(Line(points = {{-54, -14}, {-46, -14}, {-46, -44}, {-46, -44}}, color = {0, 0, 255}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-12, Interval = 0.02));
      end interface_with_dcdc;

      model interfacecomplete_with_dcdc
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-46, -54}, extent = {{-10, -10}, {10, 10}})));
        satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1 annotation(Placement(transformation(origin = {-16, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Sources.TimeTable timetable1(table = [0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]) annotation(Placement(transformation(origin = {-59, 79}, extent = {{-13, -13}, {13, 13}})));
        Modelica.Blocks.Sources.BooleanConstant booleanconstant1 annotation(Placement(transformation(origin = {-54, 34}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 25) annotation(Placement(transformation(origin = {-72, -2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        iboss_interface iboss_interface1 annotation(Placement(visible = true, transformation(origin = {44, 16}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
      equation
        connect(dcdc_ideal_simple1.n2, iboss_interface1.gnd_int) annotation(Line(points = {{-6, -5}, {8, -5}, {8, 10}, {8, 10}}, color = {0, 0, 255}));
        connect(dcdc_ideal_simple1.p1, iboss_interface1.vcc_int) annotation(Line(points = {{-26, 5}, {26, 5}, {26, 24}, {26, 24}}, color = {0, 0, 255}));
        connect(dcdc_ideal_simple1.n2, iboss_interface1.gnd_motor) annotation(Line(points = {{-6, -5}, {46, -5}, {46, -2}, {46, -2}}, color = {0, 0, 255}));
        connect(dcdc_ideal_simple1.p2, iboss_interface1.v_motor) annotation(Line(points = {{-6, 5}, {34, 5}, {34, -2}, {34, -2}}, color = {0, 0, 255}));
        connect(timetable1.y, iboss_interface1.comm_in.set_pos) annotation(Line(points = {{-45, 79}, {-22, 79}, {-22, 34}, {44, 34}}, color = {0, 0, 127}));
        connect(booleanconstant1.y, iboss_interface1.comm_in.set_ess) annotation(Line(points = {{-43, 34}, {44, 34}}, color = {255, 0, 255}));
        connect(dcdc_ideal_simple1.n1, ground1.p) annotation(Line(points = {{-26, -5}, {-26, -5}, {-26, -44}, {-46, -44}, {-46, -44}}, color = {0, 0, 255}));
        connect(constantvoltage1.n, dcdc_ideal_simple1.n1) annotation(Line(points = {{-72, -12}, {-26, -12}, {-26, -6}, {-26, -6}}, color = {0, 0, 255}));
        connect(constantvoltage1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-72, 8}, {-26, 8}, {-26, 6}, {-26, 6}}, color = {0, 0, 255}));
        connect(dcdc_ideal_simple1.n2, dcdc_ideal_simple1.n1) annotation(Line(points = {{-6, -5}, {-6, -5}, {-6, -20}, {-26, -20}, {-26, -6}, {-26, -6}}, color = {0, 0, 255}));
        annotation(iboss_interface1(mi(noise_ung1(y(flags = 2)))), experiment(StopTime = 100, StartTime = 0, Tolerance = 1e-012, Interval = 0.02));
      end interfacecomplete_with_dcdc;

      model interfacecomplete_with_battery
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-46, -54}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Sources.TimeTable timetable1(table = [0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]) annotation(Placement(transformation(origin = {-59, 79}, extent = {{-13, -13}, {13, 13}})));
        Modelica.Blocks.Sources.BooleanConstant booleanconstant1 annotation(Placement(transformation(origin = {-55, 40}, extent = {{-10, -10}, {10, 10}})));
        satcomponents.power.batteries.battery battery1(capacity_Ah = 0.3, Vnominal = 20) annotation(Placement(transformation(origin = {-60, -4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        iboss_interface iboss_interface1 annotation(Placement(transformation(origin = {28, 18}, extent = {{-10, -10}, {10, 10}})));
        satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1 annotation(Placement(transformation(origin = {-22, 8}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(timetable1.y, iboss_interface1.comm_in.set_pos) annotation(Line(points = {{-44.7, 79}, {-39.7, 79}, {28, 79}, {28, 33}, {28, 28}}));
        connect(dcdc_ideal_simple1.n1, dcdc_ideal_simple1.n2) annotation(Line(points = {{-32, 3}, {-37, 3}, {-37, -7}, {-7, -7}, {-7, 3}, {-12, 3}}));
        connect(battery1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-60, 6}, {-60, 11}, {-60, 13}, {-37, 13}, {-32, 13}}));
        connect(dcdc_ideal_simple1.n1, battery1.n) annotation(Line(points = {{-32, 3}, {-37, 3}, {-37, -19}, {-60, -19}, {-60, -14}}));
        connect(battery1.n, ground1.p) annotation(Line(points = {{-60, -14}, {-60, -19}, {-60, -39}, {-46, -39}, {-46, -44}}));
        connect(dcdc_ideal_simple1.p2, iboss_interface1.v_motor) annotation(Line(points = {{-12, 13}, {-7, 13}, {-7, 3}, {23, 3}, {23, 8}}, thickness = 0.0625));
        connect(dcdc_ideal_simple1.n2, iboss_interface1.gnd_motor) annotation(Line(points = {{-12, 3}, {-7, -5}, {28, -5}, {28, 8}}, thickness = 0.0625), AutoRoute = false);
        connect(dcdc_ideal_simple1.p1, iboss_interface1.vcc_int) annotation(Line(points = {{-32, 13}, {-37, 13}, {-37, 23}, {13, 23}, {18, 23}}, thickness = 0.0625));
        connect(dcdc_ideal_simple1.n2, iboss_interface1.gnd_int) annotation(Line(points = {{-12, 3}, {-7, -5}, {13, -5}, {13, 18}, {18, 18}}, thickness = 0.0625), AutoRoute = false);
        annotation(battery1(v(flags = 2), soc(flags = 2)), iboss_interface1(comm_out(mi_pos(flags = 2), v_ext(flags = 2), v_int(flags = 2), intf_current(flags = 2), tmp(flags = 2)), mi(noise_ung1(y(flags = 2)))), experiment(StopTime = 100, StartTime = 0, Tolerance = 1e-012, Interval = 0.02));
      end interfacecomplete_with_battery;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Examples;

    connector Comm_in
      parameter Integer intf_count = 1;
      iboss_interface.Comm_in intf[intf_count];
      annotation(Icon(graphics = {Polygon(points = {{-86.9387, 7.96559}, {-46.9387, -72.03440000000001}, {33.0613, -72.03440000000001}, {73.0613, 7.96559}, {33.0613, 87.9656}, {-46.9387, 87.9656}, {-86.9387, 7.96559}}, fillColor = {192, 192, 255}, fillPattern = FillPattern.Solid, origin = {6.94, -7.97})}), Diagram(graphics = {Polygon(points = {{-40, 0}, {-20, 40}, {20, 40}, {40, 0}, {20, -40}, {-20, -40}, {-40, 0}}, fillColor = {192, 192, 255}, fillPattern = FillPattern.Solid)}));
    end Comm_in;

    connector Comm_out
      parameter Integer intf_count = 1;
      iboss_interface.Comm_out intf[intf_count];
      output Modelica.Blocks.Interfaces.RealOutput T_OBC;
      output Modelica.Blocks.Interfaces.RealOutput acc[3];
      annotation(Icon(graphics = {Polygon(points = {{-86.9387, 7.96559}, {-46.9387, -72.03440000000001}, {33.0613, -72.03440000000001}, {73.0613, 7.96559}, {33.0613, 87.9656}, {-46.9387, 87.9656}, {-86.9387, 7.96559}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, origin = {6.94, -7.97})}), Diagram(graphics = {Polygon(points = {{-40, 0}, {-20, 40}, {20, 40}, {40, 0}, {20, -40}, {-20, -40}, {-40, 0}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
    end Comm_out;
  end components;

  package buildingblocks
    model solar
      extends basic_ess_mss(capacitor1(C = 9.999999999999999e-05));
      input Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(origin = {122, -7}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {221.308, -0.741443}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      parameter Modelica.SIunits.Area panelarea = 10;
      satcomponents.power.solar_power.solarcell_simple solarcell_simple1(N_p = panelarea / 1.17, N_s = 45.0) annotation(Placement(transformation(origin = {100, -15}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
      satcomponents.power.solar_power.SA_Regulator sa_regulator1(Vmax = 99) annotation(Placement(transformation(origin = {25, -10}, extent = {{10, -10}, {-10, 10}})));
      Modelica.Electrical.Analog.Sensors.PowerSensor powerSensor1 annotation(Placement(transformation(origin = {0, -10}, extent = {{10, -10}, {-10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.001) annotation(Placement(transformation(extent = {{40, -20}, {60, 0}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.001) annotation(Placement(transformation(extent = {{65, -20}, {85, 0}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor5(R = 0.001) annotation(Placement(transformation(extent = {{40, -50}, {60, -30}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor6(R = 0.001) annotation(Placement(transformation(extent = {{65, -50}, {85, -30}})));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit = "nF") = 1e-07) annotation(Placement(transformation(origin = {60, -25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    equation
      connect(solarcell_simple1.E_s, u) annotation(Line(points = {{107, -15}, {112, -15}, {117, -15}, {117, -7}, {122, -7}}));
      connect(sa_regulator1.n, powerSensor1.pc) annotation(Line(points = {{15, -10}, {10, -10}, {15, -10}, {10, -10}}, thickness = 0.0625));
      connect(powerSensor1.nv, sa_regulator1.pin_n) annotation(Line(points = {{0, -20}, {0, -25}, {25, -25}, {25, -25}, {25, -20}}, thickness = 0.0625));
      connect(int_Yp.vcc, powerSensor1.nc) annotation(Line(points = {{-15, 26}, {-15, 21}, {-15, -10}, {-15, -10}, {-10, -10}}, thickness = 0.0625));
      connect(powerSensor1.pv, sa_regulator1.n) annotation(Line(points = {{0, 0}, {0, 5}, {10, 5}, {10, -10}, {15, -10}}, thickness = 0.0625), AutoRoute = false);
      connect(int_Yp.gnd, powerSensor1.nv) annotation(Line(points = {{-19, 26}, {-19, 21}, {-19, -25}, {0, -25}, {0, -20}}, thickness = 0.0625));
      connect(sa_regulator1.pin_n, resistor5.p) annotation(Line(points = {{25, -20}, {25, -25}, {25, -40}, {35, -40}, {40, -40}}, thickness = 0.0625));
      connect(resistor3.p, sa_regulator1.p) annotation(Line(points = {{40, -10}, {35, -10}, {40, -10}, {35, -10}}, thickness = 0.0625));
      connect(resistor3.n, resistor4.p) annotation(Line(points = {{60, -10}, {65, -10}, {60, -10}, {65, -10}}, thickness = 0.0625));
      connect(resistor6.p, resistor5.n) annotation(Line(points = {{65, -40}, {60, -40}, {65, -40}, {60, -40}}, thickness = 0.0625));
      connect(resistor6.n, solarcell_simple1.p) annotation(Line(points = {{85, -40}, {90, -40}, {100, -40}, {100, -30}, {100, -25}}, thickness = 0.0625));
      connect(resistor4.n, solarcell_simple1.n) annotation(Line(points = {{85, -10}, {90, -10}, {90, 0}, {100, 0}, {100, -5}}, thickness = 0.0625));
      connect(resistor3.n, capacitor2.p) annotation(Line(points = {{60, -10}, {65, -10}, {60, -10}, {60, -15}}, thickness = 0.0625));
      connect(capacitor2.n, resistor5.n) annotation(Line(points = {{60, -35}, {60, -40}, {65, -40}, {60, -40}}, thickness = 0.0625));
      annotation(int_Xn(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2))), int_Zp(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2))), int_Yp(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2))), int_Yn(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2))), int_Zn(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2))), int_Xp(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2))), solarcell_simple1(v(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), i_sc_actual(flags = 2), i_sc(flags = 2), i(flags = 2), I_photonic(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), D_shunt(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), R_shunt(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), R_series(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2))), powerSensor1(power(flags = 2)), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Cross, extent = {{71.8896, 121.659}, {356.683, -125.807}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 10000, StartTime = 0, Tolerance = 1e-06));
    end solar;

    model battery
      extends basic_ess_mss;
      parameter Real SOC_start = 1.0;
      parameter Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah capacity = 20.0;
      satcomponents.power.batteries.battery battery1(startSOC = SOC_start, capacity_Ah = capacity, Vnominal = 100) annotation(Placement(transformation(origin = {60, -20}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {105, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Electrical.Analog.Sensors.PowerSensor powerSensor1 annotation(Placement(transformation(origin = {-25, -20}, extent = {{10, -10}, {-10, 10}})));
      satcomponents.power.batteries.BCR ChargeRegulator annotation(Placement(transformation(extent = {{0, -30}, {20, -10}})));
    equation
      connect(ground1.p, battery1.n) annotation(Line(points = {{95, -20}, {90, -20}, {75, -20}, {70, -20}}, thickness = 0.0625));
      connect(powerSensor1.nv, battery1.n) annotation(Line(points = {{-25, -30}, {-25, -35}, {75, -35}, {75, -20}, {70, -20}}, thickness = 0.0625));
      connect(battery1.p, powerSensor1.pv) annotation(Line(points = {{50, -20}, {45, -20}, {45, -5}, {-25, -5}, {-25, -10}}, thickness = 0.0625));
      connect(powerSensor1.nc, int_Xp.vcc) annotation(Line(points = {{-35, -20}, {-40, -20}, {-40, -20}, {-40, 21}, {-40, 26}}, thickness = 0.0625));
      connect(powerSensor1.pc, ChargeRegulator.p) annotation(Line(points = {{-15, -20}, {-10, -20}, {-5, -20}, {0, -20}}, thickness = 0.0625));
      connect(ChargeRegulator.n, battery1.p) annotation(Line(points = {{20, -20}, {25, -20}, {45, -20}, {50, -20}}, thickness = 0.0625));
      connect(int_Xp.gnd, battery1.n) annotation(Line(points = {{-44, 26}, {-44, 0}, {75, 0}, {75, -20}, {70, -20}}, thickness = 0.0625), AutoRoute = false);
      annotation(battery1(v(flags = 2), soc(flags = 2), i(flags = 2)), powerSensor1(power(flags = 2)), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 11000, StartTime = 0, Tolerance = 0.0001));
    end battery;

    model verbraucher
      import satcomponents.power.dcmodel;
      extends basic_ess_mss;
      satcomponents.power.PCU_pid pCU1 annotation(Placement(transformation(extent = {{-30, -15}, {-10, 5}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(transformation(extent = {{10, -5}, {30, 15}})));
      parameter Modelica.SIunits.Power P_payload = 10;
      parameter Modelica.SIunits.Power P_basic = 5;
      Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 100) annotation(Placement(transformation(extent = {{10, -20}, {30, 0}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor5(R = 100) annotation(Placement(transformation(extent = {{10, -35}, {30, -15}})));
    equation
      connect(int_Xp.vcc, pCU1.VCC) annotation(Line(points = {{-40, 26}, {-40, 21}, {-40, -4}, {-35, -4}, {-30, -4}}, thickness = 0.0625));
      connect(int_Xp.gnd, pCU1.GND) annotation(Line(points = {{-44, 26}, {-44, 21}, {-44, -9}, {-35, -9}, {-30, -9}}, thickness = 0.0625));
      connect(resistor3.n, resistor4.n) annotation(Line(points = {{30, 5}, {35, 5}, {35, -10}, {30, -10}}, thickness = 0.0625));
      connect(resistor4.n, resistor5.n) annotation(Line(points = {{30, -10}, {35, -10}, {35, -25}, {30, -25}}, thickness = 0.0625));
      connect(pCU1.gnd, pCU1.GND) annotation(Line(points = {{-10, -11.33333587646484}, {-5, -11}, {-5, -30}, {-35, -30}, {-35, -9}, {-30, -9.333335876464844}}, thickness = 0.0625), AutoRoute = false);
      connect(pCU1.gnd, resistor5.n) annotation(Line(points = {{-10, -11.33333587646484}, {-5, -40}, {35, -40}, {35, -25}, {30, -25}}, thickness = 0.0625), AutoRoute = false);
      connect(resistor5.p, pCU1.VCC3) annotation(Line(points = {{10, -25}, {5, -25}, {0, -25}, {0, -7}, {-10, -7.333335876464844}}, thickness = 0.0625), AutoRoute = false);
      connect(resistor4.p, pCU1.VCC5) annotation(Line(points = {{10, -10}, {5, -10}, {5, -4}, {-10, -4}}, thickness = 0.0625), AutoRoute = false);
      connect(resistor3.p, pCU1.VCC12) annotation(Line(points = {{10, 5}, {5, 5}, {-5, 5}, {-5, -1}, {-10, -1}}, thickness = 0.0625));
      annotation(experiment(StopTime = 11000, StartTime = 0, Tolerance = 0.0001));
    end verbraucher;

    model basic_ess_mss "basic_ess_mss"
      parameter Modelica.SIunits.Time shortcircuitproblem = 1e+100;
      Modelica.SIunits.Voltage Vcc;
      iboss.components.iboss_connector Yp annotation(Placement(transformation(origin = {-13, 63}, extent = {{-12, -12}, {12, 12}}, rotation = -90), iconTransformation(origin = {0.337268, 99.4941}, extent = {{-12, -12}, {12, 12}})));
      iboss.components.iboss_connector Zp annotation(Placement(transformation(origin = {12, 63}, extent = {{-12, 12}, {12, -12}}, rotation = 90), iconTransformation(origin = {-100, 50}, extent = {{-12, 12}, {12, -12}}, rotation = 90)));
      iboss.components.iboss_connector Xn annotation(Placement(transformation(origin = {37, 63}, extent = {{-12, -12}, {12, 12}}, rotation = -90), iconTransformation(origin = {-100, 0}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
      iboss.components.iboss_connector Xp annotation(Placement(transformation(origin = {-38, 63}, extent = {{-12, 12}, {12, -12}}, rotation = -270), iconTransformation(origin = {99.8314, 0.337268}, extent = {{-12, -12}, {12, 12}})));
      iboss.components.iboss_connector Zn annotation(Placement(transformation(origin = {87, 63}, extent = {{-12, 12}, {12, -12}}, rotation = -270), iconTransformation(origin = {100, -50}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
      iboss.components.iboss_connector Yn annotation(Placement(transformation(origin = {62, 63}, extent = {{-12, -12}, {12, 12}}, rotation = -90), iconTransformation(origin = {-0.529784, -91.0638}, extent = {{12, -12}, {-12, 12}}, rotation = -270)));
      iboss.components.iboss_interface int_Xn annotation(Placement(transformation(origin = {37, 38}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
      iboss.components.iboss_interface int_Zp annotation(Placement(transformation(origin = {12, 38}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
      iboss.components.iboss_interface int_Yp annotation(Placement(transformation(origin = {-13, 38}, extent = {{12, 12}, {-12, -12}}, rotation = -270)));
      iboss.components.iboss_interface int_Yn annotation(Placement(transformation(origin = {62, 38}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
      iboss.components.iboss_interface int_Zn annotation(Placement(transformation(origin = {87, 38}, extent = {{12, 12}, {-12, -12}}, rotation = -270)));
      iboss.components.iboss_interface int_Xp annotation(Placement(transformation(origin = {-38, 38}, extent = {{12, 12}, {-12, -12}}, rotation = -270)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R(displayUnit = "mOhm") = 1e-05) annotation(Placement(transformation(extent = {{-90, 15}, {-70, 35}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R(displayUnit = "mOhm") = 1e-05) annotation(Placement(transformation(extent = {{-70, -5}, {-90, 15}})));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit = "µF") = 9.999999999999999e-06) annotation(Placement(transformation(origin = {-110, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch1 annotation(Placement(transformation(origin = {-50, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
      Modelica.Blocks.Sources.BooleanStep booleanStep1(startTime = shortcircuitproblem) annotation(Placement(transformation(extent = {{-90, -50}, {-70, -30}})));
    equation
      Vcc = int_Xn.voltageSensor1.v;
      connect(Yn, int_Yn.iBoss_connector) annotation(Line(points = {{62, 63}, {57, 63}, {57, 59}, {62, 59}, {62, 55}, {62, 50}}));
      connect(Xn, int_Xn.iBoss_connector) annotation(Line(points = {{37, 63}, {32, 63}, {32, 59}, {37, 59}, {37, 55}, {37, 50}}));
      connect(Zp, int_Zp.iBoss_connector) annotation(Line(points = {{12, 63}, {7, 63}, {7, 59}, {12, 59}, {12, 55}, {12, 50}}));
      connect(Yp, int_Yp.iBoss_connector) annotation(Line(points = {{-13, 63}, {-18, 63}, {-18, 59}, {-13, 59}, {-13, 55}, {-13, 50}}));
      connect(Xp, int_Xp.iBoss_connector) annotation(Line(points = {{-38, 63}, {-43, 63}, {-43, 59}, {-38, 59}, {-38, 55}, {-38, 50}}));
      connect(Zn, int_Zn.iBoss_connector) annotation(Line(points = {{87, 63}, {82, 63}, {82, 59}, {87, 59}, {87, 55}, {87, 50}}));
      connect(int_Xp.vcc, int_Yp.vcc) annotation(Line(points = {{-40, 26}, {-40, 21}, {-15, 21}, {-15, 26}}, thickness = 0.0625));
      connect(int_Yp.vcc, int_Zp.vcc) annotation(Line(points = {{-15, 26}, {-15, 21}, {10, 21}, {10, 26}}, thickness = 0.0625));
      connect(int_Zp.vcc, int_Xn.vcc) annotation(Line(points = {{10, 26}, {10, 21}, {35, 21}, {35, 26}}, thickness = 0.0625));
      connect(int_Xn.vcc, int_Yn.vcc) annotation(Line(points = {{35, 26}, {35, 21}, {60, 21}, {60, 26}}, thickness = 0.0625));
      connect(int_Yn.vcc, int_Zn.vcc) annotation(Line(points = {{60, 26}, {60, 21}, {85, 21}, {85, 26}}, thickness = 0.0625));
      connect(int_Zn.gnd, int_Yn.gnd) annotation(Line(points = {{81, 25.66666412353516}, {81, 15}, {56, 15}, {56, 25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
      connect(int_Xn.gnd, int_Yn.gnd) annotation(Line(points = {{31, 25.66666412353516}, {31, 15}, {56, 15}, {56, 25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
      connect(int_Zp.gnd, int_Xn.gnd) annotation(Line(points = {{6, 25.66666412353516}, {6, 15}, {31, 15}, {31, 25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
      connect(int_Yp.gnd, int_Zp.gnd) annotation(Line(points = {{-19, 25.66666412353516}, {-19, 15}, {6, 15}, {6, 25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
      connect(int_Xp.gnd, int_Yp.gnd) annotation(Line(points = {{-44, 25.66666412353516}, {-44, 15}, {-19, 15}, {-19, 25.66666412353516}}, thickness = 0.0625), AutoRoute = false);
      connect(resistor1.p, capacitor1.n) annotation(Line(points = {{-90, 25}, {-95, 25}, {-95, 30}, {-110, 30}, {-110, 25}}, thickness = 0.0625));
      connect(capacitor1.p, resistor2.n) annotation(Line(points = {{-110, 5}, {-110, 0}, {-103, 0}, {-103, 5}, {-95, 5}, {-90, 5}}, thickness = 0.0625));
      connect(int_Xp.gnd, resistor1.n) annotation(Line(points = {{-44, 26}, {-44, 21}, {-54, 21}, {-54, 25}, {-65, 25}, {-70, 25}}, thickness = 0.0625));
      connect(resistor2.p, int_Xp.vcc) annotation(Line(points = {{-70, 5}, {-65, 5}, {-40, 5}, {-40, 21}, {-40, 26}}, thickness = 0.0625));
      connect(int_Xp.vcc, idealClosingSwitch1.p) annotation(Line(points = {{-40, 26}, {-40, 21}, {-35, 21}, {-35, -10}, {-40, -10}}, thickness = 0.0625));
      connect(int_Xp.gnd, idealClosingSwitch1.n) annotation(Line(points = {{-44, 26}, {-44, 21}, {-65, 21}, {-65, -10}, {-60, -10}}, thickness = 0.0625));
      connect(booleanStep1.y, idealClosingSwitch1.control) annotation(Line(points = {{-69, -40}, {-64, -40}, {-50, -40}, {-50, -22}, {-50, -17}}, color = {255, 0, 255}, thickness = 0.0625));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, extent = {{-77.2278, 76.02549999999999}, {74.95610000000001, -75.256}}), Rectangle(fillColor = {0, 0, 255}, extent = {{-69.51909999999999, 69.42019999999999}, {66.9674, -68.4328}}), Ellipse(fillColor = {0, 0, 255}, extent = {{-20.2122, 18.7864}, {19.355, -20.778}}), Ellipse(fillColor = {0, 0, 255}, extent = {{-15.3692, 13.9434}, {14.512, -15.6521}}), Ellipse(fillColor = {0, 0, 255}, extent = {{-1.42575, 0.571424}, {0.288544, -1.14286}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-74.37909999999999, 15.6917}, {-79.2362, -16.0226}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-15.9916, 77.18810000000001}, {15.1513, 72.0453}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{73.239, 13.1174}, {77.5247, -13.7397}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-15.4145, -72.9759}, {16.5855, -77.833}}), Text(textString = "%name", fillColor = {0, 0, 255}, extent = {{-49.505, 66.761}, {55.4455, 27.4399}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
    end basic_ess_mss;

    model basic_ess
      iboss.components.iboss_connector Xn annotation(Placement(visible = true, transformation(origin = {-100.082, -0.177147}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-100.082, -0.177147}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_interface int_Xn annotation(Placement(visible = true, transformation(origin = {-80.90519999999999, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_interface int_Zp annotation(Placement(visible = true, transformation(origin = {-43.2815, 61.1033}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_interface int_Yp annotation(Placement(visible = true, transformation(origin = {-0.848656, 81.471}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
      iboss.components.iboss_interface int_Zn annotation(Placement(visible = true, transformation(origin = {44.9788, -61.9519}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
      iboss.components.iboss_interface int_Yn annotation(Placement(visible = true, transformation(origin = {-0.848656, -77.5106}, extent = {{12, -12}, {-12, 12}}, rotation = 90)));
      iboss.components.iboss_interface int_Xp annotation(Placement(visible = true, transformation(origin = {80.3395, -0.282885}, extent = {{12, 12}, {-12, -12}}, rotation = -180)));
      iboss.components.iboss_connector Zn annotation(Placement(visible = true, transformation(origin = {52.2766, -53.6256}, extent = {{12, 12}, {-12, -12}}, rotation = -180), iconTransformation(origin = {52.2766, -53.6256}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_connector Yn annotation(Placement(visible = true, transformation(origin = {0.337268, -97.1332}, extent = {{12, -12}, {-12, 12}}, rotation = -270), iconTransformation(origin = {0.337268, -97.1332}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_connector Xp annotation(Placement(visible = true, transformation(origin = {99.8314, 0.337268}, extent = {{12, 12}, {-12, -12}}, rotation = -180), iconTransformation(origin = {99.8314, 0.337268}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_connector Yp annotation(Placement(visible = true, transformation(origin = {0.337268, 99.4941}, extent = {{-12, 12}, {12, -12}}, rotation = -90), iconTransformation(origin = {0.337268, 99.4941}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      iboss.components.iboss_connector Zp annotation(Placement(visible = true, transformation(origin = {-60.9246, 61.0675}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    equation
      connect(int_Yn.vcc, int_Xn.vcc) annotation(Line(points = {{1.3239, -65.3578}, {1.13154, -65.3578}, {1.13154, -59.6888}, {-61.3861, -59.6888}, {-61.3861, -2.26308}, {-68.75239999999999, -2.26308}, {-68.75239999999999, -2.17255}}));
      connect(int_Zn.vcc, int_Yn.vcc) annotation(Line(points = {{32.826, -59.7793}, {1.13154, -59.7793}, {1.13154, -65.3578}, {1.3239, -65.3578}}));
      connect(int_Xp.vcc, int_Zn.vcc) annotation(Line(points = {{68.1867, 1.88967}, {63.3663, 1.88967}, {63.3663, -39.604}, {27.7228, -39.604}, {27.7228, -59.6888}, {32.826, -59.6888}, {32.826, -59.7793}}));
      connect(int_Zn.gnd, int_Xp.gnd) annotation(Line(points = {{32.7921, -55.8416}, {25.1768, -55.8416}, {25.1768, -37.058}, {61.1033, -37.058}, {61.1033, 6.22348}, {68.1528, 6.22348}, {68.1528, 5.82744}}));
      connect(int_Yn.gnd, int_Zn.gnd) annotation(Line(points = {{5.26167, -65.32389999999999}, {5.37482, -65.32389999999999}, {5.37482, -58.5573}, {25.1768, -58.5573}, {25.1768, -55.4455}, {32.7921, -55.4455}, {32.7921, -55.8416}}));
      connect(int_Xn.gnd, int_Yn.gnd) annotation(Line(points = {{-68.71850000000001, -6.11033}, {-59.1231, -6.11033}, {-59.1231, -58.5573}, {5.37482, -58.5573}, {5.37482, -65.32389999999999}, {5.26167, -65.32389999999999}}));
      connect(int_Zp.gnd, int_Xn.gnd) annotation(Line(points = {{-31.0948, 54.993}, {-23.4795, 54.993}, {-23.4795, 38.7553}, {-58.8402, 38.7553}, {-58.8402, -6.50636}, {-68.71850000000001, -6.50636}, {-68.71850000000001, -6.11033}}));
      connect(int_Yp.gnd, int_Zp.gnd) annotation(Line(points = {{-6.95898, 69.2843}, {-7.35502, 69.2843}, {-7.35502, 61.1033}, {-23.1966, 61.1033}, {-23.1966, 54.8798}, {-31.0948, 54.8798}, {-31.0948, 54.993}}));
      connect(int_Zp.vcc, int_Yp.vcc) annotation(Line(points = {{-31.1287, 58.9307}, {-26.5912, 58.9307}, {-26.5912, 63.9321}, {-3.67751, 63.9321}, {-3.67751, 69.3182}, {-3.02121, 69.3182}}));
      connect(int_Xn.vcc, int_Zp.vcc) annotation(Line(points = {{-68.75239999999999, -2.17255}, {-61.3861, -2.17255}, {-61.3861, 41.0184}, {-26.0255, 41.0184}, {-26.0255, 59.1231}, {-31.1287, 59.1231}, {-31.1287, 58.9307}}));
      connect(Yn, int_Yn.iBoss_connector);
      connect(Xn, int_Xn.iBoss_connector);
      connect(Zp, int_Zp.iBoss_connector);
      connect(Yp, int_Yp.iBoss_connector);
      connect(Xp, int_Xp.iBoss_connector);
      connect(Zn, int_Zn.iBoss_connector);
      annotation(Diagram, Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.2278, 76.02549999999999}, {74.95610000000001, -75.256}}), Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.51909999999999, 69.42019999999999}, {66.9674, -68.4328}}), Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20.2122, 18.7864}, {19.355, -20.778}}), Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-15.3692, 13.9434}, {14.512, -15.6521}}), Ellipse(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-1.42575, 0.571424}, {0.288544, -1.14286}}), Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-74.37909999999999, 15.6917}, {-79.2362, -16.0226}}), Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.9916, 77.18810000000001}, {15.1513, 72.0453}}), Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{73.239, 13.1174}, {77.5247, -13.7397}}), Rectangle(rotation = 0, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.4145, -72.9759}, {16.5855, -77.833}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-49.505, 66.761}, {55.4455, 27.4399}}, textString = "%name")}));
    end basic_ess;

    model verbraucher_nopowerbalance "power consumer without power balance"
      import satcomponents.power.dcmodel;
      extends basic_ess_mss;
      parameter Modelica.SIunits.Power P_payload = 10;
      parameter Modelica.SIunits.Power P_basic = 5;
      satcomponents.power.PCU pcu1 annotation(Placement(transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12.0 ^ 2 / P_payload) annotation(Placement(transformation(origin = {70, 5}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 5.0 ^ 2 / (P_basic - 0.5)) annotation(Placement(transformation(origin = {70, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 3.3 ^ 2 / (P_basic - 4.5)) annotation(Placement(transformation(origin = {70, -25}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit = "nF") = 1e-08) annotation(Placement(transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C(displayUnit = "µF") = 1e-06) annotation(Placement(transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
    equation
      connect(resistor3.n, pcu1.gnd) annotation(Line(points = {{80, -25}, {85, -25}, {85, -30}, {40, -30}, {35, -6.333335876464844}}), AutoRoute = false);
      connect(capacitor1.p, ground1.p) annotation(Line(points = {{-50, -10}, {-50, -15}, {-50, -20}}));
      connect(pcu1.GND, pcu1.gnd) annotation(Line(points = {{15, -4.333335876464844}, {15, -15}, {35, -15}, {35, -6.333335876464844}}), AutoRoute = false);
      connect(resistor2.n, resistor3.n) annotation(Line(points = {{80, -10}, {85, -10}, {85, -25}, {80, -25}}));
      connect(resistor1.n, resistor2.n) annotation(Line(points = {{80, 5}, {85, 5}, {85, -10}, {80, -10}}));
      connect(resistor3.p, pcu1.VCC3) annotation(Line(points = {{60, -25}, {55, -25}, {50, -25}, {50, -2}, {35, -2.333335876464844}}), AutoRoute = false);
      connect(pcu1.VCC12, resistor1.p) annotation(Line(points = {{35, 4}, {40, 4}, {55, 4}, {55, 5}, {60, 5}}));
      connect(pcu1.VCC5, resistor2.p) annotation(Line(points = {{35, 1}, {40, 1}, {55, 1}, {55, -10}, {60, -10}}));
      connect(int_Xn.vcc, pcu1.VCC) annotation(Line(points = {{35, 26}, {35, 21}, {10, 21}, {10, 1}, {15, 1}}));
      connect(int_Xn.gnd, pcu1.GND) annotation(Line(points = {{31, 25.66666412353516}, {31, 21}, {5, 21}, {5, -4}, {15, -4.333335876464844}}), AutoRoute = false);
      connect(capacitor1.n, int_Xp.gnd) annotation(Line(points = {{-50, 10}, {-50, 15}, {-50, 21}, {-44, 21}, {-44, 26}}, thickness = 0.0625));
      connect(capacitor2.p, int_Yp.vcc) annotation(Line(points = {{-10, 10}, {-10, 15}, {-10, 21}, {-15, 21}, {-15, 26}}, thickness = 0.0625));
      connect(capacitor2.n, int_Yp.gnd) annotation(Line(points = {{-10, -10}, {-10, -15}, {-20, -15}, {-20, 21}, {-19, 21}, {-19, 26}}, thickness = 0.0625));
      annotation(experiment(StopTime = 11000, StartTime = 0, Tolerance = 0.0001));
    end verbraucher_nopowerbalance;

    model basic_structure
      extends icons.basic;
      Modelica.SIunits.Position r[3];
      Modelica.SIunits.AngularVelocity w[3];
      Modelica.Mechanics.MultiBody.Parts.Body Struktur(animation = false, r_CM = {0, 0, -0.01}, m = 5, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, useQuaternions = false) annotation(Placement(transformation(origin = {5.1, -0.1}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zps annotation(Placement(transformation(origin = {-40, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {-40, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yps annotation(Placement(transformation(origin = {20, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {20, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xps annotation(Placement(transformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zns annotation(Placement(transformation(origin = {40, -60}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {40, -60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yns annotation(Placement(transformation(origin = {-20, -80}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {-20, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xns annotation(Placement(transformation(origin = {-80, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 20}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZp(animation = false, r = {0.0, 0.0, 0.205}) annotation(Placement(transformation(origin = {-40, 40}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYp(animation = false, r = {0.0, 0.205, 0.0}) annotation(Placement(transformation(origin = {20, 60}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZn(animation = false, r = {0.0, 0.0, -0.205}) annotation(Placement(transformation(origin = {40, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYn(animation = false, r = {0.0, -0.205, 0.0}) annotation(Placement(transformation(origin = {-20, -60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXn(animation = false, r = {-0.205, 0.0, 0.0}) annotation(Placement(transformation(origin = {-60, 20}, extent = {{10, -10}, {-10, 10}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXp(animation = false, r = {0.205, 0.0, 0.0}) annotation(Placement(transformation(origin = {60, -20}, extent = {{-10, -10}, {10, 10}})));
    equation
      Struktur.r_0 = r;
      Struktur.phi = w;
    equation
      connect(Struktur.frame_a, rXp.frame_a) annotation(Line(points = {{-5, 0}, {-10, 0}, {-10, -20}, {45, -20}, {50, -20}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rXp.frame_b, Xps) annotation(Line(points = {{70, -20}, {75, -20}, {80, -20}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(Struktur.frame_a, rZn.frame_a) annotation(Line(points = {{-5, 0}, {-10, 0}, {-10, -20}, {40, -20}, {40, -25}, {40, -30}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rZn.frame_b, Zns) annotation(Line(points = {{40, -50}, {40, -55}, {45, -55}, {45, -60}, {40, -60}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rYn.frame_b, Yns) annotation(Line(points = {{-20, -70}, {-20, -75}, {-15, -75}, {-15, -80}, {-20, -80}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rXn.frame_b, Xns) annotation(Line(points = {{-70, 20}, {-75, 20}, {-80, 20}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rZp.frame_a, Struktur.frame_a) annotation(Line(points = {{-40, 30}, {-40, 25}, {-40, 0}, {-10, 0}, {-5, 0}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(Struktur.frame_a, rXn.frame_a) annotation(Line(points = {{-5, 0}, {-10, 0}, {-40, 0}, {-40, 20}, {-50, 20}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rZp.frame_b, Zps) annotation(Line(points = {{-40, 50}, {-40, 55}, {-35, 55}, {-35, 60}, {-40, 60}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(Struktur.frame_a, rYp.frame_a) annotation(Line(points = {{-5, 0}, {-10, 0}, {-10, 22.3}, {20, 22.3}, {20, 45}, {20, 50}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(Struktur.frame_a, rYn.frame_a) annotation(Line(points = {{-5, 0}, {-10, 0}, {-10, -45}, {-20, -50}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(rYp.frame_b, Yps) annotation(Line(points = {{20, 70}, {20, 75}, {25, 75}, {25, 80}, {20, 80}}, color = {95, 95, 95}, thickness = 0.0625));
      annotation(experiment(StopTime = 1, StartTime = 0));
    end basic_structure;

    model basic_wheel3x
      extends basic;
      satcomponents.AOCS.Parts.reactionwheel3axis_noelectricity reactionwheel3axis_noelectricity1(id = id) annotation(Placement(transformation(extent = {{-25, -35}, {-45, -15}})));
    equation
      connect(reactionwheel3axis_noelectricity1.frame_a, Struktur.frame_a) annotation(Line(points = {{-25, -24.3}, {-20, -24.3}, {-13, -24.3}, {-13, -0.3}, {-8, -0.3}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(reactionwheel3axis_noelectricity1.acs_bus, Xn.sat_bus.acs_bus) annotation(Line(points = {{-43.7, -23}, {-48.7, -23}, {-75, -23}, {-75, 0}, {-80, 0}}, thickness = 0.0625));
      annotation(imu(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), reactionwheel3axis_noelectricity1(wheel_x(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), wheel_y(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2))), wheel_z(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2)))), experiment(StopTime = 1, StartTime = 0));
    end basic_wheel3x;

    model basic_wo_structure
      extends icons.basic;
      outer Modelica.Mechanics.MultiBody.World world;
      parameter Boolean animation = false "= true, if animation shall be enabled (show cylinder and sphere)";
      parameter Integer id "TODO: automatisch id zuweisen (über \"outer\" parameter)";
      parameter Real net_delay = 0.001 "delay of sensors and actors due to the network";
      annotation(imu(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), experiment(StopTime = 1, StartTime = 0));
    end basic_wo_structure;

    package icons
      model basic "basic"
        annotation(Icon(graphics = {Rectangle(fillColor = {0, 0, 255}, extent = {{-77.2278, 76.02549999999999}, {74.95610000000001, -75.256}}), Rectangle(fillColor = {0, 0, 255}, extent = {{-69.51909999999999, 69.42019999999999}, {66.9674, -68.4328}}), Ellipse(fillColor = {0, 0, 255}, extent = {{-20.2122, 18.7864}, {19.355, -20.778}}), Ellipse(fillColor = {0, 0, 255}, extent = {{-15.3692, 13.9434}, {14.512, -15.6521}}), Ellipse(fillColor = {0, 0, 255}, extent = {{-1.42575, 0.571424}, {0.288544, -1.14286}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-74.37909999999999, 15.6917}, {-79.2362, -16.0226}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-15.9916, 77.18810000000001}, {15.1513, 72.0453}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{73.239, 13.1174}, {77.5247, -13.7397}}), Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-15.4145, -72.9759}, {16.5855, -77.833}}), Text(textString = "%id", fillColor = {0, 0, 255}, extent = {{-49.505, 66.761}, {55.4455, 27.4399}})}));
      end basic;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end icons;

    model basic_wheel1x
      extends basic annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      satcomponents.AOCS.Parts.reactionwheelsimple_noelectricity reactionwheelsimple_noelectricity1(id = id) annotation(Placement(transformation(origin = {-35, -30}, extent = {{-25, -20}, {10, 10}}, rotation = -180)));
    equation
      connect(Struktur.frame_a, reactionwheelsimple_noelectricity1.frame_a) annotation(Line(points = {{-8, -0.3}, {-13, -0.3}, {-30.7, -0.3}, {-30.7, -5}, {-30.7, -10}}, color = {95, 95, 95}, thickness = 0.0625));
      connect(reactionwheelsimple_noelectricity1.acs_bus, Xn.sat_bus.acs_bus) annotation(Line(points = {{-45, -22}, {-50, -22}, {-75, -22}, {-75, 0}, {-80, 0}}, thickness = 0.0625));
      annotation(reactionwheelsimple_noelectricity1(bodyShape1(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), frameTranslation(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), frame_b(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2))), body(frame_a(r_0(flags = 2), R(T(flags = 2), w(flags = 2)), f(flags = 2), t(flags = 2)), r_0(flags = 2), v_0(flags = 2), a_0(flags = 2), w_a(flags = 2), z_a(flags = 2), g_0(flags = 2)))), experiment(StopTime = 1, StartTime = 0));
    end basic_wheel1x;

    model Kernstruktur2x2x2 "Kernstruktur2x2x2"
      extends icons.basic;
      Modelica.Mechanics.MultiBody.Parts.Body structure(animation = false, r_CM = {0, 0, -0.01}, m = 15.0, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, useQuaternions = false);
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zns000;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZn000(animation = false, r = {0.0, 0.0, -0.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yns000;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYn000(animation = false, r = {0.0, -0.5, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xns000;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXn000(animation = false, r = {-0.5, 0.0, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yns001;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYn001(animation = false, r = {0.0, -0.5, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xns001;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXn001(animation = false, r = {-0.5, 0.0, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zps001;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZp001(animation = false, r = {0.0, 0.0, 1.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zns010;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZn010(animation = false, r = {0.0, 1.0, -0.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xns010;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXn010(animation = false, r = {-0.5, 1.0, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yps010;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYp010(animation = false, r = {0.0, 1.5, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zns100;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZn100(animation = false, r = {1.0, 0.0, -0.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yns100;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYn100(animation = false, r = {1.0, -0.5, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xps100;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXp100(animation = false, r = {1.5, 0.0, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xns011;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXn011(animation = false, r = {-0.5, 1.0, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yps011;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYp011(animation = false, r = {0.0, 1.5, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zps011;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZp011(animation = false, r = {0.0, 1.0, 1.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zns110;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZn110(animation = false, r = {1.0, 1.0, -0.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xps110;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXp110(animation = false, r = {1.5, 1.0, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yps110;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYp110(animation = false, r = {1.0, 1.5, 0.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yns101;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYn101(animation = false, r = {1.0, -0.5, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xps101;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXp101(animation = false, r = {1.5, 0.0, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zps101;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZp101(animation = false, r = {1.0, 0.0, 1.5});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Xps111;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rXp111(animation = false, r = {1.5, 1.0, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Yps111;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rYp111(animation = false, r = {1.0, 1.5, 1.0});
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a Zps111;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation rZp111(animation = false, r = {1.0, 1.0, 1.5});
    equation
      connect(structure.frame_a, rZn000.frame_a);
      connect(rZn000.frame_b, Zns000);
      connect(structure.frame_a, rYn000.frame_a);
      connect(rYn000.frame_b, Yns000);
      connect(structure.frame_a, rXn000.frame_a);
      connect(rXn000.frame_b, Xns000);
      connect(structure.frame_a, rYn001.frame_a);
      connect(rYn001.frame_b, Yns001);
      connect(structure.frame_a, rXn001.frame_a);
      connect(rXn001.frame_b, Xns001);
      connect(structure.frame_a, rZp001.frame_a);
      connect(rZp001.frame_b, Zps001);
      connect(structure.frame_a, rZn010.frame_a);
      connect(rZn010.frame_b, Zns010);
      connect(structure.frame_a, rXn010.frame_a);
      connect(rXn010.frame_b, Xns010);
      connect(structure.frame_a, rYp010.frame_a);
      connect(rYp010.frame_b, Yps010);
      connect(structure.frame_a, rZn100.frame_a);
      connect(rZn100.frame_b, Zns100);
      connect(structure.frame_a, rYn100.frame_a);
      connect(rYn100.frame_b, Yns100);
      connect(structure.frame_a, rXp100.frame_a);
      connect(rXp100.frame_b, Xps100);
      connect(structure.frame_a, rXn011.frame_a);
      connect(rXn011.frame_b, Xns011);
      connect(structure.frame_a, rYp011.frame_a);
      connect(rYp011.frame_b, Yps011);
      connect(structure.frame_a, rZp011.frame_a);
      connect(rZp011.frame_b, Zps011);
      connect(structure.frame_a, rZn110.frame_a);
      connect(rZn110.frame_b, Zns110);
      connect(structure.frame_a, rXp110.frame_a);
      connect(rXp110.frame_b, Xps110);
      connect(structure.frame_a, rYp110.frame_a);
      connect(rYp110.frame_b, Yps110);
      connect(structure.frame_a, rYn101.frame_a);
      connect(rYn101.frame_b, Yns101);
      connect(structure.frame_a, rXp101.frame_a);
      connect(rXp101.frame_b, Xps101);
      connect(structure.frame_a, rZp101.frame_a);
      connect(rZp101.frame_b, Zps101);
      connect(structure.frame_a, rXp111.frame_a);
      connect(rXp111.frame_b, Xps111);
      connect(structure.frame_a, rYp111.frame_a);
      connect(rYp111.frame_b, Yps111);
      connect(structure.frame_a, rZp111.frame_a);
      connect(rZp111.frame_b, Zps111);
    end Kernstruktur2x2x2;

    model verosim_basic_1D
      extends icons.basic;
      parameter Integer intf_count = 1 "number of interfaces";
      parameter Modelica.SIunits.Mass m = 10;
      satcomponents.power.verbraucher OBC(v_nominal = 5, useHeatPort = true) annotation(Placement(transformation(origin = {5, -15}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.AOCS.Parts.IMU imu1 annotation(Placement(transformation(origin = {-48, 40}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C = 897.0 * m) annotation(Placement(transformation(origin = {-48, -2}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature1(T = 100) annotation(Placement(transformation(origin = {-102, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr = 0.02 * 6 * 0.4 * 0.4) annotation(Placement(transformation(origin = {-74, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-44, -74}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1 annotation(Placement(transformation(origin = {-12, -46}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 40, duration = 2) annotation(Placement(transformation(origin = {-72, -46}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      satcomponents.thermal.thermometer_withnoise thermometer_withnoise1 annotation(Placement(transformation(origin = {-10, 28}, extent = {{-10, -10}, {10, 10}})));
      components.Comm_in comm_in(intf_count = 1) annotation(Placement(transformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-98, 82}, extent = {{-10, -10}, {10, 10}})));
      input Modelica.Blocks.Interfaces.RealInput ddr[3] annotation(Placement(transformation(origin = {-100, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-98, 20}, extent = {{-10, -10}, {10, 10}})));
      components.Comm_out comm_out(intf_count = 1) annotation(Placement(transformation(origin = {-100, 56}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 52}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface intf annotation(Placement(transformation(origin = {64, 8}, extent = {{-10, -10}, {10, 10}})));
    equation
      connect(intf.comm_out, comm_out.intf[1]) annotation(Line(points = {{59, 18}, {59, 23}, {59, 56}, {-95, 56}, {-100, 56}}));
      connect(comm_in.intf[1], intf.comm_in) annotation(Line(points = {{-100, 80}, {-95, 80}, {64, 80}, {64, 23}, {64, 18}}));
      connect(thermometer_withnoise1.T, comm_out.T_OBC) annotation(Line(points = {{0, 28}, {5, 28}, {5, 56}, {-95, 56}, {-100, 56}}, color = {0, 0, 127}));
      connect(imu1.y, comm_out.acc) annotation(Line(points = {{-37.3, 39.7}, {-32.3, 39.7}, {-32.3, 56}, {-95, 56}, {-100, 56}}, color = {0, 0, 127}));
      connect(heatcapacitor1.port, thermometer_withnoise1.port) annotation(Line(points = {{-48, -12}, {-48, -17}, {-36.7, -17}, {-36.7, 28}, {-25, 28}, {-20, 28}}, color = {191, 0, 0}));
      connect(rampvoltage1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-72, -36}, {-72, -31}, {-49.7, -31}, {-49.7, -41}, {-27, -41}, {-22, -41}}));
      connect(ground1.p, rampvoltage1.n) annotation(Line(points = {{-44, -64}, {-44, -59}, {-58, -59}, {-58, -61}, {-72, -61}, {-72, -56}}));
      connect(ground1.p, dcdc_ideal_simple1.n1) annotation(Line(points = {{-44, -64}, {-44, -59}, {-44, -51}, {-27, -51}, {-22, -51}}));
      connect(bodyradiation1.port_b, heatcapacitor1.port) annotation(Line(points = {{-64, -10}, {-59, -10}, {-59, -17}, {-48, -17}, {-48, -12}}, color = {191, 0, 0}));
      connect(fixedtemperature1.port, bodyradiation1.port_a) annotation(Line(points = {{-92, -10}, {-87, -10}, {-89, -10}, {-84, -10}}, color = {191, 0, 0}));
      connect(OBC.heatPort, heatcapacitor1.port) annotation(Line(points = {{-5, -16.7}, {-10, -16.7}, {-10, -17}, {-48, -17}, {-48, -12}}, color = {191, 0, 0}));
      connect(ddr, imu1.ang_vel) annotation(Line(points = {{-100, 20}, {-95, 20}, {-63.7, 20}, {-63.7, 40.3}, {-58.7, 40.3}}, color = {0, 0, 127}));
      connect(OBC.pin_p, dcdc_ideal_simple1.p2) annotation(Line(points = {{0, -25}, {0, -30}, {3, -30}, {3, -41}, {-2, -41}}, thickness = 0.0625));
      connect(OBC.pin_n, dcdc_ideal_simple1.n2) annotation(Line(points = {{9.699999999999999, -25}, {9.699999999999999, -30}, {9.699999999999999, -51}, {3, -51}, {-2, -51}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n1, dcdc_ideal_simple1.n2) annotation(Line(points = {{-22, -51}, {-27, -51}, {-27, -61}, {3, -61}, {3, -51}, {-2, -51}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, intf.v_motor) annotation(Line(points = {{-2, -41}, {3, -41}, {59, -41}, {59, -7}, {59, -2}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, intf.gnd_motor) annotation(Line(points = {{-2, -51}, {3, -51}, {64, -51}, {64, -7}, {64, -2}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, intf.vcc_int) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, 13}, {49, 13}, {54, 13}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n1, intf.gnd_int) annotation(Line(points = {{-22, -51}, {-27, -51}, {-27, 8}, {49, 8}, {54, 8}}, thickness = 0.0625));
      annotation(imu1(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), intf(mi(noise_ung1(y(flags = 2)))), experiment(StopTime = 100, StartTime = 0, Tolerance = 1e-012, Interval = 0.02));
    end verosim_basic_1D;

    model basic_mass
      extends icons.basic;
      Modelica.SIunits.Position r[3];
      Modelica.SIunits.AngularVelocity w[3];
      Modelica.Mechanics.MultiBody.Parts.Body Struktur(animation = false, r_CM = {0, 0, -0.01}, m = 5, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, useQuaternions = false) annotation(Placement(transformation(origin = {5.1, -0.1}, extent = {{-10, -10}, {10, 10}})));
    equation
      Struktur.r_0 = r;
      Struktur.phi = w;
      annotation(experiment(StopTime = 1, StartTime = 0));
    end basic_mass;

    model basic_iboss_int
      extends icons.basic;
      outer Modelica.Mechanics.MultiBody.World world;
      parameter Boolean animation = false "= true, if animation shall be enabled (show cylinder and sphere)";
      parameter Integer id "TODO: automatisch id zuweisen (über \"outer\" parameter)";
      parameter Real net_delay = 0.001 "delay of sensors and actors due to the network";
      components.iboss_int Zp annotation(Placement(transformation(origin = {-60, 60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-60, 60}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_int Zn annotation(Placement(transformation(origin = {60, -60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {60, -60}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_int Xn annotation(Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_int Xp annotation(Placement(transformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_int Yp annotation(Placement(transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_int Yn annotation(Placement(transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}})));
      replaceable satcomponents.AOCS.Parts.IMU imu(id = id, noiseamp = 0.02, net_delay = net_delay) annotation(Placement(transformation(origin = {-60, -20}, extent = {{-15, -15}, {0, 0}})));
    equation
      connect(imu.frame_a, rYn.frame_a) annotation(Line(points = {{-75, -27.66666603088379}, {-80, -27.7}, {-80, -45}, {-20, -45}, {-20, -50}}));
      connect(imu.acs_bus, Xn.sat_bus.acs_bus) annotation(Line(points = {{-60, -27.66666603088379}, {-55, -27.7}, {-55, -5}, {-75, -5}, {-80, 0}}, thickness = 0.0625));
      connect(Xn, Zp) annotation(Line(points = {{-80, 0}, {-75, 0}, {-65, 0}, {-65, 60}, {-60, 60}}));
      connect(Zp, Yp) annotation(Line(points = {{-60, 60}, {-55, 60}, {-5, 60}, {-5, 80}, {0, 80}}));
      connect(Yp, Xp) annotation(Line(points = {{0, 80}, {5, 80}, {75, 80}, {75, 0}, {80, 0}}));
      connect(Xp, Zn) annotation(Line(points = {{80, 0}, {75, 0}, {65, 0}, {65, -60}, {60, -60}}));
      connect(Zn, Yn) annotation(Line(points = {{60, -60}, {55, -60}, {5, -60}, {5, -80}, {0, -80}}));
      annotation(imu(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), experiment(StopTime = 1, StartTime = 0));
    end basic_iboss_int;

    model basic
      extends basic_mass;
      parameter Integer id = 1 "TODO: automatisch id zuweisen (über \"outer\" parameter)";
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end basic;

    model versom_basic_battery
      extends icons.basic;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-34, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1 annotation(Placement(visible = true, transformation(origin = {-2, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.BooleanConstant booleanconstant1[6] annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable timetable1(table = [0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]) annotation(Placement(visible = true, transformation(origin = {-83, 41}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      components.comm_int comm_int1[6] annotation(Placement(visible = true, transformation(origin = {-44, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-42, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const[6](each k = 0) annotation(Placement(visible = true, transformation(origin = {-82, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      components.iboss_interface xp annotation(Placement(visible = true, transformation(origin = {64, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      components.iboss_interface xn annotation(Placement(visible = true, transformation(origin = {64, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      components.iboss_interface yp annotation(Placement(visible = true, transformation(origin = {64, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      components.iboss_interface yn annotation(Placement(visible = true, transformation(origin = {64, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      components.iboss_interface zp annotation(Placement(visible = true, transformation(origin = {64, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      components.iboss_interface zn annotation(Placement(visible = true, transformation(origin = {64, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      satcomponents.power.batteries.battery battery1(capacity_Ah = 0.1, Vnominal = 40) annotation(Placement(visible = true, transformation(origin = {-56, -38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    equation
      connect(battery1.n, ground1.p) annotation(Line(points = {{-56, -48}, {-34, -48}, {-34, -54}, {-34, -54}}, color = {0, 0, 255}));
      connect(battery1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-56, -28}, {-12, -28}, {-12, -32}, {-12, -32}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n1, dcdc_ideal_simple1.n2) annotation(Line(points = {{-12, -41}, {-12, -41}, {-12, -50}, {8, -50}, {8, -42}, {8, -42}}, color = {0, 0, 255}));
      connect(ground1.p, dcdc_ideal_simple1.n1) annotation(Line(points = {{-34, -54}, {-12, -54}, {-12, -42}, {-12, -42}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n2, xp.gnd_int) annotation(Line(points = {{8, -41}, {30, -41}, {30, 74}, {54, 74}, {54, 74}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n2, xn.gnd_int) annotation(Line(points = {{8, -41}, {30, -41}, {30, 48}, {54, 48}, {54, 48}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n2, yp.gnd_int) annotation(Line(points = {{8, -41}, {30, -41}, {30, 22}, {54, 22}, {54, 22}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n2, yn.gnd_int) annotation(Line(points = {{8, -41}, {30, -41}, {30, -6}, {54, -6}, {54, -6}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n2, zp.gnd_int) annotation(Line(points = {{8, -41}, {30, -41}, {30, -34}, {54, -34}, {54, -34}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.p2, xp.vcc_int) annotation(Line(points = {{8, -31}, {38, -31}, {38, 78}, {54, 78}, {54, 78}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.p2, xn.vcc_int) annotation(Line(points = {{8, -31}, {38, -31}, {38, 50}, {54, 50}, {54, 50}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.p2, yn.vcc_int) annotation(Line(points = {{8, -31}, {38, -31}, {38, -2}, {54, -2}, {54, -2}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.p2, zp.vcc_int) annotation(Line(points = {{8, -31}, {54, -31}, {54, -30}, {54, -30}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.n2, zn.gnd_int) annotation(Line(points = {{8, -41}, {30, -41}, {30, -62}, {54, -62}, {54, -64}, {54, -64}}, color = {0, 0, 255}));
      connect(dcdc_ideal_simple1.p2, zn.vcc_int) annotation(Line(points = {{8, -31}, {38, -31}, {38, -58}, {54, -58}, {54, -60}, {54, -60}}, color = {0, 0, 255}));
      connect(zn.comm, comm_int1[6]) annotation(Line(points = {{54, -51}, {22, -51}, {22, 78}, {-44, 78}, {-44, 78}}));
      connect(comm_int1[5], zp.comm) annotation(Line(points = {{-44, 78}, {22, 78}, {22, -24}, {54, -24}, {54, -24}}));
      connect(comm_int1[4], yn.comm) annotation(Line(points = {{-44, 78}, {22, 78}, {22, 6}, {54, 6}, {54, 6}}));
      connect(comm_int1[3], yp.comm) annotation(Line(points = {{-44, 78}, {22, 78}, {22, 32}, {54, 32}, {54, 32}}));
      connect(comm_int1[2], xn.comm) annotation(Line(points = {{-44, 78}, {22, 78}, {22, 58}, {54, 58}, {54, 58}}));
      connect(comm_int1[1], xp.comm) annotation(Line(points = {{-44, 78}, {22, 78}, {22, 86}, {54, 86}, {54, 86}}));
      connect(const[2:6].y, comm_int1[2:6].set_pos) annotation(Line(points = {{-71, 78}, {-44, 78}, {-44, 78}, {-44, 78}}, color = {0, 0, 127}));
      connect(booleanconstant1.y, comm_int1.set_ess) annotation(Line(points = {{-69, 0}, {-44, 0}, {-44, 78}, {-44, 78}}, color = {255, 0, 255}));
      connect(timetable1.y, comm_int1[1].set_pos) annotation(Line(points = {{-69, 41}, {-44, 41}, {-44, 78}, {-44, 78}}, color = {0, 0, 127}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-12, Interval = 0.02));
    end versom_basic_battery;

    model verosim_basic
      extends icons.basic;
      parameter Integer intf_count = 1 "number of interfaces";
      parameter Modelica.SIunits.Mass m = 10;
      satcomponents.power.verbraucher OBC(v_nominal = 5, useHeatPort = true);
      satcomponents.AOCS.Parts.IMU imu1;
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C = 897.0 * m);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature1(T = 100);
      Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr = 0.02 * 6 * 0.4 * 0.4);
      Modelica.Electrical.Analog.Basic.Ground ground1;
      satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1;
      Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 40, duration = 2);
      satcomponents.thermal.thermometer_withnoise thermometer_withnoise1;
      input Modelica.Blocks.Interfaces.RealInput ddr[3];
      components.iboss_interface intf;
    equation
      connect(heatcapacitor1.port, thermometer_withnoise1.port);
      connect(rampvoltage1.p, dcdc_ideal_simple1.p1);
      connect(ground1.p, rampvoltage1.n);
      connect(ground1.p, dcdc_ideal_simple1.n1);
      connect(bodyradiation1.port_b, heatcapacitor1.port);
      connect(fixedtemperature1.port, bodyradiation1.port_a);
      connect(OBC.heatPort, heatcapacitor1.port);
      connect(ddr, imu1.ang_vel);
      connect(OBC.pin_p, dcdc_ideal_simple1.p2);
      connect(OBC.pin_n, dcdc_ideal_simple1.n2);
      connect(dcdc_ideal_simple1.n1, dcdc_ideal_simple1.n2);
      connect(dcdc_ideal_simple1.p2, intf.v_motor);
      connect(dcdc_ideal_simple1.n2, intf.gnd_motor);
      connect(dcdc_ideal_simple1.p1, intf.vcc_int);
      connect(dcdc_ideal_simple1.n1, intf.gnd_int);
      annotation(imu1(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), intf(mi(noise_ung1(y(flags = 2)))), experiment(StopTime = 1, StartTime = 0));
    end verosim_basic;

    package examples
      extends Modelica.Icons.ExamplesPackage;

      model verosim_block
        extends Modelica.Icons.Example;
        Modelica.Blocks.Sources.BooleanConstant set_ess[6](each k = false);
        Modelica.Blocks.Sources.Constant set_mi_pos[6](each k = 0.5);
        Modelica.Blocks.Sources.TimeTable timetable1(table = [0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]);
        iboss_vti vb(m = 1) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Sources.Constant acc[3](each k = 0);
      equation
        connect(vb.sim_ddr, acc.y);
        //for i in 2:6 loop
        //	verosim_basic1.comm_in.intf[i].set_ess = 0.0;
        //	verosim_basic1.comm_in.intf[i].set_pos = 0.0;
        //end for;
        connect(timetable1.y, vb.set_mi_pos[1]);
        connect(set_mi_pos[2:6].y, vb.set_mi_pos[2:6]);
        connect(set_ess.y, vb.set_ei_state);
        annotation(verosim_basic1(imu1(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), intf(mi(noise_ung1(y(flags = 2))))), experiment(StopTime = 1, StartTime = 0));
        annotation(verosim_basic1(imu1(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), intf(mi(noise_ung1(y(flags = 2))))), experiment(StopTime = 1, StartTime = 0), timetable1(y(flags = 2)), vb(imu(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), rampvoltage1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), iXp(vcc_ext(v(flags = 2), i(flags = 2)), gnd_ext(v(flags = 2), i(flags = 2)), gnd_int(v(flags = 2), i(flags = 2)), vcc_int(v(flags = 2), i(flags = 2)), comm_out(mi_pos(flags = 2), v_ext(flags = 2), v_int(flags = 2), intf_current(flags = 2), tmp(flags = 2)), v_motor(v(flags = 2), i(flags = 2)), gnd_motor(v(flags = 2), i(flags = 2)), mi(pin_p(v(flags = 2), i(flags = 2)), pin_n(v(flags = 2), i(flags = 2)), pos_sens(flags = 2), bearingfriction1(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), w_relfric(flags = 2), a_relfric(flags = 2), tau0(flags = 2), tau0_max(flags = 2), free(flags = 2), sa(flags = 2), startForward(flags = 2), startBackward(flags = 2), locked(flags = 2), mode(flags = 2), lossPower(flags = 2), phi(flags = 2), tau(flags = 2), w(flags = 2), a(flags = 2)), inertia1(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi(flags = 2), w(flags = 2), a(flags = 2)), pos(flange(phi(flags = 2), tau(flags = 2))), dcpm(phiMechanical(flags = 2), wMechanical(flags = 2), tauElectrical(flags = 2), tauShaft(flags = 2), flange(phi(flags = 2), tau(flags = 2)), inertiaRotor(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi(flags = 2), w(flags = 2), a(flags = 2)), inertiaStator(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi(flags = 2), w(flags = 2), a(flags = 2)), fixed(flange(phi(flags = 2), tau(flags = 2))), friction(flange(phi(flags = 2), tau(flags = 2)), support(phi(flags = 2), tau(flags = 2)), phi(flags = 2), tau(flags = 2), w(flags = 2), heatPort(T(flags = 2)), lossPower(flags = 2)), va(flags = 2), ia(flags = 2), pin_ap(v(flags = 2), i(flags = 2)), pin_an(v(flags = 2), i(flags = 2)), ra(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), heatPort(T(flags = 2), Q_flow(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), la(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), brush(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), heatPort(T(flags = 2)), lossPower(flags = 2)), core(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), heatPort(T(flags = 2)), lossPower(flags = 2), Gc(flags = 2)), strayLoad(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), flange(phi(flags = 2), tau(flags = 2)), support(phi(flags = 2), tau(flags = 2)), phi(flags = 2), tau(flags = 2), w(flags = 2), heatPort(T(flags = 2)), lossPower(flags = 2)), thermalPort(heatPortArmature(T(flags = 2), Q_flow(flags = 2)), heatPortCore(T(flags = 2), Q_flow(flags = 2)), heatPortStrayLoad(T(flags = 2), Q_flow(flags = 2)), heatPortFriction(T(flags = 2), Q_flow(flags = 2)), heatPortBrush(T(flags = 2), Q_flow(flags = 2)), heatPortPermanentMagnet(T(flags = 2), Q_flow(flags = 2))), thermalAmbient(thermalPort(heatPortArmature(T(flags = 2), Q_flow(flags = 2)), heatPortCore(T(flags = 2), Q_flow(flags = 2)), heatPortStrayLoad(T(flags = 2), Q_flow(flags = 2)), heatPortFriction(T(flags = 2), Q_flow(flags = 2)), heatPortBrush(T(flags = 2), Q_flow(flags = 2)), heatPortPermanentMagnet(T(flags = 2), Q_flow(flags = 2))), temperatureArmature(port(T(flags = 2), Q_flow(flags = 2))), temperatureCore(port(T(flags = 2), Q_flow(flags = 2))), temperatureStrayLoad(port(T(flags = 2), Q_flow(flags = 2))), temperatureFriction(port(T(flags = 2), Q_flow(flags = 2))), temperatureBrush(port(T(flags = 2), Q_flow(flags = 2))), temperaturePermanentMagnet(port(T(flags = 2), Q_flow(flags = 2)))), airGapDC(w(flags = 2), vei(flags = 2), ie(flags = 2), psi_e(flags = 2), vai(flags = 2), ia(flags = 2), tauElectrical(flags = 2), flange(phi(flags = 2), tau(flags = 2)), support(phi(flags = 2), tau(flags = 2)), pin_ap(v(flags = 2), i(flags = 2)), pin_ep(v(flags = 2), i(flags = 2)), pin_an(v(flags = 2), i(flags = 2)), pin_en(v(flags = 2), i(flags = 2))), eGround(p(v(flags = 2), i(flags = 2))), ie(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)))), hbridge1(idealclosingswitch4(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealclosingswitch3(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealclosingswitch1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealclosingswitch2(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), pin_n(v(flags = 2), i(flags = 2)), pin_p(v(flags = 2), i(flags = 2)), pin_p1(v(flags = 2), i(flags = 2)), pin_n1(v(flags = 2), i(flags = 2)), ground1(p(v(flags = 2), i(flags = 2))), idealopeningswitch1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealopeningswitch2(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2))), idealgear1(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi_a(flags = 2), phi_b(flags = 2)), noise_ung1(y(flags = 2))), v_int(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), idealopeningswitch1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), resistor1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), v_ext(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), resistor2(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), intf_current(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)))), iXn(comm_out(mi_pos(flags = 2), v_ext(flags = 2), v_int(flags = 2), intf_current(flags = 2), tmp(flags = 2)), mi(noise_ung1(y(flags = 2)))), iYp(mi(noise_ung1(y(flags = 2)))), iYn(comm_out(mi_pos(flags = 2), v_ext(flags = 2), v_int(flags = 2), intf_current(flags = 2), tmp(flags = 2)), mi(pin_p(v(flags = 2), i(flags = 2)), pin_n(v(flags = 2), i(flags = 2)), pos_sens(flags = 2), bearingfriction1(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), w_relfric(flags = 2), a_relfric(flags = 2), tau0(flags = 2), tau0_max(flags = 2), free(flags = 2), sa(flags = 2), startForward(flags = 2), startBackward(flags = 2), locked(flags = 2), mode(flags = 2), lossPower(flags = 2), phi(flags = 2), tau(flags = 2), w(flags = 2), a(flags = 2)), inertia1(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi(flags = 2), w(flags = 2), a(flags = 2)), pos(flange(phi(flags = 2), tau(flags = 2))), dcpm(phiMechanical(flags = 2), wMechanical(flags = 2), tauElectrical(flags = 2), tauShaft(flags = 2), flange(phi(flags = 2), tau(flags = 2)), inertiaRotor(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi(flags = 2), w(flags = 2), a(flags = 2)), inertiaStator(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi(flags = 2), w(flags = 2), a(flags = 2)), fixed(flange(phi(flags = 2), tau(flags = 2))), friction(flange(phi(flags = 2), tau(flags = 2)), support(phi(flags = 2), tau(flags = 2)), phi(flags = 2), tau(flags = 2), w(flags = 2), heatPort(T(flags = 2)), lossPower(flags = 2)), va(flags = 2), ia(flags = 2), pin_ap(v(flags = 2), i(flags = 2)), pin_an(v(flags = 2), i(flags = 2)), ra(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), heatPort(T(flags = 2), Q_flow(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2), R_actual(flags = 2)), la(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), brush(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), heatPort(T(flags = 2)), lossPower(flags = 2)), core(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), heatPort(T(flags = 2)), lossPower(flags = 2), Gc(flags = 2)), strayLoad(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), flange(phi(flags = 2), tau(flags = 2)), support(phi(flags = 2), tau(flags = 2)), phi(flags = 2), tau(flags = 2), w(flags = 2), heatPort(T(flags = 2)), lossPower(flags = 2)), thermalPort(heatPortArmature(T(flags = 2), Q_flow(flags = 2)), heatPortCore(T(flags = 2), Q_flow(flags = 2)), heatPortStrayLoad(T(flags = 2), Q_flow(flags = 2)), heatPortFriction(T(flags = 2), Q_flow(flags = 2)), heatPortBrush(T(flags = 2), Q_flow(flags = 2)), heatPortPermanentMagnet(T(flags = 2), Q_flow(flags = 2))), thermalAmbient(thermalPort(heatPortArmature(T(flags = 2), Q_flow(flags = 2)), heatPortCore(T(flags = 2), Q_flow(flags = 2)), heatPortStrayLoad(T(flags = 2), Q_flow(flags = 2)), heatPortFriction(T(flags = 2), Q_flow(flags = 2)), heatPortBrush(T(flags = 2), Q_flow(flags = 2)), heatPortPermanentMagnet(T(flags = 2), Q_flow(flags = 2))), temperatureArmature(port(T(flags = 2), Q_flow(flags = 2))), temperatureCore(port(T(flags = 2), Q_flow(flags = 2))), temperatureStrayLoad(port(T(flags = 2), Q_flow(flags = 2))), temperatureFriction(port(T(flags = 2), Q_flow(flags = 2))), temperatureBrush(port(T(flags = 2), Q_flow(flags = 2))), temperaturePermanentMagnet(port(T(flags = 2), Q_flow(flags = 2)))), airGapDC(w(flags = 2), vei(flags = 2), ie(flags = 2), psi_e(flags = 2), vai(flags = 2), ia(flags = 2), tauElectrical(flags = 2), flange(phi(flags = 2), tau(flags = 2)), support(phi(flags = 2), tau(flags = 2)), pin_ap(v(flags = 2), i(flags = 2)), pin_ep(v(flags = 2), i(flags = 2)), pin_an(v(flags = 2), i(flags = 2)), pin_en(v(flags = 2), i(flags = 2))), eGround(p(v(flags = 2), i(flags = 2))), ie(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)))), hbridge1(idealclosingswitch4(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealclosingswitch3(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealclosingswitch1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealclosingswitch2(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), pin_n(v(flags = 2), i(flags = 2)), pin_p(v(flags = 2), i(flags = 2)), pin_p1(v(flags = 2), i(flags = 2)), pin_n1(v(flags = 2), i(flags = 2)), ground1(p(v(flags = 2), i(flags = 2))), idealopeningswitch1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2)), idealopeningswitch2(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), LossPower(flags = 2), T_heatPort(flags = 2))), idealgear1(flange_a(phi(flags = 2), tau(flags = 2)), flange_b(phi(flags = 2), tau(flags = 2)), phi_a(flags = 2), phi_b(flags = 2)), noise_ung1(y(flags = 2)))), iZp(mi(noise_ung1(y(flags = 2)))), iZn(mi(noise_ung1(y(flags = 2))))), experiment(StopTime = 100, StartTime = 0));
      end verosim_block;
      annotation(dateModified = "2015-06-26 10:59:34Z", experiment(StopTime = 1, StartTime = 0));
    end examples;

    model iboss_vti
      extends verosim_basic_6D annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      parameter Integer intf_count = 6 "number of interfaces";
      input Modelica.Blocks.Interfaces.RealInput set_mi_pos[6];
      input Modelica.Blocks.Interfaces.BooleanInput set_ei_state[6];
      input Modelica.Blocks.Interfaces.IntegerInput set_oci_state[6];
      input Modelica.Blocks.Interfaces.RealInput sim_ddr[3] annotation(Placement(transformation(origin = {-100, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-98, 20}, extent = {{-10, -10}, {10, 10}})));

      connector Sim_out "Sim_out"
        connector Intf "Intf"
          Real mi_pos;
          Real v_ext;
        end Intf;

        Intf intf[intf_count];
        annotation(Icon(graphics = {Ellipse(lineColor = {0, 0, 0}, fillColor = {127, 255, 212}, fillPattern = FillPattern.CrossDiag, extent = {{-63.3, 56.7}, {63.3, -66.7}})}));
      end Sim_out;

      output Sim_out sim_out annotation(Placement(transformation(origin = {100, 58}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {66, 30}, extent = {{-10, -10}, {10, 10}})));
    equation
      connect(imu.ang_vel, sim_ddr);
      connect(set_mi_pos[1], iXp.comm_in.set_pos);
      sim_out.intf[1].mi_pos = iXp.mi.pos.phi;
      sim_out.intf[1].v_ext = iXp.v_ext.v;
      sim_out.intf[2].mi_pos = iXn.mi.pos.phi;
      sim_out.intf[2].v_ext = iXn.v_ext.v;
      sim_out.intf[3].mi_pos = iYp.mi.pos.phi;
      sim_out.intf[3].v_ext = iYp.v_ext.v;
      sim_out.intf[4].mi_pos = iYn.mi.pos.phi;
      sim_out.intf[4].v_ext = iYn.v_ext.v;
      sim_out.intf[5].mi_pos = iZp.mi.pos.phi;
      sim_out.intf[5].v_ext = iZp.v_ext.v;
      sim_out.intf[6].mi_pos = iZn.mi.pos.phi;
      sim_out.intf[6].v_ext = iZn.v_ext.v;
      annotation(imu(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), rampvoltage1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), iXp(mi(noise_ung1(y(flags = 2)))), iXn(mi(noise_ung1(y(flags = 2)))), iYp(mi(noise_ung1(y(flags = 2)))), iYn(mi(noise_ung1(y(flags = 2)))), iZp(mi(noise_ung1(y(flags = 2)))), iZn(mi(noise_ung1(y(flags = 2)))), experiment(StopTime = 1, StartTime = 0));
    end iboss_vti;

    model verosim_basic_6D
      extends icons.basic;
      parameter Integer intf_count = 6 "number of interfaces";
      parameter Modelica.SIunits.Mass m = 10;
      satcomponents.power.verbraucher OBC(v_nominal = 5, useHeatPort = true) annotation(Placement(transformation(origin = {5, -15}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.AOCS.Parts.IMU imu annotation(Placement(transformation(origin = {-48, 40}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatcapacitor1(C = 897.0 * m) annotation(Placement(transformation(origin = {-48, -2}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedtemperature1(T = 100) annotation(Placement(transformation(origin = {-102, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyradiation1(Gr = 0.02 * 6 * 0.4 * 0.4) annotation(Placement(transformation(origin = {-74, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {-44, -74}, extent = {{-10, -10}, {10, 10}})));
      satcomponents.power.dcmodel.dcdc_ideal_simple dcdc_ideal_simple1 annotation(Placement(transformation(origin = {-12, -46}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 40, duration = 2) annotation(Placement(transformation(origin = {-72, -46}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      satcomponents.thermal.thermometer_withnoise thermometer_withnoise1 annotation(Placement(transformation(origin = {-10, 28}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface iXp annotation(Placement(transformation(origin = {65, 60}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface iXn annotation(Placement(transformation(origin = {65, 35}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface iYp annotation(Placement(transformation(origin = {95, 25}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface iYn annotation(Placement(transformation(origin = {95, -5}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface iZp annotation(Placement(transformation(origin = {65, -20}, extent = {{-10, -10}, {10, 10}})));
      components.iboss_interface iZn annotation(Placement(transformation(origin = {65, -50}, extent = {{-10, -10}, {10, 10}})));
    equation
      connect(heatcapacitor1.port, thermometer_withnoise1.port) annotation(Line(points = {{-48, -12}, {-48, -17}, {-36.7, -17}, {-36.7, 28}, {-25, 28}, {-20, 28}}, color = {191, 0, 0}));
      connect(rampvoltage1.p, dcdc_ideal_simple1.p1) annotation(Line(points = {{-72, -36}, {-72, -31}, {-49.7, -31}, {-49.7, -41}, {-27, -41}, {-22, -41}}));
      connect(ground1.p, rampvoltage1.n) annotation(Line(points = {{-44, -64}, {-44, -59}, {-58, -59}, {-58, -61}, {-72, -61}, {-72, -56}}));
      connect(ground1.p, dcdc_ideal_simple1.n1) annotation(Line(points = {{-44, -64}, {-44, -59}, {-44, -51}, {-27, -51}, {-22, -51}}));
      connect(bodyradiation1.port_b, heatcapacitor1.port) annotation(Line(points = {{-64, -10}, {-59, -10}, {-59, -17}, {-48, -17}, {-48, -12}}, color = {191, 0, 0}));
      connect(fixedtemperature1.port, bodyradiation1.port_a) annotation(Line(points = {{-92, -10}, {-87, -10}, {-89, -10}, {-84, -10}}, color = {191, 0, 0}));
      connect(OBC.heatPort, heatcapacitor1.port) annotation(Line(points = {{-5, -16.7}, {-10, -16.7}, {-10, -17}, {-48, -17}, {-48, -12}}, color = {191, 0, 0}));
      connect(OBC.pin_p, dcdc_ideal_simple1.p2) annotation(Line(points = {{0, -25}, {0, -30}, {3, -30}, {3, -41}, {-2, -41}}, thickness = 0.0625));
      connect(OBC.pin_n, dcdc_ideal_simple1.n2) annotation(Line(points = {{9.699999999999999, -25}, {9.699999999999999, -30}, {9.699999999999999, -51}, {3, -51}, {-2, -51}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n1, dcdc_ideal_simple1.n2) annotation(Line(points = {{-22, -51}, {-27, -51}, {-27, -61}, {3, -61}, {3, -51}, {-2, -51}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, iXp.vcc_int) annotation(Line(points = {{-2, -41}, {3, -41}, {50, -41}, {50, 65}, {55, 65}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, iXp.gnd_int) annotation(Line(points = {{-2, -51}, {3, -51}, {50, -51}, {50, 60}, {55, 60}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, iXp.v_motor) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, 2}, {60, 2}, {60, 45}, {60, 50}}, thickness = 0.0625));
      connect(iXp.gnd_int, iXp.gnd_motor) annotation(Line(points = {{55, 60}, {50, 60}, {50, 45}, {65, 45}, {65, 50}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, iYp.vcc_int) annotation(Line(points = {{-2, -41}, {3, -41}, {80, -41}, {80, 30}, {85, 30}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, iYp.gnd_int) annotation(Line(points = {{-2, -51}, {3, -51}, {80, -51}, {80, 25}, {85, 25}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, iYp.v_motor) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, -15.7}, {90, -15.7}, {90, 10}, {90, 15}}, thickness = 0.0625));
      connect(iYp.gnd_int, iYp.gnd_motor) annotation(Line(points = {{85, 25}, {80, 25}, {80, 10}, {95, 10}, {95, 15}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, iZp.vcc_int) annotation(Line(points = {{-2, -41}, {3, -41}, {50, -41}, {50, -15}, {55, -15}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, iZp.gnd_int) annotation(Line(points = {{-2, -51}, {3, -51}, {50, -51}, {50, -20}, {55, -20}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, iZp.v_motor) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, -38}, {60, -38}, {60, -35}, {60, -30}}, thickness = 0.0625));
      connect(iZp.gnd_int, iZp.gnd_motor) annotation(Line(points = {{55, -20}, {50, -20}, {50, -35}, {65, -35}, {65, -30}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, iXn.vcc_int) annotation(Line(points = {{-2, -41}, {3, -41}, {50, -41}, {50, 40}, {55, 40}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, iXn.gnd_int) annotation(Line(points = {{-2, -51}, {3, -51}, {50, -51}, {50, 35}, {55, 35}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, iXn.v_motor) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, -10.7}, {60, -10.7}, {60, 20}, {60, 25}}, thickness = 0.0625));
      connect(iXn.gnd_int, iXn.gnd_motor) annotation(Line(points = {{55, 35}, {50, 35}, {50, 20}, {65, 20}, {65, 25}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, iYn.vcc_int) annotation(Line(points = {{-2, -41}, {3, -41}, {80, -41}, {80, 0}, {85, 0}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, iYn.gnd_int) annotation(Line(points = {{-2, -51}, {3, -51}, {80, -51}, {80, -5}, {85, -5}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, iYn.v_motor) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, -30.7}, {90, -30.7}, {90, -20}, {90, -15}}, thickness = 0.0625));
      connect(iYn.gnd_int, iYn.gnd_motor) annotation(Line(points = {{85, -5}, {80, -5}, {80, -20}, {95, -20}, {95, -15}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p1, iZn.vcc_int) annotation(Line(points = {{-2, -41}, {3, -41}, {50, -41}, {50, -45}, {55, -45}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.n2, iZn.gnd_int) annotation(Line(points = {{-2, -51}, {3, -51}, {50, -51}, {50, -50}, {55, -50}}, thickness = 0.0625));
      connect(dcdc_ideal_simple1.p2, iZn.v_motor) annotation(Line(points = {{-22, -41}, {-27, -41}, {-27, -65}, {60, -65}, {60, -60}}, thickness = 0.0625));
      connect(iZn.gnd_int, iZn.gnd_motor) annotation(Line(points = {{55, -50}, {50, -50}, {50, -65}, {65, -65}, {65, -60}}, thickness = 0.0625));
      annotation(imu(noise_ung2(y(flags = 2)), noise_ung1(y(flags = 2)), noise_ung3(y(flags = 2))), rampvoltage1(v(flags = 2), i(flags = 2), p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2))), thermometer_withnoise1(noise_ung(y(flags = 2))), iXp(mi(noise_ung1(y(flags = 2)))), iXn(mi(noise_ung1(y(flags = 2)))), iYp(mi(noise_ung1(y(flags = 2)))), iYn(mi(noise_ung1(y(flags = 2)))), iZp(mi(noise_ung1(y(flags = 2)))), iZn(mi(noise_ung1(y(flags = 2)))), experiment(StopTime = 100, StartTime = 0, Tolerance = 1e-012, Interval = 0.02));
    end verosim_basic_6D;
  end buildingblocks;
end ibossmo;