// CP: 65001
// SimulationX Version: 3.5.706.23 x64
model thermal_for_combined_sim "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen für die gemeinsame Simulation"
	thermal_connector thermal_connector_xp "Verbindungselement fuer mehr als eine Schnittstelle" annotation(Placement(
		transformation(
			origin={250,-50},
			extent={{-10,-10},{10,10}}),
		iconTransformation(
			origin={100,0},
			extent={{-10,-10},{10,10}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(
		transformation(
			origin={35,0},
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
	parameter Modelica.SIunits.ActivePower cooling_power=50 "heat Power of the cooler";
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
			origin={190,-60},
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
			origin={-10,-55},
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
			origin={85,45},
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
			origin={80,-150},
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
			origin={210,56},
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
			origin={-30,-179},
			extent={{-24,-24},{10,10}},
			rotation=-135)));
	thermalModel_ElectronicBox thermalModel_ElectronicBox1(
		material=material_EB,
		x=x_EB,
		y=y_EB,
		z=z_EB) annotation(
		material(choicesAllMatching=true),
		Placement(transformation(
			origin={75,-65},
			extent={{-5,-5},{30,30}})));
	intra_BuildingBlock_connector EB_Pxp(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={132,-52},
		extent={{-6.6332,-6.6332},{6.6332,6.6332}})));
	intra_BuildingBlock_connector EB_Pxn(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={41,-51},
		extent={{-6,-9},{6.25,6.25}})));
	intra_BuildingBlock_connector EB_Pyn(
		Gr=Gr_P_EB,
		A_cross_Panel=x_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={86,-96},
		extent={{-6.4815,-6.4815},{6.4815,6.4815}},
		rotation=-90)));
	intra_BuildingBlock_connector EB_Pyp(
		Gr=Gr_P_EB,
		A_cross_Panel=x_EB * z_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={87,-7},
		extent={{-6.6332,-6.6332},{6.6332,6.6332}},
		rotation=-90)));
	intra_BuildingBlock_connector EB_Pzp(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * x_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={51,-87},
		extent={{-10,-8},{4,6}},
		rotation=45)));
	intra_BuildingBlock_connector EB_Pzn(
		Gr=Gr_P_EB,
		A_cross_Panel=y_EB * x_EB,
		h_c=h_EB) annotation(Placement(transformation(
		origin={126,-19},
		extent={{-6.4943,-6.4943},{9,11}},
		rotation=45)));
	intra_BuildingBlock_connector adjoiningPanel_xp_yn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={191,-116},
		extent={{-5.8179,-5.8179},{8,7}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xp_yp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={151,44},
		extent={{-6.2693,-6.2693},{6.2693,6.2693}})));
	intra_BuildingBlock_connector adjoiningPanel_xp_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={200,0},
		extent={{-4.7981,-4.7981},{4.7981,4.7981}},
		rotation=-270)));
	intra_BuildingBlock_connector adjoiningPanel_xp_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={177,-142},
		extent={{-7.5,-7.5},{7.5,7.5}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xn_yn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={-8,-122},
		extent={{-6.5445,-6.5445},{6.5445,6.5445}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xn_yp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={-9,-1},
		extent={{-6.2294,-6.2294},{6.2294,6.2294}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_xn_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={-9,59},
		extent={{-6.3683,-6.3683},{6.3683,6.3683}})));
	intra_BuildingBlock_connector adjoiningPanel_xn_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={-24,-106},
		extent={{-5.8783,-5.8783},{5.8783,5.8783}},
		rotation=-90)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={206,-84},
		extent={{-7,-13},{4,1}},
		rotation=-270)));
	intra_BuildingBlock_connector adjoiningPanel_yn_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={51,-139},
		extent={{-5.778,-5.778},{4,4}})));
	intra_BuildingBlock_connector adjoiningPanel_yp_zn(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={101,64},
		extent={{-6.2539,-6.2539},{4,6}})));
	intra_BuildingBlock_connector adjoiningPanel_yp_zp(
		Gr=Gr_aP,
		A_cross_Panel=x_Panel * y_Panel,
		h_c=h_Panel) annotation(Placement(transformation(
		origin={6,-16},
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
		origin={42,-27},
		extent={{-6.7966,-6.7966},{6.7966,6.7966}})));
	thermal_connector thermal_connector_yn annotation(Placement(
		transformation(
			origin={85,-190},
			extent={{-10,10},{10,-10}},
			rotation=-90),
		iconTransformation(
			origin={1.10041,-99.5873},
			extent={{-12,12},{12,-12}},
			rotation=-90)));
	thermal_connector thermal_connector_zp annotation(Placement(
		transformation(
			origin={-65,-205},
			extent={{10,10},{-10,-10}},
			rotation=-180),
		iconTransformation(
			origin={-87.4828,-87.75790000000001},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	thermal_connector thermal_connector_xn annotation(Placement(
		transformation(
			origin={-60,-50},
			extent={{10,10},{-10,-10}},
			rotation=-180),
		iconTransformation(
			origin={-99.3122,-2.75103},
			extent={{12,12},{-12,-12}},
			rotation=-180)));
	thermal_connector thermal_connector_yp annotation(Placement(
		transformation(
			origin={90,80},
			extent={{10,-10},{-10,10}},
			rotation=-270),
		iconTransformation(
			origin={1.10041,98.762},
			extent={{12,-12},{-12,12}},
			rotation=-270)));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_z(Gr=Gr_oP) annotation(Placement(transformation(
		origin={135,-83},
		extent={{-10,-10},{3,3}})));
	Modelica.Thermal.HeatTransfer.Components.BodyRadiation oposite_Panel_y(Gr=Gr_oP) annotation(Placement(transformation(
		origin={111,-116},
		extent={{-6.0172,6.0172},{6.0172,-6.0172}},
		rotation=-90)));
	thermal_connector thermal_connector_zn annotation(Placement(
		transformation(
			origin={225,80},
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
		Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth=2) annotation(Placement(transformation(extent={{-115,-30},{-95,-10}})));
		Modelica.Blocks.Sources.Constant const(k=lower_Temp_boundary) annotation(Placement(transformation(extent={{-150,-5},{-130,15}})));
		Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperature_EB annotation(Placement(transformation(
			origin={-105,-65},
			extent={{-10,-10},{10,10}},
			rotation=-180)));
		Modelica.Blocks.Math.Gain gain1(k=heating_power) annotation(Placement(transformation(extent={{-80,-30},{-60,-10}})));
		Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow_heater annotation(Placement(transformation(extent={{-50,-30},{-30,-10}})));
		Modelica.Blocks.Continuous.Integrator integrator1 annotation(Placement(transformation(extent={{-60,-5},{-40,15}})));
	equation
		connect(Panel_zn.thermal_connector1,thermal_connector_zn) annotation(
			Line(
				points={{213.6666564941406,69.66667175292969},{225,80}},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pzn.port_a,thermalModel_ElectronicBox1.EB_zn) annotation(
			Line(
				points={{119.6666564941406,-22},{103.3333282470703,-36.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(
			Line(
				points={{71.66667175292969,-68.33332824707031},{54.66667175292969,-85}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		
		connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(
			Line(
				points={{-33.66666412353516,-172.6666564941406},{-65,-205}},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pyn.port_a,thermalModel_ElectronicBox1.EB_yn) annotation(Line(
			points={{86,-90},{86,-85},{86,-75},{88,-75},{88,-70}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(Panel_yn.thermal_connector1,thermal_connector_yn) annotation(Line(
			points={{87,-163},{87,-168},{90,-168},{90,-190},{85,-190}},
			thickness=0.0625));
		connect(EB_Pxp.port_a,thermalModel_ElectronicBox1.EB_xp) annotation(Line(
			points={{125,-52},{120,-52},{110,-52},{110,-53},{105,-53}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(Panel_xp.thermal_connector1,thermal_connector_xp) annotation(Line(
			points={{203,-53},{208,-53},{245,-53},{245,-50},{250,-50}},
			thickness=0.0625));
		connect(EB_Pxn.port_b,thermalModel_ElectronicBox1.EB_xn) annotation(Line(
			points={{47,-52},{52,-52},{65,-52},{65,-53},{70,-53}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(EB_Pyp.port_b,thermalModel_ElectronicBox1.EB_yp) annotation(Line(
			points={{87,-14},{87,-19},{87,-30},{88,-30},{88,-35}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(
			points={{87,50},{87,55},{85,55},{85,80},{90,80}},
			thickness=0.0625));
		connect(Panel_xn.thermal_connector1,thermal_connector_xn) annotation(Line(
			points={{-18,-52},{-23,-52},{-55,-52},{-55,-50},{-60,-50}},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		connect(thermalModel_ElectronicBox1.dissipationPower,port_b) annotation(
			Line(
				points={{87.66667175292969,-52.66667175292969},{35,0}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		
		connect(Panel_yp.port_xn,EB_Pyp.port_a) annotation(Line(
			points={{87,40},{87,35},{87,5},{87,5},{87,0}},
			color={191,0,0},
			thickness=0.0625));
		connect(EB_Pzn.port_b,Panel_zn.port_xn) annotation(
			Line(
				points={{130.6666564941406,-11},{206.3333435058594,62.33333206176758}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(EB_Pxp.port_b,Panel_xp.port_xn) annotation(Line(
			points={{139,-52},{144,-52},{187,-52},{187,-53},{192,-53}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.port_xn,EB_Pyn.port_b) annotation(Line(
			points={{87,-152},{87,-147},{87,-107},{86,-107},{86,-102}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zp.port_xn,EB_Pzp.port_a) annotation(
			Line(
				points={{-26.33333587646484,-165.3333435058594},{44.66667175292969,-94.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xn.port_xn,EB_Pxn.port_a) annotation(Line(
			points={{-7,-52},{-2,-52},{30,-52},{35,-52}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.port_yp,adjoiningPanel_xp_yn.port_b) annotation(Line(
			points={{93,-153},{98,-153},{192,-153},{192,-129},{192,-124}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xp_yn.port_a,Panel_xp.port_yn) annotation(Line(
			points={{192,-110},{192,-105},{192,-64},{194,-64},{194,-59}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_yp) annotation(Line(
			points={{157,44},{162,44},{193,44},{193,-42},{193,-47}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yp.port_yn,adjoiningPanel_xp_yp.port_a) annotation(Line(
			points={{94,42},{99,42},{140,42},{140,44},{145,44}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xn.port_yn,adjoiningPanel_xn_yp.port_b) annotation(Line(
			points={{-9,-46},{-9,-41},{-9,-12},{-9,-7}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xn.port_yp,adjoiningPanel_xn_yn.port_a) annotation(Line(
			points={{-8,-58},{-8,-63},{-8,-110},{-8,-115}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_yn) annotation(Line(
			points={{-8,-129},{-8,-134},{-8,-154},{76,-154},{81,-154}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_yp.port_a,Panel_yp.port_yp) annotation(
			Line(
				points={{-9,5.333335876464844},{-9,10},{-9,40},{82,40},{81.66667175292969,41.33333587646484}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zp.port_zn,adjoiningPanel_xp_zp.port_b) annotation(
			Line(
				points={{-27.66666412353516,-175},{180,-175},{177,-149.6666564941406}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_xp.port_zp,adjoiningPanel_xp_zp.port_a) annotation(Line(
			points={{188,-59},{183,-59},{177,-59},{177,-129},{177,-134}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_zp) annotation(Line(
			points={{200,5},{200,10},{200,50},{208,50},{208,55}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xp.port_zn,adjoiningPanel_xp_zn.port_a) annotation(Line(
			points={{200,-47},{200,-42},{200,-10},{200,-5}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_zp.port_b,Panel_zp.port_zp) annotation(Line(
			points={{-24,-112},{-24,-117},{-24,-153},{-28,-153},{-28,-158}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_xn_zp.port_a,Panel_xn.port_zp) annotation(Line(
			points={{-24,-100},{-24,-95},{2,-95},{2,-46},{-3,-46}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zn.port_zn,adjoiningPanel_xn_zn.port_b) annotation(
			Line(
				points={{207.6666564941406,71.66667175292969},{198,57},{198,60},{37,60},{-2.666671752929688,59}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_xn_zn.port_a,Panel_xn.port_zn) annotation(Line(
			points={{-15,59},{-20,59},{-20,-63},{-15,-63},{-15,-58}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yp.port_zp,adjoiningPanel_yp_zp.port_a) annotation(
			Line(
				points={{93.66667175292969,36.66666412353516},{95,35},{10,35},{8,-10}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(adjoiningPanel_yp_zp.port_b,Panel_zp.port_yp) annotation(Line(
			points={{8,-22},{8,-27},{8,-165},{-23,-165},{-23,-170}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_yn) annotation(Line(
			points={{45,-140},{40,-140},{-32,-140},{-32,-157},{-32,-162}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_zp) annotation(Line(
			points={{55,-140},{60,-140},{81,-140},{81,-143},{81,-148}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zn.port_yn,adjoiningPanel_yn_zn.port_b) annotation(Line(
			points={{212,59},{212,54},{212,-75},{212,-80}},
			color={191,0,0},
			thickness=0.0625));
		connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_zn) annotation(Line(
			points={{212,-91},{212,-96},{212,-160},{98,-160},{93,-160}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_zn.port_yp,adjoiningPanel_yp_zn.port_b) annotation(
			Line(
				points={{203,67},{203,65},{157,65},{157,64},{110,64},{105,
				64}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_yp.port_zn,adjoiningPanel_yp_zn.port_a) annotation(Line(
			points={{82,47},{77,47},{77,64},{90,64},{95,64}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_yn.port_xn,oposite_Panel_y.port_b) annotation(Line(
			points={{87,-152},{87,-147},{87,-127},{111,-127},{111,-122}},
			color={191,0,0},
			thickness=0.0625));
		connect(oposite_Panel_y.port_a,Panel_yp.port_xn) annotation(Line(
			points={{111,-110},{111,-105},{111,35},{87,35},{87,40}},
			color={191,0,0},
			thickness=0.0625));
		connect(oposite_Panel_x.port_a,Panel_xn.port_xn) annotation(Line(
			points={{35,-27},{30,-27},{-2,-27},{-2,-52},{-7,-52}},
			color={191,0,0},
			thickness=0.0625));
		connect(Panel_xp.port_xn,oposite_Panel_x.port_b) annotation(
			Line(
				points={{192.3333435058594,-52.66667175292969},{185,-55},{185,-30},{55,-30},{54,-27},{48.66667175292969,
				-27}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(oposite_Panel_z.port_a,Panel_zp.port_xn) annotation(
			Line(
				points={{125,-86.66667175292969},{120,-87},{115,-87},{115,-165},{-26.33333587646484,-165.3333435058594}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(Panel_zn.port_xn,oposite_Panel_z.port_b) annotation(
			Line(
				points={{206.3333435058594,62.33333206176758},{165,57},{165,-87},{143,-87},{138,-86.66667175292969}},
				color={191,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(const.y,onOffController1.reference) annotation(Line(
			points={{-129,5},{-124,5},{-122,5},{-122,-14},{-117,-14}},
			color={0,0,127},
			thickness=0.0625));
		connect(temperature_EB.T,onOffController1.u) annotation(Line(
			points={{-115,-65},{-120,-65},{-122,-65},{-122,-26},{-117,-26}},
			color={0,0,127},
			thickness=0.0625));
		connect(temperature_EB.port,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(
			points={{-95,-65},{-90,-65},{83,-65},{83,-53},{88,-53}},
			color={191,0,0},
			thickness=0.0625));
		connect(onOffController1.y,gain1.u) annotation(Line(
			points={{-94,-20},{-89,-20},{-87,-20},{-82,-20}},
			color={255,0,255},
			thickness=0.0625));
		
		connect(gain1.y,integrator1.u) annotation(Line(
			points={{-59,-20},{-54,-20},{-54,-8},{-67,-8},{-67,5},{-62,
			5}},
			color={0,0,127},
			thickness=0.0625));
		connect(gain1.y,prescribedHeatFlow_heater.Q_flow) annotation(Line(
			points={{-59,-20},{-54,-20},{-55,-20},{-50,-20}},
			color={0,0,127},
			thickness=0.0625));
		connect(prescribedHeatFlow_heater.port,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(
			points={{-30,-20},{-25,-20},{83,-20},{83,-53},{88,-53}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		const(y(flags=2)),
		temperature_EB(
			T(flags=2),
			port(T(flags=2))),
		gain1(y(flags=2)),
		integrator1(y(flags=2)),
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
