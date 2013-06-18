package satcomponents
  /*
* Developer : Thomas Meschede (Thomas.Meschede@ilr.tu-berlin.de)
* Date : 10/06/2013
* All code (c)2013 Technische Universität Berlin, ILR, Fachgebiet Raumfahrttechnik, all rights reserved
*/
  package data
    model OBC
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-42.7157,-98.1612}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-42.7157,-98.1612}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-0.565771,-99.0099}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.565771,-99.0099}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {-22.0651,-36.7751}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const(k = 6.25) annotation(Placement(visible = true, transformation(origin = {-51.4851,-2.26308}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    equation
      connect(const.y,variableresistor1.R) annotation(Line(points = {{-38.2851,-2.26308},{-22.6308,-2.26308},{-22.6308,-23.5751},{-22.0651,-23.5751}}));
      connect(variableresistor1.n,pin_n) annotation(Line(points = {{-10.0651,-36.7751},{-0.282885,-36.7751},{-0.282885,-99.0099},{-0.565771,-99.0099}}));
      connect(variableresistor1.p,pin_p) annotation(Line(points = {{-34.0651,-36.7751},{-43.2815,-36.7751},{-43.2815,-98.1612},{-42.7157,-98.1612}}));
      annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-80.9052,86.5629},{86.2801,-87.1287}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.3069,56.0113},{69.024,-52.3338}}, textString = "OBC")}));
    end OBC;
  end data;
  package power
    model PCU
      Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(visible = true, transformation(origin = {100.141,-63.9321}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.141,-63.9321}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(visible = true, transformation(origin = {-100.99,-44.413}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.99,-44.413}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC annotation(Placement(visible = true, transformation(origin = {-100.707,7.92079}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.707,7.92079}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC3 annotation(Placement(visible = true, transformation(origin = {100.141,-23.1966}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.141,-23.1966}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC5 annotation(Placement(visible = true, transformation(origin = {99.8586,8.76945}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.8586,8.76945}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.PositivePin VCC12 annotation(Placement(visible = true, transformation(origin = {99.2928,44.6959}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.2928,44.6959}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      satcomponents.power.dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 3.3, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {56.9364,-28.6127}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      satcomponents.power.dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2 annotation(Placement(visible = true, transformation(origin = {57.5145,3.75723}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      satcomponents.power.dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {57.2254,41.0405}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.00000000001) annotation(Placement(visible = true, transformation(origin = {-61.2717,-16.763}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    equation
      connect(dcdc_ideal_simple_improved1.n2,gnd) annotation(Line(points = {{66.2433,-33.3086},{76.8786,-33.3086},{76.8786,-63.5838},{100,-63.5838},{100,-63.5838}}));
      connect(dcdc_ideal_simple_improved2.n2,dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{66.8214,-0.93867},{76.8786,-0.93867},{76.8786,-33.237},{66.474,-33.237},{66.474,-33.237}}));
      connect(dcdc_ideal_simple_improved3.n2,dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{66.5323,36.3446},{77.1676,36.3446},{77.1676,-0.578035},{66.763,-0.578035},{66.763,-0.578035}}));
      connect(dcdc_ideal_simple_improved3.n1,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{47.9468,36.9952},{37.2832,36.9952},{37.2832,-0.289017},{48.2659,-0.289017},{48.2659,-0.289017}}));
      connect(dcdc_ideal_simple_improved2.n1,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{48.2359,-0.28803},{37.2832,-0.28803},{37.2832,-32.659},{47.3988,-32.659},{47.3988,-32.659}}));
      connect(dcdc_ideal_simple_improved1.p2,VCC3) annotation(Line(points = {{66.1868,-24.3694},{99.1329,-24.3694},{99.1329,-24.2775},{99.1329,-24.2775}}));
      connect(dcdc_ideal_simple_improved3.p2,VCC12) annotation(Line(points = {{66.4758,45.2837},{98.8439,45.2837},{98.8439,45.0867},{98.8439,45.0867}}));
      connect(dcdc_ideal_simple_improved2.p2,VCC5) annotation(Line(points = {{66.7648,8.00051},{98.2659,8.00051},{98.2659,7.80347},{98.2659,7.80347}}));
      connect(dcdc_ideal_simple_improved1.n1,capacitor1.n) annotation(Line(points = {{47.6578,-32.658},{-61.2717,-32.658},{-61.2717,-26.8786},{-61.5607,-26.8786},{-61.5607,-26.8786}}));
      connect(dcdc_ideal_simple_improved1.p1,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{47.7143,-24.426},{28.3237,-24.426},{28.3237,8.3815},{48.5549,8.3815},{48.5549,8.3815}}));
      connect(dcdc_ideal_simple_improved2.p1,dcdc_ideal_simple_improved3.p1) annotation(Line(points = {{48.2924,7.94393},{28.3237,7.94393},{28.3237,45.6647},{47.6879,45.6647},{47.6879,45.6647}}));
      connect(capacitor1.p,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-61.2717,-6.76301},{-61.2717,8.3815},{47.9769,8.3815},{47.9769,8.3815}}));
      connect(GND,capacitor1.n) annotation(Line(points = {{-100.99,-44.413},{-61.2717,-44.413},{-61.2717,-26.8786},{-61.2717,-26.8786}}));
      connect(capacitor1.p,VCC) annotation(Line(points = {{-61.2717,-6.76301},{-61.2717,8.3815},{-100.867,8.3815},{-100.867,8.3815}}));
      annotation(Diagram(), Icon(graphics = {Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-72.4187,45.5445},{24.894,-36.4922}}, textString = "PCU"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{22.9137,-45.8274},{83.7341,-80.0566}}, textString = "GND"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{34.2291,-11.3154},{78.0764,-40.4526}}, textString = "3.3V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{31.1174,21.7822},{78.6421,-8.76945}}, textString = "5V"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{31.6832,60.8204},{76.662,26.3083}}, textString = "12V"),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-88.826,94.4837},{88.2603,-94.7666}})}));
    end PCU;
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
        Modelica.Electrical.Analog.Basic.Resistor R_t(R = 0.02) annotation(Placement(visible = true, transformation(origin = {-44.9121,9.39283}, extent = {{10,-10},{-10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Capacitor C_t(C = 100) annotation(Placement(visible = true, transformation(origin = {-44.4021,-19.4913}, extent = {{10,-10},{-10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.VariableResistor R_overload annotation(Placement(visible = true, transformation(origin = {44.9904,34.3674}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor R_i(R = 0.005) annotation(Placement(visible = true, transformation(origin = {-6.89231,-3.68554}, extent = {{10,-10},{-10,10}}, rotation = 0)));
      protected
        parameter Modelica.SIunits.ElectricCharge capacity = capacity_Ah * 3600;
      equation
        connect(R_t.p,R_i.n) annotation(Line(points = {{-34.9121,9.39283},{-34.3333,9.39283},{-34.3333,-4.66667},{-16.6667,-3.68554},{-16.8923,-3.68554}}));
        connect(R_i.p,voltage.p) annotation(Line(points = {{3.10769,-3.68554},{36,-3.68554},{36,-2.33333},{36,-2.33333}}));
        connect(R_overload.n,voltage.n) annotation(Line(points = {{54.9904,34.3674},{56,34.3674},{56,-2},{56,-2}}));
        connect(R_overload.p,voltage.p) annotation(Line(points = {{34.9904,34.3674},{36.3333,34.3674},{36.3333,-2},{36.3333,-2}}));
        connect(voltage.n,n) annotation(Line(points = {{56.2642,-2.33333},{99,-2.33333},{99,-0.333333},{99,-0.333333}}));
        connect(R_t.p,C_t.p) annotation(Line(points = {{-34.9121,9.39283},{-34.3333,9.39283},{-34.3333,-19.3333},{-34.3333,-19.3333}}));
        connect(p,C_t.n) annotation(Line(points = {{-100,0},{-54.3333,0},{-54.3333,-19.3333},{-54.3333,-19.3333}}));
        connect(p,R_t.n) annotation(Line(points = {{-100,0},{-55,0},{-55,9.33333},{-55,9.33333}}));
        R_overload.R = 100000.0 / (1 + exp(-100.0 * SOD));
        i = voltage.i;
        der(soc) = i / capacity;
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
        parameter Real alpha = 1;
        parameter Real beta = 1;
        extends Modelica.Blocks.Interfaces.SO;
      equation
        //y = alpha * exp(beta * time);exp function
        y = exp(alpha * time) - 1;
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
      end Exprgenerator;
      model Akkuaufladung
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-11.3919,-34.9858}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        batteries.battery battery1(soc(start = 0.5)) annotation(Placement(visible = true, transformation(origin = {-54.9371,4.93735}, extent = {{-10,-10},{10,10}}, rotation = -90)));
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
        parameter Real alpha = 1;
        parameter Real beta = 1;
        extends Modelica.Blocks.Interfaces.SO;
      equation
        //y = alpha * exp(beta * time);exp function
        y = exp(alpha * time) - 1;
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
      end Exprgenerator;
      model solarcell_characteristic
        extends Modelica.Icons.Example;
        Exprgenerator exprgenerator1(alpha = 10) annotation(Placement(visible = true, transformation(origin = {58.3863,-42.6184}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotatibe151982db6cf70df9edce98f7fde8aca304d663on = 0)));
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
        annotation(experimbe151982db6cf70df9edce98f7fde8aca304d663ent(StopTime = 1), Diagram, Icon);
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
        SIunits.CurrentDensity i_sc_actual(start = 0) annotation(Placement(transformation(origin = {65.7025,66.1157}, extent = {{-12,-12},{12,12}})));
        parameter SIunits.Angle phi = 0.0 "Angle between the vector normal to the active PVA (Photovoltaic Solar Array) surface and the plane of the incident solar radiation." annotation(Placement(transformation(origin = {68.1818,62.3967}, extent = {{-12,-12},{12,12}})));
        parameter Real N_s = 25.0 "Number of series-connected solar cells per string" annotation(Placement(transformation(origin = {69.8347,63.2231}, extent = {{-12,-12},{12,12}})));
        SIunits.Current i_sc = A_cell * N_p * I_sc annotation(Placement(transformation(origin = {69.4215,67.7686}, extent = {{-12,-12},{12,12}})));
        parameter Real Maxexp = 17 "Maximum exponent" annotation(Placement(transformation(origin = {61.3861,65.9123}, extent = {{-12,-12},{12,12}})));
        parameter SIunits.Resistance R_sh = 10000 annotation(Placement(transformation(origin = {62.5177,58.2744}, extent = {{-12,-12},{12,12}})));
        SIunits.Current i(start = 0) annotation(Placement(transformation(origin = {65.6294,64.4979}, extent = {{-12,-12},{12,12}})));
        Modelica.Electrical.Analog.Sources.SignalCurrent I_photonic annotation(Placement(transformation(origin = {-43,3}, extent = {{12,-12},{-12,12}}, rotation = -90)));
        Modelica.Electrical.Analog.Semiconductors.Diode D_shunt(Vt = (N_s * V_oc) / log(I_sc / Ids + 1), Maxexp = Maxexp) annotation(Placement(transformation(origin = {-13,3}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor R_shunt(R = R_sh) annotation(Placement(transformation(origin = {22,3}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        input Modelica.Blocks.Interfaces.RealInput E_s(start = 1367.0, final quantity = "Power", final unit = "W") "Solarkonstante" annotation(Placement(transformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {-1.26783,70.9984}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor R_series(R = 0.00001) annotation(Placement(visible = true, transformation(origin = {57.422,-1.93449}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      protected
        parameter SIunits.CurrentDensity Ids = 0.000001 "Diode Saturation Current" annotation(Placement(transformation(origin = {66.1952,63.0834}, extent = {{-12,-12},{12,12}})));
      equation
        i = n.i;
        i_sc_actual = (i_sc * E_s) / E0;
        I_photonic.i = i_sc_actual;
        connect(D_shunt.p,R_shunt.p) annotation(Line(points = {{-13,15},{-13,21.2838},{21.9595,21.2838},{21.9595,14.8649},{21.9595,14.8649}}));
        connect(I_photonic.n,D_shunt.p) annotation(Line(points = {{-43,15},{-43,21.9595},{-13.1757,21.9595},{-13.1757,15.8784},{-13.1757,15.8784}}));
        connect(D_shunt.n,I_photonic.p) annotation(Line(points = {{-13,-9},{-13,-9.12162},{-43.5811,-9.12162},{-43.5811,-9.12162}}));
        connect(R_shunt.n,D_shunt.n) annotation(Line(points = {{22,-9},{22,-8.78378},{-13.1757,-8.78378},{-13.1757,-8.78378}}));
        connect(R_shunt.p,R_series.p) annotation(Line(points = {{22,15},{22,21.2838},{45.6081,21.2838},{45.6081,-1.35135},{45.6081,-1.35135}}));
        connect(p,I_photonic.p) annotation(Line(points = {{-100,0},{-76.3514,0},{-76.3514,-9.12162},{-42.9054,-9.12162},{-42.9054,-9.12162}}));
        connect(R_series.n,n) annotation(Line(points = {{69.422,-1.93449},{98.9865,-1.93449},{98.9865,-2.36486},{98.9865,-2.36486}}));
        annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}), graphics = {Ellipse(fillColor = {0,0,255}, extent = {{-48.9392,47.8076},{46.6761,-50.0707}}),Line(points = {{-78.3593,89.1089},{-41.5842,46.6761},{-43.5644,60.5375},{-41.867,46.6761},{-53.7482,50.0707}}),Line(points = {{-56.5771,92.2207},{-26.8741,55.7284},{-37.9066,59.4059},{-27.4399,56.0113},{-27.7228,66.1952}}),Line(points = {{-89.6747,0.282885},{-19.5191,0.282885}}),Line(points = {{89.6747,0.282885},{5.09194,0.282885}}),Line(points = {{-18.3876,-37.3409},{-18.3876,40.1697}}),Line(points = {{4.24328,-17.5389},{4.24328,18.6704}}),Line(points = {{76.9449,-20.3678},{76.9449,-52.6167}}),Line(points = {{63.3664,-35.6436},{90.2405,-35.6436}}),Line(points = {{-92.2207,-34.512},{-66.4781,-34.512}})}), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}})), experiment(StopTime = 1, StartTime = 0));
      end solarcell_simple;
      model EVS4
        Modelica.Blocks.Sources.Sine sine1(amplitude = 500, freqHz = 0.001, phase = -90, offset = 500) annotation(Placement(visible = true, transformation(origin = {-74.8314,-3.05553}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-9.9095,-43.1523}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-31.0897,-2.88462}, extent = {{12,-12},{-12,12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      equation
        connect(resistor1.n,ground1.p) annotation(Line(points = {{59.9359,-18.4103},{-10,-18.4103},{-10,-31.1523},{-9.9095,-31.1523}}));
        connect(solarcell_simple1.n,resistor1.p) annotation(Line(points = {{-31.0897,9.11538},{59.7059,9.11538},{59.7059,5.58974},{59.9359,5.58974}}));
        connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-31.0897,-14.8846},{-9.9359,-14.8846},{-9.9359,-31.1523},{-9.9095,-31.1523}}));
        connect(sine1.y,solarcell_simple1.E_s) annotation(Line(points = {{-61.6314,-3.05553},{-39.8868,-3.05553},{-39.8868,-3.03675},{-39.6096,-3.03675}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
      end EVS4;
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
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.0001) annotation(Placement(visible = true, transformation(origin = {-67.3267,12.447}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      equation
        connect(capacitor1.n,n1) annotation(Line(points = {{-67.3267,0.446959},{-67.8925,0.446959},{-67.8925,-39.8868},{-92.7864,-39.8868},{-92.7864,-40.4526}}));
        connect(p1,capacitor1.p) annotation(Line(points = {{-92.2207,41.867},{-67.6096,41.867},{-67.6096,24.447},{-67.3267,24.447}}));
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
      package examples
        model powerdctest
          Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-55.7285,-43.5643}, extent = {{-12,-12},{12,12}}, rotation = 0)));
          Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-36.2726,-13.0493}, extent = {{12,12},{-12,-12}}, rotation = -180)));
          Modelica.Electrical.Analog.Sources.SineVoltage sinevoltage1(V = 35, phase = 90, freqHz = 0.0002) annotation(Placement(visible = true, transformation(origin = {-78.3593,-1.69731}, extent = {{-12,12},{12,-12}}, rotation = -90)));
          dcmodel.DCtoPower dctopower1(m = 1, V_in_max = 100, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {24.373,6.47989}, extent = {{-12,-12},{12,12}}, rotation = 0)));
          Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 10) annotation(Placement(visible = true, transformation(origin = {-48.6014,20.979}, extent = {{12,12},{-12,-12}}, rotation = -180)));
          Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-7.34162,21.0003}, extent = {{-12,-12},{12,12}}, rotation = 0)));
          iboss_power_consumption.OBCpower obcpower1 annotation(Placement(visible = true, transformation(origin = {72.7273,23.4266}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        equation
          connect(dctopower1.power_out[1],obcpower1.power_in) annotation(Line(points = {{36.4918,6.37805},{55.5944,6.37805},{55.5944,23.3846},{60.9371,23.3846}}));
          connect(constantvoltage1.p,resistor2.p) annotation(Line(points = {{-36.6014,20.979},{-19.9301,20.979},{-19.9301,21.0003},{-19.3416,21.0003}}));
          connect(resistor2.n,dctopower1.p) annotation(Line(points = {{4.65838,21.0003},{12.2378,21.0003},{12.2378,11.0966},{12.3561,11.0966}}));
          connect(constantvoltage1.n,sinevoltage1.p) annotation(Line(points = {{-60.6014,20.979},{-78.6713,20.979},{-78.6713,10.3027},{-78.3593,10.3027}}));
          connect(dctopower1.n,resistor3.p) annotation(Line(points = {{12.3561,1.72741},{12.9371,1.72741},{12.9371,-12.9371},{-24.2726,-12.9371},{-24.2726,-13.0493}}));
          connect(sinevoltage1.n,resistor3.n) annotation(Line(points = {{-78.3593,-13.6973},{-47.5248,-13.6973},{-47.5248,-13.0493},{-48.2726,-13.0493}}));
          connect(ground1.p,resistor3.n) annotation(Line(points = {{-55.7285,-31.5643},{-55.7285,-13.5785},{-48.3734,-13.5785},{-48.3734,-13.0493},{-48.2726,-13.0493}}));
          annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
        end powerdctest;
      end examples;
    end dcmodel;
    package examples
      model unregulated_DET
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-39.6389,-49.1485}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 90, width = 3600, falling = 90, period = 5000) annotation(Placement(visible = true, transformation(origin = {-84,-5}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        power.solar_power.solarcell_simple solarcell_simple1(N_p = 1, N_s = 25.0) annotation(Placement(visible = true, transformation(origin = {-52,-5}, extent = {{-10,-10},{10,10}}, rotation = 90)));
        power.batteries.battery battery1(soc(start = 0.5), Vnominal = 40) annotation(Placement(visible = true, transformation(origin = {13.9999,-3}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        satcomponents.power.PCU pcu1 annotation(Placement(visible = true, transformation(origin = {46.8208,5.20231}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode2 annotation(Placement(visible = true, transformation(origin = {3.92868,27.3333}, extent = {{10,-10},{-10,10}}, rotation = 180)));
        Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-38.9942,27.4662}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Semiconductors.ZDiode zdiode1(Bv = 39) annotation(Placement(visible = true, transformation(origin = {-17.0424,-5}, extent = {{-10,-10},{10,10}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 13) annotation(Placement(visible = true, transformation(origin = {75.9248,26.9653}, extent = {{-9.62429,-9.62429},{9.62429,9.62429}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 20) annotation(Placement(visible = true, transformation(origin = {76.3005,6.06937}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(visible = true, transformation(origin = {76.3006,-16.763}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      equation
        connect(resistor3.n,pcu1.gnd) annotation(Line(points = {{86.3006,-16.763},{86.4162,-16.763},{86.4162,-36.9942},{56.9364,-36.9942},{56.9364,-1.15607},{56.9364,-1.15607}}));
        connect(resistor2.n,resistor3.n) annotation(Line(points = {{86.3005,6.06937},{86.4162,6.06937},{86.4162,-16.763},{86.4162,-16.763}}));
        connect(resistor1.n,resistor2.n) annotation(Line(points = {{85.5491,26.9653},{86.1272,26.9653},{86.1272,6.06936},{86.1272,6.06936}}));
        connect(resistor2.p,pcu1.VCC5) annotation(Line(points = {{66.3005,6.06937},{56.6474,6.06937},{56.6474,6.06936},{56.6474,6.06936}}));
        connect(pcu1.VCC3,resistor3.p) annotation(Line(points = {{56.8349,2.88265},{66.185,2.88265},{66.185,-16.763},{66.185,-16.763}}));
        connect(resistor1.p,pcu1.VCC12) annotation(Line(points = {{66.3006,26.9653},{66.185,26.9653},{66.185,9.82659},{56.6474,9.82659},{56.6474,9.82659}}));
        connect(idealdiode1.n,zdiode1.n) annotation(Line(points = {{-28.9942,27.4662},{-17.052,27.4662},{-17.052,4.62428},{-17.052,4.62428}}));
        connect(zdiode1.n,idealdiode2.p) annotation(Line(points = {{-17.0424,5},{-17.0424,27.4566},{-6.35838,27.4566},{-6.35838,27.4566}}));
        connect(solarcell_simple1.p,zdiode1.p) annotation(Line(points = {{-52,-15},{-52,-15},{-21.6667,-15},{-17.0424,-15}}));
        connect(solarcell_simple1.n,idealdiode1.p) annotation(Line(points = {{-52,5},{-52,18},{-52,27.4662},{-48.9942,27.4662}}));
        connect(idealdiode2.n,battery1.p) annotation(Line(points = {{13.9287,27.3333},{13.9287,7.66667},{14,7.66667},{14,7.66667}}));
        connect(pcu1.GND,battery1.n) annotation(Line(points = {{36.7218,0.76101},{36.4162,0.76101},{36.4162,-36.9942},{13.8728,-36.9942},{13.8728,-12.7168},{13.8728,-12.7168}}));
        connect(pcu1.gnd,pcu1.GND) annotation(Line(points = {{56.8349,-1.1909},{56.9364,-1.1909},{56.9364,-36.9942},{36.4162,-36.9942},{36.4162,0.867052},{36.4162,0.867052}}));
        connect(battery1.p,pcu1.VCC) annotation(Line(points = {{13.9999,7},{13.9999,6.06936},{36.4162,6.06936},{36.4162,6.06936}}));
        connect(battery1.n,ground1.p) annotation(Line(points = {{13.9999,-13},{13.9999,-37},{-39.6667,-37},{-39.6667,-37}}));
        connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-52,-15},{-52,-37},{-39.6667,-37},{-39.6667,-37}}));
        connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-73,-5},{-60.3333,-5},{-60.3333,-5},{-60.3333,-5}}));
        annotation(Diagram, Icon, experiment(StartTime = 0.0, StopTime = 40000.0, Tolerance = 0.000001));
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
      model EVS3
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {24.611,3.39463}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2(V_out = 5, V_in_min = 8) annotation(Placement(visible = true, transformation(origin = {24.611,33.3805}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved3(V_out = 3.3, V_in_min = 5) annotation(Placement(visible = true, transformation(origin = {23.4795,66.4781}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 25) annotation(Placement(visible = true, transformation(origin = {59.6888,34.512}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 25) annotation(Placement(visible = true, transformation(origin = {60.2546,67.0438}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1000, rising = 2, falling = 2, period = 3000, width = 1000) annotation(Placement(visible = true, transformation(origin = {-77.5106,-1.41443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-44.9511,-2.60173}, extent = {{12,-12},{-12,12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-28.0029,-43.6886}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor5 annotation(Placement(visible = true, transformation(origin = {-14.4272,25.1768}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor4 annotation(Placement(visible = true, transformation(origin = {-13.5785,-1.69731}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      equation
        connect(resistor5.p,solarcell_simple1.n) annotation(Line(points = {{-26.4272,25.1768},{-45.8274,25.1768},{-45.8274,9.39827},{-44.9511,9.39827}}));
        connect(resistor4.p,ground1.p) annotation(Line(points = {{-25.5785,-1.69731},{-28.0057,-1.69731},{-28.0057,-31.6886},{-28.0029,-31.6886}}));
        connect(resistor4.n,dcdc_ideal_simple_improved3.n1) annotation(Line(points = {{-1.5785,-1.69731},{6.22348,-1.69731},{6.22348,61.669},{12.3451,61.669},{12.3451,61.6238}}));
        connect(resistor4.n,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-1.5785,-1.69731},{5.94059,-1.69731},{5.94059,28.5714},{13.4767,28.5714},{13.4767,28.5262}}));
        connect(resistor4.n,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-1.5785,-1.69731},{13.0127,-1.69731},{13.0127,-1.45968},{13.4767,-1.45968}}));
        connect(resistor5.n,dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-2.42716,25.1768},{-2.26308,25.1768},{-2.26308,9.05233},{13.5446,9.05233},{13.5446,8.41867}}));
        connect(resistor5.n,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-2.42716,25.1768},{-2.26308,25.1768},{-2.26308,38.4724},{13.5445,38.4724},{13.5445,38.4045}}));
        connect(resistor5.n,dcdc_ideal_simple_improved3.p1) annotation(Line(points = {{-2.42716,25.1768},{-2.54597,25.1768},{-2.54597,71.57},{12.413,71.57},{12.413,71.5021}}));
        connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-64.3106,-1.41443},{-54.314,-1.41443},{-54.314,-2.75387},{-53.4709,-2.75387}}));
        connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-44.9511,-14.6017},{-41.3362,-14.6017},{-41.3362,-31.6886},{-28.0029,-31.6886}}));
        connect(resistor2.n,dcdc_ideal_simple_improved2.n2) annotation(Line(points = {{59.6888,22.512},{46.3932,22.512},{46.3932,28.2885},{35.7793,28.2885},{35.7793,27.7454}}));
        connect(dcdc_ideal_simple_improved2.p2,resistor2.p) annotation(Line(points = {{35.7115,38.4724},{46.6761,38.4724},{46.6761,48.3734},{59.1231,48.3734},{59.1231,46.512},{59.6888,46.512}}));
        connect(resistor3.n,dcdc_ideal_simple_improved3.n2) annotation(Line(points = {{60.2546,55.0438},{46.1103,55.0438},{46.1103,61.1033},{34.6478,61.1033},{34.6478,60.843}}));
        connect(dcdc_ideal_simple_improved3.p2,resistor3.p) annotation(Line(points = {{34.5799,71.57},{43.2815,71.57},{43.2815,80.0566},{60.2546,80.0566},{60.2546,79.0438}}));
        connect(resistor1.n,dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359,-18.4103},{42.4328,-18.4103},{42.4328,-2.24045},{35.7794,-2.24045}}));
        connect(dcdc_ideal_simple_improved1.p2,resistor1.p) annotation(Line(points = {{35.7115,8.48656},{59.9717,8.48656},{59.9717,5.58974},{59.9359,5.58974}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
      end EVS3;
      model EVS5
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1(V_out = 12, V_in_min = 15) annotation(Placement(visible = true, transformation(origin = {24.611,3.39463}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1000, rising = 60, falling = 60, period = 3000, width = 1000) annotation(Placement(visible = true, transformation(origin = {-77.5106,-1.41443}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-28.0029,-43.6886}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 0.001) annotation(Placement(visible = true, transformation(origin = {-13.5785,-1.69731}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-44.9511,-2.60173}, extent = {{12,-12},{-12,12}}, rotation = 90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor5(R = 0.001) annotation(Placement(visible = true, transformation(origin = {-14.1443,17.5389}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved2 annotation(Placement(visible = true, transformation(origin = {25.4597,32.2489}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 25) annotation(Placement(visible = true, transformation(origin = {59.6888,29.703}, extent = {{-12,12},{12,-12}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1 annotation(Placement(visible = true, transformation(origin = {6.22348,-22.6308}, extent = {{-12,12},{12,-12}}, rotation = -90)));
      equation
        connect(capacitor1.n,ground1.p) annotation(Line(points = {{6.22348,-34.6308},{-8.76945,-34.6308},{-8.76945,-31.6832},{-28.0029,-31.6832},{-28.0029,-31.6886}}));
        connect(dcdc_ideal_simple_improved1.n1,capacitor1.p) annotation(Line(points = {{13.4766,-1.45968},{5.94059,-1.45968},{5.94059,-10.6308},{6.22348,-10.6308}}));
        connect(dcdc_ideal_simple_improved2.n2,resistor2.n) annotation(Line(points = {{36.628,26.6139},{47.2419,26.6139},{47.2419,17.8218},{59.6888,17.8218},{59.6888,17.703}}));
        connect(dcdc_ideal_simple_improved2.p2,resistor2.p) annotation(Line(points = {{36.5601,37.3409},{47.2419,37.3409},{47.2419,41.5842},{59.6888,41.5842},{59.6888,41.703}}));
        connect(resistor5.n,dcdc_ideal_simple_improved2.p1) annotation(Line(points = {{-2.14431,17.5389},{-1.69731,17.5389},{-1.69731,37.6238},{14.3932,37.6238},{14.3932,37.273}}));
        connect(resistor4.n,dcdc_ideal_simple_improved2.n1) annotation(Line(points = {{-1.5785,-1.69731},{6.50636,-1.69731},{6.50636,27.7228},{14.3253,27.7228},{14.3253,27.3946}}));
        connect(resistor5.p,solarcell_simple1.n) annotation(Line(points = {{-26.1443,17.5389},{-45.8274,17.5389},{-45.8274,9.39827},{-44.9511,9.39827}}));
        connect(resistor5.n,dcdc_ideal_simple_improved1.p1) annotation(Line(points = {{-2.14431,17.5389},{-2.26308,17.5389},{-2.26308,9.05233},{13.5445,9.05233},{13.5445,8.41867}}));
        connect(resistor4.p,ground1.p) annotation(Line(points = {{-25.5785,-1.69731},{-28.0057,-1.69731},{-28.0057,-31.6886},{-28.0029,-31.6886}}));
        connect(resistor4.n,dcdc_ideal_simple_improved1.n1) annotation(Line(points = {{-1.5785,-1.69731},{13.0127,-1.69731},{13.0127,-1.45968},{13.4767,-1.45968}}));
        connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-64.3106,-1.41443},{-54.314,-1.41443},{-54.314,-2.75387},{-53.4709,-2.75387}}));
        connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-44.9511,-14.6017},{-41.3362,-14.6017},{-41.3362,-31.6886},{-28.0029,-31.6886}}));
        connect(resistor1.n,dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359,-18.4103},{42.4328,-18.4103},{42.4328,-2.24045},{35.7794,-2.24045}}));
        connect(dcdc_ideal_simple_improved1.p2,resistor1.p) annotation(Line(points = {{35.7115,8.48656},{59.9717,8.48656},{59.9717,5.58974},{59.9359,5.58974}}));
        annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
      end EVS5;
      model PCU_example
        extends Modelica.Icons.Example;
        satcomponents.power.batteries.battery battery1(Vnominal = 20, soc(start = 0.9)) annotation(Placement(visible = true, transformation(origin = {-86.1272,-5.49133}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        satcomponents.power.PCU pcu1 annotation(Placement(visible = true, transformation(origin = {-37.2832,4.04624}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {23.9884,22.2543}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 100) annotation(Placement(visible = true, transformation(origin = {24.2775,1.15607}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(Placement(visible = true, transformation(origin = {24.5665,-21.3873}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-63.2948,-24.2775}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      equation
        connect(pcu1.GND,pcu1.gnd) annotation(Line(points = {{-47.3822,-0.39506},{-48.2659,-0.39506},{-48.2659,-10.1156},{-26.8786,-10.1156},{-26.8786,-2.60116},{-26.8786,-2.60116}}));
        connect(ground1.p,pcu1.GND) annotation(Line(points = {{-63.2948,-14.2775},{-48.2659,-14.2775},{-48.2659,0},{-48.2659,0}}));
        connect(battery1.n,ground1.p) annotation(Line(points = {{-86.1272,-15.4913},{-86.1272,-14.4509},{-63.2948,-14.4509},{-63.2948,-14.4509}}));
        connect(battery1.p,pcu1.VCC) annotation(Line(points = {{-86.1272,4.50867},{-86.1272,4.91329},{-47.9769,4.91329},{-47.9769,4.91329}}));
        connect(pcu1.gnd,resistor3.n) annotation(Line(points = {{-27.2691,-2.34697},{-21.0983,-2.34697},{-21.0983,-40.4624},{42.7746,-40.4624},{42.7746,-21.3873},{34.3931,-21.3873},{34.3931,-21.3873}}));
        connect(resistor2.n,resistor1.n) annotation(Line(points = {{34.2775,1.15607},{42.4855,1.15607},{42.4855,22.2543},{34.104,22.2543},{34.104,22.2543}}));
        connect(resistor3.n,resistor2.n) annotation(Line(points = {{34.5665,-21.3873},{42.7746,-21.3873},{42.7746,1.15607},{34.104,1.15607},{34.104,1.15607}}));
        connect(pcu1.VCC3,resistor3.p) annotation(Line(points = {{-27.2691,1.72658},{-15.3179,1.72658},{-15.3179,-21.3873},{14.4509,-21.3873},{14.4509,-21.3873}}));
        connect(pcu1.VCC5,resistor2.p) annotation(Line(points = {{-27.2973,4.92318},{-12.1387,4.92318},{-12.1387,1.15607},{14.1618,1.15607},{14.1618,1.15607}}));
        connect(resistor1.p,pcu1.VCC12) annotation(Line(points = {{13.9884,22.2543},{-12.1387,22.2543},{-12.1387,8.67052},{-27.1676,8.67052},{-27.1676,8.67052}}));
        annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
      end PCU_example;
      model solarpowerwithbattery
        extends Modelica.Icons.Example;
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-39.6389,-49.1485}, extent = {{-12,-12},{12,12}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 90, width = 3600, falling = 90, period = 5000) annotation(Placement(visible = true, transformation(origin = {-84,-5}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        power.solar_power.solarcell_simple solarcell_simple1(N_p = 1, N_s = 25.0) annotation(Placement(visible = true, transformation(origin = {-52,-5}, extent = {{-10,-10},{10,10}}, rotation = 90)));
        power.batteries.battery battery1(soc(start = 0.5), Vnominal = 40) annotation(Placement(visible = true, transformation(origin = {13.9999,-3}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 40) annotation(Placement(visible = true, transformation(origin = {42.1098,-2.80349}, extent = {{-9.62429,-9.62429},{9.62429,9.62429}}, rotation = -90)));
      equation
        connect(solarcell_simple1.n,battery1.p) annotation(Line(points = {{-52,5},{-52,7.22543},{13.8728,7.22543},{13.8728,7.22543}}));
        connect(resistor1.n,battery1.n) annotation(Line(points = {{42.1098,-12.4278},{42.1098,-13.0058},{13.8728,-13.0058},{13.8728,-13.0058}}));
        connect(battery1.p,resistor1.p) annotation(Line(points = {{13.9999,7},{13.9999,7.22543},{41.3295,7.22543},{41.3295,7.22543}}));
        connect(battery1.n,ground1.p) annotation(Line(points = {{13.9999,-13},{13.9999,-37},{-39.6667,-37},{-39.6667,-37}}));
        connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-52,-15},{-52,-37},{-39.6667,-37},{-39.6667,-37}}));
        connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-73,-5},{-60.3333,-5},{-60.3333,-5},{-60.3333,-5}}));
        annotation(Diagram, Icon, experiment(StartTime = 0.0, StopTime = 40000.0, Tolerance = 0.000001));
      end solarpowerwithbattery;
      model EPS_without_GND
        satcomponents.power.solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-34.3931,-37.2832}, extent = {{10,-10},{-10,10}}, rotation = 0)));
        satcomponents.power.batteries.battery battery1(Vnominal = 40.0) annotation(Placement(visible = true, transformation(origin = {-33.815,8.3815}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1367, rising = 10, width = 1200, falling = 10, period = 5000, startTime = 1000) annotation(Placement(visible = true, transformation(origin = {-82.948,-17.341}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor Kontaktwiederstand(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-13.5838,29.1908}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor Kontaktwiderstand2(R = 0.0001) annotation(Placement(visible = true, transformation(origin = {-13.8728,-15.6069}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {51.7341,-19.9422}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.0000000001) annotation(Placement(visible = true, transformation(origin = {11.5607,-36.4162}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Capacitor capacitor2(C = 0.0000000001) annotation(Placement(visible = true, transformation(origin = {13.2948,47.3988}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100) annotation(Placement(visible = true, transformation(origin = {-33.237,48.5549}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      equation
        connect(resistor1.n,resistor2.p) annotation(Line(points = {{-23.237,48.5549},{-12.4277,48.5549},{-12.4277,39.7688},{-13.5838,39.1908}}));
        connect(battery1.p,resistor1.p) annotation(Line(points = {{-43.815,8.3815},{-58.0925,8.3815},{-57.2254,48.5549},{-43.237,48.5549},{-43.237,48.5549}}));
        connect(capacitor2.n,ground1.p) annotation(Line(points = {{23.2948,47.3988},{51.7341,47.3988},{51.7341,-9.53757},{51.7341,-9.53757}}));
        connect(Kontaktwiederstand.p,capacitor2.p) annotation(Line(points = {{-13.5838,39.1908},{-13.5838,47.3988},{3.17919,47.3988},{3.17919,47.3988}}));
        connect(capacitor1.n,ground1.p) annotation(Line(points = {{21.5607,-36.4162},{28.3237,-36.4162},{28.3237,-9.82659},{51.4451,-9.82659},{51.4451,-9.82659}}));
        connect(Kontaktwiderstand2.n,capacitor1.p) annotation(Line(points = {{-13.8728,-25.6069},{-13.8728,-36.9942},{1.44509,-36.9942},{1.44509,-36.9942}}));
        connect(Kontaktwiederstand.n,battery1.n) annotation(Line(points = {{-13.5838,19.1908},{-13.5838,8.67052},{-23.9884,8.67052},{-23.9884,8.67052}}));
        connect(resistor1.n,Kontaktwiederstand.p) annotation(Line(points = {{-24.104,47.9769},{-13.2948,47.9769},{-13.2948,39.3064},{-13.2948,39.3064}}));
        connect(battery1.n,ground1.p) annotation(Line(points = {{-23.815,8.3815},{15.6069,8.3815},{51.7341,7.68786},{51.7341,-9.9422}}));
        connect(Kontaktwiderstand2.n,solarcell_simple1.p) annotation(Line(points = {{-13.8728,-25.6069},{-13.8728,-37.2832},{-24.5665,-37.2832},{-24.5665,-37.2832}}));
        connect(battery1.n,Kontaktwiderstand2.p) annotation(Line(points = {{-23.815,8.3815},{-14.1618,8.3815},{-14.1618,-5.20231},{-14.1618,-5.20231}}));
        connect(trapezoid1.y,solarcell_simple1.E_s) annotation(Line(points = {{-71.948,-17.341},{-34.3931,-17.341},{-34.3931,-30.3468},{-34.3931,-30.3468}}));
        connect(solarcell_simple1.n,battery1.p) annotation(Line(points = {{-44.3931,-37.2832},{-58.0925,-37.2832},{-58.0925,8.3815},{-43.6416,8.3815},{-43.6416,8.3815}}));
        annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Rectangle(origin = {-35.6936,-36.5607}, extent = {{-33.9595,23.2659},{34.8266,-21.2428}}),Rectangle(origin = {-35.1156,8.95954}, extent = {{-35.1156,17.9191},{35.1156,-17.9191}}),Rectangle(origin = {-37.5723,53.4682}, extent = {{-30.6358,20.2312},{36.7052,-20.5202}}),Text(origin = {-74.8555,82.2254}, extent = {{-13.2948,5.0578},{71.0982,-10.8381}}, textString = "Verbraucherbaustein"),Text(origin = {-82.0232,33.7283}, extent = {{-13.2948,5.0578},{55.4913,-12.8612}}, textString = "Batteriebaustein"),Text(origin = {-63.4682,-61.3006}, extent = {{-13.2948,5.0578},{28.9017,-10.5491}}, textString = "Solarbaustein")}));
      end EPS_without_GND;
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
    end examples;
    block Exprgenerator "Generate exponential signal"
      parameter Real alpha = 1;
      parameter Real beta = 1;
      extends Modelica.Blocks.Interfaces.SO;
    equation
      //y = alpha * exp(beta * time);exp function
      y = exp(alpha * time) - 1;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,-80},{0,68}}, color = {192,192,192}),Polygon(points = {{0,90},{-8,68},{8,68},{0,90}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Text(extent = {{-86,50},{-14,2}}, lineColor = {192,192,192}, textString = "exp"),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Line(points = {{-90,-80.3976},{68,-80.3976}}, color = {192,192,192}),Polygon(points = {{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Line(points = {{0,80},{-8,80}}, color = {192,192,192}),Line(points = {{0,-80},{-8,-80}}, color = {192,192,192}),Line(points = {{0,-90},{0,84}}, color = {192,192,192}),Text(extent = {{9,100},{40,80}}, lineColor = {160,160,164}, textString = "y"),Polygon(points = {{0,100},{-6,84},{6,84},{0,100}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-100,-80.3976},{84,-80.3976}}, color = {192,192,192}),Polygon(points = {{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}}, lineColor = {192,192,192}, fillColor = {192,192,192}, fillPattern = FillPattern.Solid),Line(points = {{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color = {0,0,0}),Text(extent = {{-31,72},{-11,88}}, textString = "20", lineColor = {0,0,255}),Text(extent = {{-92,-83},{-72,-103}}, textString = "-3", lineColor = {0,0,255}),Text(extent = {{70,-83},{90,-103}}, textString = "3", lineColor = {0,0,255}),Text(extent = {{-18,-53},{2,-73}}, textString = "1", lineColor = {0,0,255}),Text(extent = {{66,-52},{96,-72}}, lineColor = {160,160,164}, textString = "u")}));
    end Exprgenerator;
    model verbraucher_pid
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
    end verbraucher_pid;
    model verbraucher
      parameter Modelica.SIunits.Power power_nominal = 10.0;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-49.6667,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-49.6667,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {47.3333,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {47.3333,-99.3333}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Rectangle(origin = {1.83333,-2.83333}, extent = {{-84.1667,-92.1667},{84.1667,92.1667}}),Text(origin = {1.66667,63}, extent = {{-63.3333,10.6667},{63.3333,-10.6667}}, textString = "Verbraucher"),Text(origin = {3,-23}, extent = {{-61.3333,35.3333},{61.3333,-35.3333}}, textString = "%power_nominal W")}), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.000001));
    end verbraucher;
  end power;
  package AOCS
    model freerotatingcube
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-63.3333,16.6667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyBox bodybox1(r = {0,0.1,0.0}, r_shape = {0,0,0}, lengthDirection = {0,1,0}, widthDirection = {1,0,0}, length = 0.1, width = 0.2, height = 0.1, innerWidth = 0, innerHeight = 0, angles_fixed = true, w_0_fixed = true, z_0_fixed = false, mo = 1, w_0_start = {0.1,0.2,0.3}, useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {10.3333,17.6667}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 500.0, Tolerance = 0.0001));
    end freerotatingcube;
    model gyroeffects
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-74.9845,45.4769}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0,0.03,0.02}) annotation(Placement(visible = true, transformation(origin = {-34.688,0.599941}, extent = {{10,-10},{-10,10}}, rotation = 180)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder Reaktionsrad(r = {0,0,0.01}, diameter = 0.03) annotation(Placement(visible = true, transformation(origin = {43.8322,-0.369059}, extent = {{10,-10},{-10,10}}, rotation = 180)));
      Modelica.Mechanics.MultiBody.Parts.Body Struktur(m = 1, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, r_CM = {0,0,0.05}, useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-65.7255,0.291741}, extent = {{-10,-10},{10,10}}, rotation = 180)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n = {0,0,1}, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {5.49878,0.568741}, extent = {{10,-10},{-10,10}}, rotation = 180)));
      Modelica.Mechanics.Rotational.Sources.Torque torque1 annotation(Placement(visible = true, transformation(origin = {2.11161,-32.8808}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(rising = 0.5, width = 2.0, falling = 0.5, startTime = 5.0, period = 10, nperiod = 2, amplitude = 0.001) annotation(Placement(visible = true, transformation(origin = {-57.9059,-33.6468}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-44.2197,45.3757}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    equation
      connect(world.frame_b,freemotion1.frame_a) annotation(Line(points = {{-64.9845,45.4769},{-54.6243,45.4769},{-54.2197,45.6647},{-54.2197,45.3757}}));
      connect(freemotion1.frame_b,Struktur.frame_a) annotation(Line(points = {{-34.2197,45.3757},{-27.4566,45.3757},{-27.4566,23.4104},{-50,23.4104},{-50,0.289017},{-56.0694,0.289017},{-56.0694,0.289017}}));
      connect(trapezoid1.y,torque1.tau) annotation(Line(points = {{-46.9059,-33.6468},{-10.5581,-33.6468},{-10.5581,-33.1825},{-10.5581,-33.1825}}));
      connect(revolute1.axis,torque1.flange) annotation(Line(points = {{5.49878,-9.43126},{22.9261,-9.43126},{22.9261,-33.1825},{12.0664,-33.1825},{12.0664,-33.1825}}));
      connect(torque1.support,revolute1.support) annotation(Line(points = {{2.11161,-42.8808},{-20.5128,-42.8808},{-20.5128,-9.04977},{-0.603318,-9.04977},{-0.603318,-9.04977}}));
      connect(revolute1.frame_a,fixedtranslation1.frame_b) annotation(Line(points = {{-4.50122,0.568741},{-24.8555,0.568741},{-24.8555,0.289017},{-24.8555,0.289017}}));
      connect(revolute1.frame_b,Reaktionsrad.frame_a) annotation(Line(points = {{15.4988,0.568741},{33.526,0.568741},{33.526,0},{33.526,0}}));
      connect(Struktur.frame_a,fixedtranslation1.frame_a) annotation(Line(points = {{-55.7255,0.291741},{-44.9344,0.291741},{-44.9344,0.244841},{-44.9344,0.244841}}));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 30, Tolerance = 0.0001));
    end gyroeffects;
    model cubesatwith3axisreactionwheel
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-74.9845,45.4769}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-44.2197,45.3757}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      satcomponents.Cubesatexample cubesatexample1 annotation(Placement(visible = true, transformation(origin = {7.13873,45.1734}, extent = {{-24.9422,-24.9422},{24.9422,24.9422}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(rising = 20, width = 1000, falling = 20, startTime = 2000, period = 5000, nperiod = -1, amplitude = 1367) annotation(Placement(visible = true, transformation(origin = {-29.8712,-10.2364}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    equation
      connect(trapezoid1.y,cubesatexample1.u) annotation(Line(points = {{-18.8712,-10.2364},{7.51445,-10.2364},{7.51445,19.0751},{7.51445,19.0751}}));
      connect(freemotion1.frame_b,cubesatexample1.frame_a) annotation(Line(points = {{-34.2197,45.3757},{-17.9191,45.3757},{-17.9191,45.9538},{-17.9191,45.9538}}));
      connect(world.frame_b,freemotion1.frame_a) annotation(Line(points = {{-64.9845,45.4769},{-54.6243,45.4769},{-54.2197,45.6647},{-54.2197,45.3757}}));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.0001));
    end cubesatwith3axisreactionwheel;
    model reactionwheelexample
      extends Modelica.Icons.Example;
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0,0.03,0.02}) annotation(Placement(visible = true, transformation(origin = {12.1328,-11.8278}, extent = {{10,-10},{-10,10}}, rotation = 180)));
      satcomponents.AOCS.Parts.reactionwheelsimple reactionwheel1 annotation(Placement(visible = true, transformation(origin = {46.3006,-7.86127}, extent = {{-19.0173,-19.0173},{19.0173,19.0173}}, rotation = -90)));
      Modelica.Electrical.Analog.Sources.PulseVoltage pulsevoltage1(V = 0.5, width = 0.5, period = 7.5, startTime = 10) annotation(Placement(visible = true, transformation(origin = {36.7052,-58.9595}, extent = {{10,-10},{-10,10}}, rotation = 0)));
      Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {8.6705,-69.3641}, extent = {{-10,-10},{10,10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.FreeMotion freemotion1(useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-40.7515,41.3295}, extent = {{10,-10},{-10,10}}, rotation = 90)));
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {1.02706,61.3729}, extent = {{-10,-10},{10,10}}, rotation = 180)));
      satcomponents.AOCS.Parts.Struktur struktur1 annotation(Placement(visible = true, transformation(origin = {-42.8613,-15.5202}, extent = {{-31.3006,-31.3006},{31.3006,31.3006}}, rotation = 0)));
    equation
      connect(struktur1.frame_a,fixedtranslation1.frame_a) annotation(Line(points = {{-41.8662,-14.4347},{2.60116,-14.4347},{2.60116,-11.2717},{2.60116,-11.2717}}));
      connect(freemotion1.frame_b,struktur1.frame_a) annotation(Line(points = {{-40.7515,31.3295},{-40.7515,-13.8728},{-42.1965,-13.8728},{-42.1965,-13.8728}}));
      connect(world.frame_b,freemotion1.frame_a) annotation(Line(points = {{-8.97294,61.3729},{-41.0405,61.3729},{-41.0405,51.1561},{-41.0405,51.1561}}));
      connect(pulsevoltage1.n,ground1.p) annotation(Line(points = {{26.7052,-58.9595},{8.9595,-58.6705},{8.9595,-59.5375},{8.95949,-59.5375}}));
      connect(pulsevoltage1.n,reactionwheel1.pin_n) annotation(Line(points = {{26.7052,-58.9595},{26.3006,-58.6705},{26.3006,-26.5896},{32.948,-26.3006},{32.948,-26.5896}}));
      connect(reactionwheel1.pin_p,pulsevoltage1.p) annotation(Line(points = {{39.76,-26.8786},{39.705,-26.5896},{56.0694,-26.5896},{56.0694,-58.6705},{46.8208,-58.6705},{46.8758,-58.8496}}));
      connect(fixedtranslation1.frame_b,reactionwheel1.frame_a) annotation(Line(points = {{22.1328,-11.8278},{29.7688,-11.5388},{29.7688,-11.4889},{29.7566,-11.4889}}));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 30.0, Tolerance = 0.0001));
    end reactionwheelexample;
    package Parts
      model Struktur
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {3.17919,3.46821}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {3.17919,3.46821}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.Body Struktur(m = 1, I_11 = 0.0018, I_22 = 0.0017, I_33 = 0.0016, r_CM = {0,0,-0.01}, useQuaternions = false) annotation(Placement(visible = true, transformation(origin = {-48.9625,4.04896}, extent = {{-10,-10},{10,10}}, rotation = 180)));
      protected
        outer Modelica.Mechanics.MultiBody.World world;
      equation
        connect(Struktur.frame_a,frame_a) annotation(Line(points = {{-38.9625,4.04896},{3.17919,4.04896},{3.17919,3.75723},{3.17919,3.75723}}));
        annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Rectangle(origin = {65.289,14.2775}, fillColor = {160,160,160}, fillPattern = FillPattern.Solid, extent = {{-4.76879,-70.8092},{4.76879,38.7283}}),Rectangle(origin = {-42.6878,13.526}, fillColor = {160,160,160}, fillPattern = FillPattern.Solid, extent = {{-4.76879,-70.8092},{4.76879,38.7283}}),Polygon(origin = {-3.02666,-68.7861}, fillColor = {160,160,160}, fillPattern = FillPattern.Solid, points = {{-41.482,11.8497},{70.0787,12.1387},{42.333,-12.1387},{-70.0947,-12.1387},{-41.482,11.8497}}),Rectangle(origin = {-71.5318,-12.4277}, fillColor = {160,160,160}, fillPattern = FillPattern.Solid, extent = {{-4.76879,-70.8092},{4.76879,38.7283}}),Rectangle(origin = {36.9075,-12.3699}, fillColor = {160,160,160}, fillPattern = FillPattern.Solid, extent = {{-4.76879,-70.8092},{4.76879,38.7283}}),Text(origin = {5.78035,71.6763}, extent = {{-86.1272,13.2948},{86.1272,-13.2948}}, textString = "%name")}));
      end Struktur;
      model reactionwheelsimple
        Modelica.Mechanics.MultiBody.Joints.Revolute Gelenk(n = {0,0,1}, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-0.859602,-18.5064}, extent = {{10,-10},{-10,10}}, rotation = 270)));
        Modelica.Mechanics.Rotational.Sources.Torque Moment annotation(Placement(visible = true, transformation(origin = {39.3948,-16.4068}, extent = {{10,-10},{-10,10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {19.0752,-86.9942}, extent = {{-10,-10},{10,10}}, rotation = 90), iconTransformation(origin = {19,-100}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {99.711,-67.6301}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {98.2659,-73.4104}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Sensors.PowerSensor powersensor1 annotation(Placement(visible = true, transformation(origin = {71.3873,-23.9884}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {71.3873,-55.4913}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {100,-34.3931}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {98.2659,-37.8613}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.Body Schwungmasse(r_CM = {0,0,0}, m = 0.02, I_11 = 0.0000001, I_22 = 0.0000001, I_33 = 0.0000001) annotation(Placement(visible = true, transformation(origin = {-0.867052,28.0347}, extent = {{-10,-10},{10,10}}, rotation = 90)));
      equation
        connect(Schwungmasse.frame_a,Gelenk.frame_b) annotation(Line(points = {{-0.867052,18.0347},{-0.867052,-8.67052},{-0.578035,-8.67052},{-0.578035,-8.67052}}));
        connect(powersensor1.pc,pin_p) annotation(Line(points = {{71.3873,-13.9884},{71.3873,-3.46821},{88.7283,-3.46821},{88.7283,-34.3931},{100,-34.3931},{100,-34.3931}}));
        connect(powersensor1.pv,resistor1.p) annotation(Line(points = {{81.3873,-23.9884},{81.3873,-45.3757},{71.6763,-45.3757},{71.6763,-45.3757}}));
        connect(powersensor1.nv,resistor1.n) annotation(Line(points = {{61.3873,-23.9884},{61.3873,-65.3179},{71.6763,-65.3179},{71.6763,-65.3179}}));
        connect(resistor1.n,pin_n) annotation(Line(points = {{71.3873,-65.4913},{71.3873,-67.6301},{100,-67.6301},{100,-67.6301}}));
        connect(powersensor1.nc,resistor1.p) annotation(Line(points = {{71.3873,-33.9884},{71.3873,-45.6647},{71.3873,-45.6647},{71.3873,-45.6647}}));
        connect(powersensor1.power,Moment.tau) annotation(Line(points = {{60.3873,-15.9884},{60.3873,-16.474},{51.7341,-16.474},{51.7341,-16.474}}));
        connect(frame_a,Gelenk.frame_a) annotation(Line(points = {{19.0752,-86.9942},{19.0752,-54.0462},{-1.15607,-54.0462},{-1.15607,-28.9017},{-1.15607,-28.9017}}));
        connect(Moment.support,Gelenk.support) annotation(Line(points = {{39.3948,-26.4068},{20.5202,-26.4068},{20.5202,-24.8555},{9.24855,-24.8555},{9.24855,-24.8555}}));
        connect(Moment.flange,Gelenk.axis) annotation(Line(points = {{29.3948,-16.4068},{20.5202,-16.4068},{20.5202,-18.4971},{8.3815,-18.4971},{8.3815,-18.4971}}));
        annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0, StopTime = 30, Tolerance = 0.0001), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Ellipse(origin = {19.7977,-28.6127}, fillColor = {192,192,255}, fillPattern = FillPattern.Solid, extent = {{-49.5665,9.53757},{49.5665,-9.53757}}, endAngle = 360),Rectangle(origin = {19.6532,-22.5434}, fillColor = {192,192,255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-48.8439,6.93642},{48.8439,-6.93642}}),Ellipse(origin = {19.2775,-17.2832}, fillPattern = FillPattern.Solid, extent = {{-49.5665,9.53757},{49.5665,-9.53757}}, endAngle = 360),Text(origin = {5.67671,-6.18507}, extent = {{-38.1503,29.0462},{1.94049,-3.66549}}, textString = "1D"),Rectangle(origin = {18.0636,18.3526}, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-4.19075,13.4393},{5.34682,-34.5376}}),Polygon(origin = {19.0566,42.6365}, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-1.42648,13.1438},{11.0013,-12.5788},{-10.9641,-12.5788},{-1.42648,13.1438}}),Rectangle(origin = {21.3873,-62.4277}, extent = {{-8.67052,24.2775},{2.31214,-25.7225}}),Rectangle(origin = {18.3526,-61.5607}, fillColor = {0,64,0}, fillPattern = FillPattern.VerticalCylinder, extent = {{-17.7746,11.8497},{17.7746,-11.8497}}),Line(origin = {56.9364,-46.9653}, points = {{-30.9249,-8.81503},{20.5202,-8.81503},{20.5202,8.81503},{30.9249,8.81503}}),Line(origin = {61.9942,-69.7977}, points = {{26.1561,-3.90173},{16.0405,-3.90173},{16.0405,3.90173},{-26.1561,3.90173}}),Text(origin = {82.6589,-11.5607}, extent = {{-15.896,13.0058},{15.896,-13.0058}}, textString = "+"),Text(origin = {80.2023,-95.2312}, extent = {{-18.6416,23.5549},{18.9306,-18.3526}}, textString = "-"),Text(origin = {-47.8536,39.6233}, extent = {{-33.6717,47.8849},{133.164,11.3368}}, textString = "%name")}));
      end reactionwheelsimple;
      model reactionwheel3axis
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-99.422,5.20231}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-99.422,5.20231}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        satcomponents.AOCS.Parts.reactionwheelsimple X_wheel annotation(Placement(visible = true, transformation(origin = {-23.1503,61.0694}, extent = {{-16.2717,-16.2717},{16.2717,16.2717}}, rotation = -90)));
        satcomponents.AOCS.Parts.reactionwheelsimple Z_wheel annotation(Placement(visible = true, transformation(origin = {-23.6705,-38.0058}, extent = {{-16.2717,-16.2717},{16.2717,16.2717}}, rotation = -90)));
        satcomponents.AOCS.Parts.reactionwheelsimple Y_wheel annotation(Placement(visible = true, transformation(origin = {-21.763,14.4798}, extent = {{-16.2717,-16.2717},{16.2717,16.2717}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage2 annotation(Placement(visible = true, transformation(origin = {18.5549,-1.6763}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage3 annotation(Placement(visible = true, transformation(origin = {20.0578,-53.9306}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation X_axis annotation(Placement(visible = true, transformation(origin = {-54.2418,57.8035}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation Y_axis(angles = {-90,0,0}) annotation(Placement(visible = true, transformation(origin = {-55.7601,11.066}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation Z_axis(angles = {0,-90,0}) annotation(Placement(visible = true, transformation(origin = {-54.6141,-41.1629}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(visible = true, transformation(origin = {19.9422,52.8902}, extent = {{-10,-10},{10,10}}, rotation = -90)));
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-26.8786,-97.9769}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-26.8786,-97.9769}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {26.3006,-96.8208}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {26.3006,-96.8208}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {-2.60116,-81.2139}, extent = {{-10,-10},{10,10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput u[3] annotation(Placement(visible = true, transformation(origin = {-7.80347,90.1734}, extent = {{-10,-10},{10,10}}, rotation = 360), iconTransformation(origin = {-7.80347,90.1734}, extent = {{-10,-10},{10,10}}, rotation = -90)));
      equation
        connect(signalvoltage2.n,pin_n) annotation(Line(points = {{18.5549,-11.6763},{18.5549,-11.8497},{52.6012,-11.8497},{52.6012,-96.2428},{26.8786,-96.2428},{26.8786,-96.2428}}));
        connect(signalvoltage1.n,pin_n) annotation(Line(points = {{19.9422,42.8902},{19.9422,43.0636},{52.6012,43.0636},{52.6012,-96.2428},{26.5896,-96.2428},{26.5896,-96.2428}}));
        connect(signalvoltage3.n,pin_n) annotation(Line(points = {{20.0578,-63.9306},{20.0578,-70.5202},{52.6012,-70.5202},{52.6012,-96.2428},{27.1676,-96.2428},{27.1676,-96.2428}}));
        connect(u[3],signalvoltage3.v) annotation(Line(points = {{-7.80347,90.1734},{61.2717,90.1734},{61.2717,-54.0462},{27.7457,-54.0462},{27.7457,-54.0462}}));
        connect(u[1],signalvoltage1.v) annotation(Line(points = {{-7.80347,90.1734},{36.1272,90.1734},{36.1272,52.8902},{27.7457,52.8902},{27.7457,52.8902}}));
        connect(u[2],signalvoltage2.v) annotation(Line(points = {{-7.80347,90.1734},{48.5549,90.1734},{48.5549,-1.44509},{26.0116,-1.44509},{26.0116,-1.44509}}));
        connect(resistor1.n,pin_n) annotation(Line(points = {{7.39884,-81.2139},{26.0116,-81.2139},{26.0116,-96.2428},{26.0116,-96.2428}}));
        connect(resistor1.p,pin_p) annotation(Line(points = {{-12.6012,-81.2139},{-27.4566,-81.2139},{-27.4566,-95.6647},{-27.4566,-95.6647}}));
        connect(signalvoltage1.n,X_wheel.pin_n) annotation(Line(points = {{19.9422,42.8902},{19.9422,35.2601},{-34.9711,35.2601},{-34.9711,45.0867},{-34.9711,45.0867}}));
        connect(signalvoltage1.p,X_wheel.pin_p) annotation(Line(points = {{19.9422,62.8902},{19.9422,63.5838},{-2.89017,63.5838},{-2.89017,44.7977},{-28.6127,44.7977},{-28.6127,44.7977}}));
        connect(Z_axis.frame_b,Z_wheel.frame_a) annotation(Line(points = {{-44.6141,-41.1629},{-38.1503,-41.1629},{-38.1503,-41.0405},{-38.1503,-41.0405}}));
        connect(Y_axis.frame_b,Y_wheel.frame_a) annotation(Line(points = {{-45.7601,11.066},{-36.1272,11.066},{-36.1272,10.9827},{-36.1272,10.9827}}));
        connect(Z_axis.frame_a,frame_a) annotation(Line(points = {{-64.6141,-41.1629},{-81.7919,-41.1629},{-81.7919,4.91329},{-99.711,4.91329},{-99.711,4.91329}}));
        connect(Y_axis.frame_a,frame_a) annotation(Line(points = {{-65.7601,11.066},{-81.7919,11.066},{-81.7919,4.91329},{-99.711,4.91329},{-99.711,4.91329}}));
        connect(X_axis.frame_a,frame_a) annotation(Line(points = {{-64.2418,57.8035},{-81.7919,57.8035},{-81.7919,4.91329},{-100,4.91329},{-100,4.91329}}));
        connect(X_axis.frame_b,X_wheel.frame_a) annotation(Line(points = {{-44.2418,57.8035},{-37.5723,57.8035},{-37.5723,57.5145},{-37.5723,57.5145}}));
        connect(signalvoltage2.n,Y_wheel.pin_n) annotation(Line(points = {{18.5549,-11.6763},{18.5549,-12.1387},{-33.237,-12.1387},{-33.237,-2.02312},{-33.237,-2.02312}}));
        connect(signalvoltage2.p,Y_wheel.pin_p) annotation(Line(points = {{18.5549,8.3237},{18.5549,8.67052},{-3.75723,8.67052},{-3.75723,-1.7341},{-27.4566,-1.7341},{-27.4566,-1.7341}}));
        connect(signalvoltage3.n,Z_wheel.pin_n) annotation(Line(points = {{20.0578,-63.9306},{20.0578,-64.4509},{-34.9711,-64.4509},{-34.9711,-54.6243},{-34.9711,-54.6243}}));
        connect(signalvoltage3.p,Z_wheel.pin_p) annotation(Line(points = {{20.0578,-43.9306},{20.0578,-43.6416},{-2.60116,-43.6416},{-2.60116,-54.3353},{-29.4798,-54.3353},{-29.4798,-54.3353}}));
        annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0, StopTime = 30, Tolerance = 0.0001), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Rectangle(origin = {0.144508,13.2948}, fillColor = {128,128,128}, fillPattern = FillPattern.Solid, extent = {{-90.0289,54.3352},{61.7052,-76.8786}}),Rectangle(origin = {2.16763,20.2312}, fillColor = {88,88,88}, fillPattern = FillPattern.Solid, extent = {{-71.2428,-8.0925},{5.6358,-80.0578}}),Rectangle(origin = {-0.144509,13.2948}, fillColor = {88,88,88}, fillPattern = FillPattern.Solid, extent = {{35.6936,25.7225},{70.6647,-52.0231}}),Rectangle(origin = {-46.9653,97.6879}, fillColor = {88,88,88}, fillPattern = FillPattern.Solid, extent = {{2.45662,-18.2081},{85.9826,-50.8671}}),Rectangle(origin = {11.4162,-3.32367}, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-16.0405,25.8671},{-12.8613,5.92483}}),Polygon(origin = {-0.307609,23.5614}, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-2.87157,16.034},{1.46373,-3.90828},{-6.91786,-3.61926},{-2.87157,16.034}}),Text(origin = {-26.3006,-74.2775}, extent = {{-15.896,13.0058},{15.896,-13.0058}}, textString = "+"),Text(origin = {25.578,-76.1561}, extent = {{-18.6416,23.5549},{18.9306,-18.3526}}, textString = "-"),Polygon(origin = {19.6924,1.07585}, rotation = -90, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-2.87157,16.034},{1.46373,-3.90828},{-6.91786,-3.61926},{-2.87157,16.034}}),Rectangle(origin = {-9.91328,-10.4913}, rotation = -90, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-16.0405,25.8671},{-12.8613,5.92483}}),Polygon(origin = {-9.53757,-2.17522}, fillColor = {255,0,0}, fillPattern = FillPattern.Solid, points = {{-7.80347,-5.05026},{5.49133,7.08847},{7.80347,4.77633},{-5.78035,-7.07338},{-7.80347,-5.05026}}),Polygon(origin = {-14.9319,-12.1611}, rotation = -90, fillColor = {255,0,0}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-2.00451,2.45016},{5.22095,-9.68863},{-6.91786,-3.61926},{-2.00451,2.45016}}),Text(origin = {-4.62427,56.2139}, extent = {{-14.4509,10.8382},{14.4509,-10.8382}}, textString = "Z"),Text(origin = {47.4567,3.38154}, extent = {{-14.4509,10.8382},{14.4509,-10.8382}}, textString = "Y"),Text(origin = {-31.9652,-24.5953}, extent = {{-14.4509,10.8382},{14.4509,-10.8382}}, textString = "X")}));
      end reactionwheel3axis;
    end Parts;
  end AOCS;
  model Cubesat
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-99.711,0.289017}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-99.711,0.289017}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    satcomponents.AOCS.Parts.reactionwheel3axis reactionwheel3axis1 annotation(Placement(visible = true, transformation(origin = {22.6012,58.0347}, extent = {{-13.815,-13.815},{13.815,13.815}}, rotation = 0)));
    satcomponents.AOCS.Parts.Struktur struktur1 annotation(Placement(visible = true, transformation(origin = {-54.711,0.086705}, extent = {{-24.6532,-24.6532},{24.6532,24.6532}}, rotation = 0)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-0.843931,-68.1985}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode2 annotation(Placement(visible = true, transformation(origin = {-0.984619,-41.1638}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    satcomponents.power.solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {23.9884,-78.6127}, extent = {{10,10},{-10,-10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {54.6243,-88.7283}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Semiconductors.ZDiode zdiode1(Bv = 39) annotation(Placement(visible = true, transformation(origin = {23.998,-54.422}, extent = {{-10,-10},{10,10}}, rotation = 180)));
    satcomponents.power.batteries.battery battery1 annotation(Placement(visible = true, transformation(origin = {25.7225,-20.5202}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {2.02312,-101.445}, extent = {{-10,-10},{10,10}}, rotation = 90), iconTransformation(origin = {-0.867052,-96.5318}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    satcomponents.data.OBC obc1 annotation(Placement(visible = true, transformation(origin = {24.8555,25.4335}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Blocks.Sources.Pulse pulse1[3](width = {1,1,1}, period = {2000,1000,1500}, nperiod = {1,2,3}, startTime = {2000,2000,2000}, amplitude = {0.001,0.001,0.001}) annotation(Placement(visible = true, transformation(origin = {53.1792,25.1445}, extent = {{-10,-10},{10,10}}, rotation = 90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {0,0.04,0.03}) annotation(Placement(visible = true, transformation(origin = {-10.1156,58.6705}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  equation
    connect(fixedtranslation1.frame_a,struktur1.frame_a) annotation(Line(points = {{-20.1156,58.6705},{-54.3353,58.6705},{-54.3353,0.867052},{-54.3353,0.867052}}));
    connect(fixedtranslation1.frame_b,reactionwheel3axis1.frame_a) annotation(Line(points = {{-0.115607,58.6705},{8.95954,58.6705},{8.95954,58.9595},{8.95954,58.9595}}));
    connect(pulse1.y,reactionwheel3axis1.u) annotation(Line(points = {{53.1792,36.1445},{53.1792,84.6821},{21.9653,84.6821},{21.9653,70.5202},{21.9653,70.5202}}));
    connect(obc1.pin_n,battery1.n) annotation(Line(points = {{24.7989,15.5325},{35.8382,15.5325},{35.8382,-20.8092},{35.8382,-20.8092}}));
    connect(obc1.pin_p,battery1.p) annotation(Line(points = {{20.5839,15.6174},{15.0289,15.6174},{15.0289,-20.5202},{15.0289,-20.5202}}));
    connect(u,solarcell_simple1.E_s) annotation(Line(points = {{2.02312,-101.445},{2.02312,-89.8844},{23.9884,-89.8844},{23.9884,-86.4162},{23.9884,-86.4162}}));
    connect(zdiode1.p,ground1.p) annotation(Line(points = {{33.998,-54.422},{54.9133,-54.422},{54.9133,-79.1908},{54.9133,-79.1908}}));
    connect(battery1.n,ground1.p) annotation(Line(points = {{35.7225,-20.5202},{54.9133,-20.5202},{54.9133,-78.6127},{54.9133,-78.6127}}));
    connect(zdiode1.n,idealdiode2.p) annotation(Line(points = {{13.998,-54.422},{-0.867052,-54.422},{-0.867052,-51.1561},{-0.867052,-51.1561}}));
    connect(reactionwheel3axis1.pin_n,battery1.n) annotation(Line(points = {{26.2346,44.6589},{35.8382,44.6589},{35.8382,-20.5202},{35.8382,-20.5202}}));
    connect(battery1.p,reactionwheel3axis1.pin_p) annotation(Line(points = {{15.7225,-20.5202},{15.0289,-20.5202},{15.0289,44.5087},{18.7861,44.5087},{18.7861,44.5087}}));
    connect(idealdiode2.n,battery1.p) annotation(Line(points = {{-0.984619,-31.1638},{-0.984619,-20.5202},{15.6069,-20.5202},{15.6069,-20.5202}}));
    connect(idealdiode1.n,idealdiode2.p) annotation(Line(points = {{-0.843931,-58.1985},{-0.843931,-51.4451},{-0.867052,-51.4451},{-0.867052,-51.4451}}));
    connect(idealdiode1.p,solarcell_simple1.n) annotation(Line(points = {{-0.843931,-78.1985},{-0.843931,-78.9017},{13.8728,-78.9017},{13.8728,-78.9017}}));
    connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{33.9884,-78.6127},{54.6243,-78.6127},{54.6243,-78.3237},{54.6243,-78.3237}}));
    connect(frame_a,struktur1.frame_a) annotation(Line(points = {{-99.711,0.289017},{-56.0694,0.289017},{-53.9273,0.289017},{-53.9273,0.94173}}));
    annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Rectangle(origin = {-8.81503,2.02312}, fillColor = {160,160,160}, fillPattern = FillPattern.Solid, extent = {{-67.1966,69.3641},{89.4509,-89.0173}}),Polygon(origin = {2.45663,25.1445}, fillColor = {0,0,128}, fillPattern = FillPattern.Solid, points = {{-72.6878,41.0405},{-72.1098,-19.0752},{-55.6358,-32.3699},{60.8381,-31.7919},{73.2659,-15.029},{73.5549,40.7515},{-72.6878,41.0405}}),Text(origin = {-0.000000349187,85.4046}, fillColor = {255,255,255}, extent = {{-68.7861,16.3295},{68.7861,-16.3295}}, textString = "%name"),Polygon(origin = {3.09246,-50.8092}, fillColor = {0,0,128}, fillPattern = FillPattern.Solid, points = {{-72.6878,41.0405},{-72.1098,-19.0752},{-55.6358,-32.3699},{60.8381,-31.7919},{73.2659,-15.029},{73.5549,40.7515},{-72.6878,41.0405}})}), experiment(StartTime = 0.0, StopTime = 20000.0, Tolerance = 0.0001));
  end Cubesat;
  annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Polygon(origin = {-0.495835,-3.82998}, points = {{-11.5042,31.4966},{33.1625,8.16331},{11.8292,-31.5034},{-33.1708,-7.17002},{-11.5042,31.4966}}),Polygon(origin = {41.3475,49.7145}, fillColor = {0,0,255}, fillPattern = FillPattern.VerticalCylinder, points = {{-44.3475,-20.3811},{-13.0141,-37.3811},{25.6525,27.2855},{-5.68082,43.9522},{-44.3475,-20.3811}}),Polygon(origin = {-23.6525,-62.9522}, fillColor = {0,0,255}, fillPattern = FillPattern.VerticalCylinder, points = {{-44.3475,-20.3811},{-13.0141,-37.3811},{25.6525,27.2855},{-5.68082,43.9522},{-44.3475,-20.3811}}),Polygon(origin = {36.1669,-23.4602}, points = {{-8.16695,13.1269},{-13.1669,4.12686},{-0.500278,-13.5398},{13.1664,11.1269},{-8.16695,13.1269}}),Polygon(origin = {-35.7693,14.651}, points = {{16.7693,29.6823},{14.7693,5.68234},{1.10267,-18.651},{-16.8973,-29.3177},{16.7693,29.6823}})}));
end satcomponents;

