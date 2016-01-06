// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model beesat_thermal "beesat_thermal.mo"
	beesat_struktur beesat_struktur1 annotation(Placement(transformation(extent={{65,-256},{136,-185}})));
	beesat_platine beesat_platine_oben annotation(Placement(transformation(extent={{245,-66},{306,-5}})));
	beesat_platine beesat_platine_unten annotation(Placement(transformation(extent={{240,-436},{301,-375}})));
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
	equation
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
		connect(beesat_platine_oben.ol_zp_aussen,Bolzen_patine_oben_ol.surface_properties1) annotation(Line(
			points={{254.3,-46.7},{249.3,-46.7},{225,-46.7},{225,-75},{225,-80}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.or_zp_aussen,Bolzen_patine_oben_or.surface_properties1) annotation(Line(
			points={{262.3,-46.7},{257.3,-46.7},{255,-46.7},{255,-75},{255,-80}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ul_zp_aussen,Bolzen_patine_oben_ul.surface_properties1) annotation(Line(
			points={{254.3,-54.7},{249.3,-54.7},{249.3,-77.3},{280,-77.3},{280,-100},{280,
			-105}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ur_zp_aussen,Bolzen_patine_oben_ur.surface_properties1) annotation(Line(
			points={{262.3,-54.7},{262.3,-59.7},{262.3,-100},{315,-100},{315,-105}},
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
			points={{283.7,-386.3},{283.7,-381.3},{283.7,-340},{235,-340},{235,-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.or_zn_innen,Bolzen_patine_unten_or.surface_properties2) annotation(Line(
			points={{291.7,-386.3},{296.7,-386.3},{296.7,-363.3},{265,-363.3},{265,-340},{265,
			-335}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ul_zn_innen,Bolzen_patine_unten_ul.surface_properties2) annotation(Line(
			points={{283.7,-394.3},{288.7,-394.3},{290,-394.3},{290,-365},{290,-360}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ur_zn_innen,Bolzen_patine_unten_ur.surface_properties2) annotation(Line(
			points={{291.7,-394.3},{296.7,-394.3},{325,-394.3},{325,-365},{325,-360}},
			color={0,0,0},
			thickness=0.0625));
		
		
		
		
		
		
		
		
		connect(beesat_platine_unten.ol_zp_aussen,Bolzen_platine_unten_platine_ol.surface_properties1) annotation(Line(
			points={{249.3,-416.7},{244.3,-416.7},{220,-416.7},{220,-445},{220,-450}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.or_zp_aussen,Bolzen_platine_unten_platine_or.surface_properties1) annotation(Line(
			points={{257.3,-416.7},{252.3,-416.7},{250,-416.7},{250,-445},{250,-450}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ul_zp_aussen,Bolzen_platine_unten_platine_ul.surface_properties1) annotation(Line(
			points={{249.3,-424.7},{244.3,-424.7},{244.3,-447.3},{280,-447.3},{280,-470},{280,
			-475}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ur_zp_aussen,Bolzen_platine_unten_platine_ur.surface_properties1) annotation(Line(
			points={{257.3,-424.7},{257.3,-429.7},{257.3,-470},{310,-470},{310,-475}},
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
		connect(beesat_platine_oben.ol_zn_innen,Bolzen_platine_oben_Platine_ol.surface_properties2) annotation(Line(
			points={{288.7,-16.3},{288.7,-11.3},{288.7,25},{250,25},{250,30}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.or_zn_innen,Bolzen_platine_oben_Platine_or.surface_properties2) annotation(Line(
			points={{296.7,-16.3},{301.7,-16.3},{301.7,4.3},{280,4.3},{280,25},{280,
			30}},
			color={0,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Platine_ul.surface_properties2,beesat_platine_oben.ul_zn_innen) annotation(Line(
			points={{310,5},{310,0},{310,-24.3},{293.7,-24.3},{288.7,-24.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(Bolzen_platine_oben_Platine_ur.surface_properties2,beesat_platine_oben.ur_zn_innen) annotation(Line(
			points={{340,5},{340,0},{340,-24.3},{301.7,-24.3},{296.7,-24.3}},
			color={255,0,0},
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
		connect(thermal_radiation_Batterie_Platine_oben_ol.surface_properties2,beesat_platine_oben.ol_zp_aussen) annotation(Line(
			points={{355,-75},{355,-70},{249.3,-70},{249.3,-46.7},{254.3,-46.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_om.surface_properties2,beesat_platine_oben.om_zp_aussen) annotation(Line(
			points={{380,-75},{380,-70},{253.3,-70},{253.3,-46.7},{258.3,-46.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_or.surface_properties2,beesat_platine_oben.or_zp_aussen) annotation(Line(
			points={{405,-75},{405,-70},{257.3,-70},{257.3,-46.7},{262.3,-46.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ml.surface_properties2,beesat_platine_oben.ml_zp_aussen) annotation(Line(
			points={{360,-100},{360,-95},{249.3,-95},{249.3,-50.7},{254.3,-50.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_mm.surface_properties2,beesat_platine_oben.mm_zp_aussen) annotation(Line(
			points={{385,-100},{385,-95},{253.3,-95},{253.3,-50.7},{258.3,-50.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_mr.surface_properties2,beesat_platine_oben.mr_zp_aussen) annotation(Line(
			points={{410,-100},{410,-95},{410,-55.7},{262.3,-55.7},{262.3,-50.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ul.surface_properties2,beesat_platine_oben.ul_zp_aussen) annotation(Line(
			points={{365,-125},{365,-120},{249.3,-120},{249.3,-54.7},{254.3,-54.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_um.surface_properties2,beesat_platine_oben.um_zp_aussen) annotation(Line(
			points={{390,-125},{390,-120},{390,-59.7},{258.3,-59.7},{258.3,-54.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Batterie_Platine_oben_ur.surface_properties2,beesat_platine_oben.ur_zp_aussen) annotation(Line(
			points={{415,-125},{415,-120},{415,-59.7},{262.3,-59.7},{262.3,-54.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.or_zp_aussen,thermal_radiation_Batterie_Platine_unten_or.surface_properties1) annotation(Line(
			points={{257.3,-416.7},{252.3,-416.7},{252.3,-363.3},{415,-363.3},{415,-310},{415,
			-305}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.om_zp_aussen,thermal_radiation_Batterie_Platine_unten_om.surface_properties1) annotation(Line(
			points={{253.3,-416.7},{248.3,-416.7},{248.3,-363.3},{390,-363.3},{390,-310},{390,
			-305}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ol_zp_aussen,thermal_radiation_Batterie_Platine_unten_ol.surface_properties1) annotation(Line(
			points={{249.3,-416.7},{244.3,-416.7},{244.3,-363.3},{365,-363.3},{365,-310},{365,
			-305}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.mr_zp_aussen,thermal_radiation_Batterie_Platine_unten_mr.surface_properties1) annotation(Line(
			points={{257.3,-420.7},{257.3,-425.7},{420,-425.7},{420,-335},{420,-330}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.mm_zp_aussen,thermal_radiation_Batterie_Platine_unten_mm.surface_properties1) annotation(Line(
			points={{253.3,-420.7},{248.3,-420.7},{248.3,-378},{395,-378},{395,-335},{395,
			-330}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ml_zp_aussen,thermal_radiation_Batterie_Platine_unten_ml.surface_properties1) annotation(Line(
			points={{249.3,-420.7},{244.3,-420.7},{244.3,-378},{370,-378},{370,-335},{370,
			-330}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ur_zp_aussen,thermal_radiation_Batterie_Platine_unten_ur.surface_properties1) annotation(Line(
			points={{257.3,-424.7},{257.3,-429.7},{425,-429.7},{425,-360},{425,-355}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.um_zp_aussen,thermal_radiation_Batterie_Platine_unten_um.surface_properties1) annotation(Line(
			points={{253.3,-424.7},{253.3,-429.7},{400,-429.7},{400,-360},{400,-355}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_unten.ul_zp_aussen,thermal_radiation_Batterie_Platine_unten_ul.surface_properties1) annotation(Line(
			points={{249.3,-424.7},{244.3,-424.7},{244.3,-392.3},{375,-392.3},{375,-360},{375,
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
		connect(beesat_platine_oben.ur_zn_innen,thermal_radiation_Platine_oben_Deckel_ur.surface_properties1) annotation(Line(
			points={{296.7,-24.3},{301.7,-24.3},{445,-24.3},{445,10},{445,15}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.um_zn_innen,thermal_radiation_Platine_oben_Deckel_um.surface_properties1) annotation(Line(
			points={{292.7,-24.3},{297.7,-24.3},{420,-24.3},{420,10},{420,15}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ul_zn_innen,thermal_radiation_Platine_oben_Deckel_ul.surface_properties1) annotation(Line(
			points={{288.7,-24.3},{293.7,-24.3},{395,-24.3},{395,10},{395,15}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ml_zn_innen,thermal_radiation_Platine_oben_Deckel_ml.surface_properties1) annotation(Line(
			points={{288.7,-20.3},{288.7,-15.3},{288.7,35},{390,35},{390,40}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.mm_zn_innen,thermal_radiation_Platine_oben_Deckel_mm.surface_properties1) annotation(Line(
			points={{292.7,-20.3},{297.7,-20.3},{415,-20.3},{415,35},{415,40}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.mr_zn_innen,thermal_radiation_Platine_oben_Deckel_mr.surface_properties1) annotation(Line(
			points={{296.7,-20.3},{301.7,-20.3},{440,-20.3},{440,35},{440,40}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.ol_zn_innen,thermal_radiation_Platine_oben_Deckel_ol.surface_properties1) annotation(Line(
			points={{288.7,-16.3},{288.7,-11.3},{288.7,60},{385,60},{385,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.om_zn_innen,thermal_radiation_Platine_oben_Deckel_om.surface_properties1) annotation(Line(
			points={{292.7,-16.3},{292.7,-11.3},{292.7,60},{410,60},{410,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(beesat_platine_oben.or_zn_innen,thermal_radiation_Platine_oben_Deckel_or.surface_properties1) annotation(Line(
			points={{296.7,-16.3},{301.7,-16.3},{435,-16.3},{435,60},{435,65}},
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
			points={{370,-490},{370,-485},{244.3,-485},{244.3,-416.7},{249.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_om.surface_properties2,beesat_platine_unten.om_zp_aussen) annotation(Line(
			points={{395,-495},{395,-490},{248.3,-490},{248.3,-416.7},{253.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_or.surface_properties2,beesat_platine_unten.or_zp_aussen) annotation(Line(
			points={{420,-500},{420,-495},{252.3,-495},{252.3,-416.7},{257.3,-416.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_ml.surface_properties2,beesat_platine_unten.ml_zp_aussen) annotation(Line(
			points={{375,-520},{375,-515},{244.3,-515},{244.3,-420.7},{249.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_mm.surface_properties2,beesat_platine_unten.mm_zp_aussen) annotation(Line(
			points={{400,-525},{400,-520},{248.3,-520},{248.3,-420.7},{253.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_mr.surface_properties2,beesat_platine_unten.mr_zp_aussen) annotation(Line(
			points={{425,-530},{425,-525},{425,-425.7},{257.3,-425.7},{257.3,-420.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_ul.surface_properties2,beesat_platine_unten.ul_zp_aussen) annotation(Line(
			points={{380,-545},{380,-540},{244.3,-540},{244.3,-424.7},{249.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_um.surface_properties2,beesat_platine_unten.um_zp_aussen) annotation(Line(
			points={{405,-550},{405,-545},{405,-429.7},{253.3,-429.7},{253.3,-424.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_radiation_Platine_unten_Boden_ur.surface_properties2,beesat_platine_unten.ur_zp_aussen) annotation(Line(
			points={{430,-555},{430,-550},{430,-429.7},{257.3,-429.7},{257.3,-424.7}},
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
		experiment(
			StopTime=1,
			StartTime=0));
end beesat_thermal;
