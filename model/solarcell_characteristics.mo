model solarcell_circuit
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Ramp ramp1(height = 10000, offset = 10, duration = 1.0) annotation(Placement(visible = true, transformation(origin = {58.5736,37.9363}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground Ground1 annotation(Placement(visible = true, transformation(origin = {25.9339,-35.9884}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.VariableResistor variableresistor1 annotation(Placement(visible = true, transformation(origin = {26.1002,7.28376}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  solarzelle solarzelle1(I_L = 2, R_SH = 10000, R_S = 0.1) annotation(Placement(visible = true, transformation(origin = {-61.5385,7.84929}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(variableresistor1.n,Ground1.p) annotation(Line(points = {{26.1002,-4.71624},{25.6798,-4.71624},{25.6798,-25.9884},{25.9339,-25.9884}}));
  connect(ramp1.y,variableresistor1.R) annotation(Line(points = {{71.7736,37.9363},{39.4537,37.9363},{39.4537,7.28376},{39.3002,7.28376}}));
  annotation(experiment(StopTime = 1), Diagram(), Icon());
end solarcell_circuit;

