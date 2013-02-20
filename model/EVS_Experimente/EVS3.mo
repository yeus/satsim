model EVS3
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-9.61538,-27.5641}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.000001));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 490, freqHz = 0.001, phase = 90, offset = 500) annotation(Placement(visible = true, transformation(origin = {-74.8314,-3.05553}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dcmodel.dcdc_ideal_simple dcdc_ideal_simple1(eff = 0.9, V_out = 5, V_in_min = 35, V_in_max = 100, slope = 5) annotation(Placement(visible = true, transformation(origin = {27.7061,4.44201}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  solar_power.solarcell_simple solarcell_simple1(R_sh = 100) annotation(Placement(visible = true, transformation(origin = {-31.0897,-2.88462}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 10) annotation(Placement(visible = true, transformation(origin = {59.9359,-6.41026}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(solarcell_simple1.n,dcdc_ideal_simple1.p1) annotation(Line(points = {{-31.0897,9.11538},{-15.1007,9.11538},{-15.1007,11.0738},{15.7061,11.0738},{15.7061,10.442}}));
  connect(dcdc_ideal_simple1.n2,ground1.p) annotation(Line(points = {{39.7061,-1.55799},{39.5651,-1.55799},{39.5651,-15.7051},{-9.61538,-15.7051},{-9.61538,-15.5641}}));
  connect(dcdc_ideal_simple1.n2,dcdc_ideal_simple1.n1) annotation(Line(points = {{39.7061,-1.55799},{39.5651,-1.55799},{39.5651,-9.66056},{15.5266,-9.66056},{15.5266,-1.55799},{15.7061,-1.55799}}));
  connect(dcdc_ideal_simple1.p2,resistor1.p) annotation(Line(points = {{39.7061,10.442},{59.9359,10.442},{59.9359,5.58974},{59.9359,5.58974}}));
  connect(resistor1.n,dcdc_ideal_simple1.n2) annotation(Line(points = {{59.9359,-18.4103},{39.5651,-18.4103},{39.5651,-1.55799},{39.7061,-1.55799}}));
  connect(sine1.y,solarcell_simple1.E_s) annotation(Line(points = {{-61.6314,-3.05553},{-39.8868,-3.05553},{-39.8868,-3.03675},{-39.6096,-3.03675}}));
  connect(solarcell_simple1.p,ground1.p) annotation(Line(points = {{-31.0897,-14.8846},{-9.9359,-14.8846},{-9.9359,-15.5641},{-9.61538,-15.5641}}));
end EVS3;

