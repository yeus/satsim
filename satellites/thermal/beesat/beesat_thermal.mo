// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model beesat_thermal "beesat_thermal.mo"
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Platine_yn annotation(Placement(
		transformation(extent={{480,-415},{500,-395}}),
		iconTransformation(extent={{288.3,-258.3},{308.3,-238.3}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a Bat annotation(Placement(
		transformation(extent={{475,-230},{495,-210}}),
		iconTransformation(extent={{288.3,-58.3},{308.3,-38.3}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Platine_yp annotation(Placement(
		transformation(extent={{475,-50},{495,-30}}),
		iconTransformation(extent={{288.3,191.7},{308.3,211.7}})));
	beesat_struktur beesat_struktur1 annotation(Placement(transformation(extent={{65,-256},{136,-185}})));
	beesat_platine beesat_platine_unten annotation(Placement(transformation(extent={{235,-436},{296,-375}})));
	beesat_batterie beesat_batterie1 annotation(Placement(transformation(extent={{190,-251},{251,-190}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_oben_Batterie_or(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{245,-125},{265,-105}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_oben_Batterie_ol(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{215,-125},{235,-105}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_oben_Batterie_ur(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{305,-150},{325,-130}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_oben_Batterie_ul(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{270,-150},{290,-130}})));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_oben_ol(h_contact=1000) annotation(Placement(transformation(
		origin={225,-90},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_oben_or(h_contact=1000) annotation(Placement(transformation(
		origin={255,-90},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_oben_ul(h_contact=1000) annotation(Placement(transformation(
		origin={280,-115},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_oben_ur(h_contact=1000) annotation(Placement(transformation(
		origin={315,-115},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_oben_ol(h_contact=1000) annotation(Placement(transformation(
		origin={225,-140},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_oben_or(h_contact=1000) annotation(Placement(transformation(
		origin={255,-140},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_oben_ul(h_contact=1000) annotation(Placement(transformation(
		origin={280,-165},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_oben_ur(h_contact=1000) annotation(Placement(transformation(
		origin={315,-165},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_unten_Batterie_or(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{255,-310},{275,-290}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_unten_Batterie_ol(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{225,-310},{245,-290}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_unten_Batterie_ur(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{315,-335},{335,-315}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_unten_Batterie_ul(
		x=0.004,
		y=0.03,
		z=0.004) annotation(Placement(transformation(extent={{280,-335},{300,-315}})));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_ol(h_contact=1000) annotation(Placement(transformation(
		origin={235,-325},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_or(h_contact=1000) annotation(Placement(transformation(
		origin={265,-325},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_ul(h_contact=1000) annotation(Placement(transformation(
		origin={290,-350},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_ur(h_contact=1000) annotation(Placement(transformation(
		origin={325,-350},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_unten_ol(h_contact=1000) annotation(Placement(transformation(
		origin={235,-275},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_unten_or(h_contact=1000) annotation(Placement(transformation(
		origin={265,-275},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_unten_ul(h_contact=1000) annotation(Placement(transformation(
		origin={290,-300},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_Batterie_unten_ur(h_contact=1000) annotation(Placement(transformation(
		origin={325,-300},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Boden_or(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{240,-495},{260,-475}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Boden_ol(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{210,-495},{230,-475}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Boden_ur(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{300,-520},{320,-500}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Boden_ul(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{270,-520},{290,-500}})));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_Boden_ol(h_contact=1000) annotation(Placement(transformation(
		origin={220,-510},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_Boden_or(h_contact=1000) annotation(Placement(transformation(
		origin={250,-510},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_Boden_ul(h_contact=1000) annotation(Placement(transformation(
		origin={280,-535},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_patine_unten_Boden_ur(h_contact=1000) annotation(Placement(transformation(
		origin={310,-535},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_unten_platine_ol(h_contact=1000) annotation(Placement(transformation(
		origin={220,-460},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_unten_platine_or(h_contact=1000) annotation(Placement(transformation(
		origin={250,-460},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_unten_platine_ul(h_contact=1000) annotation(Placement(transformation(
		origin={280,-485},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_unten_platine_ur(h_contact=1000) annotation(Placement(transformation(
		origin={310,-485},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Deckel_or(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{270,55},{290,75}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Deckel_ol(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{240,55},{260,75}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Deckel_ur(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{330,30},{350,50}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop Bolzen_Platine_Deckel_ul(
		x=0.004,
		y=0.015,
		z=0.004) annotation(Placement(transformation(extent={{300,30},{320,50}})));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Platine_ol(h_contact=1000) annotation(Placement(transformation(
		origin={250,40},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Platine_or(h_contact=1000) annotation(Placement(transformation(
		origin={280,40},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Platine_ul(h_contact=1000) annotation(Placement(transformation(
		origin={310,15},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Platine_ur(h_contact=1000) annotation(Placement(transformation(
		origin={340,15},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Deckel_ol(h_contact=1000) annotation(Placement(transformation(
		origin={250,90},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Deckel_or(h_contact=1000) annotation(Placement(transformation(
		origin={280,90},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Deckel_ul(h_contact=1000) annotation(Placement(transformation(
		origin={310,65},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_conductor_A Bolzen_platine_oben_Deckel_ur(h_contact=1000) annotation(Placement(transformation(
		origin={340,65},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_ol annotation(Placement(transformation(
		origin={355,-85},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_om annotation(Placement(transformation(
		origin={380,-85},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_or annotation(Placement(transformation(
		origin={405,-85},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_ml annotation(Placement(transformation(
		origin={360,-110},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_mm annotation(Placement(transformation(
		origin={385,-110},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_mr annotation(Placement(transformation(
		origin={410,-110},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_ul annotation(Placement(transformation(
		origin={365,-135},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_um annotation(Placement(transformation(
		origin={390,-135},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_oben_ur annotation(Placement(transformation(
		origin={415,-135},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_ol annotation(Placement(transformation(
		origin={365,-295},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_om annotation(Placement(transformation(
		origin={390,-295},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_or annotation(Placement(transformation(
		origin={415,-295},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_ml annotation(Placement(transformation(
		origin={370,-320},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_mm annotation(Placement(transformation(
		origin={395,-320},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_mr annotation(Placement(transformation(
		origin={420,-320},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_ul annotation(Placement(transformation(
		origin={375,-345},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_um annotation(Placement(transformation(
		origin={400,-345},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Batterie_Platine_unten_ur annotation(Placement(transformation(
		origin={425,-345},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_ol annotation(Placement(transformation(
		origin={385,75},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_om annotation(Placement(transformation(
		origin={410,75},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_or annotation(Placement(transformation(
		origin={435,75},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_ml annotation(Placement(transformation(
		origin={390,50},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_mm annotation(Placement(transformation(
		origin={415,50},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_mr annotation(Placement(transformation(
		origin={440,50},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_ul annotation(Placement(transformation(
		origin={395,25},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_um annotation(Placement(transformation(
		origin={420,25},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_oben_Deckel_ur annotation(Placement(transformation(
		origin={445,25},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_ol annotation(Placement(transformation(
		origin={370,-500},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_om annotation(Placement(transformation(
		origin={395,-505},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_or annotation(Placement(transformation(
		origin={420,-510},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_ml annotation(Placement(transformation(
		origin={375,-530},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_mm annotation(Placement(transformation(
		origin={400,-535},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_mr annotation(Placement(transformation(
		origin={425,-540},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_ul annotation(Placement(transformation(
		origin={380,-555},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_um annotation(Placement(transformation(
		origin={405,-560},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_radiation_A thermal_radiation_Platine_unten_Boden_ur annotation(Placement(transformation(
		origin={430,-565},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	radiation_3 radiation_1 annotation(Placement(transformation(extent={{10,-225},{30,-205}})));
	radiation_3 radiation_Batterie_links_unten annotation(Placement(transformation(extent={{10,-255},{30,-235}})));
	radiation_3 radiation_Batterie_rechts_oben annotation(Placement(transformation(extent={{150,-220},{170,-200}})));
	radiation_3 radiation_Batterie_rechts_unten annotation(Placement(transformation(extent={{150,-250},{170,-230}})));
	radiation_3 radiation_Batterie_hinten_unten annotation(Placement(transformation(
		origin={145,-155},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	radiation_3 radiation_Batterie_hinten_oben annotation(Placement(transformation(
		origin={100,-155},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	radiation_3 radiation_Batterie_vorne_unten annotation(Placement(transformation(
		origin={100,-290},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	radiation_3 radiation_Batterie_vorne_oben annotation(Placement(transformation(
		origin={55,-290},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	radiation_3 radiation_Platine_oben_links annotation(Placement(transformation(
		origin={18,-106},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	radiation_3 radiation_Platine_oben_vorne annotation(Placement(transformation(
		origin={100,-106},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	beesat_platine beesat_platine_oben annotation(Placement(transformation(extent={{221,-68},{282,-7}})));
	radiation_3 radiation_Platine_oben_rechts annotation(Placement(transformation(
		origin={74,-106},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	radiation_3 radiation_Platine_oben_hinten annotation(Placement(transformation(
		origin={48,-104},
		extent={{-10,-10},{10,10}},
		rotation=-90)));
	radiation_3 radiation_Platine_unten_links annotation(Placement(transformation(
		origin={105,-325},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	radiation_3 radiation_Platine_unten_vorne annotation(Placement(transformation(
		origin={185,-325},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	radiation_3 radiation_Platine_unten_rechts annotation(Placement(transformation(
		origin={160,-325},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	radiation_3 radiation_Platine_unten_hinten annotation(Placement(transformation(
		origin={135,-325},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	external_Radiation external_Radiation_hinten annotation(Placement(transformation(extent={{-35,-180},{-15,-160}})));
	external_Radiation external_Radiation_links annotation(Placement(transformation(extent={{-35,-210},{-15,-190}})));
	external_Radiation external_Radiation_rechts annotation(Placement(transformation(extent={{-35,-240},{-15,-220}})));
	external_Radiation external_Radiation_vorne annotation(Placement(transformation(extent={{-35,-270},{-15,-250}})));
	external_Radiation_9 external_Radiation_Deckel annotation(Placement(transformation(extent={{-35,-150},{-15,-130}})));
	external_Radiation_9 external_Radiation_Boden annotation(Placement(transformation(extent={{-35,-300},{-15,-280}})));
	input Modelica.Blocks.Interfaces.RealInput yp annotation(Placement(
		transformation(extent={{-95,-160},{-55,-120}}),
		iconTransformation(extent={{-21.7,281.7},{18.3,321.7}})));
	input Modelica.Blocks.Interfaces.RealInput zn annotation(Placement(
		transformation(extent={{-95,-190},{-55,-150}}),
		iconTransformation(extent={{228.3,281.7},{268.3,321.7}})));
	input Modelica.Blocks.Interfaces.RealInput xn annotation(Placement(
		transformation(extent={{-95,-220},{-55,-180}}),
		iconTransformation(extent={{-321.7,-18.3},{-281.7,21.7}})));
	input Modelica.Blocks.Interfaces.RealInput xp annotation(Placement(
		transformation(extent={{-95,-250},{-55,-210}}),
		iconTransformation(extent={{278.3,-18.3},{318.3,21.7}})));
	input Modelica.Blocks.Interfaces.RealInput zp annotation(Placement(
		transformation(extent={{-95,-280},{-55,-240}}),
		iconTransformation(extent={{-271.7,-318.3},{-231.7,-278.3}})));
	input Modelica.Blocks.Interfaces.RealInput yn annotation(Placement(
		transformation(extent={{-95,-310},{-55,-270}}),
		iconTransformation(extent={{-21.7,-318.3},{18.3,-278.3}})));
	equation
		connect(radiation_Platine_oben_hinten.lo,beesat_platine_oben.or_zn_innen) annotation(Line(
			points={{53,-94},{53,-89},{277.7,-89},{277.7,-18.3},{272.7,-18.3}},
			color={255,0,0}));
		connect(radiation_Platine_oben_hinten.lm,beesat_platine_oben.om_zn_innen) annotation(Line(
			points={{48,-94},{48,-89},{48,-13.3},{268.7,-13.3},{268.7,-18.3}},
			color={255,0,0}));
		connect(radiation_Platine_oben_hinten.lu,beesat_platine_oben.ol_zn_innen) annotation(Line(
			points={{43,-94},{43,-89},{43,-13.3},{264.7,-13.3},{264.7,-18.3}},
			color={255,0,0}));
		connect(radiation_Platine_oben_links.lo,beesat_platine_oben.ul_zn_innen) annotation(Line(
			points={{23,-96},{23,-91},{269.7,-91},{269.7,-26.3},{264.7,-26.3}},
			color={255,0,0}));
		connect(radiation_Platine_oben_links.lm,beesat_platine_oben.ml_zn_innen) annotation(Line(
			points={{18,-96},{18,-91},{18,-17.3},{264.7,-17.3},{264.7,-22.3}},
			color={255,0,0}));
		connect(beesat_platine_oben.ol_zn_innen,radiation_Platine_oben_links.lu) annotation(Line(points={{264.7,-18.3},{264.7,-13.3},{13,-13.3},{13,-91},{13,-96}}));
		connect(beesat_platine_oben.or_zn_innen,thermal_radiation_Platine_oben_Deckel_or.surface_properties1) annotation(Line(
			points={{272.7,-18.3},{277.7,-18.3},{435,-18.3},{435,60},{435,65}},
			thickness=0.0625));
		connect(beesat_platine_oben.om_zn_innen,thermal_radiation_Platine_oben_Deckel_om.surface_properties1) annotation(Line(
			points={{268.7,-18.3},{268.7,-13.3},{268.7,60},{410,60},{410,65}},
			thickness=0.0625));
		connect(beesat_platine_oben.ol_zn_innen,thermal_radiation_Platine_oben_Deckel_ol.surface_properties1) annotation(Line(
			points={{264.7,-18.3},{264.7,-13.3},{264.7,60},{385,60},{385,65}},
			thickness=0.0625));
		connect(beesat_platine_oben.mr_zn_innen,thermal_radiation_Platine_oben_Deckel_mr.surface_properties1) annotation(Line(
			points={{272.7,-22.3},{277.7,-22.3},{440,-22.3},{440,35},{440,40}},
			thickness=0.0625));
		connect(beesat_platine_oben.mm_zn_innen,thermal_radiation_Platine_oben_Deckel_mm.surface_properties1) annotation(Line(
			points={{268.7,-22.3},{273.7,-22.3},{415,-22.3},{415,35},{415,40}},
			thickness=0.0625));
		connect(beesat_platine_oben.ml_zn_innen,thermal_radiation_Platine_oben_Deckel_ml.surface_properties1) annotation(Line(
			points={{264.7,-22.3},{264.7,-17.3},{264.7,35},{390,35},{390,40}},
			thickness=0.0625));
		connect(beesat_platine_oben.ul_zn_innen,thermal_radiation_Platine_oben_Deckel_ul.surface_properties1) annotation(Line(
			points={{264.7,-26.3},{269.7,-26.3},{395,-26.3},{395,10},{395,15}},
			thickness=0.0625));
		connect(beesat_platine_oben.um_zn_innen,thermal_radiation_Platine_oben_Deckel_um.surface_properties1) annotation(Line(
			points={{268.7,-26.3},{273.7,-26.3},{420,-26.3},{420,10},{420,15}},
			thickness=0.0625));
		connect(beesat_platine_oben.ur_zn_innen,thermal_radiation_Platine_oben_Deckel_ur.surface_properties1) annotation(Line(
			points={{272.7,-26.3},{277.7,-26.3},{445,-26.3},{445,10},{445,15}},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ur.surface_properties2,beesat_platine_oben.ur_zp_aussen) annotation(Line(
			points={{415,-125},{415,-120},{415,-61.7},{238.3,-61.7},{238.3,-56.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_um.surface_properties2,beesat_platine_oben.um_zp_aussen) annotation(Line(
			points={{390,-125},{390,-120},{390,-61.7},{234.3,-61.7},{234.3,-56.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ul.surface_properties2,beesat_platine_oben.ul_zp_aussen) annotation(Line(
			points={{365,-125},{365,-120},{225.3,-120},{225.3,-56.7},{230.3,-56.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_mr.surface_properties2,beesat_platine_oben.mr_zp_aussen) annotation(Line(
			points={{410,-100},{410,-95},{410,-57.7},{238.3,-57.7},{238.3,-52.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_mm.surface_properties2,beesat_platine_oben.mm_zp_aussen) annotation(Line(
			points={{385,-100},{385,-95},{229.3,-95},{229.3,-52.7},{234.3,-52.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ml.surface_properties2,beesat_platine_oben.ml_zp_aussen) annotation(Line(
			points={{360,-100},{360,-95},{225.3,-95},{225.3,-52.7},{230.3,-52.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_or.surface_properties2,beesat_platine_oben.or_zp_aussen) annotation(Line(
			points={{405,-75},{405,-70},{233.3,-70},{233.3,-48.7},{238.3,-48.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_om.surface_properties2,beesat_platine_oben.om_zp_aussen) annotation(Line(
			points={{380,-75},{380,-70},{229.3,-70},{229.3,-48.7},{234.3,-48.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ol.surface_properties2,beesat_platine_oben.ol_zp_aussen) annotation(Line(
			points={{355,-75},{355,-70},{225.3,-70},{225.3,-48.7},{230.3,-48.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Platine_ur.surface_properties2,beesat_platine_oben.ur_zn_innen) annotation(Line(
			points={{340,5},{340,0},{340,-26.3},{277.7,-26.3},{272.7,-26.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Platine_ul.surface_properties2,beesat_platine_oben.ul_zn_innen) annotation(Line(
			points={{310,5},{310,0},{310,-26.3},{269.7,-26.3},{264.7,-26.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.or_zn_innen,Bolzen_platine_oben_Platine_or.surface_properties2) annotation(Line(
			points={{272.7,-18.3},{277.7,-18.3},{280,-18.3},{280,25},{280,30}},
			thickness=0.0625));
		connect(beesat_platine_oben.ol_zn_innen,Bolzen_platine_oben_Platine_ol.surface_properties2) annotation(Line(
			points={{264.7,-18.3},{264.7,-13.3},{264.7,25},{250,25},{250,30}},
			thickness=0.0625));
		connect(beesat_platine_oben.ur_zp_aussen,Bolzen_patine_oben_ur.surface_properties1) annotation(Line(
			points={{238.3,-56.7},{238.3,-61.7},{238.3,-100},{315,-100},{315,-105}},
			thickness=0.0625));
		connect(beesat_platine_oben.ul_zp_aussen,Bolzen_patine_oben_ul.surface_properties1) annotation(Line(
			points={{230.3,-56.7},{225.3,-56.7},{225.3,-78.3},{280,-78.3},{280,-100},{280,
			-105}},
			thickness=0.0625));
		connect(beesat_platine_oben.or_zp_aussen,Bolzen_patine_oben_or.surface_properties1) annotation(Line(
			points={{238.3,-48.7},{233.3,-48.7},{233.3,-61.7},{255,-61.7},{255,-75},{255,
			-80}},
			thickness=0.0625));
		connect(beesat_platine_oben.ol_zp_aussen,Bolzen_patine_oben_ol.surface_properties1) annotation(Line(
			points={{230.3,-48.7},{225.3,-48.7},{225,-48.7},{225,-75},{225,-80}},
			thickness=0.0625));
		connect(Bolzen_Platine_oben_Batterie_ol.yp,Bolzen_patine_oben_ol.surface_properties2) annotation(Line(
			points={{225,-107.3},{225,-102.3},{225,-105},{225,-100}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_patine_oben_or.surface_properties2,Bolzen_Platine_oben_Batterie_or.yp) annotation(Line(
			points={{255,-100},{255,-105},{255,-102.3},{255,-107.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_patine_oben_ul.surface_properties2,Bolzen_Platine_oben_Batterie_ul.yp) annotation(Line(
			points={{280,-125},{280,-130},{280,-127.3},{280,-132.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_patine_oben_ur.surface_properties2,Bolzen_Platine_oben_Batterie_ur.yp) annotation(Line(
			points={{315,-125},{315,-130},{315,-127.3},{315,-132.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_Batterie_oben_ol.surface_properties1,Bolzen_Platine_oben_Batterie_ol.yn) annotation(Line(
			points={{225,-130},{225,-125},{225,-127.7},{225,-122.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_Batterie_oben_or.surface_properties1,Bolzen_Platine_oben_Batterie_or.yn) annotation(Line(
			points={{255,-130},{255,-125},{255,-127.7},{255,-122.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_Batterie_oben_ul.surface_properties1,Bolzen_Platine_oben_Batterie_ul.yn) annotation(Line(
			points={{280,-155},{280,-150},{280,-152.7},{280,-147.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_Batterie_oben_ur.surface_properties1,Bolzen_Platine_oben_Batterie_ur.yn) annotation(Line(
			points={{315,-155},{315,-150},{315,-152.7},{315,-147.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_ol.yn,Bolzen_patine_unten_ol.surface_properties1) annotation(Line(
			points={{235,-307.7},{235,-312.7},{235,-310},{235,-315}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_ol.yp,Bolzen_Batterie_unten_ol.surface_properties2) annotation(Line(
			points={{235,-292.3},{235,-287.3},{235,-290},{235,-285}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_or.yp,Bolzen_Batterie_unten_or.surface_properties2) annotation(Line(
			points={{265,-292.3},{265,-287.3},{265,-290},{265,-285}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_or.yn,Bolzen_patine_unten_or.surface_properties1) annotation(Line(
			points={{265,-307.7},{265,-312.7},{265,-310},{265,-315}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_ul.yn,Bolzen_patine_unten_ul.surface_properties1) annotation(Line(
			points={{290,-332.7},{290,-337.7},{290,-335},{290,-340}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_ul.yp,Bolzen_Batterie_unten_ul.surface_properties2) annotation(Line(
			points={{290,-317.3},{290,-312.3},{290,-315},{290,-310}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_ur.yn,Bolzen_patine_unten_ur.surface_properties1) annotation(Line(
			points={{325,-332.7},{325,-337.7},{325,-335},{325,-340}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_unten_Batterie_ur.yp,Bolzen_Batterie_unten_ur.surface_properties2) annotation(Line(
			points={{325,-317.3},{325,-312.3},{325,-315},{325,-310}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ol_zn_innen,Bolzen_Batterie_oben_ol.surface_properties2) annotation(Line(
			points={{233.7,-201.3},{233.7,-196.3},{233.7,-155},{225,-155},{225,-150}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.or_zn_innen,Bolzen_Batterie_oben_or.surface_properties2) annotation(Line(
			points={{241.7,-201.3},{246.7,-201.3},{255,-201.3},{255,-155},{255,-150}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ul_zn_innen,Bolzen_Batterie_oben_ul.surface_properties2) annotation(Line(
			points={{233.7,-209.3},{238.7,-209.3},{280,-209.3},{280,-180},{280,-175}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ur_zn_innen,Bolzen_Batterie_oben_ur.surface_properties2) annotation(Line(
			points={{241.7,-209.3},{246.7,-209.3},{315,-209.3},{315,-180},{315,-175}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ol_zp_aussen,Bolzen_Batterie_unten_ol.surface_properties1) annotation(Line(
			points={{199.3,-231.7},{194.3,-231.7},{194.3,-245.7},{235,-245.7},{235,-260},{235,
			-265}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.or_zp_aussen,Bolzen_Batterie_unten_or.surface_properties1) annotation(Line(
			points={{207.3,-231.7},{202.3,-231.7},{202.3,-245.7},{265,-245.7},{265,-260},{265,
			-265}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ul_zp_aussen,Bolzen_Batterie_unten_ul.surface_properties1) annotation(Line(
			points={{199.3,-239.7},{194.3,-239.7},{194.3,-262.3},{290,-262.3},{290,-285},{290,
			-290}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ur_zp_aussen,Bolzen_Batterie_unten_ur.surface_properties1) annotation(Line(
			points={{207.3,-239.7},{207.3,-244.7},{207.3,-285},{325,-285},{325,-290}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ol_zn_innen,Bolzen_patine_unten_ol.surface_properties2) annotation(Line(
			points={{278.7,-386.3},{278.7,-381.3},{278.7,-340},{235,-340},{235,-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.or_zn_innen,Bolzen_patine_unten_or.surface_properties2) annotation(Line(
			points={{286.7,-386.3},{291.7,-386.3},{291.7,-363.3},{265,-363.3},{265,-340},{265,
			-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ul_zn_innen,Bolzen_patine_unten_ul.surface_properties2) annotation(Line(
			points={{278.7,-394.3},{283.7,-394.3},{290,-394.3},{290,-365},{290,-360}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ur_zn_innen,Bolzen_patine_unten_ur.surface_properties2) annotation(Line(
			points={{286.7,-394.3},{291.7,-394.3},{325,-394.3},{325,-365},{325,-360}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ol_zp_aussen,Bolzen_platine_unten_platine_ol.surface_properties1) annotation(Line(
			points={{244.3,-416.7},{239.3,-416.7},{220,-416.7},{220,-445},{220,-450}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.or_zp_aussen,Bolzen_platine_unten_platine_or.surface_properties1) annotation(Line(
			points={{252.3,-416.7},{247.3,-416.7},{247.3,-430.7},{250,-430.7},{250,-445},{250,
			-450}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ul_zp_aussen,Bolzen_platine_unten_platine_ul.surface_properties1) annotation(Line(
			points={{244.3,-424.7},{239.3,-424.7},{239.3,-447.3},{280,-447.3},{280,-470},{280,
			-475}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ur_zp_aussen,Bolzen_platine_unten_platine_ur.surface_properties1) annotation(Line(
			points={{252.3,-424.7},{252.3,-429.7},{252.3,-470},{310,-470},{310,-475}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_ul,Bolzen_patine_unten_Boden_ul.surface_properties2) annotation(Line(
			points={{75.3,-245.7},{80.3,-245.7},{80.3,-550},{280,-550},{280,-545}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_ur,Bolzen_patine_unten_Boden_ur.surface_properties2) annotation(Line(
			points={{81.3,-245.7},{81.3,-250.7},{81.3,-550},{310,-550},{310,-545}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_ol,Bolzen_patine_unten_Boden_ol.surface_properties2) annotation(Line(
			points={{75.3,-239.7},{70.3,-239.7},{70.3,-525},{220,-525},{220,-520}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_or,Bolzen_patine_unten_Boden_or.surface_properties2) annotation(Line(
			points={{81.3,-239.7},{86.3,-239.7},{86.3,-525},{250,-525},{250,-520}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_ol.yp,Bolzen_platine_oben_Deckel_ol.surface_properties2) annotation(Line(
			points={{250,72.7},{250,77.7},{250,75},{250,80}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_ol.yn,Bolzen_platine_oben_Platine_ol.surface_properties1) annotation(Line(
			points={{250,57.3},{250,52.3},{250,55},{250,50}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_or.yn,Bolzen_platine_oben_Platine_or.surface_properties1) annotation(Line(
			points={{280,57.3},{280,52.3},{280,55},{280,50}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_or.yp,Bolzen_platine_oben_Deckel_or.surface_properties2) annotation(Line(
			points={{280,72.7},{280,77.7},{280,75},{280,80}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_ul.yp,Bolzen_platine_oben_Deckel_ul.surface_properties2) annotation(Line(
			points={{310,47.7},{310,52.7},{310,50},{310,55}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_ul.yn,Bolzen_platine_oben_Platine_ul.surface_properties1) annotation(Line(
			points={{310,32.3},{310,27.3},{310,30},{310,25}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_ur.yn,Bolzen_platine_oben_Platine_ur.surface_properties1) annotation(Line(
			points={{340,32.3},{340,27.3},{340,30},{340,25}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Deckel_ur.yp,Bolzen_platine_oben_Deckel_ur.surface_properties2) annotation(Line(
			points={{340,47.7},{340,52.7},{340,50},{340,55}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_ol.yp,Bolzen_platine_unten_platine_ol.surface_properties2) annotation(Line(
			points={{220,-477.3},{220,-472.3},{220,-475},{220,-470}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_ol.yn,Bolzen_patine_unten_Boden_ol.surface_properties1) annotation(Line(
			points={{220,-492.7},{220,-497.7},{220,-495},{220,-500}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_or.yn,Bolzen_patine_unten_Boden_or.surface_properties1) annotation(Line(
			points={{250,-492.7},{250,-497.7},{250,-495},{250,-500}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_or.yp,Bolzen_platine_unten_platine_or.surface_properties2) annotation(Line(
			points={{250,-477.3},{250,-472.3},{250,-475},{250,-470}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_ul.yp,Bolzen_platine_unten_platine_ul.surface_properties2) annotation(Line(
			points={{280,-502.3},{280,-497.3},{280,-500},{280,-495}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_ul.yn,Bolzen_patine_unten_Boden_ul.surface_properties1) annotation(Line(
			points={{280,-517.7000000000001},{280,-522.7000000000001},{280,-520},{280,-525}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_ur.yp,Bolzen_platine_unten_platine_ur.surface_properties2) annotation(Line(
			points={{310,-502.3},{310,-497.3},{310,-500},{310,-495}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_Platine_Boden_ur.yn,Bolzen_patine_unten_Boden_ur.surface_properties1) annotation(Line(
			points={{310,-517.7000000000001},{310,-522.7000000000001},{310,-520},{310,-525}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Deckel_ol.surface_properties1,beesat_struktur1.Deckel_innen_ol) annotation(Line(
			points={{250,100},{250,105},{119.7,105},{119.7,-190.3},{119.7,-195.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Deckel_or.surface_properties1,beesat_struktur1.Deckel_innen_or) annotation(Line(
			points={{280,100},{280,105},{205.3,105},{205.3,-195.3},{130.7,-195.3},{125.7,
			-195.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Deckel_ul.surface_properties1,beesat_struktur1.Deckel_innen_ul) annotation(Line(
			points={{310,75},{310,80},{217.3,80},{217.3,-201.3},{124.7,-201.3},{119.7,
			-201.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Deckel_ur.surface_properties1,beesat_struktur1.Deckel_innen_ur) annotation(Line(
			points={{340,75},{340,80},{235.3,80},{235.3,-201.3},{130.7,-201.3},{125.7,
			-201.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.or_zn_innen,thermal_radiation_Batterie_Platine_oben_or.surface_properties1) annotation(Line(
			points={{241.7,-201.3},{246.7,-201.3},{405,-201.3},{405,-100},{405,-95}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.om_zn_innen,thermal_radiation_Batterie_Platine_oben_om.surface_properties1) annotation(Line(
			points={{237.7,-201.3},{237.7,-196.3},{237.7,-100},{380,-100},{380,-95}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ol_zn_innen,thermal_radiation_Batterie_Platine_oben_ol.surface_properties1) annotation(Line(
			points={{233.7,-201.3},{233.7,-196.3},{233.7,-100},{355,-100},{355,-95}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.mr_zn_innen,thermal_radiation_Batterie_Platine_oben_mr.surface_properties1) annotation(Line(
			points={{241.7,-205.3},{246.7,-205.3},{410,-205.3},{410,-125},{410,-120}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.mm_zn_innen,thermal_radiation_Batterie_Platine_oben_mm.surface_properties1) annotation(Line(
			points={{237.7,-205.3},{242.7,-205.3},{385,-205.3},{385,-125},{385,-120}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ml_zn_innen,thermal_radiation_Batterie_Platine_oben_ml.surface_properties1) annotation(Line(
			points={{233.7,-205.3},{233.7,-200.3},{233.7,-125},{360,-125},{360,-120}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ur_zn_innen,thermal_radiation_Batterie_Platine_oben_ur.surface_properties1) annotation(Line(
			points={{241.7,-209.3},{246.7,-209.3},{415,-209.3},{415,-150},{415,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.um_zn_innen,thermal_radiation_Batterie_Platine_oben_um.surface_properties1) annotation(Line(
			points={{237.7,-209.3},{242.7,-209.3},{390,-209.3},{390,-150},{390,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ul_zn_innen,thermal_radiation_Batterie_Platine_oben_ul.surface_properties1) annotation(Line(
			points={{233.7,-209.3},{238.7,-209.3},{365,-209.3},{365,-150},{365,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.or_zp_aussen,thermal_radiation_Batterie_Platine_unten_or.surface_properties1) annotation(Line(
			points={{252.3,-416.7},{247.3,-416.7},{247.3,-363.3},{415,-363.3},{415,-310},{415,
			-305}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.om_zp_aussen,thermal_radiation_Batterie_Platine_unten_om.surface_properties1) annotation(Line(
			points={{248.3,-416.7},{243.3,-416.7},{243.3,-363.3},{390,-363.3},{390,-310},{390,
			-305}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ol_zp_aussen,thermal_radiation_Batterie_Platine_unten_ol.surface_properties1) annotation(Line(
			points={{244.3,-416.7},{239.3,-416.7},{239.3,-363.3},{365,-363.3},{365,-310},{365,
			-305}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.mr_zp_aussen,thermal_radiation_Batterie_Platine_unten_mr.surface_properties1) annotation(Line(
			points={{252.3,-420.7},{252.3,-425.7},{420,-425.7},{420,-335},{420,-330}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.mm_zp_aussen,thermal_radiation_Batterie_Platine_unten_mm.surface_properties1) annotation(Line(
			points={{248.3,-420.7},{243.3,-420.7},{243.3,-378},{395,-378},{395,-335},{395,
			-330}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ml_zp_aussen,thermal_radiation_Batterie_Platine_unten_ml.surface_properties1) annotation(Line(
			points={{244.3,-420.7},{239.3,-420.7},{239.3,-378},{370,-378},{370,-335},{370,
			-330}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ur_zp_aussen,thermal_radiation_Batterie_Platine_unten_ur.surface_properties1) annotation(Line(
			points={{252.3,-424.7},{252.3,-429.7},{425,-429.7},{425,-360},{425,-355}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.um_zp_aussen,thermal_radiation_Batterie_Platine_unten_um.surface_properties1) annotation(Line(
			points={{248.3,-424.7},{248.3,-429.7},{400,-429.7},{400,-360},{400,-355}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ul_zp_aussen,thermal_radiation_Batterie_Platine_unten_ul.surface_properties1) annotation(Line(
			points={{244.3,-424.7},{239.3,-424.7},{239.3,-392.3},{375,-392.3},{375,-360},{375,
			-355}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ol_zp_aussen,thermal_radiation_Batterie_Platine_unten_ol.surface_properties2) annotation(Line(
			points={{199.3,-231.7},{194.3,-231.7},{194.3,-255.7},{365,-255.7},{365,-280},{365,
			-285}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.om_zp_aussen,thermal_radiation_Batterie_Platine_unten_om.surface_properties2) annotation(Line(
			points={{203.3,-231.7},{198.3,-231.7},{198.3,-255.7},{390,-255.7},{390,-280},{390,
			-285}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.or_zp_aussen,thermal_radiation_Batterie_Platine_unten_or.surface_properties2) annotation(Line(
			points={{207.3,-231.7},{202.3,-231.7},{202.3,-255.7},{415,-255.7},{415,-280},{415,
			-285}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ml_zp_aussen,thermal_radiation_Batterie_Platine_unten_ml.surface_properties2) annotation(Line(
			points={{199.3,-235.7},{194.3,-235.7},{194.3,-270.3},{370,-270.3},{370,-305},{370,
			-310}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.mm_zp_aussen,thermal_radiation_Batterie_Platine_unten_mm.surface_properties2) annotation(Line(
			points={{203.3,-235.7},{198.3,-235.7},{198.3,-270.3},{395,-270.3},{395,-305},{395,
			-310}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.mr_zp_aussen,thermal_radiation_Batterie_Platine_unten_mr.surface_properties2) annotation(Line(
			points={{207.3,-235.7},{207.3,-240.7},{207.3,-305},{420,-305},{420,-310}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ul_zp_aussen,thermal_radiation_Batterie_Platine_unten_ul.surface_properties2) annotation(Line(
			points={{199.3,-239.7},{194.3,-239.7},{194.3,-284.7},{375,-284.7},{375,-330},{375,
			-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.um_zp_aussen,thermal_radiation_Batterie_Platine_unten_um.surface_properties2) annotation(Line(
			points={{203.3,-239.7},{203.3,-244.7},{203.3,-330},{400,-330},{400,-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ur_zp_aussen,thermal_radiation_Batterie_Platine_unten_ur.surface_properties2) annotation(Line(
			points={{207.3,-239.7},{207.3,-244.7},{207.3,-330},{425,-330},{425,-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_ul,thermal_radiation_Platine_unten_Boden_ul.surface_properties1) annotation(Line(
			points={{75.3,-245.7},{80.3,-245.7},{80.3,-570},{380,-570},{380,-565}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_um,thermal_radiation_Platine_unten_Boden_um.surface_properties1) annotation(Line(points={{78.3,-245.7},{78.3,-250.7},{78.3,-575},{405,-575},{405,-570}}));
		connect(beesat_struktur1.Boden_innen_ur,thermal_radiation_Platine_unten_Boden_ur.surface_properties1) annotation(Line(points={{81.3,-245.7},{81.3,-250.7},{81.3,-580},{430,-580},{430,-575}}));
		connect(beesat_struktur1.Boden_innen_mr,thermal_radiation_Platine_unten_Boden_mr.surface_properties1) annotation(Line(points={{81.3,-242.7},{81.3,-247.7},{81.3,-555},{425,-555},{425,-550}}));
		connect(beesat_struktur1.Boden_innen_or,thermal_radiation_Platine_unten_Boden_or.surface_properties1) annotation(Line(points={{81.3,-239.7},{86.3,-239.7},{86.3,-525},{420,-525},{420,-520}}));
		connect(thermal_radiation_Platine_unten_Boden_ol.surface_properties2,beesat_platine_unten.ol_zp_aussen) annotation(Line(
			points={{370,-490},{370,-485},{239.3,-485},{239.3,-416.7},{244.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_om.surface_properties2,beesat_platine_unten.om_zp_aussen) annotation(Line(
			points={{395,-495},{395,-490},{243.3,-490},{243.3,-416.7},{248.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_or.surface_properties2,beesat_platine_unten.or_zp_aussen) annotation(Line(
			points={{420,-500},{420,-495},{247.3,-495},{247.3,-416.7},{252.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_ml.surface_properties2,beesat_platine_unten.ml_zp_aussen) annotation(Line(
			points={{375,-520},{375,-515},{239.3,-515},{239.3,-420.7},{244.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_mm.surface_properties2,beesat_platine_unten.mm_zp_aussen) annotation(Line(
			points={{400,-525},{400,-520},{243.3,-520},{243.3,-420.7},{248.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_mr.surface_properties2,beesat_platine_unten.mr_zp_aussen) annotation(Line(
			points={{425,-530},{425,-525},{425,-425.7},{252.3,-425.7},{252.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_ul.surface_properties2,beesat_platine_unten.ul_zp_aussen) annotation(Line(
			points={{380,-545},{380,-540},{239.3,-540},{239.3,-424.7},{244.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_um.surface_properties2,beesat_platine_unten.um_zp_aussen) annotation(Line(
			points={{405,-550},{405,-545},{405,-429.7},{248.3,-429.7},{248.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_ur.surface_properties2,beesat_platine_unten.ur_zp_aussen) annotation(Line(
			points={{430,-555},{430,-550},{430,-429.7},{252.3,-429.7},{252.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_oben_Deckel_ol.surface_properties2,beesat_struktur1.Deckel_innen_ol) annotation(Line(
			points={{385,85},{385,90},{119.7,90},{119.7,-190.3},{119.7,-195.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_oben_Deckel_om.surface_properties2,beesat_struktur1.Deckel_innen_om) annotation(Line(points={{410,85},{410,90},{122.7,90},{122.7,-190.3},{122.7,-195.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_or.surface_properties2,beesat_struktur1.Deckel_innen_or) annotation(Line(points={{435,85},{435,90},{283,90},{283,-195.3},{130.7,-195.3},{125.7,
		-195.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_ul.surface_properties2,beesat_struktur1.Deckel_innen_ul) annotation(Line(points={{395,35},{395,40},{260,40},{260,-201.3},{124.7,-201.3},{119.7,
		-201.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_um.surface_properties2,beesat_struktur1.Deckel_innen_um) annotation(Line(points={{420,35},{420,40},{274,40},{274,-201.3},{127.7,-201.3},{122.7,
		-201.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_ur.surface_properties2,beesat_struktur1.Deckel_innen_ur) annotation(Line(points={{445,35},{445,40},{288,40},{288,-201.3},{130.7,-201.3},{125.7,
		-201.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_mr.surface_properties2,beesat_struktur1.Deckel_innen_mr) annotation(Line(points={{440,60},{440,65},{285.3,65},{285.3,-198.3},{130.7,-198.3},{125.7,
		-198.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_mm.surface_properties2,beesat_struktur1.Deckel_innen_mm) annotation(Line(points={{415,60},{415,65},{271.3,65},{271.3,-198.3},{127.7,-198.3},{122.7,
		-198.3}}));
		connect(thermal_radiation_Platine_oben_Deckel_ml.surface_properties2,beesat_struktur1.Deckel_innen_ml) annotation(Line(points={{390,60},{390,65},{119.7,65},{119.7,-193.3},{119.7,-198.3}}));
		connect(beesat_struktur1.Boden_innen_mm,thermal_radiation_Platine_unten_Boden_mm.surface_properties1) annotation(
			Line(
				points={{78.33332824707031,-242.6666564941406},{83,-242.7},{83,-550},{400,-550},{400,-545}},
				color={0,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(beesat_struktur1.Boden_innen_ml,thermal_radiation_Platine_unten_Boden_ml.surface_properties1) annotation(Line(
			points={{75.3,-242.7},{70.3,-242.7},{70.3,-545},{375,-545},{375,-540}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_ol,thermal_radiation_Platine_unten_Boden_ol.surface_properties1) annotation(Line(
			points={{75.3,-239.7},{70.3,-239.7},{70.3,-515},{370,-515},{370,-510}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_innen_om,thermal_radiation_Platine_unten_Boden_om.surface_properties1) annotation(Line(
			points={{78.3,-239.7},{73.3,-239.7},{73.3,-520},{395,-520},{395,-515}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.links_innen_ol,radiation_1.ru) annotation(Line(
			points={{65.3,-227.7},{60.3,-227.7},{35,-227.7},{35,-220},{30,-220}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.links_innen_om,radiation_1.rm) annotation(
			Line(
				points={{68.33332824707031,-227.6666564941406},{63,-227.7},{33,-227.7},{33,-210},{30,-215}},
				color={0,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(beesat_struktur1.links_innen_or,radiation_1.ro) annotation(Line(
			points={{71.3,-227.7},{66.3,-227.7},{35,-227.7},{35,-210},{30,-210}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_1.lu,beesat_batterie1.ul_zp_aussen) annotation(Line(
			points={{10,-220},{5,-220},{5,-239.7},{194.3,-239.7},{199.3,-239.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_1.lm,beesat_batterie1.ml_zp_aussen) annotation(Line(
			points={{10,-215},{5,-215},{5,-235.7},{194.3,-235.7},{199.3,-235.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_1.lo,beesat_batterie1.ol_zp_aussen) annotation(Line(
			points={{10,-210},{5,-210},{5,-231.7},{194.3,-231.7},{199.3,-231.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.links_innen_ur,radiation_Batterie_links_unten.ro) annotation(Line(
			points={{71.3,-230.7},{66.3,-230.7},{35,-230.7},{35,-240},{30,-240}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.links_innen_um,radiation_Batterie_links_unten.rm) annotation(Line(
			points={{68.3,-230.7},{63.3,-230.7},{35,-230.7},{35,-245},{30,-245}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.links_innen_ul,radiation_Batterie_links_unten.ru) annotation(Line(
			points={{65.3,-230.7},{60.3,-230.7},{35,-230.7},{35,-250},{30,-250}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_links_unten.lo,beesat_batterie1.ol_zn_innen) annotation(Line(
			points={{10,-240},{5,-240},{5,-196.3},{233.7,-196.3},{233.7,-201.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_links_unten.lm,beesat_batterie1.ml_zn_innen) annotation(Line(
			points={{10,-245},{5,-245},{5,-200.3},{233.7,-200.3},{233.7,-205.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_links_unten.lu,beesat_batterie1.ul_zn_innen) annotation(Line(
			points={{10,-250},{5,-250},{5,-229.7},{238.7,-229.7},{238.7,-209.3},{233.7,
			-209.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.rechts_innen_ol,radiation_Batterie_rechts_oben.lo) annotation(Line(
			points={{129.7,-217.3},{134.7,-217.3},{145,-217.3},{145,-205},{150,-205}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.rechts_innen_om,radiation_Batterie_rechts_oben.lm) annotation(Line(
			points={{132.7,-217.3},{137.7,-217.3},{145,-217.3},{145,-210},{150,-210}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.rechts_innen_or,radiation_Batterie_rechts_oben.lu) annotation(Line(
			points={{135.7,-217.3},{140.7,-217.3},{145,-217.3},{145,-215},{150,-215}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.rechts_innen_ul,radiation_Batterie_rechts_unten.lo) annotation(Line(
			points={{129.7,-220.7},{134.7,-220.7},{145,-220.7},{145,-235},{150,-235}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.rechts_innen_um,radiation_Batterie_rechts_unten.lm) annotation(Line(
			points={{132.7,-220.7},{137.7,-220.7},{145,-220.7},{145,-240},{150,-240}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.rechts_innen_ur,radiation_Batterie_rechts_unten.lu) annotation(Line(
			points={{135.7,-220.7},{140.7,-220.7},{145,-220.7},{145,-245},{150,-245}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_rechts_oben.ro,beesat_batterie1.or_zp_aussen) annotation(Line(
			points={{170,-205},{175,-205},{202.3,-205},{202.3,-231.7},{207.3,-231.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_rechts_oben.rm,beesat_batterie1.mr_zp_aussen) annotation(Line(
			points={{170,-210},{175,-210},{175,-240.7},{207.3,-240.7},{207.3,-235.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_rechts_oben.ru,beesat_batterie1.ur_zp_aussen) annotation(Line(
			points={{170,-215},{175,-215},{175,-244.7},{207.3,-244.7},{207.3,-239.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_rechts_unten.ro,beesat_batterie1.or_zn_innen) annotation(Line(
			points={{170,-235},{175,-235},{246.7,-235},{246.7,-201.3},{241.7,-201.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_rechts_unten.rm,beesat_batterie1.mr_zn_innen) annotation(Line(
			points={{170,-240},{175,-240},{246.7,-240},{246.7,-205.3},{241.7,-205.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_rechts_unten.ru,beesat_batterie1.ur_zn_innen) annotation(Line(
			points={{170,-245},{175,-245},{246.7,-245},{246.7,-209.3},{241.7,-209.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.or_zp_aussen,radiation_Batterie_hinten_oben.ru) annotation(Line(
			points={{207.3,-231.7},{202.3,-231.7},{202.3,-140},{105,-140},{105,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.om_zp_aussen,radiation_Batterie_hinten_oben.rm) annotation(Line(
			points={{203.3,-231.7},{198.3,-231.7},{198.3,-140},{100,-140},{100,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ol_zp_aussen,radiation_Batterie_hinten_oben.ro) annotation(Line(
			points={{199.3,-231.7},{194.3,-231.7},{194.3,-140},{95,-140},{95,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_hinten_oben.lu,beesat_struktur1.hinten_innen_or) annotation(Line(
			points={{105,-165},{105,-170},{105,-180.3},{115.7,-180.3},{115.7,-185.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_hinten_oben.lm,beesat_struktur1.hinten_innen_om) annotation(Line(
			points={{100,-165},{100,-170},{100,-180.3},{112.7,-180.3},{112.7,-185.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_hinten_oben.lo,beesat_struktur1.hinten_innen_ol) annotation(Line(
			points={{95,-165},{95,-170},{95,-180.3},{109.7,-180.3},{109.7,-185.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.or_zn_innen,radiation_Batterie_hinten_unten.ru) annotation(Line(
			points={{241.7,-201.3},{246.7,-201.3},{246.7,-140},{150,-140},{150,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.om_zn_innen,radiation_Batterie_hinten_unten.rm) annotation(Line(
			points={{237.7,-201.3},{237.7,-196.3},{237.7,-140},{145,-140},{145,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.ol_zn_innen,radiation_Batterie_hinten_unten.ro) annotation(Line(
			points={{233.7,-201.3},{233.7,-196.3},{233.7,-140},{140,-140},{140,-145}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_hinten_unten.lu,beesat_struktur1.hinten_innen_ur) annotation(Line(
			points={{150,-165},{150,-170},{150,-183.3},{115.7,-183.3},{115.7,-188.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_hinten_unten.lm,beesat_struktur1.hinten_innen_um) annotation(Line(
			points={{145,-165},{145,-170},{145,-183.3},{112.7,-183.3},{112.7,-188.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_hinten_unten.lo,beesat_struktur1.hinten_innen_ul) annotation(Line(
			points={{140,-165},{140,-170},{140,-183.3},{109.7,-183.3},{109.7,-188.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.vorne_innen_ur,radiation_Batterie_vorne_unten.lo) annotation(Line(
			points={{91.3,-255.7},{91.3,-260.7},{91.3,-275},{105,-275},{105,-280}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.vorne_innen_um,radiation_Batterie_vorne_unten.lm) annotation(Line(
			points={{88.3,-255.7},{88.3,-260.7},{88.3,-275},{100,-275},{100,-280}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.vorne_innen_ul,radiation_Batterie_vorne_unten.lu) annotation(Line(
			points={{85.3,-255.7},{85.3,-260.7},{85.3,-275},{95,-275},{95,-280}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.vorne_innen_ol,radiation_Batterie_vorne_oben.lu) annotation(Line(
			points={{85.3,-252.7},{85.3,-257.7},{85.3,-275},{50,-275},{50,-280}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.vorne_innen_om,radiation_Batterie_vorne_oben.lm) annotation(Line(
			points={{88.3,-252.7},{88.3,-257.7},{88.3,-275},{55,-275},{55,-280}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.vorne_innen_or,radiation_Batterie_vorne_oben.lo) annotation(Line(
			points={{91.3,-252.7},{91.3,-257.7},{91.3,-275},{60,-275},{60,-280}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_vorne_oben.ro,beesat_batterie1.ur_zp_aussen) annotation(Line(
			points={{60,-300},{60,-305},{207.3,-305},{207.3,-244.7},{207.3,-239.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_vorne_oben.rm,beesat_batterie1.um_zp_aussen) annotation(Line(
			points={{55,-300},{55,-305},{203.3,-305},{203.3,-244.7},{203.3,-239.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_vorne_oben.ru,beesat_batterie1.ul_zp_aussen) annotation(Line(
			points={{50,-300},{50,-305},{122,-305},{122,-239.7},{194.3,-239.7},{199.3,
			-239.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_vorne_unten.ro,beesat_batterie1.ur_zn_innen) annotation(Line(
			points={{105,-300},{105,-305},{246.7,-305},{246.7,-209.3},{241.7,-209.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_vorne_unten.rm,beesat_batterie1.um_zn_innen) annotation(Line(
			points={{100,-300},{100,-305},{242.7,-305},{242.7,-209.3},{237.7,-209.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Batterie_vorne_unten.ru,beesat_batterie1.ul_zn_innen) annotation(Line(
			points={{95,-300},{95,-305},{238.7,-305},{238.7,-209.3},{233.7,-209.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_rechts.lu,beesat_platine_oben.or_zn_innen) annotation(Line(
			points={{69,-96},{69,-91},{277.7,-91},{277.7,-18.3},{272.7,-18.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_rechts.lm,beesat_platine_oben.mr_zn_innen) annotation(Line(
			points={{74,-96},{74,-91},{277.7,-91},{277.7,-22.3},{272.7,-22.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_rechts.lo,beesat_platine_oben.ur_zn_innen) annotation(Line(
			points={{79,-96},{79,-91},{277.7,-91},{277.7,-26.3},{272.7,-26.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_links.ru,beesat_struktur1.links_innen_ol) annotation(Line(
			points={{13,-116},{13,-121},{13,-227.7},{60.3,-227.7},{65.3,-227.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_links.rm,beesat_struktur1.links_innen_om) annotation(Line(
			points={{18,-116},{18,-121},{18,-227.7},{63.3,-227.7},{68.3,-227.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_links.ro,beesat_struktur1.links_innen_or) annotation(Line(
			points={{23,-116},{23,-121},{23,-227.7},{66.3,-227.7},{71.3,-227.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_hinten.ru,beesat_struktur1.hinten_innen_ol) annotation(Line(
			points={{43,-114},{43,-119},{43,-180.3},{109.7,-180.3},{109.7,-185.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_hinten.rm,beesat_struktur1.hinten_innen_om) annotation(Line(
			points={{48,-114},{48,-119},{48,-180.3},{112.7,-180.3},{112.7,-185.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_hinten.ro,beesat_struktur1.hinten_innen_or) annotation(Line(
			points={{53,-114},{53,-119},{53,-180.3},{115.7,-180.3},{115.7,-185.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_rechts.ru,beesat_struktur1.rechts_innen_ol) annotation(Line(
			points={{69,-116},{69,-121},{134.7,-121},{134.7,-217.3},{129.7,-217.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_rechts.rm,beesat_struktur1.rechts_innen_om) annotation(Line(
			points={{74,-116},{74,-121},{137.7,-121},{137.7,-217.3},{132.7,-217.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_rechts.ro,beesat_struktur1.rechts_innen_or) annotation(Line(
			points={{79,-116},{79,-121},{140.7,-121},{140.7,-217.3},{135.7,-217.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_vorne.ru,beesat_struktur1.vorne_innen_ol) annotation(Line(
			points={{95,-116},{95,-121},{90.3,-121},{90.3,-257.7},{85.3,-257.7},{85.3,
			-252.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_vorne.rm,beesat_struktur1.vorne_innen_om) annotation(Line(
			points={{100,-116},{100,-121},{100,-257.7},{88.3,-257.7},{88.3,-252.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_oben_vorne.ro,beesat_struktur1.vorne_innen_or) annotation(Line(
			points={{105,-116},{105,-121},{105,-257.7},{91.3,-257.7},{91.3,-252.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ul_zn_innen,radiation_Platine_oben_vorne.lu) annotation(Line(
			points={{264.7,-26.3},{269.7,-26.3},{269.7,-58.7},{95,-58.7},{95,-91},{95,
			-96}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.um_zn_innen,radiation_Platine_oben_vorne.lm) annotation(Line(
			points={{268.7,-26.3},{273.7,-26.3},{273.7,-58.7},{100,-58.7},{100,-91},{100,
			-96}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ur_zn_innen,radiation_Platine_oben_vorne.lo) annotation(Line(
			points={{272.7,-26.3},{277.7,-26.3},{277.7,-58.7},{105,-58.7},{105,-91},{105,
			-96}},
			color={0,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_links.ro,beesat_struktur1.links_innen_ul) annotation(Line(
			points={{100,-315},{100,-310},{60.3,-310},{60.3,-230.7},{65.3,-230.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_links.rm,beesat_struktur1.links_innen_um) annotation(Line(
			points={{105,-315},{105,-310},{63.3,-310},{63.3,-230.7},{68.3,-230.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_links.ru,beesat_struktur1.links_innen_ur) annotation(Line(
			points={{110,-315},{110,-310},{66.3,-310},{66.3,-230.7},{71.3,-230.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_hinten.ro,beesat_struktur1.hinten_innen_ul) annotation(Line(
			points={{130,-315},{130,-310},{130,-183.3},{109.7,-183.3},{109.7,-188.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_hinten.rm,beesat_struktur1.hinten_innen_um) annotation(Line(
			points={{135,-315},{135,-310},{135,-183.3},{112.7,-183.3},{112.7,-188.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_hinten.ru,beesat_struktur1.hinten_innen_ur) annotation(Line(
			points={{140,-315},{140,-310},{140,-183.3},{115.7,-183.3},{115.7,-188.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_rechts.ro,beesat_struktur1.rechts_innen_ul) annotation(Line(
			points={{155,-315},{155,-310},{155,-220.7},{134.7,-220.7},{129.7,-220.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_rechts.rm,beesat_struktur1.rechts_innen_um) annotation(Line(
			points={{160,-315},{160,-310},{160,-220.7},{137.7,-220.7},{132.7,-220.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_rechts.ru,beesat_struktur1.rechts_innen_ur) annotation(Line(
			points={{165,-315},{165,-310},{165,-220.7},{140.7,-220.7},{135.7,-220.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_vorne.ro,beesat_struktur1.vorne_innen_ul) annotation(Line(
			points={{180,-315},{180,-310},{180,-260.7},{85.3,-260.7},{85.3,-255.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_vorne.rm,beesat_struktur1.vorne_innen_um) annotation(Line(
			points={{185,-315},{185,-310},{185,-260.7},{88.3,-260.7},{88.3,-255.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_vorne.ru,beesat_struktur1.vorne_innen_ur) annotation(Line(
			points={{190,-315},{190,-310},{190,-260.7},{91.3,-260.7},{91.3,-255.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_links.lo,beesat_platine_unten.ul_zp_aussen) annotation(Line(
			points={{100,-335},{100,-340},{100,-424.7},{239.3,-424.7},{244.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_links.lm,beesat_platine_unten.ml_zp_aussen) annotation(Line(
			points={{105,-335},{105,-340},{105,-420.7},{239.3,-420.7},{244.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_links.lu,beesat_platine_unten.ol_zp_aussen) annotation(Line(
			points={{110,-335},{110,-340},{110,-416.7},{239.3,-416.7},{244.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_hinten.lo,beesat_platine_unten.ol_zp_aussen) annotation(Line(
			points={{130,-335},{130,-340},{130,-416.7},{239.3,-416.7},{244.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_hinten.lm,beesat_platine_unten.om_zp_aussen) annotation(Line(
			points={{135,-335},{135,-340},{135,-416.7},{243.3,-416.7},{248.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_hinten.lu,beesat_platine_unten.or_zp_aussen) annotation(Line(
			points={{140,-335},{140,-340},{140,-416.7},{247.3,-416.7},{252.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_rechts.lo,beesat_platine_unten.or_zp_aussen) annotation(Line(
			points={{155,-335},{155,-340},{155,-416.7},{247.3,-416.7},{252.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_rechts.lm,beesat_platine_unten.mr_zp_aussen) annotation(Line(
			points={{160,-335},{160,-340},{160,-425.7},{252.3,-425.7},{252.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_rechts.lu,beesat_platine_unten.ur_zp_aussen) annotation(Line(
			points={{165,-335},{165,-340},{165,-429.7},{252.3,-429.7},{252.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_vorne.lo,beesat_platine_unten.ul_zp_aussen) annotation(Line(
			points={{180,-335},{180,-340},{180,-424.7},{239.3,-424.7},{244.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_vorne.lm,beesat_platine_unten.um_zp_aussen) annotation(Line(
			points={{185,-335},{185,-340},{185,-429.7},{248.3,-429.7},{248.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(radiation_Platine_unten_vorne.lu,beesat_platine_unten.ur_zp_aussen) annotation(Line(
			points={{190,-335},{190,-340},{190,-429.7},{252.3,-429.7},{252.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.hinten_aussen_ol,external_Radiation_hinten.thermal_connector_opt_prop_in1.lo) annotation(Line(
			points={{94.3,-185.3},{94.3,-180.3},{94.3,-170},{-10,-170},{-15,-170}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.hinten_aussen_om,external_Radiation_hinten.thermal_connector_opt_prop_in1.mo) annotation(Line(
			points={{97.3,-185.3},{97.3,-180.3},{97.3,-170},{-10,-170},{-15,-170}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.hinten_aussen_or,external_Radiation_hinten.thermal_connector_opt_prop_in1.ro) annotation(Line(
			points={{100.7,-185.3},{100.7,-180.3},{100.7,-170},{-10,-170},{-15,-170}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.hinten_aussen_ul,external_Radiation_hinten.thermal_connector_opt_prop_in1.lu) annotation(Line(
			points={{94.3,-188.3},{94.3,-183.3},{94.3,-170},{-10,-170},{-15,-170}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.hinten_aussen_um,external_Radiation_hinten.thermal_connector_opt_prop_in1.mu) annotation(Line(
			points={{97.3,-188.3},{97.3,-183.3},{97.3,-170},{-10,-170},{-15,-170}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.hinten_aussen_ur,external_Radiation_hinten.thermal_connector_opt_prop_in1.ru) annotation(Line(
			points={{100.7,-188.3},{100.7,-183.3},{100.7,-170},{-10,-170},{-15,-170}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.links_aussen_ol,external_Radiation_links.thermal_connector_opt_prop_in1.lo) annotation(Line(points={{65.3,-217.3},{60.3,-217.3},{-10,-217.3},{-10,-200},{-15,-200}}));
		connect(beesat_struktur1.links_aussen_om,external_Radiation_links.thermal_connector_opt_prop_in1.mo) annotation(Line(points={{68.3,-217.3},{63.3,-217.3},{-10,-217.3},{-10,-200},{-15,-200}}));
		connect(beesat_struktur1.links_aussen_or,external_Radiation_links.thermal_connector_opt_prop_in1.ro) annotation(Line(points={{71.3,-217.3},{66.3,-217.3},{-10,-217.3},{-10,-200},{-15,-200}}));
		connect(beesat_struktur1.links_aussen_ul,external_Radiation_links.thermal_connector_opt_prop_in1.lu) annotation(Line(points={{65.3,-220.7},{60.3,-220.7},{-10,-220.7},{-10,-200},{-15,-200}}));
		connect(beesat_struktur1.links_aussen_um,external_Radiation_links.thermal_connector_opt_prop_in1.mu) annotation(Line(points={{68.3,-220.7},{63.3,-220.7},{-10,-220.7},{-10,-200},{-15,-200}}));
		connect(beesat_struktur1.links_aussen_ur,external_Radiation_links.thermal_connector_opt_prop_in1.ru) annotation(Line(points={{71.3,-220.7},{66.3,-220.7},{-10,-220.7},{-10,-200},{-15,-200}}));
		connect(beesat_struktur1.rechts_aussen_ol,external_Radiation_rechts.thermal_connector_opt_prop_in1.lo) annotation(Line(points={{129.7,-227.7},{134.7,-227.7},{134.7,-237.7},{-10,-237.7},{-10,-230},{-15,
		-230}}));
		connect(beesat_struktur1.rechts_aussen_om,external_Radiation_rechts.thermal_connector_opt_prop_in1.mo) annotation(Line(points={{132.7,-227.7},{137.7,-227.7},{137.7,-237.7},{-10,-237.7},{-10,-230},{-15,
		-230}}));
		connect(beesat_struktur1.rechts_aussen_or,external_Radiation_rechts.thermal_connector_opt_prop_in1.ro) annotation(Line(points={{135.7,-227.7},{140.7,-227.7},{140.7,-237.7},{-10,-237.7},{-10,-230},{-15,
		-230}}));
		connect(beesat_struktur1.rechts_aussen_ul,external_Radiation_rechts.thermal_connector_opt_prop_in1.lu) annotation(Line(points={{129.7,-230.7},{134.7,-230.7},{134.7,-220.7},{-10,-220.7},{-10,-230},{-15,
		-230}}));
		connect(beesat_struktur1.rechts_aussen_um,external_Radiation_rechts.thermal_connector_opt_prop_in1.mu) annotation(Line(points={{132.7,-230.7},{137.7,-230.7},{137.7,-220.7},{-10,-220.7},{-10,-230},{-15,
		-230}}));
		connect(beesat_struktur1.rechts_aussen_ur,external_Radiation_rechts.thermal_connector_opt_prop_in1.ru) annotation(Line(points={{135.7,-230.7},{140.7,-230.7},{140.7,-220.7},{-10,-220.7},{-10,-230},{-15,
		-230}}));
		connect(beesat_struktur1.vorne_aussen_ol,external_Radiation_vorne.thermal_connector_opt_prop_in1.lo) annotation(Line(points={{100.7,-252.7},{100.7,-257.7},{100.7,-260},{-10,-260},{-15,-260}}));
		connect(beesat_struktur1.vorne_aussen_om,external_Radiation_vorne.thermal_connector_opt_prop_in1.mo) annotation(Line(points={{103.7,-252.7},{103.7,-257.7},{103.7,-260},{-10,-260},{-15,-260}}));
		connect(beesat_struktur1.vorne_aussen_or,external_Radiation_vorne.thermal_connector_opt_prop_in1.ro) annotation(Line(points={{106.7,-252.7},{106.7,-257.7},{106.7,-260},{-10,-260},{-15,-260}}));
		connect(beesat_struktur1.vorne_aussen_ul,external_Radiation_vorne.thermal_connector_opt_prop_in1.lu) annotation(Line(points={{100.7,-255.7},{100.7,-260.7},{45.3,-260.7},{45.3,-260},{-10,-260},{-15,
		-260}}));
		connect(beesat_struktur1.vorne_aussen_um,external_Radiation_vorne.thermal_connector_opt_prop_in1.mu) annotation(Line(points={{103.7,-255.7},{103.7,-260.7},{47,-260.7},{47,-260},{-10,-260},{-15,
		-260}}));
		connect(beesat_struktur1.vorne_aussen_ur,external_Radiation_vorne.thermal_connector_opt_prop_in1.ru) annotation(Line(points={{106.7,-255.7},{106.7,-260.7},{48.3,-260.7},{48.3,-260},{-10,-260},{-15,
		-260}}));
		
		
		connect(beesat_struktur1.Deckel_aussen_ol,external_Radiation_Deckel.thermal_connector_opt_prop_in1.lo) annotation(Line(
			points={{129.7,-185.3},{129.7,-180.3},{129.7,-140},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_om,external_Radiation_Deckel.thermal_connector_opt_prop_in1.mo) annotation(Line(
			points={{132.7,-185.3},{132.7,-180.3},{132.7,-140},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_or,external_Radiation_Deckel.thermal_connector_opt_prop_in1.ro) annotation(Line(
			points={{135.7,-185.3},{130.7,-185.3},{-10,-185.3},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_ml,external_Radiation_Deckel.thermal_connector_opt_prop_in1.lm) annotation(Line(
			points={{129.7,-188.3},{129.7,-183.3},{129.7,-140},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_mm,external_Radiation_Deckel.thermal_connector_opt_prop_in1.mm) annotation(Line(
			points={{132.7,-188.3},{127.7,-188.3},{-10,-188.3},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_mr,external_Radiation_Deckel.thermal_connector_opt_prop_in1.rm) annotation(Line(
			points={{135.7,-188.3},{140.7,-188.3},{140.7,-140},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_ul,external_Radiation_Deckel.thermal_connector_opt_prop_in1.lu) annotation(Line(
			points={{129.7,-191.3},{124.7,-191.3},{-10,-191.3},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_um,external_Radiation_Deckel.thermal_connector_opt_prop_in1.mu) annotation(Line(
			points={{132.7,-191.3},{137.7,-191.3},{137.7,-140},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Deckel_aussen_ur,external_Radiation_Deckel.thermal_connector_opt_prop_in1.ru) annotation(Line(
			points={{135.7,-191.3},{140.7,-191.3},{140.7,-140},{-10,-140},{-15,-140}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_struktur1.Boden_aussen_ol,external_Radiation_Boden.thermal_connector_opt_prop_in1.lo) annotation(Line(points={{65.3,-249.7},{60.3,-249.7},{-10,-249.7},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_om,external_Radiation_Boden.thermal_connector_opt_prop_in1.mo) annotation(Line(points={{68.3,-249.7},{63.3,-249.7},{-10,-249.7},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_or,external_Radiation_Boden.thermal_connector_opt_prop_in1.ro) annotation(Line(points={{71.3,-249.7},{66.3,-249.7},{-10,-249.7},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_ml,external_Radiation_Boden.thermal_connector_opt_prop_in1.lm) annotation(Line(points={{65.3,-252.7},{60.3,-252.7},{-10,-252.7},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_mm,external_Radiation_Boden.thermal_connector_opt_prop_in1.mm) annotation(Line(points={{68.3,-252.7},{63.3,-252.7},{-10,-252.7},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_mr,external_Radiation_Boden.thermal_connector_opt_prop_in1.rm) annotation(Line(points={{71.3,-252.7},{71.3,-257.7},{71.3,-290},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_ul,external_Radiation_Boden.thermal_connector_opt_prop_in1.lu) annotation(Line(points={{65.3,-255.7},{60.3,-255.7},{-10,-255.7},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_um,external_Radiation_Boden.thermal_connector_opt_prop_in1.mu) annotation(Line(points={{68.3,-255.7},{68.3,-260.7},{68.3,-290},{-10,-290},{-15,-290}}));
		connect(beesat_struktur1.Boden_aussen_ur,external_Radiation_Boden.thermal_connector_opt_prop_in1.ru) annotation(Line(points={{71.3,-255.7},{71.3,-260.7},{71.3,-290},{-10,-290},{-15,-290}}));
		connect(external_Radiation_Deckel.u,yp) annotation(Line(
			points={{-35,-140},{-40,-140},{-70,-140},{-75,-140}},
			color={0,0,127},
			thickness=0.0625));
		connect(external_Radiation_hinten.u,zn) annotation(Line(
			points={{-35,-170},{-40,-170},{-70,-170},{-75,-170}},
			color={0,0,127},
			thickness=0.0625));
		connect(external_Radiation_links.u,xn) annotation(Line(
			points={{-35,-200},{-40,-200},{-70,-200},{-75,-200}},
			color={0,0,127},
			thickness=0.0625));
		connect(external_Radiation_rechts.u,xp) annotation(Line(
			points={{-35,-230},{-40,-230},{-70,-230},{-75,-230}},
			color={0,0,127},
			thickness=0.0625));
		connect(external_Radiation_vorne.u,zp) annotation(Line(
			points={{-35,-260},{-40,-260},{-70,-260},{-75,-260}},
			color={0,0,127},
			thickness=0.0625));
		connect(external_Radiation_Boden.u,yn) annotation(Line(
			points={{-35,-290},{-40,-290},{-70,-290},{-75,-290}},
			color={0,0,127},
			thickness=0.0625));
		
		connect(beesat_platine_oben.heatpower_mm,Platine_yp) annotation(Line(
			points={{252.7,-36.3},{257.7,-36.3},{480,-36.3},{480,-40},{485,-40}},
			color={191,0,0},
			thickness=0.0625));
		connect(beesat_batterie1.heatpower_mm,Bat) annotation(Line(
			points={{221.7,-219.3},{226.7,-219.3},{480,-219.3},{480,-220},{485,-220}},
			color={191,0,0},
			thickness=0.0625));
		
		connect(beesat_platine_unten.heatpower_mm,Platine_yn) annotation(Line(
			points={{266.7,-404.3},{271.7,-404.3},{485,-404.3},{485,-405},{490,-405}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
		beesat_struktur1(
			vorne(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			rechts(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			hinten(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			links(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_Deckel(
				ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ro(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ml(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mm(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mr(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_um(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_om(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_or(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ml(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_mr(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_or(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_Boden(
				ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ro(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ml(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mm(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mr(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_um(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_om(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				vierkant_Deckel_or(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ml(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_mr(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_or(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				steg_ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_Solarplatine_rechts(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_Solarplatine_links(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_Solarplatine_vorne(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_Solarplatine_hinten(
				ul_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ol_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				or_4x5(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om_2x4(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_solarplatine_Boden(
				ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ro(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ml(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mm(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mr(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2)))),
			beesat_solarplatine_Deckel2(
				ol(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				om(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ro(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ml(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mm(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				mr(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ul(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				um(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))),
				ur(
					combiTable1Ds1_yp(y(flags=2)),
					combiTable1Ds1_xp(y(flags=2)),
					combiTable1Ds1_zn(y(flags=2)),
					combiTable1Ds1_xn(y(flags=2)),
					combiTable1Ds1_zp(y(flags=2)),
					combiTable1Ds1_yn(y(flags=2))))),
		beesat_platine_unten(
			ol(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			om(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ro(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ml(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			mm(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			mr(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ul(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			um(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ur(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2)))),
		beesat_batterie1(
			ol(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			om(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ro(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ml(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			mm(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			mr(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ul(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			um(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ur(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2)))),
		Bolzen_Platine_oben_Batterie_or(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_oben_Batterie_ol(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_oben_Batterie_ur(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_oben_Batterie_ul(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_unten_Batterie_or(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_unten_Batterie_ol(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_unten_Batterie_ur(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_unten_Batterie_ul(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Boden_or(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Boden_ol(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Boden_ur(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Boden_ul(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Deckel_or(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Deckel_ol(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Deckel_ur(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		Bolzen_Platine_Deckel_ul(
			combiTable1Ds1_yp(y(flags=2)),
			combiTable1Ds1_xp(y(flags=2)),
			combiTable1Ds1_zn(y(flags=2)),
			combiTable1Ds1_xn(y(flags=2)),
			combiTable1Ds1_zp(y(flags=2)),
			combiTable1Ds1_yn(y(flags=2))),
		beesat_platine_oben(
			ol(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			om(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ro(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ml(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			mm(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			mr(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ul(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			um(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2))),
			ur(
				combiTable1Ds1_yp(y(flags=2)),
				combiTable1Ds1_xp(y(flags=2)),
				combiTable1Ds1_zn(y(flags=2)),
				combiTable1Ds1_xn(y(flags=2)),
				combiTable1Ds1_zp(y(flags=2)),
				combiTable1Ds1_yn(y(flags=2)))),
		Icon(
			coordinateSystem(extent={{-301.7,-301.7},{301.7,301.7}}),
			graphics={
							Rectangle(
								lineColor={0,0,0},
								fillColor={0,85,0},
								fillPattern=FillPattern.Solid,
								lineThickness=4.5,
								extent={{-300,146.7},{146.7,-306.7}}),
							Polygon(
								points={{-303.3,146.7},{-143.3,303.3},{303.3,300},{146.7,146.7},{146.7,146.7}},
								lineColor={0,0,0},
								fillColor={0,85,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5),
							Polygon(
								points={{150,-306.7},{303.3,-153.3},{300,300},{143.3,150}},
								lineColor={0,0,0},
								fillColor={0,85,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5),
							Polygon(
								points={{-270,-120},{-270,-230},{-230,-273.3},{80,-276.7},{123.3,-236.7},{123.3,
								-190},{123.3,-120},{76.7,-120}},
								lineColor={0,0,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5),
							Polygon(
								points={{-239.6,75.8},{-239.6,-34.2},{-199.6,-77.5},{110.4,-80.90000000000001},{153.7,-40.9},{153.7,
								5.8},{153.7,75.8},{107.1,75.8}},
								lineColor={0,0,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5,
								origin={-120.5,23.7},
								rotation=-180),
							Polygon(
								points={{173.3,-90},{173.3,-216.7},{190,-236.7},{283.3,-146.7},{290,-116.7},{290,
								30}},
								lineColor={0,0,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5),
							Polygon(
								points={{170,-23.3},{166.7,90},{180,143.3},{270,230},{290,223.3},{286.7,
								93.3}},
								lineColor={0,0,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5),
							Polygon(
								points={{-193.3,223.3},{-240,176.7},{-230,156.7},{106.7,156.7},{136.7,170},{193.3,
								223.3},{190,223.3}},
								lineColor={0,0,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5),
							Polygon(
								points={{-176.7,240},{206.7,240},{256.7,280},{233.3,293.3},{-110,293.3},{-136.7,
								283.3}},
								lineColor={0,0,0},
								fillPattern=FillPattern.Solid,
								lineThickness=3.5)}),
		experiment(
			StopTime=1,
			StartTime=0));
end beesat_thermal;
