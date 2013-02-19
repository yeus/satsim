model EVS4
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 500, freqHz = 0.001, phase = -90, offset = 500) annotation(Placement(visible = true, transformation(origin = {-74.8314,-3.05553}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-9.9095,-43.1523}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solar_power.solarcell_simple solarcell_simple1 annotation(Placement(visible = true, transformation(origin = {-31.0897,-2.88462}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 25) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(resistor1.n,ground1.p) annotation(Line(points = {{59.9359,-18.4103},{-10,-18.4103},{-10,-31.1523},{-9.9095,-31.1523}}));
  connect(solarcell_simple1.n,resistor1.p) annotation(Line(points = {{-31.0897,9.11538},{59.7059,9.11538},{59.7059,5.58974},{59.9359,5.58974}}));
  connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-31.0897,-14.8846},{-9.9359,-14.8846},{-9.9359,-31.1523},{-9.9095,-31.1523}}));
  connect(sine1.y,solarcell_simple1.E_s) annotation(Line(points = {{-61.6314,-3.05553},{-39.8868,-3.05553},{-39.8868,-3.03675},{-39.6096,-3.03675}}));
end EVS4;

