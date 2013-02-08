package bb_catalogue
  model bb_battery
    extends buildingblock;
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-40.1697,-75.8133}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    annotation(experiment(StartTime = 0.0, StopTime = 11000.0, Tolerance = 0.0001));
    Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidvoltage1(V = 20, rising = 5, width = 1000, falling = 5, period = 2000) annotation(Placement(visible = true, transformation(origin = {-72.9844,-48.6563}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  equation
    connect(trapezoidvoltage1.n,ground1.p) annotation(Line(points = {{-72.9844,-60.6563},{-40.1697,-60.6563},{-40.1697,-63.8133},{-40.1697,-63.8133}}));
    connect(trapezoidvoltage1.p,pcu1.VCC) annotation(Line(points = {{-72.9844,-36.6563},{-73.2673,-36.6563},{-73.2673,-33.6634},{-48.2941,-33.6634},{-48.2941,-33.8444}}));
    connect(ground1.p,pcu1.GND) annotation(Line(points = {{-40.1697,-63.8133},{-40.1697,-55.7284},{-48.6563,-55.7284},{-48.6563,-37.5785},{-38.9929,-37.5785}}));
  end bb_battery;
  model bb_solar
    extends buildingblock;
    annotation(Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Cross, lineThickness = 0.25, extent = {{71.8896,121.659},{356.683,-125.807}})}), experiment(StartTime = 0.0, StopTime = 10000.0, Tolerance = 0.000001));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-74.6817,-60.8204}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    solar_power.solarcell solarcell1 annotation(Placement(visible = true, transformation(origin = {5.65771,-22.3479}, extent = {{12,-12},{-12,12}}, rotation = -270)));
    Modelica.Electrical.Analog.Ideal.IdealDiode idealdiode1 annotation(Placement(visible = true, transformation(origin = {-35.124,-10.7438}, extent = {{12,12},{-12,-12}}, rotation = -180)));
    Modelica.Blocks.Sources.Sine sine1(amplitude = 500, freqHz = 0.001, offset = 500) annotation(Placement(visible = true, transformation(origin = {13.2231,22.7273}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  equation
    connect(sine1.y,solarcell1.E_s) annotation(Line(points = {{26.4231,22.7273},{33.4711,22.7273},{33.4711,-0.826446},{-12.3967,-0.826446},{-12.3967,-23.1405},{-2.8621,-23.1405},{-2.8621,-22.5}}));
    connect(idealdiode1.n,pcu1.VCC) annotation(Line(points = {{-47.124,-10.7438},{-57.8512,-10.7438},{-57.8512,-33.8843},{-48.2941,-33.8843},{-48.2941,-33.8444}}));
    connect(solarcell1.n,idealdiode1.p) annotation(Line(points = {{5.65771,-10.3479},{-23.1405,-10.3479},{-23.1405,-10.7438},{-23.124,-10.7438}}));
    connect(solarcell1.p,pcu1.GND) annotation(Line(points = {{5.65771,-34.3479},{0.565771,-34.3479},{0.565771,-54.314},{-48.9392,-54.314},{-48.9392,-40.1245},{-48.3281,-40.1245}}));
    connect(ground1.p,pcu1.GND) annotation(Line(points = {{-74.6817,-48.8204},{-74.6817,-40.1697},{-48.3281,-40.1697},{-48.3281,-40.1245}}));
  end bb_solar;
end bb_catalogue;

