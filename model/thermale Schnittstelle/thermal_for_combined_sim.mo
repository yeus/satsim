// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model thermal_for_combined_sim "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen für die gemeinsame Simulation"
	thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
		transformation(
			origin={325,-95},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
		transformation(
			origin={110,-45},
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
	parameter Modelica.SIunits.Power BuildingBlock_Power=5 "Leistungsbedarf des Standartbausteins";
	parameter Real h_Panel(unit="W/(m²·K)")=3000 "Heat transfer coefficient Panel-Panel";
	parameter Real h_EB(unit="W/(m²·K)")=3000 "Heat transfer coefficient EB-Panel";
	parameter Real ViewFactor_parallel=0.2 "Viewfactor of parallel Surfaces";
	parameter Real ViewFactor_vertical=0.2 "Viewfactor of vertical Surfaces";
	parameter Modelica.SIunits.Emissivity eps_Panel=0.5 "Emmisivity of the inner side of the panel";
	parameter Modelica.SIunits.Emissivity eps_EB=0.5 "Emmisivity of the electronic box";
	parameter Modelica.SIunits.Temp_K lower_Temp_boundary=270 "Coldest allowed temperatur in the Box";
	parameter Modelica.SIunits.Temp_K upper_Temp_boundary=310 "highest allowed temperatur in the Box";
	parameter Modelica.SIunits.ActivePower heating_power=100 "heat Power of the heater";
	parameter Modelica.SIunits.ActivePower cooling_power=-50 "heat Power of the cooler";
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
			origin={265,-105},
			extent={{-10,-10},{25,25}})));
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
			origin={65,-100},
			extent={{-15,-20},{20,15}},
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
			origin={160,0},
			extent={{-15,-20},{15,15}},
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
			origin={155,-195},
			extent={{-10,-10},{25,25}},
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
			origin={285,11},
			extent={{-10,-10},{24,24}},
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
			origin={45,-224},
			extent={{-24,-24},{10,10}},
			rotation=-135)));
	thermalModel_ElectronicBox thermalModel_ElectronicBox1(
		material=material_EB,
		x=x_EB,
		y=y_EB,
		z=z_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={150,-110},
			extent={{-5,-5},{30,30}})));
	intra_BuildingBlock_connector EB_Pxp(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={207,-97},
		extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
	intra_BuildingBlock_connector EB_Pxn(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={116,-96},
		extent={{-6,-9},{6.25,6.25}})));
	intra_BuildingBlock_connector EB_Pyn(
		Gr=Gr_P_EB,
		A_cross_Panel=x_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={161,-141},
		extent={{-6.4815,-6.4815},{6.4815,6.4815}},
		rotation=-90)));
	intra_BuildingBlock_connector EB_Pyp(
		Gr=Gr_P_EB,
		A_cross_Panel=x_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={162,-52},
		extent={{-6.6332,-6.6332},{6.6332,6.6332}},
		rotation=-90)));
	intra_BuildingBlock_connector EB_Pzp(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * x_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={126,-132},
		extent={{-10,-8},{4,6}},
		rotation=45)));
	intra_BuildingBlock_connector EB_Pzn(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * x_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={201,-64},
		extent={{-6.4943,-6.4943},{9,11}},
		rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_xp_yn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={266,-161},
		extent={{-5.8179,-5.8179},{8,7}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xp_yp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={226,-1},
		extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
	intra_BuildingBlock_connector adjoiningPanel_xp_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={275,-45},
		extent={{-4.7981,-4.7981},{4.7981,4.7981}},
		rotation=-270)));
	intra_BuildingBlock_connector adjoiningPanel_xp_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={252,-187},
		extent={{-7.5,-7.5},{7.5,7.5}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xn_yn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={67,-167},
		extent={{-6.5445,-6.5445},{6.5445,6.5445}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xn_yp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={66,-46},
		extent={{-6.2294,-6.2294},{6.2294,6.2294}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xn_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={66,14},
		extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
	intra_BuildingBlock_connector adjoiningPanel_xn_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={51,-151},
		extent={{-5.8783,-5.8783},{5.8783,5.8783}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={281,-129},
		extent={{-7,-13},{4,1}},
		rotation=-270)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={126,-184},
		extent={{-5.778,-5.778},{4,4}})));
	intra_BuildingBlock_connector adjoiningPanel_yp_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={176,19},
		extent={{-6.2539,-6.2539},{4,6}})));
	intra_BuildingBlock_connector adjoiningPanel_yp_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={81,-61},
		extent={{-6.1458,-6.1458},{6,10}},
		rotation=-90)));
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
		origin={117,-72},
		extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
	thermal_connector thermal_connector_yn annotation(Placement(
		transformation(
			origin={160,-235},
			extent={{-10,10},{10,-10}},
			rotation=-90),
		iconTransformation(
			origin={1.10041,-99.5873},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
	thermal_connector thermal_connector_zp annotation(Placement(
		transformation(
			origin={10,-250},
			extent={{10,10},{-10,-10}},
			rotation=-180),
		iconTransformation(
			origin={-87.4828,-87.75790000000001},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	thermal_connector thermal_connector_xn annotation(Placement(
		transformation(
			origin={15,-95},
			extent={{10,10},{-10,-10}},
			rotation=-180),
		iconTransformation(
			origin={-99.3122,-2.75103},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	thermal_connector thermal_connector_yp annotation(Placement(
		transformation(
			origin={165,35},
			extent={{10,-10},{-10,10}},
			rotation=-270),
		iconTransformation(
			origin={1.10041,98.762},
			extent={{12,-12},{-12,12}},
			rotation=-270)));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
		origin={210,-128},
		extent={{-10,-10},{3,3}})));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
		origin={186,-161},
		extent={{-6.0172,6.0172},{6.0172,-6.0172}},
		rotation=-90)));
	thermal_connector thermal_connector_zn annotation(Placement(
		transformation(
			origin={300,35},
			extent={{-10,-10},{10,10}},
			rotation=-360),
		iconTransformation(
			origin={87.8378,87.8378},
			extent={{-12,-12},{12,12}})));
	protected
		parameter Real Gr_oP(unit="m2")=ViewFactor_parallel*y_Panel*z_Panel*(1/((2/eps_Panel)-1))"Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
		parameter Real Gr_aP(unit="m2")=ViewFactor_vertical*y_Panel*z_Panel*(1/((2/eps_Panel)-1))"Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
		parameter Real Gr_P_EB(unit="m2")=x_EB*y_EB*(eps_Panel*eps_EB/(eps_Panel+eps_EB-eps_Panel*eps_EB))"Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
	public
		Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth=2) annotation(Placement(transformation(extent={{-55,-60},{-35,-40}})));
		Modelica.Blocks.Sources.Constant const(k=lower_Temp_boundary) annotation(Placement(transformation(extent={{-85,-45},{-65,-25}})));
		Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
			origin={-75,-80},
			extent={{-10,-10},{10,10}},
			rotation=-180)));
		Modelica.Blocks.Math.Gain gain1(k=heating_power) annotation(Placement(transformation(extent={{-20,-60},{0,-40}})));
		Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow_heater annotation(Placement(transformation(extent={{10,-60},{30,-40}})));
		Modelica.Blocks.Continuous.Integrator integrator1 annotation(Placement(transformation(extent={{-20,-30},{0,-10}})));
		Modelica.Blocks.Logical.OnOffController onOffController2(bandwidth=2) annotation(Placement(transformation(extent={{-55,35},{-35,55}})));
		Modelica.Blocks.Sources.Constant const1(k=upper_Temp_boundary) annotation(Placement(transformation(extent={{-85,10},{-65,30}})));
		Modelica.Blocks.Math.Gain gain2(k=cooling_power) annotation(Placement(transformation(extent={{-20,35},{0,55}})));
		Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow_heater1 annotation(Placement(transformation(extent={{20,35},{40,55}})));
	equation
		connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
			Line(
				points={{288.6666564941406,24.66666412353516},{300,35}},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
			Line(
				points={{194.6666564941406,-67},{178.3333435058594,-81.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
			Line(
				points={{146.6666564941406,-113.3333282470703},{129.6666564941406,-130}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		
		connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
			Line(
				points={{41.33332824707031,-217.6666564941406},{10,-250}},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
			points={{161,-135},{161,-130},{161,-120},{163,-120},{163,-115}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
			points={{162,-208},{162,-213},{165,-213},{165,-235},{160,-235}},
			thickness=0.0625));
		connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
			points={{200,-97},{195,-97},{185,-97},{185,-98},{180,-98}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
			points={{278,-98},{283,-98},{320,-98},{320,-95},{325,-95}},
			thickness=0.0625));
		connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
			points={{122,-97},{127,-97},{140,-97},{140,-98},{145,-98}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
			points={{162,-59},{162,-64},{162,-75},{163,-75},{163,-80}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
			points={{162,5},{162,10},{160,10},{160,35},{165,35}},
			thickness=0.0625));
		connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
			points={{57,-97},{52,-97},{20,-97},{20,-95},{15,-95}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
			Line(
				points={{162.6666564941406,-97.66667175292969},{110,-45}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		
		connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
			points={{162,-5},{162,-10},{162,-40},{162,-40},{162,-45}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
			Line(
				points={{205.6666564941406,-56},{281.3333435058594,17.33333587646484}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
			points={{214,-97},{219,-97},{262,-97},{262,-98},{267,-98}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
			points={{162,-197},{162,-192},{162,-152},{161,-152},{161,-147}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
			Line(
				points={{48.66667175292969,-210.3333435058594},{119.6666564941406,-139.6666717529297}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
			points={{68,-97},{73,-97},{105,-97},{110,-97}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(
			points={{168,-198},{173,-198},{267,-198},{267,-174},{267,-169}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(
			points={{267,-155},{267,-150},{267,-109},{269,-109},{269,-104}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
			points={{232,-1},{237,-1},{268,-1},{268,-87},{268,-92}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(
			points={{169,-3},{174,-3},{215,-3},{215,-1},{220,-1}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(
			points={{66,-91},{66,-86},{66,-57},{66,-52}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(
			points={{67,-103},{67,-108},{67,-155},{67,-160}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
			points={{67,-174},{67,-179},{67,-199},{151,-199},{156,-199}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(
			Line(
				points={{66,-39.66667175292969},{66,-35},{66,-5},{157,-5},{156.6666564941406,-3.666664123535156}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(
			Line(
				points={{47.33332824707031,-220},{255,-220},{252,-194.6666564941406}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(
			points={{263,-104},{258,-104},{252,-104},{252,-174},{252,-179}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(
			points={{275,-40},{275,-35},{275,5},{283,5},{283,10}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(
			points={{275,-92},{275,-87},{275,-55},{275,-50}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
			points={{51,-157},{51,-162},{51,-198},{47,-198},{47,-203}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
			points={{51,-145},{51,-140},{77,-140},{77,-91},{72,-91}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(
			Line(
				points={{282.6666564941406,26.66666412353516},{273,12},{273,15},{112,15},{72.33332824707031,14}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(
			points={{60,14},{55,14},{55,-108},{60,-108},{60,-103}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(
			Line(
				points={{168.6666564941406,-8.333335876464844},{170,-10},{85,-10},{83,-55}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
			points={{83,-67},{83,-72},{83,-210},{52,-210},{52,-215}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(
			points={{120,-185},{115,-185},{43,-185},{43,-202},{43,-207}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
			points={{130,-185},{135,-185},{156,-185},{156,-188},{156,-193}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(
			points={{287,14},{287,9},{287,-120},{287,-125}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(
			points={{287,-136},{287,-141},{287,-205},{173,-205},{168,-205}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(
			Line(
				points={{278,22},{278,20},{232,20},{232,19},{185,19},{180,
				19}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(
			points={{157,2},{152,2},{152,19},{165,19},{170,19}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
			points={{162,-197},{162,-192},{162,-172},{186,-172},{186,-167}},
			color={191,0,0},
			thickness=0.0625));
		connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
			points={{186,-155},{186,-150},{186,-10},{162,-10},{162,-5}},
			color={191,0,0},
			thickness=0.0625));
		connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
			points={{110,-72},{105,-72},{73,-72},{73,-97},{68,-97}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
			Line(
				points={{267.3333435058594,-97.66667175292969},{260,-100},{260,-75},{130,-75},{129,-72},{123.6666564941406,
				-72}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
			Line(
				points={{200,-131.6666717529297},{195,-132},{190,-132},{190,-210},{48.66667175292969,-210.3333435058594}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
			Line(
				points={{281.3333435058594,17.33333587646484},{240,12},{240,-132},{218,-132},{213,-131.6666717529297}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(const.y,onOffController1.reference) annotation(Line(
			points={{-64,-35},{-59,-35},{-59,-39},{-62,-39},{-62,-44},{-57,
			-44}},
			color={0,0,127},
			thickness=0.0625));
		connect(temperature_EB.T,onOffController1.u) annotation(Line(
			points={{-85,-80},{-90,-80},{-90,-56},{-62,-56},{-57,-56}},
			color={0,0,127},
			thickness=0.0625));
		connect(temperature_EB.port,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(
			points={{-65,-80},{-60,-80},{158,-80},{158,-98},{163,-98}},
			color={191,0,0},
			thickness=0.0625));
		connect(onOffController1.y,gain1.u) annotation(Line(
			points={{-34,-50},{-29,-50},{-27,-50},{-22,-50}},
			color={255,0,255},
			thickness=0.0625));
		
		connect(gain1.y,integrator1.u) annotation(Line(
			points={{1,-50},{6,-50},{6,-35},{-27,-35},{-27,-20},{-22,
			-20}},
			color={0,0,127},
			thickness=0.0625));
		connect(gain1.y,prescribedHeatFlow_heater.Q_flow) annotation(Line(
			points={{1,-50},{6,-50},{5,-50},{10,-50}},
			color={0,0,127},
			thickness=0.0625));
		connect(prescribedHeatFlow_heater.port,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(
			points={{30,-50},{35,-50},{158,-50},{158,-98},{163,-98}},
			color={191,0,0},
			thickness=0.0625));
		connect(temperature_EB.T,onOffController2.reference) annotation(Line(
			points={{-85,-80},{-90,-80},{-90,51},{-62,51},{-57,51}},
			color={0,0,127},
			thickness=0.0625));
		connect(const1.y,onOffController2.u) annotation(Line(
			points={{-64,20},{-59,20},{-59,29},{-62,29},{-62,39},{-57,
			39}},
			color={0,0,127},
			thickness=0.0625));
		connect(onOffController2.y,gain2.u) annotation(Line(
			points={{-34,45},{-29,45},{-27,45},{-22,45}},
			color={255,0,255},
			thickness=0.0625));
		connect(gain2.y,prescribedHeatFlow_heater1.Q_flow) annotation(Line(
			points={{1,45},{6,45},{15,45},{20,45}},
			color={0,0,127},
			thickness=0.0625));
		connect(prescribedHeatFlow_heater1.port,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(
			points={{40,45},{45,45},{158,45},{158,-98},{163,-98}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		const(y(flags=2)),
		temperature_EB(
			T(flags=2),
			port(T(flags=2))),
		gain1(y(flags=2)),
		integrator1(y(flags=2)),
		const1(y(flags=2)),
		gain2(y(flags=2)),
		viewinfo[0](
			simViewInfos[0](
				runtimeClass="CSimView",
				tabGroup=0,
				typename="ModelViewInfo"),
			typename="ModelInfo"),
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
		Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"),
		experiment(
			StopTime=1,
			StartTime=0,
			Interval=0.001));
end thermal_for_combined_sim;
