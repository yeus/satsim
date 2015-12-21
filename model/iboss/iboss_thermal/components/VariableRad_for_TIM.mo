within iboss.iboss_thermal.components;

model VariableRad_for_TIM "the same like the BodyRadiation class from Modelica, but with Gr as discrete"
  extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
  input Modelica.Blocks.Interfaces.RealInput A_View annotation(Placement(transformation(origin = {-5, 90}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  input Modelica.Blocks.Interfaces.RealInput alpha_l annotation(Placement(transformation(origin = {-85, 90}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  input Modelica.Blocks.Interfaces.RealInput epsilon_l annotation(Placement(transformation(origin = {-45, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
  input Modelica.Blocks.Interfaces.RealInput epsilon_r annotation(Placement(transformation(origin = {40, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
  input Modelica.Blocks.Interfaces.RealInput alpha_r annotation(Placement(transformation(origin = {85, 90}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
equation
  Q_flow = A_View * Modelica.Constants.sigma * (alpha_r * epsilon_l * port_a.T ^ 4 - alpha_l * epsilon_r * port_b.T ^ 4) / (alpha_l + alpha_r - alpha_l * alpha_r);
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{50, 80}, {90, -80}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-50, -80}}), Line(points = {{-36, 10}, {36, 10}}, color = {191, 0, 0}), Line(points = {{-36, 10}, {-26, 16}}, color = {191, 0, 0}), Line(points = {{-36, 10}, {-26, 4}}, color = {191, 0, 0}), Line(points = {{-36, -10}, {36, -10}}, color = {191, 0, 0}), Line(points = {{26, -16}, {36, -10}}, color = {191, 0, 0}), Line(points = {{26, -4}, {36, -10}}, color = {191, 0, 0}), Line(points = {{-36, -30}, {36, -30}}, color = {191, 0, 0}), Line(points = {{-36, -30}, {-26, -24}}, color = {191, 0, 0}), Line(points = {{-36, -30}, {-26, -36}}, color = {191, 0, 0}), Line(points = {{-36, 30}, {36, 30}}, color = {191, 0, 0}), Line(points = {{26, 24}, {36, 30}}, color = {191, 0, 0}), Line(points = {{26, 36}, {36, 30}}, color = {191, 0, 0}), Text(textString = "%name", extent = {{-150, 125}, {150, 85}}), Text(textString = "Gr=%Gr", lineColor = {0, 0, 0}, extent = {{-150, -90}, {150, -120}}), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-50, 80}, {-44, -80}}), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{45, 80}, {50, -80}})}), Diagram(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-56, -80}}), Line(points = {{-56, 80}, {-56, -80}}, color = {0, 0, 0}, thickness = 1), Line(points = {{50, 80}, {50, -80}}, color = {0, 0, 0}, thickness = 1), Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{50, 80}, {90, -80}}), Line(points = {{-40, 10}, {40, 10}}, color = {191, 0, 0}), Line(points = {{-40, 10}, {-30, 16}}, color = {191, 0, 0}), Line(points = {{-40, 10}, {-30, 4}}, color = {191, 0, 0}), Line(points = {{-40, -10}, {40, -10}}, color = {191, 0, 0}), Line(points = {{30, -16}, {40, -10}}, color = {191, 0, 0}), Line(points = {{30, -4}, {40, -10}}, color = {191, 0, 0}), Line(points = {{-40, -30}, {40, -30}}, color = {191, 0, 0}), Line(points = {{-40, -30}, {-30, -24}}, color = {191, 0, 0}), Line(points = {{-40, -30}, {-30, -36}}, color = {191, 0, 0}), Line(points = {{-40, 30}, {40, 30}}, color = {191, 0, 0}), Line(points = {{30, 24}, {40, 30}}, color = {191, 0, 0}), Line(points = {{30, 36}, {40, 30}}, color = {191, 0, 0})}), Documentation(info = "<HTML>
	<p>
	This is a model describing the thermal radiation, i.e., electromagnetic
	radiation emitted between two bodies as a result of their temperatures.
	The following constitutive equation is used:
	</p>
	<pre>
		Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
	</pre>
	<p>
	where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
	constant (= Modelica.Constants.sigma). Gr may be determined by
	measurements and is assumed to be constant over the range of operations.
	</p>
	<p>
	For simple cases, Gr may be analytically computed. The analytical
	equations use epsilon, the emission value of a body which is in the
	range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
	Epsilon=0, if the body reflects all radiation and does not absorb any.
	</p>
	<pre>
	   Typical values for epsilon:
	   aluminium, polished    0.04
	   copper, polished       0.04
	   gold, polished         0.02
	   paper                  0.09
	   rubber                 0.95
	   silver, polished       0.02
	   wood                   0.85..0.9
	</pre>
	<p><b>Analytical Equations for Gr</b></p>
	<p>
	<b>Small convex object in large enclosure</b>
	(e.g., a hot machine in a room):
	</p>
	<pre>
		Gr = e*A
		where
		   e: Emission value of object (0..1)
		   A: Surface area of object where radiation
			  heat transfer takes place
	</pre>
	<p><b>Two parallel plates</b>:</p>
	<pre>
		Gr = A/(1/e1 + 1/e2 - 1)
		where
		   e1: Emission value of plate1 (0..1)
		   e2: Emission value of plate2 (0..1)
		   A : Area of plate1 (= area of plate2)
	</pre>
	<p><b>Two long cylinders in each other</b>, where radiation takes
	place from the inner to the outer cylinder):
	</p>
	<pre>
		Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
		where
		   pi: = Modelica.Constants.pi
		   r1: Radius of inner cylinder
		   r2: Radius of outer cylinder
		   L : Length of the two cylinders
		   e1: Emission value of inner cylinder (0..1)
		   e2: Emission value of outer cylinder (0..1)
	</pre>
	</html>"), experiment(StopTime = 1, StartTime = 0));
end VariableRad_for_TIM;