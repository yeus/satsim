model EVS3
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-9.61538,-27.5641}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 10, freqHz = 0.001, offset = 10) annotation(Placement(visible = true, transformation(origin = {-78.925,-3.11174}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-31.0897,-2.88462}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  dcmodel.dcdc_ideal_simple_improved dcdc_ideal_simple_improved1 annotation(Placement(visible = true, transformation(origin = {15.8416,1.9802}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(resistor1.n,dcdc_ideal_simple_improved1.n2) annotation(Line(points = {{59.9359,-18.4103},{27.4399,-18.4103},{27.4399,-3.65488},{27.0099,-3.65488}}));
  connect(dcdc_ideal_simple_improved1.p2,resistor1.p) annotation(Line(points = {{26.942,7.07213},{59.9717,7.07213},{59.9717,5.58974},{59.9359,5.58974}}));
  connect(dcdc_ideal_simple_improved1.p1,solarcell_simple1.n) annotation(Line(points = {{4.7751,7.00424},{-11.3154,7.00424},{-11.3154,9.6181},{-31.0897,9.6181},{-31.0897,9.11538}}));
  connect(dcdc_ideal_simple_improved1.n1,ground1.p) annotation(Line(points = {{4.70722,-2.87411},{-9.33522,-2.87411},{-9.33522,-15.5641},{-9.61538,-15.5641}}));
  connect(sine1.y,solarcell_simple1.E_s) annotation(Line(points = {{-65.725,-3.11174},{-40.1697,-3.11174},{-40.1697,-3.03676},{-39.6095,-3.03676}}));
  connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-31.0897,-14.8846},{-9.9359,-14.8846},{-9.9359,-15.5641},{-9.61538,-15.5641}}));
end EVS3;

