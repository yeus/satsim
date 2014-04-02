// CP: 65001
// SimulationX Version: 3.6.1.26028
within iboss;
package components
	model iboss_interface
		Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor2 annotation(Placement(transformation(
			origin={-65,-25},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		iboss_connector iBoss_connector annotation(Placement(
			transformation(
				origin={-99.8586,-0.282885},
				extent={{-12,-12},{12,12}}),
			iconTransformation(
				origin={-99.8586,-0.282885},
				extent={{-12,-12},{12,12}})));
		Modelica.Electrical.Analog.Interfaces.NegativePin gnd annotation(Placement(
			transformation(
				origin={101.556,-50.9194},
				extent={{-12,-12},{12,12}}),
			iconTransformation(
				origin={101.556,-50.9194},
				extent={{-12,-12},{12,12}})));
		Modelica.Electrical.Analog.Interfaces.PositivePin vcc annotation(Placement(
			transformation(
				origin={101.273,-18.1046},
				extent={{-12,-12},{12,12}}),
			iconTransformation(
				origin={101.273,-18.1046},
				extent={{-12,-12},{12,12}})));
		Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(Placement(transformation(
			origin={85,-35},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
		Modelica.Electrical.Analog.Basic.VariableResistor variableResistor1 annotation(Placement(transformation(extent={{-10,-5},{10,15}})));
		ControlBlocks.EI_control ei_ctrl(
			threshold=60,
			outputfactor=2000000.0) annotation(Placement(transformation(extent={{-60,20},{-45,35}})));
		Modelica.Blocks.Sources.Constant const(k=0.001) annotation(Placement(transformation(extent={{-25,30},{-10,45}})));
		equation
			connect(voltageSensor1.p,vcc) annotation(Line(points = {{85,-25},{85,-20},{85,-18},{96,-18},{101,-18}}, thickness = 0.0625));
			connect(voltageSensor1.n,gnd) annotation(Line(points = {{85,-45},{85,-50},{85,-51},{97,-51},{102,-51}}, thickness = 0.0625));
			connect(voltageSensor2.n,iBoss_connector.GND) annotation(Line(points = {{-65,-35},{-80,-35},{-95,-35},{-100,-0.3333358764648438}}, thickness = 0.0625), AutoRoute = false);
			connect(voltageSensor2.p,iBoss_connector.Vcc) annotation(Line(points = {{-65,-15},{-65,-10},{-65,0},{-95,0},{-100,0}}, thickness = 0.0625));
			connect(ei_ctrl.u,voltageSensor2.v) annotation(Line(points = {{-62,27},{-67,27},{-80,27},{-80,-25},{-75,-25}}, color = {0,0,127}, thickness = 0.0625));
			connect(variableResistor1.n,voltageSensor1.p) annotation(Line(points = {{10,5},{15,5},{85,5},{85,-20},{85,-25}}, thickness = 0.0625));
			connect(const.y,variableResistor1.R) annotation(Line(points = {{-9,37},{-4,37},{0,37},{0,21},{0,16}}, color = {0,0,127}, thickness = 0.0625));
			connect(voltageSensor2.p,variableResistor1.p) annotation(Line(points = {{-65,-15},{-65,-10},{-65,5},{-15,5},{-10,5}}, thickness = 0.0625));
			connect(voltageSensor1.n,voltageSensor2.n) annotation(Line(points = {{85,-45},{85,-50},{-65,-50},{-65,-40},{-65,-35}}, thickness = 0.0625));
		annotation(
			voltageSensor2(
				p(
					v(flags=2),
					i(flags=2)),
				n(
					v(flags=2),
					i(flags=2)),
				v(flags=2)),
			voltageSensor1(
				p(
					v(flags=2),
					i(flags=2)),
				n(
					v(flags=2),
					i(flags=2)),
				v(flags=2)),
			variableResistor1(
				LossPower(flags=2),
				R_actual(flags=2)),
			ei_ctrl(y(flags=2)),
			Icon(
				coordinateSystem(extent={{-100,-100},{100,100}}),
				graphics={Rectangle(fillColor = {0,0,255}, fillPattern = FillPattern.Solid, extent = {{-16.6902,93.63509999999999},{7.63791,-93.3522}}),Rectangle(fillColor = {0,0,255}, fillPattern = FillPattern.Solid, extent = {{-22.0651,48.0905},{-16.6902,-49.2221}}),Rectangle(fillColor = {0,0,255}, fillPattern = FillPattern.Solid, extent = {{-33.9463,21.2164},{15.8416,-22.9137}}),Rectangle(lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{24.0453,66.1952},{1.41443,15.8416}}),Rectangle(lineColor = {0,0,0}, fillPattern = FillPattern.Solid, extent = {{1.9802,-9.6181},{25.1768,-61.9519}}),Text(textString = "GND", fillColor = {0,0,255}, extent = {{39.0382,-33.9463},{85.71429999999999,-64.7807}}),Text(textString = "VCC", fillColor = {0,0,255}, extent = {{41.5842,-0.282893},{80.3395,-33.6634}})}),
			Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
			experiment(
				StopTime=1,
				StartTime=0));
	end iboss_interface;
	model connectionelement
		iboss_connector int1 annotation(Placement(
			transformation(
				origin={88.5431,4.52615},
				extent={{-12,-12},{12,12}}),
			iconTransformation(
				origin={88.5431,4.52615},
				extent={{-12,-12},{12,12}})));
		parameter Real R(
			final quantity="Resistance",
			final unit="Ohm")=0.001;
		Modelica.SIunits.Power LossPower;
		iboss_connector int2 annotation(Placement(
			transformation(
				origin={-87.90949999999999,4.02826},
				extent={{-12,-12},{12,12}}),
			iconTransformation(
				origin={-87.90949999999999,4.02826},
				extent={{12,12},{-12,-12}},
				rotation=-180)));
		Modelica.Electrical.Analog.Basic.Resistor R_GND(R=R) annotation(Placement(transformation(
			origin={22.5969,-3.84725},
			extent={{-12,-12},{12,12}})));
		Modelica.Electrical.Analog.Basic.Resistor R_Vcc(R=R) annotation(Placement(transformation(
			origin={23.7962,12.5262},
			extent={{-12,-12},{12,12}})));
		equation
			LossPower = R_GND.LossPower + R_Vcc.LossPower;
			connect(int1.Vcc,R_Vcc.n) annotation(Line(points = {{89,5},{84,5},{41,5},{41,13},{36,13}}));
			connect(R_Vcc.p,int2.Vcc) annotation(Line(points = {{12,13},{7,13},{-83,13},{-83,4},{-88,4}}));
			connect(R_GND.p,int2.GND) annotation(Line(points = {{11,-4},{6,-4},{-83,-4},{-83,4},{-88,4}}));
			connect(R_GND.n,int1.GND) annotation(Line(points = {{35,-4},{40,-4},{84,-4},{84,5},{89,5}}));
		annotation(
			LossPower(flags=2),
			Icon(
				coordinateSystem(extent={{-100,-100},{100,100}}),
				graphics={Rectangle(fillColor = {0,0,255}, extent = {{-85.5219,88.3168},{87.4569,-87.12869999999999}})}),
			Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
			experiment(
				StopTime=1,
				StartTime=0));
	end connectionelement;
	model dockinterface
		iboss_connector iBoss_Int annotation(Placement(
			visible=true,
			transformation(
				origin={-0.315956,69.1943},
				extent={{-12,-12},{12,12}},
				rotation=0),
			iconTransformation(
				origin={-0.315956,69.1943},
				extent={{-12,-12},{12,12}},
				rotation=0)));
		Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(
			visible=true,
			transformation(
				origin={25.2765,-4.10742},
				extent={{-12,-12},{12,12}},
				rotation=0)));
		Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V=100) annotation(Placement(
			visible=true,
			transformation(
				origin={0.631912,12.3223},
				extent={{-12,-12},{12,12}},
				rotation=0)));
		equation
			connect(constantvoltage1.n,iBoss_Int.GND) annotation(Line(points = {{12.6319,12.3223},{12.7298,12.3223},{12.7298,41.867},{19.5191,41.867},{19.5191,77.2277},{6.91466,77.2277},{6.91466,76.9213}}));
			connect(constantvoltage1.p,iBoss_Int.Vcc) annotation(Line(points = {{-11.3681,12.3223},{-11.3154,12.3223},{-11.3154,61.1033},{7.3369,61.1033},{7.3369,61.784}}));
			connect(constantvoltage1.n,ground1.p) annotation(Line(points = {{12.6319,12.3223},{25.1768,12.3223},{25.1768,7.89258},{25.2765,7.89258}}));
		annotation(
			Icon(graphics={Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-59.3997,67.29859999999999},{58.1359,-72.6698}})}),
			Diagram(graphics={Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-46.7615,68.8784},{46.7615,-71.40600000000001}})}));
	end dockinterface;
	connector iboss_connector_ess
		import Modelica.Electrical.Analog.Interfaces;
		Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(
			visible=true,
			transformation(
				origin={62.9251,65.8292},
				extent={{-28.2954,-28.2954},{28.2954,28.2954}},
				rotation=0)));
		Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(
			visible=true,
			transformation(
				origin={61.9524,-60.6435},
				extent={{-28.2954,-28.2954},{28.2954,28.2954}},
				rotation=0)));
		annotation(
			defaultComponentName="iBoss_connector",
			Diagram(graphics={Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.23560000000001,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}),
			Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}));
	end iboss_connector_ess;
	connector iboss_connector
		import Modelica.Electrical.Analog.Interfaces;
		Modelica.Electrical.Analog.Interfaces.PositivePin Vcc annotation(Placement(
			visible=true,
			transformation(
				origin={62.9251,65.8292},
				extent={{-28.2954,-28.2954},{28.2954,28.2954}},
				rotation=0)));
		Modelica.Electrical.Analog.Interfaces.NegativePin GND annotation(Placement(
			visible=true,
			transformation(
				origin={61.9524,-60.6435},
				extent={{-28.2954,-28.2954},{28.2954,28.2954}},
				rotation=0)));
		annotation(
			defaultComponentName="iBoss_connector",
			Diagram(graphics={Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.23560000000001,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}),
			Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}));
	end iboss_connector;
	expandable connector iboss_int "general iboss interface"
		satcomponents.AOCS.ctrl.sat_bus sat_bus;
		annotation(
			defaultComponentName="iBoss_connector",
			Icon(graphics={
						Rectangle(
							fillColor={255,220,168},
							fillPattern=FillPattern.Solid,
							lineThickness=1,
							extent={{-100,100},{100,-100}},
							origin={0.22,0})}),
			Diagram(graphics={
						Text(
							textString="%name",
							fillPattern=FillPattern.Solid,
							extent={{-102.764,-102.343},{97.23560000000001,-162.343}}),
						Rectangle(
							fillColor={255,220,168},
							fillPattern=FillPattern.Solid,
							extent={{-91.81,87.72},{91.81,-87.72}},
							origin={-1.11,1.88})}));
	end iboss_int;
	connector iboss_int_mech
		annotation(
			defaultComponentName="iBoss_connector",
			Diagram(graphics={Text(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-102.764,-102.343},{97.23560000000001,-162.343}}, textString = "%name"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-14.1125,15.3798},{12.5283,-10.6274}})}),
			Icon(graphics={Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.CrossDiag, lineThickness = 1, extent = {{-100,100},{100,-100}})}));
	end iboss_int_mech;
	model router "router"
		satcomponents.AOCS.ctrl.sat_bus sat_bus annotation(Placement(
			transformation(extent={{-10,-10},{10,10}}),
			iconTransformation(extent={{88.3,-8.300000000000001},{108.3,11.7}})));
		annotation(
			Icon(
				coordinateSystem(extent={{-101.7,-51.7},{101.7,51.7}}),
				graphics={
																														Rectangle(
																															lineColor={0,0,0},
																															fillColor={255,255,255},
																															fillPattern=FillPattern.Solid,
																															extent={{-80,83.3},{86.7,-86.7}}),
																														Text(
																															textString="ROUT",
																															lineColor={0,0,0},
																															extent={{-50,43.3},{53.3,-46.7}})}),
			experiment(
				StopTime=1,
				StartTime=0));
	end router;
end components;
