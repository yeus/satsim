package iboss
  package iboss_components
    model iboss_interface
      iboss_connector iBoss_connector annotation(Placement(visible = true, transformation(origin = {-99.8586,-0.282885}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.8586,-0.282885}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(visible = true, transformation(origin = {101.556,-50.9194}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {101.556,-50.9194}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin vcc annotation(Placement(visible = true, transformation(origin = {101.273,-18.1046}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {101.273,-18.1046}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(gnd,iBoss_connector.GND) annotation(Line(points = {{101.556,-50.9194},{-8.20368,-50.9194},{-8.20368,-7.92079},{-92.4243,-7.92079},{-92.4243,-7.56011}}));
      connect(iBoss_connector.Vcc,vcc) annotation(Line(points = {{-92.3076,7.61662},{-1.9802,7.61662},{-1.9802,-16.6902},{101.273,-16.6902},{101.273,-18.1046}}));
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-16.6902,93.6351},{7.63791,-93.3522}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-22.0651,48.0905},{-16.6902,-49.2221}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.9463,21.2164},{15.8416,-22.9137}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{24.0453,66.1952},{1.41443,15.8416}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{1.9802,-9.6181},{25.1768,-61.9519}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{39.0382,-33.9463},{85.7143,-64.7807}}, textString = "GND"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{41.5842,-0.282893},{80.3395,-33.6634}}, textString = "VCC")}));
    end iboss_interface;
    model connectionelement
      iboss_connector int1 annotation(Placement(visible = true, transformation(origin = {88.5431,4.52615}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {88.5431,4.52615}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real R(final quantity = "Resistance", final unit = "Ohm") = 0.0001;
      iboss_connector int2 annotation(Placement(visible = true, transformation(origin = {-87.9095,4.02826}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-87.9095,4.02826}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      Modelica.Electrical.Analog.Basic.Resistor R_GND(R = R) annotation(Placement(visible = true, transformation(origin = {22.5969,-3.84725}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor R_Vcc(R = R) annotation(Placement(visible = true, transformation(origin = {23.7962,12.5262}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(int1.Vcc,R_Vcc.n) annotation(Line(points = {{96.0941,12.4257},{36.4922,12.4257},{36.4922,12.5262},{35.7962,12.5262}}));
      connect(R_Vcc.p,int2.Vcc) annotation(Line(points = {{11.7962,12.5262},{-78.925,12.5262},{-78.925,11.9278},{-80.3585,11.9278}}));
      connect(R_GND.p,int2.GND) annotation(Line(points = {{10.5969,-3.84725},{-80.9052,-3.84725},{-80.9052,-3.24896},{-80.4752,-3.24896}}));
      connect(R_GND.n,int1.GND) annotation(Line(points = {{34.5969,-3.84725},{95.0495,-3.84725},{95.0495,-2.75107},{95.9774,-2.75107}}));
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-85.5219,88.3168},{87.4569,-87.1287}})}));
    end connectionelement;
    model dockinterface
      iboss_connector iBoss_Int annotation(Placement(visible = true, transformation(origin = {-0.315956,69.1943}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.315956,69.1943}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {25.2765,-4.10742}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 100) annotation(Placement(visible = true, transformation(origin = {0.631912,12.3223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(constantvoltage1.n,iBoss_Int.GND) annotation(Line(points = {{12.6319,12.3223},{12.7298,12.3223},{12.7298,41.867},{19.5191,41.867},{19.5191,77.2277},{6.91466,77.2277},{6.91466,76.9213}}));
      connect(constantvoltage1.p,iBoss_Int.Vcc) annotation(Line(points = {{-11.3681,12.3223},{-11.3154,12.3223},{-11.3154,61.1033},{7.3369,61.1033},{7.3369,61.784}}));
      connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{12.6319,12.3223},{25.1768,12.3223},{25.1768,7.89258},{25.2765,7.89258}}));
      annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-59.3997,67.2986},{58.1359,-72.6698}})}), Diagram(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-46.7615,68.8784},{46.7615,-71.406}})}));
    end dockinterface;
    connector iboss_connector
      import Modelica.Electrical.Analog.Interfaces;
      Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(visible = true, transformation(origin = {62.9251,65.8292}, extent = {{-28.2954,-28.2954},{28.2954,28.2954}}, rotation = 0), iconTransformation(origin = {62.9251,65.8292}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(visible = true, transformation(origin = {61.9524,-60.6435}, extent = {{-28.2954,-28.2954},{28.2954,28.2954}}, rotation = 0), iconTransformation(origin = {61.9524,-60.6435}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      annotation(defaultComponentName = "iBoss_connector", Diagram(graphics = {Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.2356,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}));
    end iboss_connector;
  end iboss_components;
  package bb_catalogue
    model buildingblock
      //todo: der "ideale" Baustein kann nicht mit anderen Bausteinen mehrfach vebunden werden, daher müssen kabelwiederstände berücksichtigt werden.
      iboss_connector Xn annotation(Placement(visible = true, transformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_interface int_Xn annotation(Placement(visible = true, transformation(origin = {-80.9052,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_interface int_Zp annotation(Placement(visible = true, transformation(origin = {-43.2815,61.1033}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_interface int_Yp annotation(Placement(visible = true, transformation(origin = {-0.848656,81.471}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      iboss_interface int_Zn annotation(Placement(visible = true, transformation(origin = {44.9788,-61.9519}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      iboss_interface int_Yn annotation(Placement(visible = true, transformation(origin = {-0.848656,-77.5106}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      iboss_interface int_Xp annotation(Placement(visible = true, transformation(origin = {80.3395,-0.282885}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      iboss_connector Zp annotation(Placement(visible = true, transformation(origin = {-55.7223,55.2872}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-55.7223,55.2872}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_connector Zn annotation(Placement(visible = true, transformation(origin = {52.2766,-53.6256}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {52.2766,-53.6256}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_connector Yn annotation(Placement(visible = true, transformation(origin = {0.337268,-97.1332}, extent = {{12,-12},{-12,12}}, rotation = -270), iconTransformation(origin = {0.337268,-97.1332}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_connector Xp annotation(Placement(visible = true, transformation(origin = {99.8314,0.337268}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {99.8314,0.337268}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss_connector Yp annotation(Placement(visible = true, transformation(origin = {0.337268,99.4941}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {0.337268,99.4941}, extent = {{-12,-12},{12,12}}, rotation = 0)));
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
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.2278,76.0255},{74.9561,-75.256}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.5191,69.4202},{66.9674,-68.4328}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20.2122,18.7864},{19.355,-20.778}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-15.3692,13.9434},{14.512,-15.6521}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-1.42575,0.571424},{0.288544,-1.14286}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-74.3791,15.6917},{-79.2362,-16.0226}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.9916,77.1881},{15.1513,72.0453}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{73.239,13.1174},{77.5247,-13.7397}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.4145,-72.9759},{16.5855,-77.833}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-49.505,66.761},{55.4455,27.4399}}, textString = "%name")}));
    end buildingblock;
    model bb_solar
      extends buildingblock;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {1.41448,-39.3211}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      solar_power.solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {13.5785,-5.94055}, extent = {{12,-12},{-12,12}}, rotation = -270)));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.00000001) annotation(Placement(visible = true, transformation(origin = {-31.1174,-10.1839}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {221.308,-0.741443}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {221.308,-0.741443}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(u,solarcell1.E_s) annotation(Line(points = {{221.308,-0.741443},{115.983,-0.741443},{115.983,-6.22348},{5.05869,-6.22348},{5.05869,-6.09269}}));
      connect(capacitor1.p,solarcell1.n) annotation(Line(points = {{-31.1174,1.81612},{-31.1174,1.81612},{-31.1174,6.50636},{13.5785,6.50636},{13.5785,6.05945}}));
      connect(ground1.p,capacitor1.n) annotation(Line(points = {{1.41448,-27.3211},{1.41448,-26.5912},{-31.9661,-26.5912},{-31.9661,-22.1839},{-31.1174,-22.1839}}));
      connect(ground1.p,int_Xn.gnd) annotation(Line(points = {{1.41448,-27.3211},{1.41448,-26.3083},{-69.5898,-26.3083},{-69.5898,-6.11033},{-68.7185,-6.11033}}));
      connect(solarcell1.n,int_Xn.vcc) annotation(Line(points = {{13.5785,6.05945},{-69.024,6.05945},{-69.024,-2.17255},{-68.7524,-2.17255}}));
      connect(solarcell1.p,ground1.p) annotation(Line(points = {{13.5785,-17.9405},{13.2956,-17.9405},{13.2956,-27.157},{1.41448,-27.157},{1.41448,-27.3211}}));
      annotation(experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001), Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}));
    end bb_solar;
    model bb_battery
      extends buildingblock;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {0.565801,-28.8543}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidvoltage1(V = 40, rising = 100, width = 1000, falling = 100, period = 3000) annotation(Placement(visible = true, transformation(origin = {-32.2489,-1.69732}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(trapezoidvoltage1.n,int_Xn.gnd) annotation(Line(points = {{-32.2489,-13.6973},{-68.7412,-13.6973},{-68.7412,-6.11033},{-68.7185,-6.11033}}));
      connect(int_Xn.vcc,trapezoidvoltage1.p) annotation(Line(points = {{-68.7524,-2.17255},{-68.1754,-2.17255},{-68.1754,10.4668},{-32.2489,10.4668},{-32.2489,10.3027}}));
      connect(trapezoidvoltage1.n,ground1.p) annotation(Line(points = {{-32.2489,-13.6973},{0.282885,-13.6973},{0.282885,-16.8543},{0.565801,-16.8543}}));
      annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    end bb_battery;
    model bb_verbraucher
      extends buildingblock;
      dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1 annotation(Placement(visible = true, transformation(origin = {-20.9335,8.20368}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2(V_out = 3, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {-21.2164,31.9661}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {-20.6506,-20.3678}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-72.9845,-81.1881}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 12.5) annotation(Placement(visible = true, transformation(origin = {32.8147,11.3154}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.0000001) annotation(Placement(visible = true, transformation(origin = {-73.2674,-47.2419}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 72) annotation(Placement(visible = true, transformation(origin = {31.6832,-25.7426}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 10.89) annotation(Placement(visible = true, transformation(origin = {33.9463,46.6761}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(resistor2.n,dcdc_ideal_simple_improved3.n2) annotation(Line(points = {{31.6832,-37.7426},{8.48656,-37.7426},{8.48656,-25.7426},{-9.48232,-25.7426},{-9.48232,-26.0028}}));
      connect(dcdc_ideal_simple_improved3.p2,resistor2.p) annotation(Line(points = {{-9.55022,-15.2758},{31.4003,-15.2758},{31.4003,-13.7426},{31.6832,-13.7426}}));
      connect(dcdc_ideal_simple_improved2.p2,resistor3.p) annotation(Line(points = {{-10.116,37.058},{-3.39463,37.058},{-3.39463,59.1231},{33.9463,59.1231},{33.9463,58.6761}}));
      connect(resistor3.n,dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{33.9463,34.6761},{2.54597,34.6761},{2.54597,26.3083},{-10.0481,26.3083},{-10.0481,26.331}}));
      connect(int_Xn.gnd,dcdc_ideal_simple_improved3.n1) annotation(Line(points = {{-68.7185,-6.11033},{-47.5248,-6.11033},{-47.5248,-25.4597},{-31.785,-25.4597},{-31.785,-25.2221}}));
      connect(int_Xn.gnd,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-68.7185,-6.11033},{-47.8076,-6.11033},{-47.8076,26.8741},{-32.3508,26.8741},{-32.3508,27.1117}}));
      connect(dcdc_ideal_simple_improved3.p1,int_Xn.vcc) annotation(Line(points = {{-31.7171,-15.3437},{-56.2942,-15.3437},{-56.2942,-2.26308},{-68.7524,-2.26308},{-68.7524,-2.17255}}));
      connect(capacitor1.n,ground1.p) annotation(Line(points = {{-73.2674,-59.2419},{-72.9845,-59.2419},{-72.9845,-69.1881},{-72.9845,-69.1881}}));
      connect(capacitor1.p,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-73.2674,-35.2419},{-47.2418,-35.2419},{-47.2418,3.34937},{-32.0679,3.34937}}));
      connect(int_Xn.vcc,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-68.7524,-2.17255},{-56.86,-2.17255},{-56.86,37.058},{-32.2829,37.058},{-32.2829,36.9901}}));
      connect(dcdc_ideal_simple_improved1.n1,int_Xn.gnd) annotation(Line(points = {{-32.0679,3.34937},{-47.5248,3.34937},{-47.5248,-6.50636},{-68.7185,-6.50636},{-68.7185,-6.11033}}));
      connect(int_Xn.vcc,dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-68.7524,-2.17255},{-56.2942,-2.17255},{-56.2942,13.8614},{-32,13.8614},{-32,13.2277}}));
      connect(resistor1.p,dcdc_ideal_simple_improved1.p2) annotation(Line(points = {{32.8147,23.3154},{9.33522,23.3154},{9.33522,13.2956},{-9.8331,13.2956},{-9.8331,13.2956}}));
      connect(dcdc_ideal_simple_improved1.n2,resistor1.n) annotation(Line(points = {{-9.76521,2.5686},{7.92079,2.5686},{7.92079,-1.41443},{32.8147,-1.41443},{32.8147,-0.684582}}));
      annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    end bb_verbraucher;
  end bb_catalogue;
  package satellites
    model iboss_generic_sat
      parameter Integer size_x = 3,size_y = 1,size_z = 1;
      bb_catalogue.bb_verbraucher bb[size_x,size_y,size_z] annotation(Placement(visible = true, transformation(origin = {16.9731,-61.6691}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      bb_catalogue.bb_solar bbs;
      connectionelement connelem_s;
      connectionelement connelem_x[size_x - 1,size_y,size_z];
      /*connectionelement connelem_y[size_x,size_y - 1,size_z];
  connectionelement connelem_z[size_x,size_y,size_z - 1];*/
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, width = 1000, period = 3000, rising = 60, falling = 60) annotation(Placement(visible = true, transformation(origin = {-71.8473,7.01273}, extent = {{-12,-12},{12,12}}, rotation = 0)));
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
      annotation(experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.000001));
    end iboss_generic_sat;
  end satellites;
end iboss;

