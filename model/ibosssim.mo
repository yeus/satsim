package iboss
  package components
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
  end components;
  package buildingblocks
    model basic
      //todo: der "ideale" Baustein kann nicht mit anderen Bausteinen mehrfach vebunden werden, daher müssen kabelwiederstände berücksichtigt werden.
      iboss.components.iboss_connector Xn annotation(Placement(visible = true, transformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_interface int_Xn annotation(Placement(visible = true, transformation(origin = {-80.9052,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_interface int_Zp annotation(Placement(visible = true, transformation(origin = {-43.2815,61.1033}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_interface int_Yp annotation(Placement(visible = true, transformation(origin = {-0.848656,81.471}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      iboss.components.iboss_interface int_Zn annotation(Placement(visible = true, transformation(origin = {44.9788,-61.9519}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      iboss.components.iboss_interface int_Yn annotation(Placement(visible = true, transformation(origin = {-0.848656,-77.5106}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      iboss.components.iboss_interface int_Xp annotation(Placement(visible = true, transformation(origin = {80.3395,-0.282885}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      iboss.components.iboss_connector Zp annotation(Placement(visible = true, transformation(origin = {-55.7223,55.2872}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-55.7223,55.2872}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_connector Zn annotation(Placement(visible = true, transformation(origin = {52.2766,-53.6256}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {52.2766,-53.6256}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_connector Yn annotation(Placement(visible = true, transformation(origin = {0.337268,-97.1332}, extent = {{12,-12},{-12,12}}, rotation = -270), iconTransformation(origin = {0.337268,-97.1332}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_connector Xp annotation(Placement(visible = true, transformation(origin = {99.8314,0.337268}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {99.8314,0.337268}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.iboss_connector Yp annotation(Placement(visible = true, transformation(origin = {0.337268,99.4941}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {0.337268,99.4941}, extent = {{-12,-12},{12,12}}, rotation = 0)));
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
    end basic;
    model solar
      extends iboss.buildingblocks.basic;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {1.41448,-39.3211}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      satcomponents.power.solar_power.solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {13.5785,-5.94055}, extent = {{12,-12},{-12,12}}, rotation = -270)));
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
    end solar;
    model battery
      extends iboss.buildingblocks.basic;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {0.565801,-28.8543}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidvoltage1(V = 40, rising = 100, width = 1000, falling = 100, period = 3000) annotation(Placement(visible = true, transformation(origin = {-32.2489,-1.69732}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(trapezoidvoltage1.n,int_Xn.gnd) annotation(Line(points = {{-32.2489,-13.6973},{-68.7412,-13.6973},{-68.7412,-6.11033},{-68.7185,-6.11033}}));
      connect(int_Xn.vcc,trapezoidvoltage1.p) annotation(Line(points = {{-68.7524,-2.17255},{-68.1754,-2.17255},{-68.1754,10.4668},{-32.2489,10.4668},{-32.2489,10.3027}}));
      connect(trapezoidvoltage1.n,ground1.p) annotation(Line(points = {{-32.2489,-13.6973},{0.282885,-13.6973},{0.282885,-16.8543},{0.565801,-16.8543}}));
      annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    end battery;
    model verbraucher
      extends iboss.buildingblocks.basic;
      import satcomponents.power.dcmodel;
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
    end verbraucher;
  end buildingblocks;
  package satellites
    model generic_sat
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
    end generic_sat;
    model EVS2x2x1
      iboss.buildingblocks.verbraucher bb_verbraucher1 annotation(Placement(visible = true, transformation(origin = {36.7751,-15.2758}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {5.94059,-14.9929}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb_verbraucher2 annotation(Placement(visible = true, transformation(origin = {36.2093,40.7355}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {6.22348,41.0184}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb_verbraucher3 annotation(Placement(visible = true, transformation(origin = {-24.0453,41.867}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, width = 1000, period = 3000, rising = 60, falling = 60) annotation(Placement(visible = true, transformation(origin = {-72.4187,-15.5587}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.buildingblocks.solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-25.1768,-15.5587}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      iboss.components.connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {35.3607,12.7298}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      iboss.components.connectionelement connectionelement4 annotation(Placement(visible = true, transformation(origin = {-25.1768,13.5785}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(trapezoid1.y,bb_solar1.u) annotation(Line(points = {{-59.2187,-15.5587},{-17.8218,-15.5587},{-17.8218,-21.8727},{-17.6747,-21.8727}}));
      connect(connectionelement4.int1,bb_solar1.Xn) annotation(Line(points = {{-24.6337,2.95333},{-25.4597,2.95333},{-25.4597,-3.54886},{-25.1981,-3.54886}}));
      connect(bb_verbraucher3.Yn,connectionelement4.int2) annotation(Line(points = {{-24.0814,30.4323},{-24.0814,24.8939},{-24.6934,24.8939},{-24.6934,24.1276}}));
      connect(bb_verbraucher3.Xp,connectionelement3.int2) annotation(Line(points = {{-12.2826,41.8721},{-3.9604,41.8721},{-3.9604,41.5018},{-4.32566,41.5018}}));
      connect(connectionelement3.int1,bb_verbraucher2.Xn) annotation(Line(points = {{16.8487,41.5615},{24.0453,41.5615},{24.0453,40.7142},{24.1995,40.7142}}));
      connect(connectionelement2.int1,bb_verbraucher1.Yp) annotation(Line(points = {{35.9038,2.10467},{36.2093,2.10467},{36.2093,-3.46421},{36.6168,-3.46421}}));
      connect(bb_verbraucher2.Yn,connectionelement2.int2) annotation(Line(points = {{36.1732,29.3007},{36.1732,23.7624},{35.8441,23.7624},{35.8441,23.279}}));
      connect(connectionelement1.int2,bb_solar1.Yp) annotation(Line(points = {{-4.60855,-14.5095},{-12.447,-14.5095},{-12.447,-15.4004},{-13.3652,-15.4004}}));
      connect(connectionelement1.int1,bb_verbraucher1.Xn) annotation(Line(points = {{16.5658,-14.4498},{24.8939,-14.4498},{24.8939,-15.2971},{24.7653,-15.2971}}));
      annotation(experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001));
    end EVS2x2x1;
    model EVS4x1x1
      iboss.buildingblocks.solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-79.1429,-3.14286}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      iboss.components.connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {-51.1429,-3.42857}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {6.28571,-3.71429}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb_verbraucher1 annotation(Placement(visible = true, transformation(origin = {-22.8571,-2.85714}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb_verbraucher2 annotation(Placement(visible = true, transformation(origin = {34.5714,-2.57143}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb_verbraucher3 annotation(Placement(visible = true, transformation(origin = {90.2857,-2}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      iboss.components.connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {62,-2.85714}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(connectionelement3.int2,bb_verbraucher2.Xp) annotation(Line(points = {{51.4509,-2.37375},{46.5714,-2.37375},{46.5714,-2.5664},{46.3341,-2.5664}}));
      connect(bb_verbraucher3.Xn,connectionelement3.int1) annotation(Line(points = {{78.2759,-2.02126},{73.4286,-2.02126},{73.4286,-2.314},{72.6252,-2.314}}));
      connect(bb_verbraucher2.Xn,connectionelement2.int1) annotation(Line(points = {{22.5616,-2.59269},{16.2857,-2.59269},{16.2857,-3.17115},{16.9109,-3.17115}}));
      connect(bb_verbraucher1.Xn,connectionelement1.int1) annotation(Line(points = {{-34.867,-2.8784},{-40.2857,-2.8784},{-40.2857,-2.88543},{-40.5177,-2.88543}}));
      connect(connectionelement2.int2,bb_verbraucher1.Xp) annotation(Line(points = {{-4.26343,-3.23089},{-11.1429,-3.23089},{-11.1429,-2.85211},{-11.0945,-2.85211}}));
      connect(connectionelement1.int2,bb_solar1.Yp) annotation(Line(points = {{-61.692,-2.94518},{-67.7143,-2.94518},{-67.7143,-2.98456},{-67.3313,-2.98456}}));
    end EVS4x1x1;
    model EVS2x2x3
      iboss.buildingblocks.verbraucher bb9 annotation(Placement(visible = true, transformation(origin = {10.4503,24.8534}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb8 annotation(Placement(visible = true, transformation(origin = {35.0094,25.4955}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb6 annotation(Placement(visible = true, transformation(origin = {9.9688,52.1413}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn19 annotation(Placement(visible = true, transformation(origin = {22.8756,25.3731}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn18 annotation(Placement(visible = true, transformation(origin = {22.8756,51.6978}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb2 annotation(Placement(visible = true, transformation(origin = {-40.594,28.5453}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb3 annotation(Placement(visible = true, transformation(origin = {-65.1531,27.7427}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb4 annotation(Placement(visible = true, transformation(origin = {-65.3136,53.1044}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb5 annotation(Placement(visible = true, transformation(origin = {-41.0755,52.1413}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn16 annotation(Placement(visible = true, transformation(origin = {-52.8884,52.1794}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn17 annotation(Placement(visible = true, transformation(origin = {-53.0489,28.1019}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn9 annotation(Placement(visible = true, transformation(origin = {-16.451,61.4894}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn8 annotation(Placement(visible = true, transformation(origin = {-16.13,48.648}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn7 annotation(Placement(visible = true, transformation(origin = {-16.13,35.3251}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn6 annotation(Placement(visible = true, transformation(origin = {-15.9695,22.1627}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb11 annotation(Placement(visible = true, transformation(origin = {10.7714,-10.7813}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb12 annotation(Placement(visible = true, transformation(origin = {10.4503,-34.3773}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn20 annotation(Placement(visible = true, transformation(origin = {23.3571,-10.9037}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn1 annotation(Placement(visible = true, transformation(origin = {23.6782,-34.6602}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb7 annotation(Placement(visible = true, transformation(origin = {35.3304,52.1413}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb10 annotation(Placement(visible = true, transformation(origin = {35.491,-10.2998}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.buildingblocks.verbraucher bb1 annotation(Placement(visible = true, transformation(origin = {35.9725,-34.5378}, extent = {{-5.08917,-5.08917},{5.08917,5.08917}}, rotation = 0)));
      iboss.components.connectionelement conn12 annotation(Placement(visible = true, transformation(origin = {10.5158,-22.6214}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn13 annotation(Placement(visible = true, transformation(origin = {35.5564,-22.6214}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn15 annotation(Placement(visible = true, transformation(origin = {9.55267,39.9801}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn11 annotation(Placement(visible = true, transformation(origin = {-41.0101,40.7827}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn10 annotation(Placement(visible = true, transformation(origin = {-65.5692,40.6222}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn4 annotation(Placement(visible = true, transformation(origin = {19.8257,6.75313}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn3 annotation(Placement(visible = true, transformation(origin = {32.8276,6.75313}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn14 annotation(Placement(visible = true, transformation(origin = {35.3959,39.1775}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn5 annotation(Placement(visible = true, transformation(origin = {6.66337,6.59262}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.components.connectionelement conn2 annotation(Placement(visible = true, transformation(origin = {45.0269,7.07417}, extent = {{-5.08917,5.08917},{5.08917,-5.08917}}, rotation = -90)));
      iboss.buildingblocks.solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-31.0183,-10.1803}, extent = {{5.08917,5.08917},{-5.08917,-5.08917}}, rotation = -180)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, width = 1000, period = 3000, rising = 60, falling = 60) annotation(Placement(visible = true, transformation(origin = {-68.528,-10.1063}, extent = {{-4.20593,-4.20593},{4.20593,4.20593}}, rotation = 0)));
      iboss.components.connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {-11.0535,-10.7081}, extent = {{-6.77369,-6.77369},{6.77369,6.77369}}, rotation = 0)));
    equation
      connect(connectionelement1.int1,bb11.Xn) annotation(Line(points = {{-5.05591,-10.4015},{5.52677,-10.4015},{5.52677,-10.7903},{5.67806,-10.7903}}));
      connect(bb_solar1.Xn,connectionelement1.int2) annotation(Line(points = {{-25.925,-10.1712},{-17.6166,-10.1712},{-17.6166,-10.4353},{-17.0083,-10.4353}}));
      connect(trapezoid1.y,bb_solar1.u) annotation(Line(points = {{-63.9015,-10.1063},{-42.4665,-10.1063},{-42.4665,-10.1425},{-42.2811,-10.1425}}));
      connect(conn2.int1,bb1.Zn) annotation(Line(points = {{45.2572,2.56806},{45.4263,2.56806},{45.4263,-37.5609},{39.0843,-37.5609},{39.0843,-37.6733}}));
      connect(conn3.int1,bb10.Zn) annotation(Line(points = {{33.058,2.24703},{33.227,2.24703},{33.227,-3.37085},{29.0535,-3.37085},{29.0535,-16.2122},{38.6845,-16.2122},{38.6845,-13.4352},{38.6027,-13.4352}}));
      connect(conn4.int1,bb12.Zn) annotation(Line(points = {{20.0561,2.24703},{19.9041,2.24703},{19.9041,-3.69189},{16.6937,-3.69189},{16.6937,-37.5609},{13.5621,-37.5609},{13.5621,-37.5127}}));
      connect(conn5.int1,bb11.Zn) annotation(Line(points = {{6.89371,2.08651},{6.90222,2.08651},{6.90222,-3.04982},{2.08672,-3.04982},{2.08672,-16.0517},{13.6439,-16.0517},{13.6439,-13.9168},{13.8831,-13.9168}}));
      connect(conn2.int2,bb8.Zn) annotation(Line(points = {{45.2319,11.548},{44.7842,11.548},{44.7842,15.4096},{38.203,15.4096},{38.203,22.36},{38.1212,22.36}}));
      connect(conn3.int2,bb7.Zn) annotation(Line(points = {{33.0326,11.227},{33.227,11.227},{33.227,18.7805},{45.9078,18.7805},{45.9078,49.1181},{38.4422,49.1181},{38.4422,49.0058}}));
      connect(conn4.int2,bb9.Zn) annotation(Line(points = {{20.0308,11.227},{19.7436,11.227},{19.7436,15.4096},{13.6439,15.4096},{13.6439,21.718},{13.5621,21.718}}));
      connect(conn5.int2,bb6.Zn) annotation(Line(points = {{6.86838,11.0665},{6.90222,11.0665},{6.90222,16.3727},{2.56827,16.3727},{2.56827,46.3894},{13.0019,46.3894},{13.0019,49.0058},{13.0805,49.0058}}));
      connect(conn7.int1,bb8.Zp) annotation(Line(points = {{-11.6239,35.5555},{1.76568,35.5555},{1.76568,32.4244},{31.9428,32.4244},{31.9428,28.6009},{31.9162,28.6009}}));
      connect(conn6.int1,bb9.Zp) annotation(Line(points = {{-11.4634,22.3931},{0.321034,22.3931},{0.321034,27.7694},{7.35708,27.7694},{7.35708,27.9589}}));
      connect(conn9.int1,bb7.Zp) annotation(Line(points = {{-11.9449,61.7197},{32.4244,61.7197},{32.4244,55.2467},{32.2372,55.2467}}));
      connect(conn8.int1,bb6.Zp) annotation(Line(points = {{-11.6239,48.8784},{-4.01292,48.8784},{-4.01292,55.3783},{6.87553,55.3783},{6.87553,55.2467}}));
      connect(bb3.Zn,conn6.int2) annotation(Line(points = {{-62.0413,24.6073},{-62.2805,24.6073},{-62.2805,19.262},{-27.4484,19.262},{-27.4484,22.4724},{-20.4434,22.4724},{-20.4434,22.3678}}));
      connect(bb4.Zn,conn8.int2) annotation(Line(points = {{-62.2018,49.9689},{-58.7491,49.9689},{-58.7491,46.3894},{-25.0406,46.3894},{-25.0406,48.7971},{-20.6039,48.7971},{-20.6039,48.853}}));
      connect(bb2.Zn,conn7.int2) annotation(Line(points = {{-37.4822,25.4098},{-27.2879,25.4098},{-27.2879,35.6347},{-20.6039,35.6347},{-20.6039,35.5301}}));
      connect(bb5.Zn,conn9.int2) annotation(Line(points = {{-37.9638,49.0058},{-29.8561,49.0058},{-29.8561,61.4779},{-20.9249,61.4779},{-20.9249,61.6944}}));
      connect(bb12.Yp,conn12.int1) annotation(Line(points = {{10.3832,-29.368},{10.3832,-27.1273},{10.7461,-27.1273},{10.7461,-27.1275}}));
      connect(conn1.int2,bb12.Xp) annotation(Line(points = {{19.2043,-34.4552},{15.5701,-34.4552},{15.5701,-34.3752},{15.4389,-34.3752}}));
      connect(bb1.Xn,conn1.int1) annotation(Line(points = {{30.8792,-34.5468},{28.0904,-34.5468},{28.0904,-34.4299},{28.1843,-34.4299}}));
      connect(conn13.int1,bb1.Yp) annotation(Line(points = {{35.7867,-27.1275},{35.7952,-27.1275},{35.7952,-29.5285},{35.9054,-29.5285}}));
      connect(bb10.Yn,conn13.int2) annotation(Line(points = {{35.4756,-15.1492},{35.4756,-18.1384},{35.7614,-18.1384},{35.7614,-18.1476}}));
      connect(conn20.int1,bb10.Xn) annotation(Line(points = {{27.8632,-10.6734},{30.4982,-10.6734},{30.4982,-10.3088},{30.3976,-10.3088}}));
      connect(bb11.Xp,conn20.int2) annotation(Line(points = {{15.7599,-10.7792},{18.6199,-10.7792},{18.6199,-10.6987},{18.8833,-10.6987}}));
      connect(bb11.Yn,conn12.int2) annotation(Line(points = {{10.7561,-15.6308},{10.7561,-18.1384},{10.7208,-18.1384},{10.7208,-18.1476}}));
      connect(bb9.Yp,conn15.int1) annotation(Line(points = {{10.3832,29.8627},{10.3832,35.3137},{9.78302,35.3137},{9.78302,35.474}}));
      connect(conn19.int2,bb9.Xp) annotation(Line(points = {{18.4017,25.5781},{15.5701,25.5781},{15.5701,24.8555},{15.4389,24.8555}}));
      connect(bb8.Xn,conn19.int1) annotation(Line(points = {{29.9161,25.4864},{27.6089,25.4864},{27.6089,25.6034},{27.3817,25.6034}}));
      connect(conn14.int1,bb8.Yp) annotation(Line(points = {{35.6262,34.6714},{35.1532,34.6714},{35.1532,30.5047},{34.9423,30.5047}}));
      connect(bb7.Yn,conn14.int2) annotation(Line(points = {{35.3151,47.2918},{35.3151,43.6606},{35.6009,43.6606},{35.6009,43.6514}}));
      connect(conn18.int1,bb7.Xn) annotation(Line(points = {{27.3817,51.9282},{29.8561,51.9282},{29.8561,52.1322},{30.2371,52.1322}}));
      connect(bb6.Xp,conn18.int2) annotation(Line(points = {{14.9573,52.1434},{18.2989,52.1434},{18.2989,51.9028},{18.4017,51.9028}}));
      connect(bb6.Yn,conn15.int2) annotation(Line(points = {{9.95348,47.2918},{9.95348,44.7842},{9.75768,44.7842},{9.75768,44.454}}));
      connect(bb4.Xp,conn16.int2) annotation(Line(points = {{-60.3251,53.1065},{-57.6255,53.1065},{-57.6255,52.3844},{-57.3622,52.3844}}));
      connect(conn10.int2,bb4.Yn) annotation(Line(points = {{-65.3642,45.096},{-65.4909,45.096},{-65.4909,48.2549},{-65.3289,48.2549}}));
      connect(bb3.Yp,conn10.int1) annotation(Line(points = {{-65.2202,32.752},{-65.2202,35.9558},{-65.3388,35.9558},{-65.3388,36.1161}}));
      connect(conn17.int2,bb3.Xp) annotation(Line(points = {{-57.5227,28.3069},{-60.1938,28.3069},{-60.1938,27.7448},{-60.1645,27.7448}}));
      connect(bb2.Xn,conn17.int1) annotation(Line(points = {{-45.6873,28.5363},{-48.155,28.5363},{-48.155,28.3322},{-48.5428,28.3322}}));
      connect(conn11.int1,bb2.Yp) annotation(Line(points = {{-40.7798,36.2766},{-40.9318,36.2766},{-40.9318,33.5545},{-40.6611,33.5545}}));
      connect(bb5.Yn,conn11.int2) annotation(Line(points = {{-41.0909,47.2918},{-41.0909,45.1052},{-40.8051,45.1052},{-40.8051,45.2566}}));
      connect(conn16.int1,bb5.Xn) annotation(Line(points = {{-48.3823,52.4097},{-46.0683,52.4097},{-46.0683,52.1322},{-46.1689,52.1322}}));
      annotation(experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001));
    end EVS2x2x3;
  end satellites;
end iboss;

