within iboss.iboss_thermal.components;

model variable_ThermalConductor_input "Lumped thermal element transporting heat without storing it"
  input Modelica.Blocks.Interfaces.RealInput G "Constant thermal conductance of material" annotation(Placement(transformation(origin = {0, 90}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  extends Modelica.Thermal.HeatTransfer.Interfaces.Element1D;
equation
  Q_flow = G * dT;
  annotation(Icon(graphics = {Rectangle(pattern = LinePattern.None, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 70}, {90, -70}}), Line(points = {{-90, 70}, {-90, -70}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{90, 70}, {90, -70}}, color = {0, 0, 0}, thickness = 0.5), Text(textString = "%name", extent = {{-150, 115}, {150, 75}}), Text(textString = "G=%G", lineColor = {0, 0, 0}, extent = {{-150, -75}, {150, -105}})}), Diagram(graphics = {Line(points = {{-80, 0}, {80, 0}}, color = {255, 0, 0}, arrow = {Arrow.None, Arrow.Filled}, thickness = 0.5), Text(textString = "Q_flow", lineColor = {255, 0, 0}, extent = {{-100, -20}, {100, -40}}), Text(textString = "dT = port_a.T - port_b.T", lineColor = {0, 0, 0}, extent = {{-100, 40}, {100, 20}})}), Documentation(info = "<HTML>
		<p>
		This is a model for transport of heat without storing it; see also:
		<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ThermalResistor\">ThermalResistor</a>.
		It may be used for complicated geometries where
		the thermal conductance G (= inverse of thermal resistance)
		is determined by measurements and is assumed to be constant
		over the range of operations. If the component consists mainly of
		one type of material and a regular geometry, it may be calculated,
		e.g., with one of the following equations:
		</p>
		<ul>
		<li><p>
			Conductance for a <b>box</b> geometry under the assumption
			that heat flows along the box length:</p>
			<pre>
			G = k*A/L
			k: Thermal conductivity (material constant)
			A: Area of box
			L: Length of box
			</pre>
			</li>
		<li><p>
			Conductance for a <b>cylindrical</b> geometry under the assumption
			that heat flows from the inside to the outside radius
			of the cylinder:</p>
			<pre>
			G = 2*pi*k*L/log(r_out/r_in)
			pi   : Modelica.Constants.pi
			k    : Thermal conductivity (material constant)
			L    : Length of cylinder
			log  : Modelica.Math.log;
			r_out: Outer radius of cylinder
			r_in : Inner radius of cylinder
			</pre>
			</li>
		</ul>
		<pre>
			Typical values for k at 20 degC in W/(m.K):
			  aluminium   220
			  concrete      1
			  copper      384
			  iron         74
			  silver      407
			  steel        45 .. 15 (V2A)
			  wood         0.1 ... 0.2
		</pre>
		</html>"), experiment(StopTime = 1, StartTime = 0));
end variable_ThermalConductor_input;