package batteries
  model battery
    /*todo Batteriemodell ist noch "ungenau" z.B. beim Einschalten fällt die Spannung temporär, Hitzeentwicklung usw...*/
    extends Modelica.Electrical.Analog.Interfaces.TwoPin;
    Real soc(start = 1.0) "State of Charge";
    Real SOD "State of Discharge";
    parameter Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah capacity_Ah = 2.0;
    Modelica.SIunits.Current i;
    parameter Modelica.SIunits.Voltage Vnominal = 4.0;
    Modelica.Electrical.Analog.Sources.SignalVoltage voltage annotation(Placement(visible = true, transformation(origin = {-37.7358,-0.000000000000000888178}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    parameter Real pi = 3.14159265359;
    Modelica.Electrical.Analog.Basic.Resistor R_i(R = 0.005) annotation(Placement(visible = true, transformation(origin = {-2.89231,0.314465}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor R_t(R = 0.02) annotation(Placement(visible = true, transformation(origin = {30.0879,16.0595}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.VariableResistor R_overload annotation(Placement(visible = true, transformation(origin = {-37.3429,33.0341}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Capacitor C_t(C = 100) annotation(Placement(visible = true, transformation(origin = {31.5979,-16.158}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  protected
    parameter Modelica.SIunits.ElectricCharge capacity = capacity_Ah * 3600;
  equation
    connect(R_i.n,C_t.p) annotation(Line(points = {{7.10769,0.314465},{12.2083,0.314465},{12.2083,-16.158},{20.4668,-16.158},{21.5979,-16.158}}));
    connect(C_t.n,R_t.n) annotation(Line(points = {{41.5979,-16.158},{49.1921,-16.158},{49.1921,16.158},{40.2154,16.158},{40.2154,16.158}}));
    connect(R_overload.p,voltage.p) annotation(Line(points = {{-47.3429,33.0341},{-47.7558,33.0341},{-47.7558,0},{-47.7558,0}}));
    connect(R_overload.n,voltage.n) annotation(Line(points = {{-27.3429,33.0341},{-27.6481,33.0341},{-27.6481,0.359066},{-27.6481,0.359066}}));
    connect(voltage.n,R_i.p) annotation(Line(points = {{-27.7358,-0.000000000000000888178},{-14.0036,-0.000000000000000888178},{-14.0036,0.359066},{-14.0036,0.359066}}));
    connect(R_t.n,n) annotation(Line(points = {{40.0879,16.0595},{59.605,16.0595},{59.605,0},{99.8205,0},{99.8205,0}}));
    connect(R_i.n,R_t.p) annotation(Line(points = {{7.10769,0.314465},{11.8492,0.314465},{11.8492,16.5171},{20.1077,16.5171},{20.1077,16.5171}}));
    R_overload.R = 100000.0 / (1 + exp(-100.0 * SOD));
    i = voltage.i;
    der(soc) = voltage.i / capacity;
    SOD = 1 - soc;
    voltage.v = Vnominal * (1 - SOD * 0.35 - 0.025 * sin(SOD * 2 * pi)) * (1 - 1 / (1 + exp(-100 * (SOD - 1))));
    /*exp-fucntion: logistic function*/
    connect(p,voltage.p) annotation(Line(points = {{-100,0},{-48.4277,0},{-48.4277,-0.628931},{-48.4277,-0.628931}}));
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

