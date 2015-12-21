within iboss.iboss_thermal.Panel_5x5.components;

model Radiator_5x5 "Radiator_5x5"
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_l annotation(Placement(transformation(extent = {{-115, 30}, {-95, 50}}), iconTransformation(extent = {{-110, -10}, {-90, 10}})));
  iboss.iboss_thermal.Panel_5x5.multi_connector.thermal_connector_Panel_5x5 thermal_connector_Panel_5x5_r annotation(Placement(transformation(extent = {{50, 30}, {70, 50}}), iconTransformation(extent = {{90, -10}, {110, 10}})));
  Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation_5x5(Gr = ViewFactor * A_Panel / (1 / eps_Panel_inside + 1 / eps_Panel_inside - 1)) annotation(Placement(transformation(extent = {{-30, 30}, {-10, 50}})));
  iboss.iboss_thermal.components.TempCollector tempCollector_l(m = 25) annotation(Placement(transformation(origin = {-60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  iboss.iboss_thermal.components.TempCollector tempCollector_r(m = 25) annotation(Placement(transformation(origin = {20, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  parameter Real ViewFactor = 0.2;
  parameter Modelica.SIunits.Area A_Panel = 0.4 * 0.4;
  parameter Modelica.SIunits.Emissivity eps_Panel_inside = 0.93 "Emmisivity of the inner side of the panel";
equation
  connect(tempCollector_l.port_a[1], thermal_connector_Panel_5x5_l.port_00) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[2], thermal_connector_Panel_5x5_l.port_01) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[3], thermal_connector_Panel_5x5_l.port_02) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[4], thermal_connector_Panel_5x5_l.port_03) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[5], thermal_connector_Panel_5x5_l.port_04) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[6], thermal_connector_Panel_5x5_l.port_10) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[7], thermal_connector_Panel_5x5_l.port_11) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[8], thermal_connector_Panel_5x5_l.port_12) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[9], thermal_connector_Panel_5x5_l.port_13) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[10], thermal_connector_Panel_5x5_l.port_14) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[11], thermal_connector_Panel_5x5_l.port_20) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[12], thermal_connector_Panel_5x5_l.port_21) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[13], thermal_connector_Panel_5x5_l.port_22) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[14], thermal_connector_Panel_5x5_l.port_23) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[15], thermal_connector_Panel_5x5_l.port_24) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[16], thermal_connector_Panel_5x5_l.port_30) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[17], thermal_connector_Panel_5x5_l.port_31) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[18], thermal_connector_Panel_5x5_l.port_32) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[19], thermal_connector_Panel_5x5_l.port_33) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[20], thermal_connector_Panel_5x5_l.port_34) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[21], thermal_connector_Panel_5x5_l.port_40) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[22], thermal_connector_Panel_5x5_l.port_41) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[23], thermal_connector_Panel_5x5_l.port_42) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[24], thermal_connector_Panel_5x5_l.port_43) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_a[25], thermal_connector_Panel_5x5_l.port_44) annotation(Line(points = {{-70, 40}, {-75, 40}, {-100, 40}, {-105, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[1], thermal_connector_Panel_5x5_r.port_00) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[2], thermal_connector_Panel_5x5_r.port_01) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[3], thermal_connector_Panel_5x5_r.port_02) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[4], thermal_connector_Panel_5x5_r.port_03) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[5], thermal_connector_Panel_5x5_r.port_04) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[6], thermal_connector_Panel_5x5_r.port_10) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[7], thermal_connector_Panel_5x5_r.port_11) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[8], thermal_connector_Panel_5x5_r.port_12) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[9], thermal_connector_Panel_5x5_r.port_13) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[10], thermal_connector_Panel_5x5_r.port_14) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[11], thermal_connector_Panel_5x5_r.port_20) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[12], thermal_connector_Panel_5x5_r.port_21) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[13], thermal_connector_Panel_5x5_r.port_22) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[14], thermal_connector_Panel_5x5_r.port_23) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[15], thermal_connector_Panel_5x5_r.port_24) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[16], thermal_connector_Panel_5x5_r.port_30) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[17], thermal_connector_Panel_5x5_r.port_31) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[18], thermal_connector_Panel_5x5_r.port_32) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[19], thermal_connector_Panel_5x5_r.port_33) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[20], thermal_connector_Panel_5x5_r.port_34) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[21], thermal_connector_Panel_5x5_r.port_40) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[22], thermal_connector_Panel_5x5_r.port_41) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[23], thermal_connector_Panel_5x5_r.port_42) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[24], thermal_connector_Panel_5x5_r.port_43) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_a[25], thermal_connector_Panel_5x5_r.port_44) annotation(Line(points = {{30, 40}, {35, 40}, {55, 40}, {60, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_r.port_b, bodyRadiation_5x5.port_b) annotation(Line(points = {{10, 40}, {5, 40}, {-5, 40}, {-10, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  connect(tempCollector_l.port_b, bodyRadiation_5x5.port_a) annotation(Line(points = {{-50, 40}, {-45, 40}, {-35, 40}, {-30, 40}}, color = {191, 0, 0}, thickness = 0.0625));
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{50, 80}, {90, -80}}), Rectangle(lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-50, -80}}), Line(points = {{-36, 10}, {36, 10}}, color = {191, 0, 0}), Line(points = {{-36, 10}, {-26, 16}}, color = {191, 0, 0}), Line(points = {{-36, 10}, {-26, 4}}, color = {191, 0, 0}), Line(points = {{-36, -10}, {36, -10}}, color = {191, 0, 0}), Line(points = {{26, -16}, {36, -10}}, color = {191, 0, 0}), Line(points = {{26, -4}, {36, -10}}, color = {191, 0, 0}), Line(points = {{-36, -30}, {36, -30}}, color = {191, 0, 0}), Line(points = {{-36, -30}, {-26, -24}}, color = {191, 0, 0}), Line(points = {{-36, -30}, {-26, -36}}, color = {191, 0, 0}), Line(points = {{-36, 30}, {36, 30}}, color = {191, 0, 0}), Line(points = {{26, 24}, {36, 30}}, color = {191, 0, 0}), Line(points = {{26, 36}, {36, 30}}, color = {191, 0, 0}), Text(textString = "%name", extent = {{-150, 125}, {150, 85}}), Text(textString = "Gr=%Gr", lineColor = {0, 0, 0}, extent = {{-150, -90}, {150, -120}}), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-50, 80}, {-44, -80}}), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{45, 80}, {50, -80}})}), Documentation(info = "<HTML>
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
end Radiator_5x5;