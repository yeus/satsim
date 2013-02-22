// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model intra_BuildingBlock_connector "intra_BuildingBlock_connector"
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConnector_contact(G=G_c) annotation(Placement(transformation(
		origin={30,0},
		extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConector_parallel(G=G_p) annotation(Placement(transformation(
		origin={-30,-0},
		extent={{-12.2757,-12.2757},{12.2757,12.2757}})));
	Curve2D bodyradiation1(
		f(displayUnit="-")={{0,1,0},{0,1,0}},
		x(
			mono=1,
			interpol=3,
			extra=true,
			mirror=false,
			cycle=false,
			displayUnit="-")={0,0.5,1},
		y(
			mono=1,
			interpol=1,
			extra=true,
			mirror=false,
			cycle=false,
			displayUnit="-")={0,1});
	parameter Real Gr(unit="m2")"Net radiation conductance between two surfaces (see docu)" annotation(Placement(transformation(
		origin={-11.8294,-26.4099},
		extent={{-12,-12},{12,12}})));
	parameter Modelica.SIunits.ThermalConductance G_c=130 "Constant thermal conductance of the contact surfaces" annotation(Placement(transformation(
		origin={32,-38},
		extent={{-12,-12},{12,12}})));
	parameter Modelica.SIunits.ThermalConductance G_p=130 "Constant thermal conductance of panel material parallel to main surface (near ro infinity if connected to main surface)" annotation(Placement(transformation(
		origin={-30,-38},
		extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
		transformation(
			origin={-100,0},
			extent={{-12,-12},{12,12}}),
		iconTransformation(
			origin={-99.3122,5.3535},
			extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
		transformation(
			origin={100,0},
			extent={{-12,-12},{12,12}}),
		iconTransformation(
			origin={100.963,5.5062},
			extent={{-12,-12},{12,12}})));
	equation
		connect(thermalConnector_contact.port_b,port_b) annotation(Line(
			points={{42,0},{51.6716,0},{73.7721,0},{100,0}},
			visible=true));
		 
		connect(thermalConector_parallel.port_b,thermalConnector_contact.port_a) annotation(Line(
			points={{-17.8621,0},{17.8621,0}},
			color={191,0,0},
			visible=true,
			origin={0.1379,0}));
		 
		connect(thermalConector_parallel.port_a,port_a) annotation(Line(
			points={{28.8621,-0},{-28.8621,0}},
			color={191,0,0},
			visible=true,
			origin={-71.1379,-0}));
		 
		 
		connect(port_a,rEPLCOMP_bodyradiation1.port_a) annotation(Line(
			points={{-94.6228,13.7414},{-58.0468,13.7414},{-58.0468,43.7414},{-23.0041,43.7414},{-6.6228,43.7414}},
			visible=true,
			origin={-5.3772,-13.7414}));
		connect(rEPLCOMP_bodyradiation1.port_b,port_b) annotation(Line(
			points={{12,30},{60,30},{60,0},{100,0}},
			visible=true));
	annotation(Icon(
		coordinateSystem(
			extent={{-100,-100},{100,100}},
			grid={10,10}),
		graphics={
						Rectangle(
							pattern=LinePattern.Dash,
							lineColor={255,0,0},
							fillColor={255,255,255},
							extent={{-94.63549999999999,-59.4223},{96.011,61.8982}},
							visible=true),
						Text(
							textString="%name",
							extent={{-141.751,52.8171},{138.249,112.817}},
							visible=true,
							origin={1.751,47.1829}),
						Text(
							textString="G=%G_c",
							fillPattern=FillPattern.Solid,
							extent={{-113.9,-59.6039},{114.1,-19.6039}},
							visible=true,
							origin={-0.1,9.603899999999999}),
						Text(
							textString="Gr=%Gr",
							extent={{-111.699,-99.49379999999999},{116.301,-59.4938}},
							visible=true),
						Text(
							textString="T",
							fontSize=24,
							fillColor={0,0,255},
							extent={{-3.0261,-1.9257},{0,8.2531}},
							visible=true),
						Text(
							textString="G=%G_p",
							fillPattern=FillPattern.Solid,
							extent={{-113.9,-59.6039},{114.1,-19.6039}},
							visible=true,
							origin={-0.1,77.8989})}));
end intra_BuildingBlock_connector;
