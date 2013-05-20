// CP: 65001
// SimulationX Version: 3.5.705.14 x64
model Schnittstelle
	parameter Modelica.SIunits.Length x_ESS "length x of ESS in m";
	parameter Modelica.SIunits.Length y_ESS "length y of ESS in m";
	parameter Modelica.SIunits.Length z_ESS "length z of ESS in m";
	parameter Modelica.SIunits.Length x_MSS "length x of MSS in m";
	parameter Modelica.SIunits.Length y_MSS "length y of MSS in m";
	parameter Modelica.SIunits.Length z_MSS "length z of MSS in m";
	parameter Modelica.SIunits.Length x_TSS "length x of TSS in m";
	parameter Modelica.SIunits.Length y_TSS "length y of TSS in m";
	parameter Modelica.SIunits.Length z_TSS "length z of TSS in m";
	replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(
		transformation(
			origin={-43,-2},
			extent={{-12,-12},{12,12}}),
		iconTransformation(
			origin={-28,0},
			extent={{-12,-12},{12,12}})));
	thermal_element ESS(
		material=material_ESS,
		x=x_ESS,
		y=y_ESS,
		z=z_ESS) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-0,40},
			extent={{-12,-12},{12,12}})));
	thermal_element MSS(
		material=material_MSS,
		x=x_MSS,
		y=y_MSS,
		z=z_MSS) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={0,0},
			extent={{-12,-12},{12,12}})));
	thermal_element TSS(
		material=material_TSS,
		x=x_TSS,
		y=y_TSS,
		z=z_TSS) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-0,-40},
			extent={{-12,-12},{12,12}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a ESS_IF annotation(Placement(
		transformation(
			origin={40,40},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,50},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a MSS_IF annotation(Placement(
		transformation(
			origin={40,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={98.67400000000001,-0.6225000000000001},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a TSS_IF annotation(Placement(
		transformation(
			origin={40,-40},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,-50},
			extent={{-10,-10},{10,10}})));
	equation
		connect(MSS.port_a_xn,port_a) annotation(Line(
			points={{-12,0},{-17,0},{-38,0},{-38,-2},{-43,-2}},
			color={191,0,0},
			thickness=0.0625));
		connect(MSS.port_b_xp,MSS_IF) annotation(Line(
			points={{12,0},{17,0},{35,0},{40,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(ESS.port_a_xn,port_a) annotation(Line(
			points={{-12,40},{-17,40},{-38,40},{-38,-2},{-43,-2}},
			color={191,0,0},
			thickness=0.0625));
		connect(ESS.port_b_xp,ESS_IF) annotation(Line(
			points={{12,40},{17,40},{35,40},{40,40}},
			color={191,0,0},
			thickness=0.0625));
		connect(TSS.port_a_xn,port_a) annotation(Line(
			points={{-12,-40},{-17,-40},{-38,-40},{-38,-2},{-43,-2}},
			color={191,0,0},
			thickness=0.0625));
		connect(TSS.port_b_xp,TSS_IF) annotation(Line(
			points={{12,-40},{17,-40},{35,-40},{40,-40}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		viewSettings(clrRaster=8421504),
		Icon(
			coordinateSystem(
				extent={{-100,-100},{100,100}},
				grid={10,10}),
			graphics={
			Rectangle(
				lineColor={255,0,0},
				fillColor={255,255,255},
				fillPattern=FillPattern.CrossDiag,
				extent={{-30,-100},{30,100}},
				visible=true),
			Text(
				textString="%name",
				textStyle={TextStyle.Bold},
				fillPattern=FillPattern.Solid,
				extent={{-100,-30},{100,30}},
				visible=true,
				origin={60,-0},
				rotation=90)}),
		Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
		experiment(
			StopTime=1,
			StartTime=0));
end Schnittstelle;
