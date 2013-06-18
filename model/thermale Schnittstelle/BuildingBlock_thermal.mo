// CP: 65001
// SimulationX Version: 3.5.705.14 x64
model BuildingBlock_thermal "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen"
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
	parameter Modelica.SIunits.ThermalConductance G_Panel_p=1.5 "Constant thermal conductance of material parallel to main surface (standard - near ro infinity if connected to main surface)";
	parameter Modelica.SIunits.ThermalConductance G_P_EB=350 "Constant thermal conductance between Panel - Electronic Box";
	parameter Modelica.SIunits.ThermalConductance G_aP=130 "Constant thermal conductance between two panels (adjoining Panels)";
	parameter Real Gr_P_EB(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
	parameter Real Gr_oP(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
	parameter Real Gr_aP(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
	parameter Real Gr_Rad(unit="m2")=0.01 "Net radiation conductance between two surfaces (see docu) tbd";
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
			origin={100,0},
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
			origin={-100,0},
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
			origin={0,-81.6332},
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
			origin={100,-80},
			extent={{-10,-10},{10,10}})));
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
			origin={-100,80},
			extent={{-10,-10},{10,10}},
			rotation=-180)));
	thermalModel_ElectronicBox thermalModel_ElectronicBox1(
		material=material_EB,
		x=x_EB,
		y=y_EB,
		z=z_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={0,-0},
			extent={{-30,-30},{30,30}})));
	thermal_connector thermal_connector_xp annotation(Placement(
		transformation(
			origin={140,0},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector_yp annotation(Placement(
		transformation(
			origin={0,100},
			extent={{-10,-10},{10,10}},
			rotation=-270),
		iconTransformation(
			origin={0,100},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector_xn annotation(Placement(
		transformation(
			origin={-142.091,0},
			extent={{-10,-10},{10,10}},
			rotation=-180),
		iconTransformation(
			origin={-100,0},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector_zp annotation(Placement(
		transformation(
			origin={-138.1713,95},
			extent={{-10,-10},{10,10}},
			rotation=-180),
		iconTransformation(
			origin={-60,60},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector_zn annotation(Placement(
		transformation(
			origin={140,-97.2865},
			extent={{-10,-10},{10,10}},
			rotation=-360),
		iconTransformation(
			origin={60,-60},
			extent={{-10,-10},{10,10}})));
	thermal_connector thermal_connector_yn annotation(Placement(
		transformation(
			origin={0,-100},
			extent={{-10,-10},{10,10}},
			rotation=-90),
		iconTransformation(
			origin={0,-100},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
		transformation(
			origin={-75,-75},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={0,0},
			extent={{-10,-10},{10,10}})));
	intra_BuildingBlock_connector EB_Pxp(
		Gr=Gr_P_EB,
		ThermalInsulance_c=ThermalInsulance_EB,
		A_cross_Panel=y_EB*z_EB,
		material=material_EB,
		A_p=A_EB,
		x_p=x_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={50,0},
			extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
	intra_BuildingBlock_connector EB_Pxn(
		Gr=Gr_P_EB,
		ThermalInsulance_c=ThermalInsulance_EB,
		A_cross_Panel=A_EB,
		material=material_EB,
		A_p=A_EB,
		x_p=x_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-46.25,-0},
			extent={{-6.25,-6.25},{6.25,6.25}})));
	intra_BuildingBlock_connector EB_Pyn(
		Gr=Gr_P_EB,
		ThermalInsulance_c=ThermalInsulance_EB,
		A_cross_Panel=A_EB,
		material=material_EB,
		A_p=A_EB,
		x_p=x_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={0,-50},
			extent={{-6.4815,-6.4815},{6.4815,6.4815}},
			rotation=-90)));
	intra_BuildingBlock_connector EB_Pyp(
		Gr=Gr_P_EB,
		ThermalInsulance_c=ThermalInsulance_EB,
		A_cross_Panel=A_EB,
		material=material_EB,
		A_p=A_EB,
		x_p=x_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-0,45},
			extent={{-6.6332,-6.6332},{6.6332,6.6332}},
			rotation=-90)));
	intra_BuildingBlock_connector EB_Pzp(
		Gr=Gr_P_EB,
		ThermalInsulance_c=ThermalInsulance_EB,
		A_cross_Panel=A_EB,
		material=material_EB,
		A_p=A_EB,
		x_p=x_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-25.8667,34.1333},
			extent={{-5.8667,-5.8667},{5.8667,5.8667}})));
	intra_BuildingBlock_connector EB_Pzn(
		Gr=Gr_P_EB,
		ThermalInsulance_c=ThermalInsulance_EB,
		A_cross_Panel=A_EB,
		material=material_EB,
		A_p=A_EB,
		x_p=x_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={28.5057,-38.5057},
			extent={{-6.4943,-6.4943},{6.4943,6.4943}})));
	intra_BuildingBlock_connector adjoiningPanel_xp_yn(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={40.8179,-70.8179},
			extent={{-5.8179,-5.8179},{5.8179,5.8179}})));
	intra_BuildingBlock_connector adjoiningPanel_xp_yp(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={51.2693,63.7307},
			extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
	intra_BuildingBlock_connector adjoiningPanel_xp_zn(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={86.70650000000001,-27.01},
			extent={{-4.7981,-4.7981},{4.7981,4.7981}},
			rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xp_zp(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={75,85},
			extent={{-7.5,-7.5},{7.5,7.5}})));
	intra_BuildingBlock_connector adjoiningPanel_xn_yn(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-43.4555,-63.4555},
			extent={{-6.5445,-6.5445},{6.5445,6.5445}})));
	intra_BuildingBlock_connector adjoiningPanel_xn_yp(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-65,65},
			extent={{-6.2294,-6.2294},{6.2294,6.2294}})));
	intra_BuildingBlock_connector adjoiningPanel_xn_zn(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-58.6317,-93.6317},
			extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
	intra_BuildingBlock_connector adjoiningPanel_xn_zp(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-105.8783,35},
			extent={{-5.8783,-5.8783},{5.8783,5.8783}},
			rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zn(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={65.8526,-80},
			extent={{-5.8526,-5.8526},{5.8526,5.8526}})));
	intra_BuildingBlock_connector adjoiningPanel_yn_zp(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-84.22199999999999,-44.222},
			extent={{-5.778,-5.778},{5.778,5.778}},
			rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_yp_zn(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={68.7461,-18.7461},
			extent={{-6.2539,-6.2539},{6.2539,6.2539}},
			rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_yp_zp(
		Gr=Gr_aP,
		ThermalInsulance_c=ThermalInsulance_Panel,
		A_cross_Panel=A_cross_Panel,
		material=material_Panel,
		A_p=A_cross_Panel,
		x_p=l_EdgeLength_Panel) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={-38.8542,78.85420000000001},
			extent={{-6.1458,-6.1458},{6.1458,6.1458}})));
	Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow Buildingblock_Power(Q_flow=BuildingBlock_Power) annotation(Placement(transformation(
		origin={-123.1456,-75},
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
		origin={-40,51.7966},
		extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
		origin={50,35},
		extent={{-6.5818,-6.5818},{6.5818,6.5818}})));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
		origin={-53.9828,-23.9828},
		extent={{-6.0172,-6.0172},{6.0172,6.0172}},
		rotation=-90)));
	parameter Modelica.SIunits.Length l_EdgeLength_Panel=0.4 "Edge length of Panel";
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_TSS=3e-05 "Thermal Insulance of TSS Surfaces";
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_MSS=0.00812 "Thermal Insulance of MSS Surfaces";
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_ESS=0.00042 "Thermal Insulance of ESS Surfaces";
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_Panel=3e-05 "Thermal Insulance of Panel Surfaces";
	parameter Modelica.SIunits.ThermalInsulance ThermalInsulance_EB=3e-05 "Thermal Insulance of Panel Electronic Box";
	parameter Modelica.SIunits.Area A_cross_Panel=0.004 "Querschnittsflaeche des Aussenpanels";
	equation
		connect(Panel_xn.port_a,oposite_Panel_x.port_a) annotation(Line(
			points={{-97,0},{-92,0},{-52,0},{-52,52},{-47,52}},
			color={191,0,0},
			visible=true,
			origin={-80.2655,34.5311}));
		connect(oposite_Panel_x.port_b,Panel_xp.port_a) annotation(Line(
			points={{-33,52},{-28,52},{92,52},{92,0},{97,0}},
			color={191,0,0},
			visible=true,
			origin={59.4492,25.8983}));
		connect(oposite_Panel_z.port_a,Panel_zp.port_a) annotation(Line(
			points={{44,35},{39,35},{-92,35},{-92,80},{-97,80}},
			color={191,0,0},
			visible=true,
			origin={-56.8954,57.5}));
		connect(oposite_Panel_z.port_b,Panel_zn.port_a) annotation(Line(
			points={{57,35},{62,35},{92,35},{92,-80},{97,-80}},
			color={191,0,0},
			visible=true,
			origin={83.5273,-3.3333}));
		connect(EB_Pxp.port_b,Panel_xp.port_a) annotation(Line(
			points={{57,0},{62,0},{92,0},{97,0}},
			color={191,0,0},
			visible=true,
			origin={81.0826,0.1826}));
		connect(thermalModel_ElectronicBox1.EB_xp,EB_Pxp.port_a) annotation(Line(
			points={{30,0},{35,0},{39,0},{44,0}},
			color={191,0,0},
			visible=true,
			origin={36.0114,0.1776}));
		connect(EB_Pyn.port_b,Panel_yn.port_a) annotation(Line(
			points={{0,-56},{0,-61},{0,-74},{0,-74},{0,-79}},
			color={191,0,0},
			visible=true,
			origin={0,-67.5573}));
		connect(thermalModel_ElectronicBox1.EB_yn,EB_Pyn.port_a) annotation(Line(
			points={{0,-30},{0,-35},{0,-39},{0,-44}},
			color={191,0,0},
			visible=true,
			origin={0,-36.7593}));
		connect(oposite_Panel_y.port_b,Panel_yn.port_a) annotation(Line(
			points={{-54,-30},{-54,-35},{-54,-74},{0,-74},{0,-79}},
			color={191,0,0},
			visible=true,
			origin={-35.9885,-62.4221}));
		connect(oposite_Panel_y.port_a,Panel_yp.port_a) annotation(Line(
			points={{-54,-18},{-54,-13},{-54,72},{0,72},{0,77}},
			color={191,0,0},
			visible=true,
			origin={-26.9914,48.2586}));
		connect(Buildingblock_Power.port,port_b) annotation(Line(
			points={{-113,-75},{-108,-75},{-80,-75},{-75,-75}},
			color={191,0,0},
			visible=true,
			origin={-94.0728,-75}));
		connect(adjoiningPanel_yp_zn.port_b,Panel_zn.port_a) annotation(Line(
			points={{69,-25},{69,-30},{69,-80},{92,-80},{97,-80}},
			color={191,0,0},
			visible=true,
			origin={83.04519999999999,-59.7588}));
		connect(Panel_yp.port_a,adjoiningPanel_yp_zn.port_a) annotation(Line(
			points={{0,77},{0,72},{0,-7},{69,-7},{69,-12}},
			color={191,0,0},
			visible=true,
			origin={34.5405,11.37}));
		connect(adjoiningPanel_yp_zp.port_a,Panel_zp.port_a) annotation(Line(
			points={{-45,79},{-50,79},{-92,79},{-92,80},{-97,80}},
			color={191,0,0},
			visible=true,
			origin={-78.9894,79.5916}));
		connect(adjoiningPanel_yp_zp.port_b,Panel_yp.port_a) annotation(Line(
			points={{-33,79},{-28,79},{-28,72},{0,72},{0,77}},
			color={191,0,0},
			visible=true,
			origin={-14.6685,78.0963}));
		connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_a) annotation(Line(
			points={{-84,-50},{-84,-55},{-84,-74},{0,-74},{0,-79}},
			color={191,0,0},
			visible=true,
			origin={-55.9359,-69.1073}));
		connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_a) annotation(Line(
			points={{-84,-38},{-84,-33},{-84,80},{-92,80},{-97,80}},
			color={191,0,0},
			visible=true,
			origin={-90.4563,43.8728}));
		connect(adjoiningPanel_yn_zn.port_b,Panel_zn.port_a) annotation(Line(
			points={{72,-80},{77,-80},{92,-80},{97,-80}},
			color={191,0,0},
			visible=true,
			origin={85.6904,-79.8389}));
		connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_a) annotation(Line(
			points={{60,-80},{55,-80},{55,-74},{0,-74},{0,-79}},
			color={191,0,0},
			visible=true,
			origin={21.5163,-79.15989999999999}));
		connect(adjoiningPanel_xn_zp.port_b,Panel_xn.port_a) annotation(Line(
			points={{-106,29},{-106,24},{-92,24},{-92,0},{-97,0}},
			color={191,0,0},
			visible=true,
			origin={-101.2773,13.7725}));
		connect(Panel_zp.port_a,adjoiningPanel_xn_zp.port_a) annotation(Line(
			points={{-97,80},{-92,80},{-92,63},{-106,63},{-106,46},{-106,
			41}},
			color={191,0,0},
			visible=true,
			origin={-101.2818,52.1486}));
		connect(adjoiningPanel_xn_yp.port_b,Panel_yp.port_a) annotation(Line(
			points={{-59,65},{-54,65},{0,65},{0,72},{0,77}},
			color={191,0,0},
			visible=true,
			origin={-21.1839,71.1715}));
		connect(Panel_xn.port_a,adjoiningPanel_xn_yp.port_a) annotation(Line(
			points={{-97,0},{-92,0},{-76,0},{-76,65},{-71,65}},
			color={191,0,0},
			visible=true,
			origin={-88.3955,43.5557}));
		connect(adjoiningPanel_xn_zn.port_b,Panel_zn.port_a) annotation(Line(
			points={{-52,-94},{-47,-94},{92,-94},{92,-80},{97,-80}},
			color={191,0,0},
			visible=true,
			origin={54.6995,-86.6405}));
		connect(Panel_xn.port_a,adjoiningPanel_xn_zn.port_a) annotation(Line(
			points={{-97,0},{-92,0},{-70,0},{-70,-94},{-65,-94}},
			color={191,0,0},
			visible=true,
			origin={-86.31870000000001,-62.1938}));
		connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_a) annotation(Line(
			points={{-37,-63},{-32,-63},{0,-63},{0,-74},{0,-79}},
			color={191,0,0},
			visible=true,
			origin={-15.7182,-70.8642}));
		connect(Panel_xn.port_a,adjoiningPanel_xn_yn.port_a) annotation(Line(
			points={{-97,0},{-92,0},{-55,0},{-55,-63},{-50,-63}},
			color={191,0,0},
			visible=true,
			origin={-81.31829999999999,-42.0701}));
		connect(adjoiningPanel_xp_zp.port_b,Panel_xp.port_a) annotation(Line(
			points={{83,85},{88,85},{92,85},{92,0},{97,0}},
			color={191,0,0},
			visible=true,
			origin={92.19070000000001,56.942}));
		connect(adjoiningPanel_xp_zp.port_a,Panel_zp.port_a) annotation(Line(
			points={{68,85},{63,85},{-92,85},{-92,80},{-97,80}},
			color={191,0,0},
			visible=true,
			origin={-50.8621,82.7008}));
		connect(adjoiningPanel_xp_yn.port_b,Panel_xp.port_a) annotation(Line(
			points={{47,-71},{52,-71},{92,-71},{92,0},{97,0}},
			color={191,0,0},
			visible=true,
			origin={80.2306,-46.9984}));
		connect(Panel_yn.port_a,adjoiningPanel_xp_yn.port_a) annotation(Line(
			points={{0,-79},{0,-74},{0,-71},{30,-71},{35,-71}},
			color={191,0,0},
			visible=true,
			origin={24.76,-74.5698}));
		connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_a) annotation(Line(
			points={{58,64},{63,64},{92,64},{92,0},{97,0}},
			color={191,0,0},
			visible=true,
			origin={83.8663,42.7173}));
		connect(Panel_yp.port_a,adjoiningPanel_xp_yp.port_a) annotation(Line(
			points={{0,77},{0,72},{0,64},{40,64},{45,64}},
			color={191,0,0},
			visible=true,
			origin={32.2608,70.53319999999999}));
		connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_a) annotation(Line(
			points={{87,-32},{87,-37},{87,-80},{92,-80},{97,-80}},
			color={191,0,0},
			visible=true,
			origin={91.9854,-61.4573}));
		connect(Panel_xp.port_a,adjoiningPanel_xp_zn.port_a) annotation(Line(
			points={{97,0},{92,0},{87,0},{87,-17},{87,-22}},
			color={191,0,0},
			visible=true,
			origin={91.9817,-15.1672}));
		connect(thermalModel_ElectronicBox1.EB_zn,EB_Pzn.port_a) annotation(Line(
			points={{18,-18},{23,-18},{23,-28},{17,-28},{17,-39},{22,
			-39}},
			color={191,0,0},
			visible=true,
			origin={19.352,-31.4387}));
		connect(EB_Pzn.port_b,Panel_zn.port_a) annotation(Line(
			points={{35,-39},{40,-39},{92,-39},{92,-80},{97,-80}},
			color={191,0,0},
			visible=true,
			origin={76.51560000000001,-59.074}));
		connect(thermalModel_ElectronicBox1.EB_yp,EB_Pyp.port_b) annotation(Line(
			points={{0,30},{0,35},{0,33},{0,33},{0,38}},
			color={191,0,0},
			visible=true,
			origin={0.1826,34.6038}));
		connect(EB_Pyp.port_a,Panel_yp.port_a) annotation(Line(
			points={{0,52},{0,57},{0,72},{0,72},{0,77}},
			color={191,0,0},
			visible=true,
			origin={0.1776,65.6469}));
		connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(
			points={{-18,18},{-23,18},{-23,26},{-15,26},{-15,34},{-20,
			34}},
			color={191,0,0},
			visible=true,
			origin={-18.6478,28.9709}));
		connect(EB_Pzp.port_a,Panel_zp.port_a) annotation(Line(
			points={{-32,34},{-37,34},{-92,34},{-92,80},{-97,80}},
			color={191,0,0},
			visible=true,
			origin={-75.6733,57.2237}));
		connect(thermalModel_ElectronicBox1.EB_xn,EB_Pxn.port_b) annotation(Line(
			points={{-30,0},{-35,0},{-35,0},{-40,0}},
			color={191,0,0},
			visible=true,
			origin={-35.9549,0.1721}));
		connect(EB_Pxn.port_a,Panel_xn.port_a) annotation(Line(
			points={{-52,0},{-57,0},{-92,0},{-97,0}},
			color={191,0,0},
			visible=true,
			origin={-70.4275,0.2677}));
		connect(thermal_connector_xp,Panel_xp.thermal_connector1) annotation(Line(
			points={{140,0},{135,0},{108,0},{103,0}},
			color={255,0,0},
			visible=true,
			origin={121.5,0}));
		connect(thermal_connector_zn,Panel_zn.thermal_connector1) annotation(Line(
			points={{140,-97},{135,-97},{108,-97},{108,-80},{103,-80}},
			color={255,0,0},
			visible=true,
			origin={117.25,-88.64319999999999}));
		connect(thermal_connector_yn,Panel_yn.thermal_connector1) annotation(Line(
			points={{0,-100},{-5,-100},{-5,-95},{0,-95},{0,-90},{0,
			-85}},
			color={255,0,0},
			visible=true,
			origin={0,-92.31659999999999}));
		connect(thermal_connector_xn,Panel_xn.thermal_connector1) annotation(Line(
			points={{-142,0},{-137,0},{-108,0},{-103,0}},
			color={255,0,0},
			visible=true,
			origin={-122.5455,0}));
		connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(
			points={{-103,80},{-108,80},{-133,80},{-133,95},{-138,95}},
			visible=true,
			origin={-122.8785,87.5}));
		connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
			points={{0,83},{0,88},{5,88},{5,100},{0,100}},
			visible=true,
			origin={0,91.5}));
		connect(port_b,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(
			points={{-75,-75},{-70,-75},{-5,-75},{-5,0},{0,0}},
			color={191,0,0},
			visible=true,
			origin={-36.0217,-40.4205}));
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
				extent={{-10,-50},{10,50}},
				visible=true,
				origin={-90,0}),
			Rectangle(
				lineColor={255,0,0},
				fillColor={255,255,255},
				fillPattern=FillPattern.CrossDiag,
				extent={{-10,-50},{10,50}},
				visible=true,
				origin={90,0}),
			Rectangle(
				lineColor={255,0,0},
				fillColor={255,255,255},
				fillPattern=FillPattern.CrossDiag,
				extent={{-50,-10},{50,10}},
				visible=true,
				origin={0,90}),
			Rectangle(
				lineColor={255,0,0},
				fillColor={255,255,255},
				fillPattern=FillPattern.CrossDiag,
				extent={{-50,-10},{50,10}},
				visible=true,
				origin={0,-90}),
			Rectangle(
				lineColor={255,0,0},
				fillColor={255,255,255},
				lineThickness=2,
				extent={{-80,-80},{80,80}},
				visible=true),
			Text(
				textString="%name",
				textStyle={TextStyle.Bold},
				fillColor={255,0,0},
				fillPattern=FillPattern.Solid,
				extent={{-78.4853,-20},{78.4853,20}},
				visible=true,
				origin={0,30}),
			Text(
				textString="yp",
				fillPattern=FillPattern.Solid,
				extent={{-13.4032,-11.4529},{13.4032,11.4529}},
				visible=true,
				origin={0,68.5471}),
			Text(
				textString="yn",
				fillPattern=FillPattern.Solid,
				extent={{-13.4032,-11.4529},{13.4032,11.4529}},
				visible=true,
				origin={0,-66.52249999999999}),
			Text(
				textString="xp",
				fillPattern=FillPattern.Solid,
				extent={{-13.4032,-11.4529},{13.4032,11.4529}},
				visible=true,
				origin={66.5968,-0}),
			Text(
				textString="xn",
				fillPattern=FillPattern.Solid,
				extent={{-13.4032,-11.4529},{13.4032,11.4529}},
				visible=true,
				origin={-66.5968,-0}),
			Text(
				textString="zp",
				fillPattern=FillPattern.Solid,
				extent={{-13.4032,-11.4529},{13.4032,11.4529}},
				visible=true,
				origin={-36.5968,51.4529}),
			Text(
				textString="zn",
				fillPattern=FillPattern.Solid,
				extent={{-13.4032,-11.4529},{13.4032,11.4529}},
				visible=true,
				origin={36.5968,-50})}),
		Diagram(coordinateSystem(
			extent={{-148.5,-105},{148.5,105}},
			grid={5,5})),
		experiment(
			StopTime=1,
			StartTime=0));
end BuildingBlock_thermal;
