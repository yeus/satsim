package batteries
  model battery
    extends Modelica.Electrical.Analog.Interfaces.TwoPin;
    Real SOC(start = 0.9) "State of Charge";
    Real SOD "State of Discharge";
    parameter Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah charge = 2.0;
    Modelica.SIunits.Current i;
    parameter Modelica.SIunits.Voltage Vnominal = 4.0;
    Modelica.Electrical.Analog.Sources.SignalVoltage voltage annotation(Placement(visible = true, transformation(origin = {-37.7358,-0.000000000000000888178}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(Placement(visible = true, transformation(origin = {27.9874,0.314465}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  equation
    i = voltage.i;
    der(SOC) = voltage.i / charge;
    SOD = 1 - SOC;
    voltage.v = noEvent(if SOD < 0.9 then Vnominal * (1 - 0.1 * SOD) else if SOD < 1.0 then Vnominal * (1 - 0.1 * SOD) * (SOD - 0.9) else 0.0);
    connect(resistor1.n,n) annotation(Line(points = {{37.9874,0.314465},{97.7987,0.314465},{97.7987,0.943396},{97.7987,0.943396}}));
    connect(voltage.n,resistor1.p) annotation(Line(points = {{-27.7358,-0.000000000000000888178},{18.239,-0.000000000000000888178},{18.239,-0.314465},{18.239,-0.314465}}));
    connect(p,voltage.p) annotation(Line(points = {{-100,0},{-48.4277,0},{-48.4277,-0.628931},{-48.4277,-0.628931}}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {1,1}), graphics = {Line(points = {{-90,0},{-10,0}}, color = {0,0,255}),Line(points = {{-10,60},{-10,-60}}, color = {0,0,255}),Line(points = {{0,30},{0,-30}}, color = {0,0,255}),Line(points = {{0,0},{90,0}}, color = {0,0,255}),Text(extent = {{-150,-112},{150,-72}}, textString = "%name=%Vnominal", lineColor = {0,0,255}),Text(extent = {{-120,50},{-20,0}}, lineColor = {0,0,255}, textString = "+"),Text(extent = {{20,50},{120,0}}, lineColor = {0,0,255}, textString = "-")}), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.0001));
  end battery;
  model batteriekennlinie
    extends Modelica.Icons.Example;
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-16.0598,-43.6034}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {24.4165,-5.74506}, extent = {{-10,-10},{10,10}}, rotation = -90)));
    Modelica.Blocks.Sources.Constant const(k = 100) annotation(Placement(visible = true, transformation(origin = {37.702,44.8833}, extent = {{-10,-10},{10,10}}, rotation = 0)));
    batteries.battery battery1 annotation(Placement(visible = true, transformation(origin = {-59.605,-5.386}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  equation
    connect(ground1.p,battery1.n) annotation(Line(points = {{-16.0598,-33.6034},{-59.605,-33.6034},{-59.605,-15.386},{-59.605,-15.386}}));
    connect(battery1.p,variableresistor1.p) annotation(Line(points = {{-59.605,4.614},{-59.605,20.8259},{24.7756,20.8259},{24.7756,4.25494},{24.4165,4.25494}}));
    connect(const.y,variableresistor1.R) annotation(Line(points = {{48.702,44.8833},{66.0682,44.8833},{66.0682,-5.386},{36.2657,-5.386},{36.2657,-5.386}}));
    connect(variableresistor1.n,ground1.p) annotation(Line(points = {{24.4165,-15.7451},{24.4165,-33.3932},{-16.5171,-33.3932},{-16.5171,-33.3932}}));
    annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.0001));
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
end batteries;

