// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model BuildingBlock_thermal "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen"
	thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
		transformation(
			origin={140,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
		transformation(
			origin={-60,90},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={0,0},
			extent={{-10,-10},{10,10}})));
	parameter Modelica.SIunits.Height x_ESS=0.08 "length of ESS in m";
	parameter Modelica.SIunits.Height y_ESS=0.01 "height of ESS in m";
	parameter Modelica.SIunits.Height z_ESS=0.01 "width of ESS in m";
	parameter Modelica.SIunits.Height x_MSS=0.05 "length of MSS in m";
	parameter Modelica.SIunits.Height y_MSS=0.08 "height of MSS in m";
	parameter Modelica.SIunits.Height z_MSS=0.08 "width of MSS in m";
	parameter Modelica.SIunits.Height x_TSS=0.03 "length of TSS in m";
	parameter Modelica.SIunits.Height y_TSS=0.1 "height of TSS in m";
	parameter Modelica.SIunits.Height z_TSS=0.1 "width of TSS in m";
	parameter Modelica.SIunits.Height x_Panel=0.03 "thickness of Panel in m";
	parameter Modelica.SIunits.Height y_Panel=0.4 "height of Panel in m";
	parameter Modelica.SIunits.Height z_Panel=0.4 "width of Panel in m";
	parameter Modelica.SIunits.Height x_EB=0.1 "length of Electronic Box in m";
	parameter Modelica.SIunits.Height y_EB=0.1 "height of Electronic Box in m";
	parameter Modelica.SIunits.Height z_EB=0.1 "width of Electronic Box in m";
	replaceable parameter MaterialDatabase.Material material_ESS=Kupfer "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_MSS=Titan "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_TSS=Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_Panel=Panel "Material of Panel from MaterialDataBase" annotation(choicesAllMatching=true);
	replaceable parameter MaterialDatabase.Material material_EB=elektronik_Box_Composit1 "Material of Electronic Box from MaterialDataBase" annotation(choicesAllMatching=true);
	parameter Real Gr_P_EB(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
	parameter Real Gr_oP(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
	parameter Real Gr_aP(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
	parameter Modelica.SIunits.Power BuildingBlock_Power=5 "Leistungsbedarf des Standartbausteins";
	thermal_Panel_with_Interface Panel_xp(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
		x_Panel=x_Panel,
		y_Panel=y_Panel,
		z_Panel=z_Panel,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS,
		material_Panel=material_Panel) annotation(
		schnittstelle1(
			material_ESS(choicesAllMatching=true),
			material_MSS(choicesAllMatching=true),
			material_TSS(choicesAllMatching=true),
			ESS(material(choicesAllMatching=true)),
			MSS(material(choicesAllMatching=true)),
			TSS(material(choicesAllMatching=true))),
		BuildingBlock_Panel(material(choicesAllMatching=true)),
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		material_Panel(choicesAllMatching=true),
		Placement(transformation(
			origin={120,0},
			extent={{-10,-10},{10,10}})));
	thermal_Panel_with_Interface Panel_xn(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
		x_Panel=x_Panel,
		y_Panel=y_Panel,
		z_Panel=z_Panel,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS,
		material_Panel=material_Panel) annotation(
		schnittstelle1(
			material_ESS(choicesAllMatching=true),
			material_MSS(choicesAllMatching=true),
			material_TSS(choicesAllMatching=true),
			ESS(material(choicesAllMatching=true)),
			MSS(material(choicesAllMatching=true)),
			TSS(material(choicesAllMatching=true))),
		BuildingBlock_Panel(material(choicesAllMatching=true)),
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		material_Panel(choicesAllMatching=true),
		Placement(transformation(
			origin={-95,0},
			extent={{-10,-10},{10,10}},
			rotation=-180)));
	thermal_Panel_with_Interface Panel_yp(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
		x_Panel=x_Panel,
		y_Panel=y_Panel,
		z_Panel=z_Panel,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS,
		material_Panel=material_Panel) annotation(
		schnittstelle1(
			material_ESS(choicesAllMatching=true),
			material_MSS(choicesAllMatching=true),
			material_TSS(choicesAllMatching=true),
			ESS(material(choicesAllMatching=true)),
			MSS(material(choicesAllMatching=true)),
			TSS(material(choicesAllMatching=true))),
		BuildingBlock_Panel(material(choicesAllMatching=true)),
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		material_Panel(choicesAllMatching=true),
		Placement(transformation(
			origin={0,80},
			extent={{-10,-10},{10,10}},
			rotation=-270)));
	thermal_Panel_with_Interface Panel_yn(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
		x_Panel=x_Panel,
		y_Panel=y_Panel,
		z_Panel=z_Panel,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS,
		material_Panel=material_Panel) annotation(
		schnittstelle1(
			material_ESS(choicesAllMatching=true),
			material_MSS(choicesAllMatching=true),
			material_TSS(choicesAllMatching=true),
			ESS(material(choicesAllMatching=true)),
			MSS(material(choicesAllMatching=true)),
			TSS(material(choicesAllMatching=true))),
		BuildingBlock_Panel(material(choicesAllMatching=true)),
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		material_Panel(choicesAllMatching=true),
		Placement(transformation(
			origin={0,-90},
			extent={{-10,-10},{10,10}},
			rotation=-90)));
	thermal_Panel_with_Interface Panel_zn(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
		x_Panel=x_Panel,
		y_Panel=y_Panel,
		z_Panel=z_Panel,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS,
		material_Panel=material_Panel) annotation(
		schnittstelle1(
			material_ESS(choicesAllMatching=true),
			material_MSS(choicesAllMatching=true),
			material_TSS(choicesAllMatching=true),
			ESS(material(choicesAllMatching=true)),
			MSS(material(choicesAllMatching=true)),
			TSS(material(choicesAllMatching=true))),
		BuildingBlock_Panel(material(choicesAllMatching=true)),
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		material_Panel(choicesAllMatching=true),
		Placement(transformation(
			origin={75,76},
			extent={{-10,-10},{10,10}},
			rotation=45)));
	thermal_Panel_with_Interface Panel_zp(
		x_ESS=x_ESS,
		y_ESS=y_ESS,
		z_ESS=z_ESS,
		x_MSS=x_MSS,
		y_MSS=y_MSS,
		z_MSS=z_MSS,
		x_TSS=x_TSS,
		y_TSS=y_TSS,
		z_TSS=z_TSS,
		x_Panel=x_Panel,
		y_Panel=y_Panel,
		z_Panel=z_Panel,
		material_ESS=material_ESS,
		material_MSS=material_MSS,
		material_TSS=material_TSS,
		material_Panel=material_Panel) annotation(
		schnittstelle1(
			material_ESS(choicesAllMatching=true),
			material_MSS(choicesAllMatching=true),
			material_TSS(choicesAllMatching=true),
			ESS(material(choicesAllMatching=true)),
			MSS(material(choicesAllMatching=true)),
			TSS(material(choicesAllMatching=true))),
		BuildingBlock_Panel(material(choicesAllMatching=true)),
		material_ESS(choicesAllMatching=true),
		material_MSS(choicesAllMatching=true),
		material_TSS(choicesAllMatching=true),
		material_Panel(choicesAllMatching=true),
		Placement(transformation(
			origin={-80,-95},
			extent={{-10,-10},{10,10}},
			rotation=-135)));
	thermalModel_ElectronicBox thermalModel_ElectronicBox1(
		material=material_EB,
		x=x_EB,
		y=y_EB,
		z=z_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={0,-0},
			extent={{-30,-30},{30,30}})));
	intra_BuildingBlock_connector EB_Pxp(
		Gr=Gr_P_EB,
		material=material_EB,
		A_cross_Panel=y_EB * z_EB,
		ThermalInsulance_c=ThermalInsulance_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={72,-2},
			extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
	intra_BuildingBlock_connector EB_Pxn(
		Gr=Gr_P_EB,
		material=material_EB,
		A_cross_Panel=y_EB * z_EB,
		ThermalInsulance_c=ThermalInsulance_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-59,-1},
			extent={{-6.25,-6.25},{6.25,6.25}})));
	intra_BuildingBlock_connector EB_Pyn(
		Gr=Gr_P_EB,
		material=material_EB,
		A_cross_Panel=x_EB * z_EB,
		ThermalInsulance_c=ThermalInsulance_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={1,-61},
			extent={{-6.4815,-6.4815},{6.4815,6.4815}},
			rotation=-90)));
	intra_BuildingBlock_connector EB_Pyp(
		Gr=Gr_P_EB,
		material=material_EB,
		A_cross_Panel=x_EB * z_EB,
		ThermalInsulance_c=ThermalInsulance_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={2,53},
			extent={{-6.6332,-6.6332},{6.6332,6.6332}},
			rotation=-90)));
	intra_BuildingBlock_connector EB_Pzp(
		Gr=Gr_P_EB,
		material=material_EB,
		A_cross_Panel=y_EB * x_EB,
		ThermalInsulance_c=ThermalInsulance_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-49,-47},
			extent={{-11,-9},{4,6}},
			rotation=45)));
	intra_BuildingBlock_connector EB_Pzn(
		Gr=Gr_P_EB,
		material=material_EB,
		A_cross_Panel=y_EB * x_EB,
		ThermalInsulance_c=ThermalInsulance_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={46,44},
			extent={{-6.4943,-6.4943},{9,11}},
			rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_xp_yn(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={81,-58},
			extent={{-5.8179,-5.8179},{8,7}},
			rotation=-135)));
	intra_BuildingBlock_connector adjoiningPanel_xp_yp(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={81,44},
			extent={{-6.2693,-6.2693},{6.2693,6.2693}},
			rotation=-45)));
	intra_BuildingBlock_connector adjoiningPanel_xp_zn(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={112,50},
			extent={{-4.7981,-4.7981},{4.7981,4.7981}},
			rotation=-225)));
	intra_BuildingBlock_connector adjoiningPanel_xp_zp(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={100,-76},
			extent={{-7.5,-7.5},{7.5,7.5}},
			rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_xn_yn(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-78,-57},
			extent={{-6.5445,-6.5445},{6.5445,6.5445}},
			rotation=-225)));
	intra_BuildingBlock_connector adjoiningPanel_xn_yp(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-59,44},
			extent={{-6.2294,-6.2294},{6.2294,6.2294}},
			rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_xn_zn(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-70,56},
			extent={{-6.3683,-6.3683},{6.3683,6.3683}},
			rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_xn_zp(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-99,-61},
			extent={{-5.8783,-5.8783},{5.8783,5.8783}},
			rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zn(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={76,-36},
			extent={{-7,-13},{4,1}},
			rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zp(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-34,-96},
			extent={{-5.778,-5.778},{4,4}})));
	intra_BuildingBlock_connector adjoiningPanel_yp_zn(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={41,79},
			extent={{-6.2539,-6.2539},{4,6}})));
	intra_BuildingBlock_connector adjoiningPanel_yp_zp(
		Gr=Gr_aP,
		material=material_Panel,
		A_cross_Panel=x_Panel * y_Panel,
		ThermalInsulance_c=ThermalInsulance_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-105,41},
			extent={{-6.1458,-6.1458},{6.1458,6.1458}},
			rotation=45)));
	Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow Buildingblock_Power(Q_flow=BuildingBlock_Power) annotation(Placement(transformation(
		origin={-95,90},
		extent={{-10,-10},{10,10}})));
	parameter MaterialDatabase.Kupferlegierungen_Kupfer Kupfer annotation(Placement(transformation(
		origin={130,90},
		extent={{-10,-10},{10,10}})));
	parameter MaterialDatabase.Titanlegierungen_Handelsueblich_Rein_CP_Ti_UNS_R50700__Klasse_4_SS Titan annotation(Placement(transformation(
		origin={130,30},
		extent={{-10,-10},{10,10}})));
	parameter MaterialDatabase.Aluminiumlegierungen_1060_H12 Aluminium annotation(Placement(transformation(
		origin={130,-30},
		extent={{-10,-10},{10,10}})));
	parameter MaterialDatabase.Kohlenstofffasern_Carbon_Panel_tbd Panel annotation(Placement(transformation(
		origin={130,-60},
		extent={{-10,-10},{10,10}})));
	parameter MaterialDatabase.Elektronik_Box_Composit elektronik_Box_Composit1 annotation(Placement(transformation(
		origin={130,60},
		extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_x(Gr=Gr_oP) annotation(Placement(transformation(
		origin={17,-47},
		extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_Panel=0.00003 "Thermal Insulance of Panel Surfaces";
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_EB=0.00003 "Thermal Insulance of Panel Electronic Box";
	thermal_connector thermal_connector_yn annotation(Placement(
		transformation(
			origin={0,-110},
			extent={{-10,10},{10,-10}},
			rotation=-90),
		iconTransformation(
			origin={1.10041,-99.5873},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
	thermal_connector thermal_connector_zp annotation(Placement(
		transformation(
			origin={-115,-110},
			extent={{10,10},{-10,-10}},
			rotation=-180),
		iconTransformation(
			origin={-87.4828,-87.75790000000001},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	thermal_connector thermal_connector_xn annotation(Placement(
		transformation(
			origin={-110,0},
			extent={{10,10},{-10,-10}},
			rotation=-180),
		iconTransformation(
			origin={-99.3122,-2.75103},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	thermal_connector thermal_connector_yp annotation(Placement(
		transformation(
			origin={1.10041,98.762},
			extent={{10,-10},{-10,10}},
			rotation=-270),
		iconTransformation(
			origin={1.10041,98.762},
			extent={{12,-12},{-12,12}},
			rotation=-270)));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
		origin={-55,31},
		extent={{-10,-10},{10,10}},
		rotation=45)));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
		origin={46,-1},
		extent={{-6.0172,6.0172},{6.0172,-6.0172}},
		rotation=-90)));
	thermal_connector thermal_connector_zn annotation(Placement(
		transformation(
			origin={87.8378,87.8378},
			extent={{-10,-10},{10,10}},
			rotation=-360),
		iconTransformation(
			origin={87.8378,87.8378},
			extent={{-12,-12},{12,12}})));
	equation
		connect(Panel_zn.port_a,EB_Pzn.port_b) annotation(
			Line(
				points={{73,74},{50.66667175292969,52}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
			Line(
				points={{77,78},{90,95},{95,95}},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
			Line(
				points={{39.66667175292969,41},{27,27}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
			Line(
				points={{-27,-27},{-45,-45.33332824707031}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zp.port_a,EB_Pzp.port_a) annotation(
			Line(
				points={{-78,-93},{-75,-90},{-55.66666412353516,-56}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
			Line(
				points={{-82,-97},{-85,-100},{-110,-110},{-115,-110}},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
			points={{1,-55},{1,-50},{1,-35},{0,-35},{0,-30}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pyn.port_b,Panel_yn.port_a) annotation(Line(
			points={{1,-67},{1,-72},{1,-82},{0,-82},{0,-87}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
			points={{0,-93},{0,-98},{5,-98},{5,-110},{0,-110}},
			thickness=0.0625));
		connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
			points={{65,-2},{60,-2},{35,-2},{35,0},{30,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pxp.port_b,Panel_xp.port_a) annotation(Line(
			points={{79,-2},{84,-2},{112,-2},{112,0},{117,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
			points={{123,0},{128,0},{135,0},{140,0}},
			thickness=0.0625));
		connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
			points={{-53,-1},{-48,-1},{-35,-1},{-35,0},{-30,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pxn.port_a,Panel_xn.port_a) annotation(Line(
			points={{-65,-1},{-70,-1},{-87,-1},{-87,0},{-92,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
			points={{2,46},{2,41},{2,35},{0,35},{0,30}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pyp.port_a,Panel_yp.port_a) annotation(Line(
			points={{2,60},{2,65},{2,72},{0,72},{0,77}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
			points={{0,83},{0,88},{-4,88},{-4,99},{1,99}},
			thickness=0.0625));
		connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
			points={{-98,0},{-103,0},{-105,0},{-110,0}},
			thickness=0.0625));
		connect(Panel_yp.port_b1,adjoiningPanel_xn_yp.port_b) annotation(
			Line(
				points={{-3.333328247070313,77.66667175292969},{-8,78},{-54.66666412353516,48.33333206176758}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xn_yp.port_a,Panel_xn.port_a1) annotation(
			Line(
				points={{-63.33333587646484,39.66666412353516},{-93,9},{-93,3.666664123535156}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_yp.port_a1,adjoiningPanel_xp_yp.port_a) annotation(
			Line(
				points={{3.666671752929688,78},{9,78},{76.66667175292969,48.33333206176758}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_b1,adjoiningPanel_xp_yp.port_b) annotation(
			Line(
				points={{118,3},{118,8},{85,40}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_a1,adjoiningPanel_xp_yn.port_a) annotation(
			Line(
				points={{118,-3.666664123535156},{118,-9},{85.66667175292969,-54.33332824707031}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xp_yn.port_b,Panel_yn.port_b1) annotation(
			Line(
				points={{75.66667175292969,-64},{8,-88},{3.333328247070313,-87.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xn_yn.port_b,Panel_xn.port_b1) annotation(
			Line(
				points={{-82.66666412353516,-52.33332824707031},{-93,-8},{-92.66667175292969,-3.333335876464844}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_yn.port_a1,adjoiningPanel_xn_yn.port_a) annotation(
			Line(
				points={{-3.666671752929688,-88},{-9,-88},{-73.33333587646484,-61.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_a2,adjoiningPanel_xp_zn.port_a) annotation(
			Line(
				points={{121,3},{121,8},{115,47}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_b) annotation(
			Line(
				points={{108.6666564941406,53.33333206176758},{73.66667175292969,69.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_b) annotation(
			Line(
				points={{-74.66666412353516,51.33333206176758},{-89.33332824707031,3.666664123535156}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zn.port_a2,adjoiningPanel_xn_zn.port_b) annotation(
			Line(
				points={{73.66667175292969,79.33333587646484},{45,95},{-15,90},{-55,70},{-65.33333587646484,60.66666793823242}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xn.port_a2,adjoiningPanel_xn_zp.port_a) annotation(Line(
			points={{-97,-3},{-97,-8},{-97,-50},{-99,-50},{-99,-55}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_b) annotation(
			Line(
				points={{-99,-67},{-78.66666412353516,-88.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zp.port_a2,adjoiningPanel_xp_zp.port_a) annotation(
			Line(
				points={{-78.66666412353516,-98.33332824707031},{-40,-120},{52,-120},{94.66667175292969,-81.33332824707031}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_b,adjoiningPanel_xp_zp.port_b) annotation(
			Line(
				points={{115,-4},{105,-71}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yp_zp.port_b,Panel_yp.port_a2) annotation(
			Line(
				points={{-100.6666717529297,45.33333587646484},{-80,60},{-55,75},{-8,82},{-3.333328247070313,81.66666412353516}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yp_zp.port_a,Panel_zp.port_a1) annotation(
			Line(
				points={{-109.3333282470703,36.66666412353516},{-120,15},{-130,-20},{-105,-80},{-81,-91}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_b1) annotation(
			Line(
				points={{-39.66666412353516,-97},{-75.66666412353516,-95.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yn_zn.port_b,Panel_zn.port_a1) annotation(
			Line(
				points={{83,-37},{100,-15},{100,15},{100,40},{90,60},{76,
				72}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zn.port_b1,adjoiningPanel_yp_zn.port_b) annotation(Line(
			points={{71,77},{71,82},{60,82},{60,79},{50,79},{45,
			79}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yp_zn.port_a,Panel_yp.port_b) annotation(
			Line(
				points={{35,79},{25,80},{10,75},{4,74}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_yn.port_a,oposite_Panel_y.port_b) annotation(
			Line(
				points={{0,-87},{46,-7}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_yp.port_a,oposite_Panel_y.port_a) annotation(
			Line(
				points={{0,77},{46,5}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(oposite_Panel_z.port_a,Panel_zp.port_a) annotation(
			Line(
				points={{-59.66666412353516,26.33333587646484},{-65,10},{-70,-25},{-78,-88},{-78,-93}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zn.port_a,oposite_Panel_z.port_b) annotation(
			Line(
				points={{73,74},{-15,60},{-35,50},{-50,36}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(oposite_Panel_x.port_a,Panel_xn.port_a) annotation(
			Line(
				points={{10.33332824707031,-47},{5,-47},{-40,-40},{-87,0},{-92,0}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_a,oposite_Panel_x.port_b) annotation(
			Line(
				points={{117,0},{112,0},{90,-20},{70,-35},{24,-47}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Buildingblock_Power.port,port_b) annotation(Line(
			points={{-85,90},{-80,90},{-65,90},{-60,90}},
			color={191,0,0},
			thickness=0.0625));
		connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
			Line(
				points={{0,0},{-60,90}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_b) annotation(Line(
			points={{75,-45},{70,-45},{-4,-45},{-4,-79},{-4,-84}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_a2) annotation(Line(
			points={{-30,-97},{-25,-97},{-25,-94},{8,-94},{8,-91},{3,
			-91}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		Icon(
			coordinateSystem(extent={{-100,-100},{100,100}}),
			graphics={
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-10,-50},{10,50}}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-10.2751,-50},{9.7249,50}}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-50,-10},{50,10}}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									fillPattern=FillPattern.CrossDiag,
									extent={{-50,-10},{50,10}}),
								Rectangle(
									lineColor={255,0,0},
									fillColor={255,255,255},
									lineThickness=2,
									extent={{-80,-80},{80,80}}),
								Text(
									textString="%name",
									textStyle={TextStyle.Bold},
									lineColor={0,0,0},
									fillColor={255,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-78.4853,-65.66710000000001},{78.4853,-25.6671}}),
								Text(
									textString="yp",
									lineColor={0,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-12.0277,70.2527},{14.7787,93.1585}}),
								Text(
									textString="yn",
									lineColor={0,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-12.3028,-89.8573},{14.5036,-66.9515}}),
								Text(
									textString="xp",
									lineColor={0,0,0},
									fillPattern=FillPattern.Solid,
									extent={{67.47709999999999,-10.6276},{94.2835,12.2782}}),
								Text(
									textString="xn",
									lineColor={0,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-92.63290000000001,-12.5533},{-65.8265,10.3525}}),
								Text(
									textString="zp",
									lineColor={0,0,0},
									fillPattern=FillPattern.Solid,
									extent={{-79.428,-79.95359999999999},{-52.6216,-57.0478}}),
								Text(
									textString="zn",
									lineColor={0,0,0},
									fillPattern=FillPattern.Solid,
									extent={{55.2109,58.9977},{82.01730000000001,81.90349999999999}})}),
		Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
		experiment(
			StopTime=1,
			StartTime=0));
end BuildingBlock_thermal;
