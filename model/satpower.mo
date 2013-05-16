package satpower
  package batteries
    model battery
      /*todo Batteriemodell ist noch "ungenau" z.B. beim Einschalten fällt die Spannung temporär, Hitzeentwicklung usw...*/
      extends Modelica.Electrical.Analog.Interfaces.TwoPin;
      Real soc(start = 1.0) "State of Charge";
      Real SOD "State of Discharge";
      parameter Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah capacity_Ah = 2.0;
      Modelica.SIunits.Current i;
      parameter Modelica.SIunits.Voltage Vnominal = 4.0;
      parameter Real pi = 3.14159265359;
      Modelica.Electrical.Analog.Sources.SignalVoltage voltage annotation(Placement(visible = true, transformation(origin = {46.2642,-2.33333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor R_i(R = 0.005) annotation(Placement(visible = true, transformation(origin = {-8.22564,-1.68554}, extent = {{10,-10},{-10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor R_t(R = 0.02) annotation(Placement(visible = true, transformation(origin = {-44.9121,9.39283}, extent = {{10,-10},{-10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Capacitor C_t(C = 100) annotation(Placement(visible = true, transformation(origin = {-44.4021,-19.4913}, extent = {{10,-10},{-10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor R_overload annotation(Placement(visible = true, transformation(origin = {44.9904,34.3674}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    protected
      parameter Modelica.SIunits.ElectricCharge capacity = capacity_Ah * 3600;
    equation
      connect(R_overload.n,voltage.n) annotation(Line(points = {{54.9904,34.3674},{56,34.3674},{56,-2},{56,-2}}));
      connect(R_overload.p,voltage.p) annotation(Line(points = {{34.9904,34.3674},{36.3333,34.3674},{36.3333,-2},{36.3333,-2}}));
      connect(voltage.n,n) annotation(Line(points = {{56.2642,-2.33333},{99,-2.33333},{99,-0.333333},{99,-0.333333}}));
      connect(R_i.p,voltage.p) annotation(Line(points = {{3.10769,-4.3522},{36,-4.3522},{36,-2.33333},{36,-2.33333}}));
      connect(R_t.p,R_i.n) annotation(Line(points = {{-34.9121,9.39283},{-34.3333,9.39283},{-34.3333,-4.66667},{-16.6667,-4.66667},{-16.6667,-4.66667}}));
      connect(R_t.p,C_t.p) annotation(Line(points = {{-34.9121,9.39283},{-34.3333,9.39283},{-34.3333,-19.3333},{-34.3333,-19.3333}}));
      connect(p,C_t.n) annotation(Line(points = {{-100,0},{-54.3333,0},{-54.3333,-19.3333},{-54.3333,-19.3333}}));
      connect(p,R_t.n) annotation(Line(points = {{-100,0},{-55,0},{-55,9.33333},{-55,9.33333}}));
      R_overload.R = 100000.0 / (1 + exp(-100.0 * SOD));
      i = voltage.i;
      der(soc) = voltage.i / capacity;
      SOD = 1 - soc;
      voltage.v = Vnominal * (1 - SOD * 0.35 - 0.025 * sin(SOD * 2 * pi)) * (1 - 1 / (1 + exp(-100 * (SOD - 1))));
      /*exp-fucntion: logistic function*/
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {1,1}), graphics = {Line(points = {{-90,0},{-10,0}}, color = {0,0,255}),Line(points = {{-10,60},{-10,-60}}, color = {0,0,255}),Line(points = {{0,30},{0,-30}}, color = {0,0,255}),Line(points = {{0,0},{90,0}}, color = {0,0,255}),Text(extent = {{-150,-112},{150,-72}}, textString = "%capacity_Ah Ah", lineColor = {0,0,255}),Text(extent = {{-120,50},{-20,0}}, lineColor = {0,0,255}, textString = "+"),Text(extent = {{20,50},{120,0}}, lineColor = {0,0,255}, textString = "-")}), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.0001));
    end battery;
    model batteriekennlinie
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-16.0598,-43.6034}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {24.4165,-5.74506}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      batteries.battery battery1 annotation(Placement(visible = true, transformation(origin = {-59.605,-3.68024}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      Modelica.Blocks.Sources.Constant const(k = 5) annotation(Placement(visible = true, transformation(origin = {45.8043,45.7362}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    equation
      connect(battery1.p,variableresistor1.p) annotation(Line(points = {{-59.605,6.31976},{-59.605,20.8259},{24.4165,20.8259},{24.4165,4.66786},{24.4165,4.66786}}));
      connect(const.y,variableresistor1.R) annotation(Line(points = {{56.8043,45.7362},{66.0682,45.7362},{66.0682,-5.386},{36.2657,-5.386},{36.2657,-5.386}}));
      connect(ground1.p,battery1.n) annotation(Line(points = {{-16.0598,-33.6034},{-59.605,-33.6034},{-59.605,-15.386},{-59.605,-13.6802}}));
      connect(variableresistor1.n,ground1.p) annotation(Line(points = {{24.4165,-15.7451},{24.4165,-33.3932},{-16.5171,-33.3932},{-16.5171,-33.3932}}));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.0001));
    end batteriekennlinie;
    block Exprgenerator "Generate exponential signal"
      import Modelica.Blocks.Interfaces;
      parameter Real alpha = 1;
      parameter Real beta = 1;
      extends Interfaces.SO;
    equation
      //y = alpha * exp(beta * time);exp function
      y = exp(alpha * time) - 1;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
    end Exprgenerator;
    model Akkuaufladung
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-11.3919,-34.9858}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      batteries.battery battery1(soc(start = 1)) annotation(Placement(visible = true, transformation(origin = {-54.9371,4.93735}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 6) annotation(Placement(visible = true, transformation(origin = {30.5206,5.02693}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    equation
      connect(constantvoltage1.p,battery1.p) annotation(Line(points = {{30.5206,15.0269},{30.5206,30.8797},{-55.2962,30.8797},{-55.2962,14.7217},{-55.2962,14.7217}}));
      connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{-11.3919,-24.9858},{30.1616,-24.9858},{30.1616,-5.02693},{30.1616,-5.02693}}));
      connect(ground1.p,battery1.n) annotation(Line(points = {{-11.3919,-24.9858},{-55.2962,-24.6268},{-54.9371,-6.76841},{-54.9371,-5.06261}}));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.0001));
    end Akkuaufladung;
    model Pulsverhalten
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-11.3919,-34.9858}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      batteries.battery battery1(capacity_Ah = 2) annotation(Placement(visible = true, transformation(origin = {-54.9371,4.93735}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.5) annotation(Placement(visible = true, transformation(origin = {24.4165,2.51346}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealclosingswitch1 annotation(Placement(visible = true, transformation(origin = {-10.4129,32.675}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Blocks.Sources.BooleanPulse booleanpulse1(period = 200, width = 80) annotation(Placement(visible = true, transformation(origin = {-56.7325,72.1724}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    equation
      connect(booleanpulse1.y,idealclosingswitch1.control) annotation(Line(points = {{-45.7325,72.1724},{-10.4129,72.1724},{-10.4129,40.2154},{-10.4129,40.2154}}));
      connect(idealclosingswitch1.p,battery1.p) annotation(Line(points = {{-20.4129,32.675},{-54.219,32.675},{-54.219,14.7217},{-54.219,14.7217}}));
      connect(idealclosingswitch1.n,resistor1.p) annotation(Line(points = {{-0.412926,32.675},{24.7756,32.675},{24.7756,12.5673},{24.7756,12.5673}}));
      connect(resistor1.n,ground1.p) annotation(Line(points = {{24.4165,-7.48654},{24.4165,-24.7756},{-11.1311,-24.7756},{-11.1311,-24.7756}}));
      connect(ground1.p,battery1.n) annotation(Line(points = {{-11.3919,-24.9858},{-55.2962,-24.6268},{-54.9371,-6.76841},{-54.9371,-5.06261}}));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 4000.0, Tolerance = 0.0001));
    end Pulsverhalten;
  end batteries;
  // CP: 65001
  // SimulationX Version: 3.5.706.23 x64
  package solar_power
    model solarcell_simple_characteristic_lightconditions
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {11.7392,13.6853}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(rising = 5, width = 1000, falling = 5, period = 3000) annotation(Placement(visible = true, transformation(origin = {-84.2999,38.4724}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      solar_power.solarcell_simple solarcell_simple2(Maxexp = 16, R_sh = 10) annotation(Placement(visible = true, transformation(origin = {-42.562,39.2562}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {29.375,41.875}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(trapezoid1.y,solarcell_simple2.E_s) annotation(Line(points = {{-71.0999,38.4724},{-52.0509,38.4724},{-52.0509,39.1041},{-51.0818,39.1041}}));
      connect(resistor1.p,solarcell_simple2.n) annotation(Line(points = {{29.375,53.875},{-42.8125,53.875},{-42.8125,51.2562},{-42.562,51.2562}}));
      connect(ground1.p,resistor1.n) annotation(Line(points = {{11.7392,25.6853},{11.7392,29.6875},{29.0625,29.6875},{29.0625,29.875},{29.375,29.875}}));
      connect(solarcell_simple2.p,ground1.p) annotation(Line(points = {{-42.562,27.2562},{11.9835,27.2562},{11.9835,25.6853},{11.7392,25.6853}}));
      annotation(experiment(StartTime = 0.0, StopTime = 11000, Tolerance = 0.000001));
    end solarcell_simple_characteristic_lightconditions;
    model diode_characteristic
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-27.5819,-19.9781}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Semiconductors.Diode diode1(Vt = 2.25) annotation(Placement(visible = true, transformation(origin = {-31.4003,42.1499}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 100, duration = 1) annotation(Placement(visible = true, transformation(origin = {-71.57,17.5389}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.001) annotation(Placement(visible = true, transformation(origin = {3.11174,22.3479}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(resistor1.n,ground1.p) annotation(Line(points = {{3.11174,10.3479},{-27.4399,10.3479},{-27.4399,-7.97807},{-27.5819,-7.97807}}));
      connect(diode1.n,resistor1.p) annotation(Line(points = {{-19.4003,42.1499},{2.54597,42.1499},{2.54597,34.3479},{3.11174,34.3479}}));
      connect(diode1.p,rampvoltage1.p) annotation(Line(points = {{-43.4003,42.1499},{-71.2871,42.1499},{-71.2871,29.5389},{-71.57,29.5389}}));
      connect(rampvoltage1.n,ground1.p) annotation(Line(points = {{-71.57,5.5389},{-27.4399,5.5389},{-27.4399,-7.97807},{-27.5819,-7.97807}}));
    end diode_characteristic;
    block Exprgenerator "Generate exponential signal"
      import Modelica.Blocks.Interfaces;
      parameter Real alpha = 1;
      parameter Real beta = 1;
      extends Interfaces.SO;
    equation
      //y = alpha * exp(beta * time);exp function
      y = exp(alpha * time) - 1;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
    end Exprgenerator;
    model solarcell_characteristic
      extends Modelica.Icons.Example;
      Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {38.5987,-59.042}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763,52.0374}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {38.1913,52.3255}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-28.7743,52.5267}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    equation
      connect(const.y,solarcell1.E_s) annotation(Line(points = {{-59.6763,52.0374},{-37.6033,52.0374},{-37.6033,52.3746},{-37.2941,52.3746}}));
      connect(exprgenerator1.y,variableresistor1.R) annotation(Line(points = {{66.5825,-42.6184},{72.161,-42.6184},{72.161,52.657},{51.3913,52.657},{51.3913,52.3255}}));
      connect(solarcell1.p,variableresistor1.n) annotation(Line(points = {{-28.7743,40.5267},{38.4298,40.5267},{38.4298,40.3255},{38.1913,40.3255}}));
      connect(variableresistor1.n,ground1.p) annotation(Line(points = {{38.1913,40.3255},{38.5525,40.3255},{38.5525,-47.042},{38.5987,-47.042}}));
      connect(solarcell1.n,variableresistor1.p) annotation(Line(points = {{-28.7743,64.5267},{37.9867,64.5267},{37.9867,64.3255},{38.1913,64.3255}}));
      annotation(experiment(StopTime = 1), Diagram, Icon);
    end solarcell_characteristic;
    model solarcell_characteristicV
      extends Modelica.Icons.Example;
      Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(visible = true, transformation(origin = {-72.8763,52.0374}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-3.55006,5.00759}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = -100) annotation(Placement(visible = true, transformation(origin = {35.9504,66.5289}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 300, duration = 1) annotation(Placement(visible = true, transformation(origin = {59.5041,54.9587}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-37.6033,52.8926}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    equation
      connect(solarcell_simple1.n,constantvoltage1.p) annotation(Line(points = {{-37.6033,64.8926},{-37.9066,64.8926},{-37.9066,66.4781},{23.9504,66.4781},{23.9504,66.5289}}));
      connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-37.6033,40.8926},{-3.71901,40.8926},{-3.71901,17.0076},{-3.55006,17.0076}}));
      connect(constantvoltage1.n,rampvoltage1.p) annotation(Line(points = {{47.9504,66.5289},{59.5041,66.5289},{59.5041,66.9587},{59.5041,66.9587}}));
      connect(ground1.p,rampvoltage1.n) annotation(Line(points = {{-3.55006,17.0076},{-3.55006,40.4959},{59.5041,40.4959},{59.5041,42.9587}}));
      annotation(experiment(StopTime = 1), Diagram, Icon);
    end solarcell_characteristicV;
    model solarcell_charactristic2
      extends Modelica.Icons.Example;
      Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {54.2395,64.7477}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {14.5514,-18.3734}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {15.2695,21.2575}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-23.9521,27.8443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 5, width = 2000, period = 5000, falling = 5, offset = 0) annotation(Placement(visible = true, transformation(origin = {-82.3197,-20.3677}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {-50.3989,7.63791}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {55.2928,6.2722}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-25.1497,-7.48503}, extent = {{12,12},{-12,-12}}, rotation = -180)));
    equation
      connect(trapezoid1.y,solarcell1.E_s) annotation(Line(points = {{-69.1197,-20.3677},{-59.6888,-20.3677},{-59.6888,7.48577},{-58.9187,7.48577}}));
      connect(const.y,variableresistor1.R) annotation(Line(points = {{67.4395,64.7477},{83.4512,64.7477},{83.4512,6.22348},{68.4928,6.22348},{68.4928,6.2722}}));
      connect(dcdc_ideal_simple1.n2,ground1.p) annotation(Line(points = {{27.2695,15.2575},{27.157,15.2575},{27.157,4.24328},{14.1443,4.24328},{14.1443,-6.3734},{14.5514,-6.3734}}));
      connect(dcdc_ideal_simple1.n1,ground1.p) annotation(Line(points = {{3.2695,15.2575},{3.11174,15.2575},{3.11174,4.24328},{14.1443,4.24328},{14.1443,-6.3734},{14.5514,-6.3734}}));
      connect(resistor2.n,solarcell1.p) annotation(Line(points = {{-37.1497,-7.48503},{-50.3536,-7.48503},{-50.3536,-4.36209},{-50.3989,-4.36209}}));
      connect(ground1.p,resistor2.p) annotation(Line(points = {{14.5514,-6.3734},{14.5514,-7.35502},{-13.1497,-7.35502},{-13.1497,-7.48503}}));
      connect(variableresistor1.n,ground1.p) annotation(Line(points = {{55.2928,-5.7278},{14.71,-5.7278},{14.71,-6.3734},{14.5514,-6.3734}}));
      connect(dcdc_ideal_simple1.p2,variableresistor1.p) annotation(Line(points = {{27.2695,27.2575},{55.7284,27.2575},{55.7284,18.2722},{55.2928,18.2722}}));
      connect(resistor1.n,dcdc_ideal_simple1.p1) annotation(Line(points = {{-11.9521,27.8443},{2.82885,27.8443},{2.82885,27.2575},{3.2695,27.2575}}));
      connect(solarcell1.n,resistor1.p) annotation(Line(points = {{-50.3989,19.6379},{-50.3536,19.6379},{-50.3536,28.0057},{-35.9521,28.0057},{-35.9521,27.8443}}));
    end solarcell_charactristic2;
    model solarcell_dcdccharactristic3
      extends Modelica.Icons.Example;
      Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {54.2395,64.7477}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-23.9521,27.8443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {16.9731,22.0651}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {55.2928,6.2722}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-25.1497,-7.48503}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-66.5289,11.5702}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 100, width = 1500, falling = 100, period = 5000) annotation(Placement(visible = true, transformation(origin = {-107.333,11.6667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {7.3041,-27.5606}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(resistor2.n,ground1.p) annotation(Line(points = {{-13.1497,-7.48503},{7.33333,-7.48503},{7.33333,-15},{7.33333,-15}}));
      connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-96.3333,11.6667},{-76,11.6667},{-76,11.6667},{-76,11.6667}}));
      connect(solarcell_simple1.p,resistor2.n) annotation(Line(points = {{-66.5289,-0.429752},{-66.5289,-0.429752},{-66.5289,-7.02479},{-37.1497,-7.02479},{-37.1497,-7.48503}}));
      connect(solarcell_simple1.n,resistor1.p) annotation(Line(points = {{-66.5289,23.5702},{-67.3554,23.5702},{-67.3554,27.686},{-35.9521,27.686},{-35.9521,27.8443}}));
      connect(dcdc_ideal_simple1.n1,resistor2.p) annotation(Line(points = {{4.97313,16.0651},{4.80905,16.0651},{4.80905,-7.35502},{-13.1497,-7.35502},{-13.1497,-7.48503}}));
      connect(dcdc_ideal_simple1.n2,dcdc_ideal_simple1.n1) annotation(Line(points = {{28.9731,16.0651},{29.1372,16.0651},{29.1372,5.94059},{4.80905,5.94059},{4.80905,16.0651},{4.97313,16.0651}}));
      connect(dcdc_ideal_simple1.p2,variableresistor1.p) annotation(Line(points = {{28.9731,28.0651},{54.8798,28.0651},{54.8798,18.2722},{55.2928,18.2722}}));
      connect(resistor1.n,dcdc_ideal_simple1.p1) annotation(Line(points = {{-11.9521,27.8443},{4.24328,27.8443},{4.24328,28.0651},{4.97313,28.0651}}));
      connect(resistor2.p,variableresistor1.n) annotation(Line(points = {{-13.1497,-7.48503},{55.4455,-7.48503},{55.4455,-5.7278},{55.2928,-5.7278}}));
      connect(const.y,variableresistor1.R) annotation(Line(points = {{67.4395,64.7477},{83.4512,64.7477},{83.4512,6.22348},{68.4928,6.22348},{68.4928,6.2722}}));
      annotation(experiment(StartTime = 0.0, StopTime = 11111.0, Tolerance = 0.000001));
    end solarcell_dcdccharactristic3;
    model solarcell
      import Modelica.SIunits;
      import Modelica.Constants.*;
      import Modelica.Blocks.*;
      parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage";
      parameter SIunits.CurrentDensity I_sc = 168 "[A/mÂ²] Short Circuit Current on Earth using solar Constant of ";
      parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage";
      parameter SIunits.CurrentDensity I_mp = 160 "[A/mÂ²] Maximum Powerpoint Current";
      parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cmÂ²";
      parameter Real N_p = 100.0 "Numper of parallel solar cells per string";
      parameter Real N_s = 25.0 "Number of series-connected solar cells per string";
      parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation.";
      SIunits.CurrentDensity I_sc_actual;
      Real C_a = (V_mp / V_oc - 1) / log(1 - I_mp / I_sc);
      Real C_b = (1 - I_mp / I_sc) * exp(-V_mp / (C_a * V_oc));
      constant Real E0(final quantity = "Power", final unit = "W") = 1367.0 "Solarkonstante";
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      Modelica.Blocks.Interfaces.RealInput E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(visible = true, transformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    protected
      SIunits.Voltage V_Sperr = 20;
      Real alpha = I_sc_actual * A_cell * N_p * (1 - C_b * (exp(-V_Sperr / (C_a * V_oc * N_s)) - 1));
    equation
      I_sc_actual = (I_sc * E_s) / E0;
      i = noEvent(if v < V_Sperr then I_sc_actual * A_cell * N_p * (1 - C_b * (exp(-v / (C_a * V_oc * N_s)) - 1)) else alpha + (v - V_Sperr) * 3);
      //i=10.0-0.01*(exp(v)-1);
      annotation(Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{76.9449,-20.3678},{76.9449,-52.6167}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{63.3664,-35.6436},{90.2405,-35.6436}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-92.2207,-34.512},{-66.4781,-34.512}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), Diagram);
    end solarcell;
    model solarcell_simple_characteristic
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(transformation(origin = {11.7392,13.6853}, extent = {{-12,-12},{12,12}})));
      Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(transformation(origin = {42.6838,13.9932}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}})));
      Modelica.Blocks.Sources.Constant const(k = 1367) annotation(Placement(transformation(origin = {-81.875,39.0625}, extent = {{-12,-12},{12,12}})));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(transformation(origin = {38.1913,52.3255}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      solar_power.solarcell_simple solarcell_simple2(N_p = 50, Maxexp = 16, R_sh = 10) annotation(Placement(transformation(origin = {-42.562,39.2562}, extent = {{12,-12},{-12,12}}, rotation = 90)));
    equation
      connect(solarcell_simple2.n,variableresistor1.p) annotation(Line(points = {{-42.562,51.2562},{-43.2815,51.2562},{-43.2815,65.0636},{38.1913,65.0636},{38.1913,64.3255}}));
      connect(const.y,solarcell_simple2.E_s) annotation(Line(points = {{-68.675,39.0625},{-51.25,39.0625},{-51.25,39.1041},{-51.0818,39.1041}}));
      connect(solarcell_simple2.p,ground1.p) annotation(Line(points = {{-42.562,27.2562},{11.9835,27.2562},{11.9835,25.6853},{11.7392,25.6853}}));
      connect(variableresistor1.R,exprgenerator1.y) annotation(Line(points = {{51.3913,52.3255},{51.3913,51.6529},{79.3388,51.6529},{79.3388,13.6364},{50.88,13.6364},{50.88,13.9932}}));
      connect(variableresistor1.n,ground1.p) annotation(Line(points = {{38.1913,40.3255},{11.5702,40.3255},{11.5702,25.6853},{11.7392,25.6853}}));
      annotation(variableresistor1(v(flags = 2), i(flags = 2)), experiment(StopTime = 1, StartTime = 0));
    end solarcell_simple_characteristic;
    model solarcell_simple
      import Modelica.SIunits;
      import Modelica.Constants.*;
      import Modelica.Blocks.*;
      extends Modelica.Electrical.Analog.Interfaces.TwoPin;
      parameter Real N_p = 100.0 "Numper of parallel solar cells per string" annotation(Placement(transformation(origin = {68.595,65.2893}, extent = {{-12,-12},{12,12}})));
      parameter Real A_cell(quantity = "Area", unit = "m2") = 0.0026 "Active area of the solar cell in cm2" annotation(Placement(transformation(origin = {71.4876,69.4215}, extent = {{-12,-12},{12,12}})));
      parameter SIunits.CurrentDensity I_mp = 160 "[A/m2] Maximum Powerpoint Current" annotation(Placement(transformation(origin = {65.7025,64.4628}, extent = {{-12,-12},{12,12}})));
      parameter SIunits.Voltage V_mp = 2.277 "Maxium Powerpoint Voltage" annotation(Placement(transformation(origin = {65.2893,57.0248}, extent = {{-12,-12},{12,12}})));
      parameter SIunits.CurrentDensity I_sc = 168 "[A/m2] Short Circuit Current on Earth using solar Constant of " annotation(Placement(transformation(origin = {63.6364,58.2645}, extent = {{-12,-12},{12,12}})));
      parameter SIunits.Voltage V_oc = 2.565 "open circuit voltage" annotation(Placement(transformation(origin = {69.0083,71.9008}, extent = {{-12,-12},{12,12}})));
      constant Real E0(final quantity = "Power", final unit = "W") = 1367.0 "Solarkonstante" annotation(Placement(transformation(origin = {65.7025,66.1157}, extent = {{-12,-12},{12,12}})));
      SIunits.CurrentDensity i_sc_actual annotation(Placement(transformation(origin = {65.7025,66.1157}, extent = {{-12,-12},{12,12}})));
      parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation." annotation(Placement(transformation(origin = {68.1818,62.3967}, extent = {{-12,-12},{12,12}})));
      parameter Real N_s = 25.0 "Number of series-connected solar cells per string" annotation(Placement(transformation(origin = {69.8347,63.2231}, extent = {{-12,-12},{12,12}})));
      SIunits.Current i_sc = A_cell * N_p * I_sc annotation(Placement(transformation(origin = {69.4215,67.7686}, extent = {{-12,-12},{12,12}})));
      parameter Real Maxexp = 17 "Maximum exponent" annotation(Placement(transformation(origin = {61.3861,65.9123}, extent = {{-12,-12},{12,12}})));
      parameter SIunits.Resistance R_sh = 10000 annotation(Placement(transformation(origin = {62.5177,58.2744}, extent = {{-12,-12},{12,12}})));
      SIunits.Current i annotation(Placement(transformation(origin = {65.6294,64.4979}, extent = {{-12,-12},{12,12}})));
      Modelica.Electrical.Analog.Sources.SignalCurrent I_photonic annotation(Placement(transformation(origin = {-43,3}, extent = {{12,-12},{-12,12}}, rotation = -90)));
      Modelica.Electrical.Analog.Semiconductors.Diode D_shunt(Vt = (N_s * V_oc) / log(I_sc / Ids + 1), Maxexp = Maxexp) annotation(Placement(transformation(origin = {-13,3}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor R_shunt(R = R_sh) annotation(Placement(transformation(origin = {22,3}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      input Modelica.Blocks.Interfaces.RealInput E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(transformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor R_series(R = 0.00001) annotation(Placement(visible = true, transformation(origin = {58,0.666666}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    protected
      parameter SIunits.CurrentDensity Ids = 0.000001 "Diode Saturation Current" annotation(Placement(transformation(origin = {66.1952,63.0834}, extent = {{-12,-12},{12,12}})));
    equation
      connect(R_series.n,n) annotation(Line(points = {{70,0.666666},{79,0.666666},{95,-2},{95,0},{100,0}}, thickness = 0.0625));
      connect(R_shunt.p,R_series.p) annotation(Line(points = {{22,15},{22,20},{45,20},{46,-2},{46,0.666666}}, thickness = 0.0625));
      i = n.i;
      i_sc_actual = (i_sc * E_s) / E0;
      I_photonic.i = i_sc_actual;
    equation
      connect(I_photonic.p,D_shunt.n) annotation(Line(points = {{-43,-9},{-43,-14},{-13,-14},{-13,-9}}, thickness = 0.0625));
      connect(D_shunt.n,R_shunt.n) annotation(Line(points = {{-13,-9},{-13,-14},{22,-14},{22,-9}}, thickness = 0.0625));
      connect(R_shunt.p,R_series.p) annotation(Line(points = {{22,15},{22,20},{45,20},{45,-2},{50,-2}}, thickness = 0.0625));
      connect(R_series.n,n) annotation(Line(points = {{74,-2},{79,-2},{95,-2},{95,0},{100,0}}, thickness = 0.0625));
      connect(R_shunt.p,D_shunt.p) annotation(Line(points = {{22,15},{22,20},{-13,20},{-13,15}}, thickness = 0.0625));
      connect(D_shunt.p,I_photonic.n) annotation(Line(points = {{-13,15},{-13,20},{-43,20},{-43,15}}, thickness = 0.0625));
      connect(I_photonic.p,p) annotation(Line(points = {{-43,-9},{-43,-14},{-69,-14},{-69,0},{-95,0},{-100,0}}, thickness = 0.0625));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}), graphics = {Ellipse(fillColor = {0,0,255}, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}),Line(points = {{76.9449,-20.3678},{76.9449,-52.6167}}),Line(points = {{63.3664,-35.6436},{90.2405,-35.6436}}),Line(points = {{-92.2207,-34.512},{-66.4781,-34.512}})}), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}})), experiment(StopTime = 1, StartTime = 0));
    end solarcell_simple;
  end solar_power;
  package dcmodel
    model dcdc_characteristic
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-36.7751,-39.8868}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k1 = -1) annotation(Placement(visible = true, transformation(origin = {65.6294,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Ramp ramp1(height = 10, duration = 1) annotation(Placement(visible = true, transformation(origin = {22.9137,69.3069}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {22.9138,35.9265}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 6.5, V_in_max = 100) annotation(Placement(visible = true, transformation(origin = {-38.1895,14.1442}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {50.0707,-6.50636}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 20) annotation(Placement(visible = true, transformation(origin = {-78.5311,-4.30002}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0.1) annotation(Placement(visible = true, transformation(origin = {12.447,-24.8939}, extent = {{12,12},{-12,-12}}, rotation = -180)));
    equation
      connect(dcdc_ideal_simple1.p2,variableresistor1.p) annotation(Line(points = {{-26.1895,20.1442},{-5.09194,20.1442},{-5.09194,5.65771},{50.3536,5.65771},{50.3536,5.49364},{50.0707,5.49364}}));
      connect(ground1.p,dcdc_ideal_simple1.n2) annotation(Line(points = {{-36.7751,-27.8868},{-36.7751,-1.9802},{-26.0255,-1.9802},{-26.0255,8.14423},{-26.1895,8.14423}}));
      connect(dcdc_ideal_simple1.n1,ground1.p) annotation(Line(points = {{-50.1895,8.14423},{-50.0707,8.14423},{-50.0707,-1.9802},{-36.7751,-1.9802},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
      connect(constantvoltage1.p,dcdc_ideal_simple1.p1) annotation(Line(points = {{-78.5311,7.69998},{-78.3593,7.69998},{-78.3593,20.9335},{-50.1895,20.9335},{-50.1895,20.1442}}));
      connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{-36.7751,-27.8868},{-36.7751,-25.1768},{-78.925,-25.1768},{-78.925,-16.3},{-78.5311,-16.3}}));
      connect(resistor1.n,ground1.p) annotation(Line(points = {{0.447,-24.8939},{-36.7751,-24.8939},{-36.7751,-27.8868},{-36.7751,-27.8868}}));
      connect(variableresistor1.n,resistor1.p) annotation(Line(points = {{50.0707,-18.5064},{50.0707,-18.5064},{50.0707,-24.8939},{24.447,-24.8939},{24.447,-24.8939}}));
      connect(add1.y,variableresistor1.R) annotation(Line(points = {{78.8294,40.4526},{84.2999,40.4526},{84.2999,-6.50636},{63.2707,-6.50636},{63.2707,-6.50636}}));
      connect(const.y,add1.u2) annotation(Line(points = {{36.1138,35.9265},{49.7878,35.9265},{49.7878,33.2526},{51.2294,33.2526}}));
      connect(ramp1.y,add1.u1) annotation(Line(points = {{36.1137,69.3069},{40.4526,69.3069},{40.4526,47.5248},{51.2294,47.5248},{51.2294,47.6526}}));
      annotation(Diagram(graphics = {Line(points = {{25.7426,63.3663}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}), experiment(StartTime = 0.0, StopTime = 1.0, Tolerance = 0.000001));
    end dcdc_characteristic;
    model dc_limiter_test
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-16.2777,18.9533}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.85, V_out = 5, V_in_min = 10, V_in_max = 100, slope = 5) annotation(Placement(visible = true, transformation(origin = {16.4074,3.9604}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {57.1428,5.9406}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
      Modelica.Electrical.Analog.Sources.RampVoltage rampvoltage1(V = 100, duration = 1) annotation(Placement(visible = true, transformation(origin = {-72.4187,7.92079}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(rampvoltage1.p,resistor2.p) annotation(Line(points = {{-72.4187,19.9208},{-28.8543,19.9208},{-28.8543,18.9533},{-28.2777,18.9533}}));
      connect(rampvoltage1.n,resistor3.n) annotation(Line(points = {{-72.4187,-4.07921},{-72.1358,-4.07921},{-72.1358,-13.2956},{-48.2726,-13.2956},{-48.2726,-13.0493}}));
      connect(dcdc_ideal_simple1.n2,dcdc_ideal_simple1.n1) annotation(Line(points = {{28.4074,-2.0396},{28.2885,-2.0396},{28.2885,-10.1839},{4.80905,-10.1839},{4.80905,-2.0396},{4.40736,-2.0396}}));
      connect(resistor1.p,dcdc_ideal_simple1.p2) annotation(Line(points = {{57.1428,17.9406},{39.3211,17.9406},{39.3211,10.1839},{28.4074,10.1839},{28.4074,9.9604}}));
      connect(dcdc_ideal_simple1.n2,resistor1.n) annotation(Line(points = {{28.4074,-2.0396},{34.7949,-2.0396},{34.7949,-6.78925},{57.1428,-6.78925},{57.1428,-6.0594}}));
      connect(dcdc_ideal_simple1.n1,resistor3.p) annotation(Line(points = {{4.40736,-2.0396},{4.52617,-2.0396},{4.52617,-13.0127},{-24.2726,-13.0127},{-24.2726,-13.0493}}));
      connect(resistor2.n,dcdc_ideal_simple1.p1) annotation(Line(points = {{-4.2777,18.9533},{4.52617,18.9533},{4.52617,9.9604},{4.40736,9.9604}}));
      connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
      annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
    end dc_limiter_test;
    model DCtoDCModel "DC/DC Converter Model nach Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
      model SignalCurrent "Generic current source using the input signal asource current"
        extends Modelica.Electrical.Analog.Interfaces.OnePort;
        Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-0.565771,71.0042}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {-0.565771,71.0042}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        annotation(Diagram(), Icon(graphics = {Line(points = {{-88.2603,-0.282885},{-52.6167,-0.282885},{-48.3734,-0.282885}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-42.7157,46.6761},{47.8076,-49.505}}),Line(points = {{51.4851,0.282885},{89.1089,0.565771}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
      end SignalCurrent;
      class CCS
        extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      equation
        i1 = 0;
        annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.372,71.0042},{91.372,-69.024}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-66.4781,34.2291},{66.4781,-29.703}}, textString = "CCS")}));
      end CCS;
      Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      class LimPICont
        parameter Real Pout;
        parameter Real Vref;
        Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Math.Gain Gain1(k = 10) annotation(Placement(visible = true, transformation(origin = {-22.3479,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Math.Add Add1 annotation(Placement(visible = true, transformation(origin = {31.4003,5.09194}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref, k = 1) annotation(Placement(visible = true, transformation(origin = {-26.0255,-41.3013}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      equation
        connect(Add1.y,y) annotation(Line(points = {{44.6003,5.09194},{91.372,5.09194},{91.372,5.65771},{99.5757,5.65771}}));
        connect(Gain1.u,u) annotation(Line(points = {{-36.7479,40.4526},{-48.9392,40.4526},{-48.9392,1.13154},{-97.3126,1.13154}}));
        connect(Gain1.y,Add1.u1) annotation(Line(points = {{-9.14795,40.4526},{0.848674,40.4526},{0.848674,12.2919},{17.0003,12.2919}}));
        connect(LimIntegrator1.u,u) annotation(Line(points = {{-40.4255,-41.3013},{-48.9392,-41.3013},{-48.9392,1.13154},{-97.3126,1.13154}}));
        connect(LimIntegrator1.y,Add1.u2) annotation(Line(points = {{-12.8255,-41.3013},{1.41445,-41.3013},{1.41445,-2.10806},{17.0003,-2.10806}}));
        annotation(Diagram(), Icon(graphics = {Line(points = {{-80,78},{-80,-90}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{-80,90},{-88,68},{-72,68},{-80,90}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-90,-80},{82,-80}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{90,-80},{68,-72},{68,-88},{90,-80}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-80,-80},{-80,50},{-80,-20},{30,60},{80,60}}, rotation = 0, color = {0,0,127}, pattern = LinePattern.Solid, thickness = 0.25),Text(rotation = 0, lineColor = {192,192,192}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20,-20},{80,-60}}, textString = "LimPI")}));
      end LimPICont;
      Real Iout annotation(Placement(visible = true, transformation(origin = {67.619,78.5277}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {67.4051,79.2675}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Vref annotation(Placement(visible = true, transformation(origin = {70.3991,78.9255}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Pout annotation(Placement(visible = true, transformation(origin = {66.761,79.2079}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {68.5657,78.6802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real eff annotation(Placement(visible = true, transformation(origin = {67.5608,79.1375}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {-52.1354,79.2469}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = Pout / Vref, uMin = 0) annotation(Placement(visible = true, transformation(origin = {27.8677,79.723}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant Constant1(k = Vref) annotation(Placement(visible = true, transformation(origin = {-80.6833,79.0128}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      LimPICont LimPI(Pout = Pout, Vref = Vref) annotation(Placement(visible = true, transformation(origin = {-16.2708,79.1807}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      CCS CCS1 annotation(Placement(visible = true, transformation(origin = {-13.4794,-3.13342}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-82.9539,32.7429}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {82.7203,25.0863}, extent = {{12,-12},{-12,12}}, rotation = -270)));
      Modelica.Electrical.Analog.Basic.Resistor Rhk(R = 10000000) annotation(Placement(visible = true, transformation(origin = {-47.5463,-2.79786}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {95.9451,-7.11907}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.Capacitor Cin(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {-76.7755,-2.72419}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      SignalCurrent SignalCurrent1 annotation(Placement(visible = true, transformation(origin = {18.5897,-5.33737}, extent = {{12,-12},{-12,12}}, rotation = -270)));
      Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {61.2614,-6.05931}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Basic.Capacitor Cout(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {38.7774,-6.20137}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(Dout.n,Cout.p) annotation(Line(points = {{95.9451,4.88093},{89.6747,4.88093},{89.6747,5.79863},{38.7774,5.79863}}));
      connect(Dout.p,Cout.n) annotation(Line(points = {{95.9451,-19.1191},{76.662,-19.1191},{76.662,-18.2014},{38.7774,-18.2014}}));
      connect(Cout.n,Volt.n) annotation(Line(points = {{38.7774,-18.2014},{23.1966,-18.2014},{23.1966,-18.0593},{61.2614,-18.0593}}));
      connect(Volt.p,Cout.p) annotation(Line(points = {{61.2614,5.94069},{74.116,5.94069},{74.116,5.79863},{38.7774,5.79863}}));
      connect(Volt.p,Amp.p) annotation(Line(points = {{61.2614,5.94069},{57.1429,5.94069},{57.1429,13.0863},{82.7203,13.0863}}));
      connect(Feedback1.u2,Volt.v) annotation(Line(points = {{-52.1354,69.6469},{-52.1354,39.3211},{51.768,39.3211},{51.768,-6.05931},{49.2614,-6.05931}}));
      connect(Volt.n,n1) annotation(Line(points = {{61.2614,-18.0593},{63.0835,-18.0593},{63.0835,-55.7992},{100.829,-55.7992}}));
      connect(Limiter1.y,SignalCurrent1.u) annotation(Line(points = {{41.0677,79.723},{46.1103,79.723},{46.1103,-5.40527},{10.0692,-5.40527}}));
      connect(Dout.n,SignalCurrent1.n) annotation(Line(points = {{95.9451,4.88093},{95.6153,4.88093},{95.6153,6.66263},{18.5897,6.66263}}));
      connect(SignalCurrent1.p,Dout.p) annotation(Line(points = {{18.5897,-17.3374},{10.4668,-17.3374},{10.4668,-19.1191},{95.9451,-19.1191}}));
      connect(Cin.n,Rhk.n) annotation(Line(points = {{-76.7755,-14.7242},{-38.1895,-14.7242},{-38.1895,-14.7979},{-47.5463,-14.7979}}));
      connect(Rhk.p,Cin.p) annotation(Line(points = {{-47.5463,9.20214},{-62.2348,9.20214},{-62.2348,9.27581},{-76.7755,9.27581}}));
      connect(Cin.n,n) annotation(Line(points = {{-76.7755,-14.7242},{-76.0962,-14.7242},{-76.0962,-57.2039},{-99.9705,-57.2039}}));
      connect(Din.n,Cin.p) annotation(Line(points = {{-82.9539,20.7429},{-32.8147,20.7429},{-32.8147,9.27581},{-76.7755,9.27581}}));
      connect(CCS1.p2,Rhk.p) annotation(Line(points = {{-1.47945,2.86658},{1.69733,2.86658},{1.69733,9.20214},{-47.5463,9.20214}}));
      connect(CCS1.n2,Rhk.n) annotation(Line(points = {{-1.47945,-9.13342},{2.54599,-9.13342},{2.54599,-14.7979},{-47.5463,-14.7979}}));
      connect(CCS1.n1,n1) annotation(Line(points = {{-25.4794,-9.13342},{-37.6237,-9.13342},{-37.6237,-55.7992},{100.829,-55.7992}}));
      connect(CCS1.p1,p1) annotation(Line(points = {{-25.4794,2.86658},{-21.4993,2.86658},{-21.4993,46.1028},{100.497,46.1028}}));
      connect(Amp.n,p1) annotation(Line(points = {{82.7203,37.0863},{82.8854,37.0863},{82.8854,46.1028},{100.497,46.1028}}));
      connect(LimPI.y,Limiter1.u) annotation(Line(points = {{-4.32175,79.8596},{12.447,79.8596},{12.447,79.723},{13.4677,79.723}}));
      connect(Feedback1.y,LimPI.u) annotation(Line(points = {{-41.3354,79.2469},{-28.0057,79.2469},{-28.0057,79.3165},{-27.9484,79.3165}}));
      connect(Constant1.y,Feedback1.u1) annotation(Line(points = {{-67.4833,79.0128},{-62.5177,79.0128},{-62.5177,79.2469},{-61.7354,79.2469}}));
      connect(p,Din.p) annotation(Line(points = {{-99.5025,45.7711},{-83.1683,45.7711},{-83.1683,44.7429},{-82.9539,44.7429}}));
      Iout = Pout / Vref;
      CCS1.i2 = (CCS1.v1 * Amp.i) / ((CCS1.v2 + 0.0000000001) * eff);
      SignalCurrent1.i = if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.u else 0;
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668,68.1754},{76.3791,30.2687}}, textString = "%Vref V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC")}));
    end DCtoDCModel;
    model dcdc_ideal "DC/DC Converter Model nach Torrey, D., & Selamogullari, U. (2002). A Behavioral Model for DC-DC Converters using Modelica. modelica.org"
      //todo möglicherweise lässt sich hier noch etwas mit "smooth" machen?
      class CCS
        extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      equation
        i1 = 0;
        annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.372,71.0042},{91.372,-69.024}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-66.4781,34.2291},{66.4781,-29.703}}, textString = "CCS")}));
      end CCS;
      Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      class LimPICont
        parameter Real Pout;
        parameter Real Vref;
        parameter Real gain = 1;
        parameter Real gainI = 1;
        Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.5757,5.65771}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-97.3126,1.13154}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Math.Gain Gain1(k = gain) annotation(Placement(visible = true, transformation(origin = {-22.3479,40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Math.Add Add1 annotation(Placement(visible = true, transformation(origin = {31.4003,5.09194}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref, k = gainI) annotation(Placement(visible = true, transformation(origin = {-26.0255,-41.3013}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      equation
        connect(Add1.y,y) annotation(Line(points = {{44.6003,5.09194},{91.372,5.09194},{91.372,5.65771},{99.5757,5.65771}}));
        connect(Gain1.u,u) annotation(Line(points = {{-36.7479,40.4526},{-48.9392,40.4526},{-48.9392,1.13154},{-97.3126,1.13154}}));
        connect(Gain1.y,Add1.u1) annotation(Line(points = {{-9.14795,40.4526},{0.848674,40.4526},{0.848674,12.2919},{17.0003,12.2919}}));
        connect(LimIntegrator1.u,u) annotation(Line(points = {{-40.4255,-41.3013},{-48.9392,-41.3013},{-48.9392,1.13154},{-97.3126,1.13154}}));
        connect(LimIntegrator1.y,Add1.u2) annotation(Line(points = {{-12.8255,-41.3013},{1.41445,-41.3013},{1.41445,-2.10806},{17.0003,-2.10806}}));
        annotation(Diagram(), Icon(graphics = {Line(points = {{-80,78},{-80,-90}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{-80,90},{-88,68},{-72,68},{-80,90}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-90,-80},{82,-80}}, rotation = 0, color = {192,192,192}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{90,-80},{68,-72},{68,-88},{90,-80}}, rotation = 0, lineColor = {192,192,192}, fillColor = {192,192,192}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-80,-80},{-80,50},{-80,-20},{30,60},{80,60}}, rotation = 0, color = {0,0,127}, pattern = LinePattern.Solid, thickness = 0.25),Text(rotation = 0, lineColor = {192,192,192}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20,-20},{80,-60}}, textString = "LimPI")}));
      end LimPICont;
      Real Iout annotation(Placement(visible = true, transformation(origin = {67.619,78.5277}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {67.4051,79.2675}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Vref annotation(Placement(visible = true, transformation(origin = {70.3991,78.9255}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Pout annotation(Placement(visible = true, transformation(origin = {66.761,79.2079}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {68.5657,78.6802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Real eff annotation(Placement(visible = true, transformation(origin = {67.5608,79.1375}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {-52.1354,79.2469}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = Pout / Vref, uMin = 0) annotation(Placement(visible = true, transformation(origin = {27.8677,79.723}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      LimPICont LimPI(Pout = Pout, Vref = Vref, gain = 10, gainI = 1) annotation(Placement(visible = true, transformation(origin = {-16.2708,79.1807}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.829,-55.7992}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.9705,-57.2039}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Logical.GreaterThreshold greaterthreshold1(threshold = Vinmin) annotation(Placement(visible = true, transformation(origin = {-27.7228,35.9264}, extent = {{-6.1579,-6.1579},{6.1579,6.1579}}, rotation = 0)));
      Modelica.Blocks.Logical.LessThreshold lessthreshold1(threshold = Vinmax) annotation(Placement(visible = true, transformation(origin = {-27.7228,20.6506}, extent = {{-6.1579,-6.1579},{6.1579,6.1579}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {6.78922,52.3338}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
      Modelica.Blocks.Logical.Nand nand1 annotation(Placement(visible = true, transformation(origin = {0,31.1174}, extent = {{-5.59809,-5.59809},{5.59809,5.59809}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant Constant1(k = Vref) annotation(Placement(visible = true, transformation(origin = {-85.2095,79.2957}, extent = {{-6.77369,-6.77369},{6.77369,6.77369}}, rotation = 0)));
      CCS CCS1 annotation(Placement(visible = true, transformation(origin = {-13.4794,-12.1858}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {82.7203,25.0863}, extent = {{12,-12},{-12,12}}, rotation = -270)));
      Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {63.2416,-6.90797}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {41.0653,-5.98753}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor1 annotation(Placement(visible = true, transformation(origin = {-61.1033,-1.41443}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Electrical.Analog.Sources.SignalCurrent signalcurrent1 annotation(Placement(visible = true, transformation(origin = {23.4795,-5.9406}, extent = {{12,-12},{-12,12}}, rotation = 90)));
      Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-84.9341,27.0852}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      Modelica.Blocks.Logical.Switch switch1 annotation(Placement(visible = true, transformation(origin = {22.9137,28.8543}, extent = {{-6.1579,6.1579},{6.1579,-6.1579}}, rotation = -90)));
    equation
      connect(voltagesensor1.p,CCS1.p2) annotation(Line(points = {{-61.1033,10.5856},{-1.41443,10.5856},{-1.41443,-6.1858},{-1.4794,-6.1858}}));
      connect(CCS1.n1,n1) annotation(Line(points = {{-25.4794,-18.1858},{-37.6237,-18.1858},{-37.6237,-55.7992},{100.829,-55.7992}}));
      connect(CCS1.n2,n) annotation(Line(points = {{-1.4794,-18.1858},{-1.69731,-18.1858},{-1.69731,-23.4795},{-72.1358,-23.4795},{-72.1358,-57.1429},{-99.9705,-57.1429},{-99.9705,-57.2039}}));
      connect(CCS1.p1,p1) annotation(Line(points = {{-25.4794,-6.18575},{-40.4526,-6.18575},{-40.4526,46.1028},{100.497,46.1028}}));
      connect(switch1.y,signalcurrent1.i) annotation(Line(points = {{22.9137,22.0806},{22.9137,22.0806},{22.9137,12.1641},{5.65771,12.1641},{5.65771,-5.94059},{15.0795,-5.94059},{15.0795,-5.9406}}));
      connect(Constant1.y,Feedback1.u1) annotation(Line(points = {{-77.7584,79.2957},{-63.3663,79.2957},{-63.3663,79.2469},{-61.7354,79.2469}}));
      connect(nand1.y,switch1.u2) annotation(Line(points = {{6.1579,31.1174},{11.3154,31.1174},{11.3154,42.4328},{22.9137,42.4328},{22.9137,36.2438},{22.9137,36.2438}}));
      connect(greaterthreshold1.y,nand1.u1) annotation(Line(points = {{-20.9491,35.9264},{-13.2956,35.9264},{-13.2956,31.1174},{-6.71771,31.1174},{-6.71771,31.1174}}));
      connect(lessthreshold1.y,nand1.u2) annotation(Line(points = {{-20.9491,20.6506},{-13.5785,20.6506},{-13.5785,26.8741},{-6.71771,26.8741},{-6.71771,26.6389}}));
      connect(switch1.u3,Limiter1.y) annotation(Line(points = {{17.9874,36.2438},{18.1047,36.2438},{18.1047,57.1429},{45.8274,57.1429},{45.8274,79.7737},{41.0677,79.7737},{41.0677,79.723}}));
      connect(const.y,switch1.u1) annotation(Line(points = {{14.9854,52.3338},{27.4399,52.3338},{27.4399,36.2438},{27.8401,36.2438}}));
      connect(p,Din.p) annotation(Line(points = {{-99.5025,45.7711},{-83.1683,45.7711},{-83.1683,39.0852},{-84.9341,39.0852}}));
      connect(Din.n,voltagesensor1.p) annotation(Line(points = {{-84.9341,15.0852},{-61.3861,15.0852},{-61.3861,10.5856},{-61.1033,10.5856}}));
      connect(greaterthreshold1.u,voltagesensor1.v) annotation(Line(points = {{-35.1122,35.9264},{-48.6563,35.9264},{-48.6563,20.6506},{-72.4187,20.6506},{-72.4187,-1.41443},{-73.1033,-1.41443}}));
      connect(lessthreshold1.u,voltagesensor1.v) annotation(Line(points = {{-35.1122,20.6506},{-72.4187,20.6506},{-72.4187,-1.41443},{-73.1033,-1.41443}}));
      connect(signalcurrent1.p,Dout.p) annotation(Line(points = {{23.4795,-17.9406},{41.3013,-17.9406},{41.3013,-17.9875},{41.0653,-17.9875}}));
      connect(signalcurrent1.n,Dout.n) annotation(Line(points = {{23.4795,6.0594},{40.7355,6.0594},{40.7355,6.01247},{41.0653,6.01247}}));
      connect(voltagesensor1.n,n) annotation(Line(points = {{-61.1033,-13.4144},{-61.3861,-13.4144},{-61.3861,-57.1429},{-99.9705,-57.1429},{-99.9705,-57.2039}}));
      connect(Volt.p,Dout.n) annotation(Line(points = {{63.2416,5.09203},{41.3013,5.09203},{41.3013,6.01247},{41.0653,6.01247}}));
      connect(Dout.p,Volt.n) annotation(Line(points = {{41.0653,-17.9875},{63.3663,-17.9875},{63.3663,-18.908},{63.2416,-18.908}}));
      connect(Volt.p,Amp.p) annotation(Line(points = {{63.2416,5.09203},{62.8006,5.09203},{62.8006,13.0863},{82.7203,13.0863}}));
      connect(Volt.n,n1) annotation(Line(points = {{63.2416,-18.908},{63.0835,-18.908},{63.0835,-55.7992},{100.829,-55.7992}}));
      connect(Feedback1.u2,Volt.v) annotation(Line(points = {{-52.1354,69.6469},{-52.1354,39.3211},{51.768,39.3211},{51.768,-6.90797},{51.2416,-6.90797}}));
      connect(Amp.n,p1) annotation(Line(points = {{82.7203,37.0863},{82.8854,37.0863},{82.8854,46.1028},{100.497,46.1028}}));
      connect(LimPI.y,Limiter1.u) annotation(Line(points = {{-4.32175,79.8596},{12.447,79.8596},{12.447,79.723},{13.4677,79.723}}));
      connect(Feedback1.y,LimPI.u) annotation(Line(points = {{-41.3354,79.2469},{-28.0057,79.2469},{-28.0057,79.3165},{-27.9484,79.3165}}));
      Iout = Pout / Vref;
      CCS1.i2 = smooth(0, (CCS1.v1 * Amp.i) / ((CCS1.v2 + 0.0000001) * eff));
      //SignalCurrent1.i = smooth(0, if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.u else 0);
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668,68.1754},{76.3791,30.2687}}, textString = "%Vref V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC")}));
    end dcdc_ideal;
    connector Powerconnector_out
      output Modelica.SIunits.Power power;
      annotation(Icon(graphics = {Polygon(points = {{-38.7553,84.2999},{34.7949,84.5827},{89.1089,3.9604},{40.4526,-86.2801},{-41.5842,-87.4116},{-88.826,6.78925},{-38.7553,84.2999}}, rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25)}), Diagram(graphics = {Polygon(points = {{-20.3678,42.7157},{22.0651,42.4328},{41.867,9.33522},{22.6308,-31.4003},{-24.0453,-31.1174},{-44.6959,5.37482},{-45.5446,7.63791},{-20.3678,42.7157}}, rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-58.8402,74.9646},{61.1033,49.7878}}, textString = "Power Connector")}));
    end Powerconnector_out;
    connector Powerconnector_in
      input Modelica.SIunits.Power power;
      annotation(Icon(graphics = {Polygon(points = {{-38.7553,84.2999},{34.7949,84.5827},{89.1089,3.9604},{40.4526,-86.2801},{-41.5842,-87.4116},{-88.826,6.78925},{-38.7553,84.2999}}, rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25)}), Diagram(graphics = {Polygon(points = {{-20.3678,42.7157},{22.0651,42.4328},{41.867,9.33522},{22.6308,-31.4003},{-24.0453,-31.1174},{-44.6959,5.37482},{-45.5446,7.63791},{-20.3678,42.7157}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-58.8402,74.9646},{61.1033,49.7878}}, textString = "Power Connector")}));
    end Powerconnector_in;
    model DCtoPower "generic ideal DC/DC Converter with Power Output"
      parameter Modelica.SIunits.Voltage V_in_max;
      parameter Modelica.SIunits.Voltage V_in_min;
      parameter Real eff = 0.85;
      parameter Integer m(min = 1) = 3 "Number of Power Outputs";
      Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-100.141,38.4724}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.141,38.4724}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {-100.141,-39.604}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.141,-39.604}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.Powerconnector_out power_out[m] annotation(Placement(visible = true, transformation(origin = {100.99,-0.848656}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.99,-0.848656}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.SIunits.Voltage v(start = 0);
      Modelica.SIunits.Current i(start = 0);
      Modelica.SIunits.Power powersum(start = 1);
    equation
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
      powersum = sum(power_out.power);
      i = if v > V_in_min and v < V_in_max then powersum / (v * eff) else 0;
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.9774,80.3395},{98.1612,-79.7737}})}));
    end DCtoPower;
    model dcdc_ideal_simple
      //todo möglicherweise lässt sich hier noch etwas mit "smooth" machen?
      import Modelica.Constants.pi;
      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      parameter Real eff = 0.85 annotation(Placement(visible = true, transformation(origin = {71.521,-76.3754}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Modelica.SIunits.Voltage V_out = 5;
      parameter Modelica.SIunits.Voltage V_in_min = 6.5;
      parameter Modelica.SIunits.Voltage V_in_max = 100;
      parameter Real slope = 0.01;
    equation
      if v1 < V_in_max and v1 > V_in_min + slope * 0.5 then
        v2 = V_out;
        i1 = (-i2 * v2) / (v1 * eff);
      elseif v1 >= V_in_min - slope * 0.5 then
        v2 = smooth(1, V_out * (sin(((v1 - V_in_min - slope * 0.5) * pi * 0.5) / slope * 2 + pi * 0.5) + 1) * 0.5);
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
      annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{10.4668,68.1754},{76.3791,30.2687}}, textString = "%V_out"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC")}), Diagram());
    end dcdc_ideal_simple;
    model dcdc_ideal_simple_improved
      //todo möglicherweise lässt sich hier noch etwas mit "smooth" machen?
      parameter Real eff = 0.85 annotation(Placement(visible = true, transformation(origin = {60.2546,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Modelica.SIunits.Voltage V_out = 5 annotation(Placement(visible = true, transformation(origin = {60.2546,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Modelica.SIunits.Voltage V_in_min = 6.5 annotation(Placement(visible = true, transformation(origin = {60.2546,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      parameter Modelica.SIunits.Voltage V_in_max = 100 annotation(Placement(visible = true, transformation(origin = {60.2546,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n2 annotation(Placement(visible = true, transformation(origin = {93.0693,-46.959}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {93.0693,-46.959}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {-92.7864,-40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-92.7864,-40.4526}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {-92.2207,41.867}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-92.2207,41.867}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin p2 annotation(Placement(visible = true, transformation(origin = {92.5035,42.4328}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {92.5035,42.4328}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.SIunits.Voltage v1 "Voltage drop over the left port" annotation(Placement(visible = true, transformation(origin = {60.5375,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.SIunits.Voltage v2 "Voltage drop over the right port" annotation(Placement(visible = true, transformation(origin = {60.5375,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.SIunits.Current i1 "Current flowing from pos. to neg. pin of the left port" annotation(Placement(visible = true, transformation(origin = {60.5375,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.SIunits.Current i2 "Current flowing from pos. to neg. pin of the right port" annotation(Placement(visible = true, transformation(origin = {60.5375,-80.6223}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = eff, V_out = V_out, V_in_max = V_in_max, V_in_min = V_in_min) annotation(Placement(visible = true, transformation(origin = {-3.67751,6.78922}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {-67.3267,12.447}, extent = {{-12,12},{12,-12}}, rotation = -90)));
    equation
      connect(capacitor1.n,n1) annotation(Line(points = {{-67.3267,0.446959},{-67.8925,0.446959},{-67.8925,-39.8868},{-92.7864,-39.8868},{-92.7864,-40.4526}}));
      connect(p1,capacitor1.p) annotation(Line(points = {{-92.2207,41.867},{-67.6096,41.867},{-67.6096,24.447},{-67.3267,24.447}}));
      connect(dcdc_ideal_simple1.n1,dcdc_ideal_simple1.n2) annotation(Line(points = {{-15.6775,0.78922},{-16.4074,0.78922},{-16.4074,-14.4272},{7.92079,-14.4272},{7.92079,0.78922},{8.32249,0.78922}}));
      connect(dcdc_ideal_simple1.n2,n2) annotation(Line(points = {{8.32249,0.78922},{8.20368,0.78922},{8.20368,-45.2617},{93.0693,-45.2617},{93.0693,-46.959}}));
      connect(dcdc_ideal_simple1.p2,p2) annotation(Line(points = {{8.32249,12.7892},{7.92079,12.7892},{7.92079,43.2815},{92.5035,43.2815},{92.5035,42.4328}}));
      connect(dcdc_ideal_simple1.n1,n1) annotation(Line(points = {{-15.6775,0.78922},{-16.1245,0.78922},{-16.1245,-39.8868},{-92.7864,-39.8868},{-92.7864,-40.4526}}));
      connect(p1,dcdc_ideal_simple1.p1) annotation(Line(points = {{-92.2207,41.867},{-15.5587,41.867},{-15.5587,12.7892},{-15.6775,12.7892}}));
      v1 = p1.v - n1.v;
      v2 = p2.v - n2.v;
      i1 = p1.i;
      i2 = p2.i;
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-87.6945,78.6421},{88.5431,-74.6818}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-8.48652,67.6096},{57.4258,29.7029}}, textString = "%V_out"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.6492,18.9533},{57.9915,-33.0976}}, textString = "DCDC"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{54.314,63.3663},{75.8133,32.8147}}, textString = "V")}));
    end dcdc_ideal_simple_improved;
  end dcmodel;
  package examples
    model unregulated_DET
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-39.6389,-49.1485}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      satpower.batteries.battery battery1(Vnominal = 40) annotation(Placement(visible = true, transformation(origin = {-12.6667,-3}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-52,28.3333}, extent = {{-10,-10},{10,10}}, rotation = 90)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 90, width = 3600, falling = 90, period = 5000) annotation(Placement(visible = true, transformation(origin = {-84,-5}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      satpower.solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-52,-5}, extent = {{-10,-10},{10,10}}, rotation = 90)));
      Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 10000) annotation(Placement(visible = true, transformation(origin = {36.3333,5.66667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    equation
      connect(resistor1.n,battery1.n) annotation(Line(points = {{46.3333,5.66667},{55,5.66667},{55,-13},{-12.6667,-13},{-12.6667,-13}}));
      connect(battery1.p,resistor1.p) annotation(Line(points = {{-12.6667,7},{-12.6667,6.33333},{26.3333,6.33333},{26.3333,6.33333}}));
      connect(battery1.n,ground1.p) annotation(Line(points = {{-12.6667,-13},{-12.6667,-37},{-39.6667,-37},{-39.6667,-37}}));
      connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-52,-15},{-52,-37},{-39.6667,-37},{-39.6667,-37}}));
      connect(solarcell_simple1.n,idealdiode1.p) annotation(Line(points = {{-52,5},{-52,18},{-52,18},{-52,18}}));
      connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-73,-5},{-60.3333,-5},{-60.3333,-5},{-60.3333,-5}}));
      connect(idealdiode1.n,battery1.p) annotation(Line(points = {{-52,38.3333},{-52,46.3333},{-12.3333,46.3333},{-12.3333,7},{-12.3333,7}}));
      annotation(Diagram, Icon, experiment(StartTime = 0.0, StopTime = 20000, Tolerance = 0.000001));
    end unregulated_DET;
    model PID_verbraucher
      extends Modelica.Icons.Example;
      Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 10, freqHz = 0.1, offset = 20) annotation(Placement(visible = true, transformation(origin = {-29.6667,-60.3333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      satpower.verbraucher verbraucher1 annotation(Placement(visible = true, transformation(origin = {-15.3333,27}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-19,-81.6667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    equation
      connect(sinevoltage1.n,ground1.p) annotation(Line(points = {{-19.6667,-60.3333},{-19.3333,-60.3333},{-19.3333,-71},{-19.3333,-71}}));
      connect(sinevoltage1.n,verbraucher1.pin_n) annotation(Line(points = {{-19.6667,-60.3333},{-10,-60.3333},{-10,16.6667},{-10,16.6667}}));
      connect(verbraucher1.pin_p,sinevoltage1.p) annotation(Line(points = {{-20.3,17.0667},{-40.6667,17.0667},{-40.6667,-60.6667},{-40.6667,-60.6667}}));
      annotation(experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.000001));
    end PID_verbraucher;
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
  end examples;
  block Exprgenerator "Generate exponential signal"
    import Modelica.Blocks.Interfaces;
    parameter Real alpha = 1;
    parameter Real beta = 1;
    extends Interfaces.SO;
  equation
    //y = alpha * exp(beta * time);exp function
    y = exp(alpha * time) - 1;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
  end Exprgenerator;
  model verbraucher
    parameter Modelica.SIunits.Power power_nominal = 10.0;
    Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-49.6667,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-49.6667,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {47.3333,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {47.3333,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sensors.CurrentSensor currentsensor1 annotation(Placement(visible = true, transformation(origin = {-49,-53}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {-2,16.6667}, extent = {{-10,-10},{10,10}}, rotation = 360)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltagesensor1 annotation(Placement(visible = true, transformation(origin = {-18.3333,-19.6667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {9,-50.6667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Blocks.Continuous.LimPID PID(k = 10000, Ti = 0.01, yMax = 100000, Ni = 0.1, initType = Modelica.Blocks.Types.InitPID.SteadyState, limitsAtInit = false, controllerType = Modelica.Blocks.Types.SimpleController.PID, Td = 0.1, yMin = 1, y_start = 1000) annotation(Placement(visible = true, transformation(origin = {-27,65.3333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = power_nominal) annotation(Placement(visible = true, transformation(origin = {-74,65}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  equation
    connect(PID.u_m,product1.y) annotation(Line(points = {{-27,53.3333},{35,53.3333},{35,-51},{19.6667,-51},{19.6667,-51}}));
    connect(PID.y,variableresistor1.R) annotation(Line(points = {{-16,65.3333},{-1.66667,65.3333},{-1.66667,28.6667},{-1.66667,28.6667}}));
    connect(const.y,PID.u_s) annotation(Line(points = {{-63,65},{-40,65},{-40,65.6667},{-40,65.6667}}));
    connect(variableresistor1.n,pin_n) annotation(Line(points = {{8,16.6667},{46.3333,16.6667},{46.3333,-98.3333},{46.3333,-98.3333}}));
    connect(voltagesensor1.n,pin_n) annotation(Line(points = {{-8.33333,-19.6667},{46.3333,-19.6667},{46.3333,-97},{46.3333,-97}}));
    connect(currentsensor1.n,voltagesensor1.p) annotation(Line(points = {{-49,-43},{-49,-19.6667},{-28.6667,-19.6667},{-28.6667,-19.6667}}));
    connect(currentsensor1.n,variableresistor1.p) annotation(Line(points = {{-49,-43},{-49,16.6667},{-12,16.6667},{-12,16.3333},{-12,16.3333}}));
    connect(pin_p,currentsensor1.p) annotation(Line(points = {{-49.6667,-99.3333},{-49.3333,-99.3333},{-49.3333,-63},{-49.3333,-63}}));
    connect(voltagesensor1.v,product1.u1) annotation(Line(points = {{-18.3333,-29.6667},{-18,-29.6667},{-18,-44.6667},{13.6667,-44.6667},{-3,-44.6667}}));
    connect(currentsensor1.i,product1.u2) annotation(Line(points = {{-39,-53},{-39,-57},{13.6667,-56.6667},{-3,-56.6667}}));
    annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Rectangle(origin = {1.83333,-2.83333}, extent = {{-84.1667,-92.1667},{84.1667,92.1667}}),Text(origin = {1.66667,63}, extent = {{-63.3333,10.6667},{63.3333,-10.6667}}, textString = "Verbraucher"),Text(origin = {3,-23}, extent = {{-61.3333,35.3333},{61.3333,-35.3333}}, textString = "%power_nominal W")}), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.000001));
  end verbraucher;
end satpower;

