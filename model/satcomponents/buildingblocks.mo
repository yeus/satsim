package ibossmo
  package components
    // CP: 65001
    // SimulationX Version: 3.6.1.26028
    //within iboss;

    model iboss_interface
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor2 annotation(Placement(transformation(origin = {-65, -25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(transformation(origin = {101.556, -50.9194}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {101.556, -50.9194}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Interfaces.PositivePin vcc annotation(Placement(transformation(origin = {101.273, -18.1046}, extent = {{-12, -12}, {12, 12}}), iconTransformation(origin = {101.273, -18.1046}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(Placement(transformation(origin = {85, -35}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-100, 16}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {104, -16}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-100, -14}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {104, -48}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealopeningswitch1 annotation(Placement(visible = true, transformation(origin = {8, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet dcpm annotation(Placement(visible = true, transformation(origin = {14, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1 annotation(Placement(visible = true, transformation(origin = {14, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(idealopeningswitch1.n, vcc) annotation(Line(points = {{18, 4}, {101, 4}, {101, -18}}, color = {0, 0, 255}));
      connect(voltageSensor2.p, idealopeningswitch1.p) annotation(Line(points = {{-65, -15}, {-66, -15}, {-66, 4}, {-2, 4}}, color = {0, 0, 255}));
      connect(voltageSensor2.p, pin_p) annotation(Line(points = {{-65, -15}, {-80, -15}, {-80, 16}, {-100, 16}, {-100, 16}}, color = {0, 0, 255}));
      connect(voltageSensor2.n, pin_n) annotation(Line(points = {{-65, -35}, {-90, -35}, {-90, -14}, {-100, -14}, {-100, -14}}, color = {0, 0, 255}));
      connect(voltageSensor1.p, vcc) annotation(Line(points = {{85, -25}, {85, -20}, {85, -18}, {96, -18}, {101, -18}}, thickness = 0.0625));
      connect(voltageSensor1.n, gnd) annotation(Line(points = {{85, -45}, {85, -50}, {85, -51}, {97, -51}, {102, -51}}, thickness = 0.0625));
      connect(voltageSensor2.n, iBoss_connector.GND) annotation(Line(points = {{-65, -35}, {-80, -35}, {-95, -35}, {-100, -0.3333358764648438}}, thickness = 0.0625), AutoRoute = false);
      connect(voltageSensor1.n, voltageSensor2.n) annotation(Line(points = {{85, -45}, {85, -50}, {-65, -50}, {-65, -40}, {-65, -35}}, thickness = 0.0625));
      annotation(voltageSensor2(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), voltageSensor1(p(v(flags = 2), i(flags = 2)), n(v(flags = 2), i(flags = 2)), v(flags = 2)), variableResistor1(LossPower(flags = 2), R_actual(flags = 2)), ei_ctrl(y(flags = 2)), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-16.6902, 93.63509999999999}, {7.63791, -93.3522}}), Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-22.0651, 48.0905}, {-16.6902, -49.2221}}), Rectangle(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-33.9463, 21.2164}, {15.8416, -22.9137}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{24.0453, 66.1952}, {1.41443, 15.8416}}), Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{1.9802, -9.6181}, {25.1768, -61.9519}}), Text(textString = "GND", fillColor = {0, 0, 255}, extent = {{39.0382, -33.9463}, {85.71429999999999, -64.7807}}), Text(textString = "VCC", fillColor = {0, 0, 255}, extent = {{41.5842, -0.282893}, {80.3395, -33.6634}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})), experiment(StopTime = 1, StartTime = 0));
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

    model m_int
      Modelica.Mechanics.Rotational.Components.BearingFriction bearingfriction1(tau_pos = [0, 0.0; 0.1, 50.0], peak = 3.0) annotation(Placement(visible = true, transformation(origin = {30, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.IdealGear idealgear1(ratio = 22 * 400) annotation(Placement(visible = true, transformation(origin = {-4, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 0.1 * 0.03 ^ 2) annotation(Placement(visible = true, transformation(origin = {66, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.AngleSensor anglesensor1 annotation(Placement(visible = true, transformation(origin = {80, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Blocks.Sources.TimeTable timetable1(table = [0, 0; 5, 0; 5.01, 0.3; 20, 0.3; 20.01, 1.0; 45, 1.0; 45.0, 0; 70, 0.0]) annotation(Placement(visible = true, transformation(origin = {72, 46}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      satcomponents.blocks.OnOffIdleController onoffidlecontroller1(bandwidth = 0.01) annotation(Placement(visible = true, transformation(origin = {34, 42}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.LessThreshold lessthreshold1(threshold = -0.5) annotation(Placement(visible = true, transformation(origin = {8, 34}, extent = {{4, -4}, {-4, 4}}, rotation = 0)));
      Modelica.Blocks.Logical.GreaterThreshold greaterthreshold1(threshold = 0.5) annotation(Placement(visible = true, transformation(origin = {8, 48}, extent = {{4, -4}, {-4, 4}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-47, 59}, extent = {{-5, 5}, {5, -5}}, rotation = 0)));
      Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet dcpm(VaNominal = 6, IaNominal = 0.012, wNominal = 6200 * 2 * 3.141 / 60, TaNominal = 338.15, Ra = 7, TaOperational = 60, TaRef = 273.15, La = 480e-6, ia(start = 0), Jr = 0.0081 * 0.01 ^ 2) annotation(Placement(visible = true, transformation(origin = {-56, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 6) annotation(Placement(visible = true, transformation(origin = {-58, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      satcomponents.power.HBridge hbridge1 annotation(Placement(visible = true, transformation(origin = {-58, 4}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
    equation
      connect(lessthreshold1.y, hbridge1.reverse) annotation(Line(points = {{3.6, 34}, {-28.4, 34}, {-28.4, 7}, {-48.4, 7}}, color = {255, 0, 255}));
      connect(hbridge1.forward, greaterthreshold1.y) annotation(Line(points = {{-48, 0.8}, {-31, 0.8}, {-31, 2.8}, {-14, 2.8}, {-14, 49.8}, {-5, 49.8}, {-5, 47.8}, {4, 47.8}}, color = {255, 0, 255}));
      connect(dcpm.pin_ap, hbridge1.pin_n1) annotation(Line(points = {{-50, -34}, {-52, -34}, {-52, -6}}, color = {0, 0, 255}));
      connect(hbridge1.pin_p1, dcpm.pin_an) annotation(Line(points = {{-64, -6}, {-64, -34}, {-62, -34}}, color = {0, 0, 255}));
      connect(constantvoltage1.n, hbridge1.pin_n) annotation(Line(points = {{-48, 46}, {-38, 46}, {-38, 28}, {-52, 28}, {-52, 14}}, color = {0, 0, 255}));
      connect(hbridge1.pin_p, constantvoltage1.p) annotation(Line(points = {{-64.4, 14}, {-64.4, 22}, {-64.4, 22}, {-64.4, 30}, {-76.4, 30}, {-76.4, 46}, {-72.4, 46}, {-72.4, 46}, {-68.4, 46}}, color = {0, 0, 255}));
      connect(ground1.p, constantvoltage1.n) annotation(Line(points = {{-47, 54}, {-48, 54}, {-48, 46}}, color = {0, 0, 255}));
      connect(dcpm.flange, idealgear1.flange_a) annotation(Line(points = {{-46, -44}, {-14, -44}}));
      connect(greaterthreshold1.u, onoffidlecontroller1.y) annotation(Line(points = {{12.8, 48}, {12.3, 48}, {12.3, 48}, {11.8, 48}, {11.8, 42}, {17.3, 42}, {17.3, 42}, {22.8, 42}}, color = {0, 0, 127}));
      connect(lessthreshold1.u, onoffidlecontroller1.y) annotation(Line(points = {{12.8, 34}, {17.8, 34}, {17.8, 42}, {22.8, 42}}, color = {0, 0, 127}));
      connect(onoffidlecontroller1.reference, timetable1.y) annotation(Line(points = {{46, 48}, {53.5, 48}, {53.5, 46}, {61, 46}}, color = {0, 0, 127}));
      connect(onoffidlecontroller1.u, anglesensor1.phi) annotation(Line(points = {{46, 36}, {49.5, 36}, {49.5, 36}, {53, 36}, {53, 8}, {80, 8}, {80, -5}}, color = {0, 0, 127}));
      connect(inertia1.flange_b, anglesensor1.flange) annotation(Line(points = {{76, -44}, {77, -44}, {77, -44}, {78, -44}, {78, -42}, {80, -42}, {80, -26}}));
      connect(bearingfriction1.flange_b, inertia1.flange_a) annotation(Line(points = {{40, -44}, {48, -44}, {48, -42}, {58, -42}, {58, -42}, {58, -42}, {58, -44}, {57, -44}, {57, -44}, {56, -44}}));
      connect(idealgear1.flange_b, bearingfriction1.flange_a) annotation(Line(points = {{6, -44}, {20, -44}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end m_int;
  end components;

  package buildingblocks
    // CP: 65001
    // SimulationX Version: 3.6.1.26028
    //within iboss;

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
    equation

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

    model verosim_basic
      extends icons.basic;
      //extends basic;
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 80) annotation(Placement(visible = true, transformation(origin = {-8, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1(useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-10, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {18, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 10000, rising = 10, width = 100, falling = 3, period = 200, offset = 1000) annotation(Placement(visible = true, transformation(origin = {-56, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(trapezoid1.y, variableresistor1.R) annotation(Line(points = {{-45, -24}, {-38.75, -24}, {-38.75, -24}, {-30.5, -24}, {-30.5, -24}, {-10, -24}, {-10, -30}, {-12, -30}, {-12, -30}, {-12, -30}, {-12, -30}, {-10, -30}}, color = {0, 0, 127}));
      connect(variableresistor1.n, ground1.p) annotation(Line(points = {{0, -42}, {2.25, -42}, {2.25, -42}, {2.5, -42}, {2.5, -42}, {9, -42}, {9, -42}, {18, -42}, {18, -54}, {18, -54}, {18, -54}, {18, -54}}, color = {0, 0, 255}));
      connect(variableresistor1.n, constantvoltage1.n) annotation(Line(points = {{0, -42}, {7, -42}, {7, -42}, {14, -42}, {14, 2}, {2, 2}, {2, 2}, {4, 2}, {4, 2}, {2, 2}, {2, 2}}, color = {0, 0, 255}));
      connect(constantvoltage1.p, variableresistor1.p) annotation(Line(points = {{-18, 2}, {-30, 2}, {-30, -42}, {-22, -42}, {-22, -42}}, color = {0, 0, 255}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
    end verosim_basic;

    model basic_mass
      extends icons.basic;
      Modelica.SIunits.Position r[3];
      Modelica.SIunits.AngularVelocity w[3];
      Modelica.Mechanics.MultiBody.Parts.Body Struktur(animation = false, r_CM = {0, 0, -0.01}, m = 5, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, useQuaternions = false) annotation(Placement(transformation(origin = {5.1, -0.1}, extent = {{-10, -10}, {10, 10}})));
    equation
      Struktur.r_0 = r;
      Struktur.phi = w;
    equation

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
    equation

      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end basic;
  end buildingblocks;
end ibossmo;