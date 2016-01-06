// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model beesat_Panel "beesat_Panel.mo"
	iboss.iboss_thermal.components.surface_properties_out ol_yp annotation(Placement(
		transformation(extent={{20,80},{40,100}}),
		iconTransformation(extent={{-161.7,191.7},{-141.7,211.7}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ul_4x5(
		x=0.04,
		y=0.04,
		z=0.0015,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{20,-40},{40,-20}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ur_4x5(
		x=0.04,
		y=0.04,
		z=0.0015,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{200,-40},{220,-20}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ol_4x5(
		x=0.04,
		y=0.04,
		z=0.0015,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{20,50},{40,70}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop or_4x5(
		x=0.04,
		y=0.04,
		z=0.0015,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{200,50},{220,70}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop um_2x4(
		x=0.02,
		y=0.03,
		z=0.001,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{105,-25},{125,-5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop om_2x4(
		x=0.02,
		y=0.03,
		z=0.001,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{105,40},{125,60}})));
	iboss.iboss_thermal.components.thermal_conductor_A thermal_conductor_ulol(
		set_surface_area=true,
		TIM=false) annotation(Placement(transformation(
		origin={30,15},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.thermal_conductor_A thermal_conductor_ulum(
		set_surface_area=true,
		TIM=false) annotation(Placement(transformation(
		origin={70,-25},
		extent={{-10,-10},{10,10}})));
	iboss.iboss_thermal.components.thermal_conductor_A thermal_conductor_urum(
		set_surface_area=true,
		TIM=false) annotation(Placement(transformation(
		origin={160,-25},
		extent={{-10,-10},{10,10}})));
	iboss.iboss_thermal.components.thermal_conductor_A thermal_conductor_olom(
		set_surface_area=true,
		TIM=false) annotation(Placement(transformation(
		origin={70,55},
		extent={{-10,-10},{10,10}})));
	iboss.iboss_thermal.components.thermal_conductor_A thermal_conductor_orom(
		set_surface_area=true,
		TIM=false) annotation(Placement(transformation(
		origin={160,55},
		extent={{-10,-10},{10,10}})));
	iboss.iboss_thermal.components.thermal_conductor_A thermal_conductor_orol(
		set_surface_area=true,
		TIM=false) annotation(Placement(transformation(
		origin={210,15},
		extent={{-10,-10},{10,10}},
		rotation=90)));
	iboss.iboss_thermal.components.surface_properties_out om_yp annotation(Placement(
		transformation(extent={{105,80},{125,100}}),
		iconTransformation(extent={{-11.7,191.7},{8.300000000000001,211.7}})));
	iboss.iboss_thermal.components.surface_properties_out or_yp annotation(Placement(
		transformation(extent={{200,80},{220,100}}),
		iconTransformation(extent={{138.3,191.7},{158.3,211.7}})));
	iboss.iboss_thermal.components.surface_properties_out ol_xn annotation(Placement(
		transformation(extent={{-20,50},{0,70}}),
		iconTransformation(extent={{-211.7,91.7},{-191.7,111.7}})));
	iboss.iboss_thermal.components.surface_properties_out ul_xn annotation(Placement(
		transformation(extent={{-20,-40},{0,-20}}),
		iconTransformation(extent={{-211.7,-108.3},{-191.7,-88.3}})));
	iboss.iboss_thermal.components.surface_properties_out ul_yn annotation(Placement(
		transformation(extent={{20,-70},{40,-50}}),
		iconTransformation(extent={{-161.7,-208.3},{-141.7,-188.3}})));
	iboss.iboss_thermal.components.surface_properties_out um_yn annotation(Placement(
		transformation(extent={{105,-70},{125,-50}}),
		iconTransformation(extent={{-11.7,-208.3},{8.300000000000001,-188.3}})));
	iboss.iboss_thermal.components.surface_properties_out ur_yn annotation(Placement(
		transformation(extent={{200,-70},{220,-50}}),
		iconTransformation(extent={{138.3,-208.3},{158.3,-188.3}})));
	iboss.iboss_thermal.components.surface_properties_out ol_zp annotation(Placement(
		transformation(extent={{-120,-120},{-100,-100}}),
		iconTransformation(extent={{-140,-120},{-120,-100}})));
	iboss.iboss_thermal.components.surface_properties_out om_zp annotation(Placement(
		transformation(extent={{-95,-120},{-75,-100}}),
		iconTransformation(extent={{-110,-120},{-90,-100}})));
	iboss.iboss_thermal.components.surface_properties_out or_zp annotation(Placement(
		transformation(extent={{-70,-120},{-50,-100}}),
		iconTransformation(extent={{-80,-120},{-60,-100}})));
	iboss.iboss_thermal.components.surface_properties_out ul_zp annotation(Placement(
		transformation(extent={{-115,-145},{-95,-125}}),
		iconTransformation(extent={{-140,-150},{-120,-130}})));
	iboss.iboss_thermal.components.surface_properties_out um_zp annotation(Placement(
		transformation(extent={{-90,-145},{-70,-125}}),
		iconTransformation(extent={{-110,-150},{-90,-130}})));
	iboss.iboss_thermal.components.surface_properties_out ur_zp annotation(Placement(
		transformation(extent={{-65,-145},{-45,-125}}),
		iconTransformation(extent={{-80,-150},{-60,-130}})));
	iboss.iboss_thermal.components.surface_properties_out or_xp annotation(Placement(
		transformation(extent={{250,50},{270,70}}),
		iconTransformation(extent={{188.3,91.7},{208.3,111.7}})));
	iboss.iboss_thermal.components.surface_properties_out ur_xp annotation(Placement(
		transformation(extent={{250,-40},{270,-20}}),
		iconTransformation(extent={{188.3,-108.3},{208.3,-88.3}})));
	iboss.iboss_thermal.components.surface_properties_out ol_zn annotation(Placement(
		transformation(extent={{310,80},{330,100}}),
		iconTransformation(extent={{80,150},{60,130}})));
	iboss.iboss_thermal.components.surface_properties_out om_zn annotation(Placement(
		transformation(extent={{340,80},{360,100}}),
		iconTransformation(extent={{110,150},{90,130}})));
	iboss.iboss_thermal.components.surface_properties_out or_zn annotation(Placement(
		transformation(extent={{370,80},{390,100}}),
		iconTransformation(extent={{140,150},{120,130}})));
	iboss.iboss_thermal.components.surface_properties_out ul_zn annotation(Placement(
		transformation(extent={{315,55},{335,75}}),
		iconTransformation(extent={{80,120},{60,100}})));
	iboss.iboss_thermal.components.surface_properties_out um_zn annotation(Placement(
		transformation(extent={{345,55},{365,75}}),
		iconTransformation(extent={{110,120},{90,100}})));
	iboss.iboss_thermal.components.surface_properties_out ur_zn annotation(Placement(
		transformation(extent={{375,55},{395,75}}),
		iconTransformation(extent={{140,120},{120,100}})));
	equation
		connect(thermal_conductor_ulol.surface_properties1,ul_4x5.yp) annotation(Line(
			points={{30,5},{30,0},{30,-17.3},{30,-22.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_ulol.surface_properties2,ol_4x5.yn) annotation(Line(
			points={{30,25},{30,30},{30,47.3},{30,52.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_ulum.surface_properties2,um_2x4.xn) annotation(Line(
			points={{80,-25},{85,-25},{100,-25},{100,-15},{105,-15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_ulum.surface_properties1,ul_4x5.xp) annotation(Line(
			points={{60,-25},{55,-25},{45,-25},{45,-30},{40,-30}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_urum.surface_properties1,um_2x4.xp) annotation(Line(
			points={{150,-25},{145,-25},{130,-25},{130,-15},{125,-15}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_urum.surface_properties2,ur_4x5.xn) annotation(Line(
			points={{170,-25},{175,-25},{195,-25},{195,-30},{200,-30}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_olom.surface_properties2,om_2x4.xn) annotation(Line(
			points={{80,55},{85,55},{100,55},{100,50},{105,50}},
			color={255,0,0},
			thickness=0.0625));
		connect(ol_4x5.xp,thermal_conductor_olom.surface_properties1) annotation(Line(
			points={{40,60},{45,60},{55,60},{55,55},{60,55}},
			color={0,0,0},
			thickness=0.0625));
		connect(thermal_conductor_orom.surface_properties2,or_4x5.xn) annotation(Line(
			points={{170,55},{175,55},{195,55},{195,60},{200,60}},
			color={255,0,0},
			thickness=0.0625));
		connect(thermal_conductor_orom.surface_properties1,om_2x4.xp) annotation(Line(
			points={{150,55},{145,55},{130,55},{130,50},{125,50}},
			color={255,0,0},
			thickness=0.0625));
		connect(ur_4x5.yp,thermal_conductor_orol.surface_properties1) annotation(Line(
			points={{210,-22.3},{210,-17.3},{210,0},{210,5}},
			color={0,0,0},
			thickness=0.0625));
		connect(thermal_conductor_orol.surface_properties2,or_4x5.yn) annotation(Line(
			points={{210,25},{210,30},{210,47.3},{210,52.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(ol_4x5.yp,ol_yp) annotation(Line(
			points={{30,67.7},{30,72.7},{35,72.7},{35,90},{30,90}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol_4x5.xn,ol_xn) annotation(Line(
			points={{20,60},{15,60},{-5,60},{-10,60}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul_4x5.xn,ul_xn) annotation(Line(
			points={{20,-30},{15,-30},{-5,-30},{-10,-30}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul_4x5.yn,ul_yn) annotation(Line(
			points={{30,-37.7},{30,-42.7},{35,-42.7},{35,-60},{30,-60}},
			color={0,0,0},
			thickness=0.0625));
		connect(um_2x4.yn,um_yn) annotation(Line(
			points={{115,-22.7},{115,-27.7},{120,-27.7},{120,-60},{115,-60}},
			color={0,0,0},
			thickness=0.0625));
		connect(om_2x4.yp,om_yp) annotation(Line(
			points={{115,57.7},{115,62.7},{120,62.7},{120,90},{115,90}},
			color={0,0,0},
			thickness=0.0625));
		connect(or_4x5.yp,or_yp) annotation(Line(
			points={{210,67.7},{210,72.7},{215,72.7},{215,90},{210,90}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur_4x5.yn,ur_yn) annotation(Line(
			points={{210,-37.7},{210,-42.7},{215,-42.7},{215,-60},{210,-60}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur_4x5.xp,ur_xp) annotation(Line(
			points={{220,-30},{225,-30},{255,-30},{260,-30}},
			color={0,0,0},
			thickness=0.0625));
		connect(or_4x5.xp,or_xp) annotation(Line(
			points={{220,60},{225,60},{255,60},{260,60}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur_4x5.zn,ur_zn) annotation(Line(
			points={{215,-25},{220,-25},{380,-25},{380,65},{385,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(um_2x4.zn,um_zn) annotation(Line(
			points={{120,-10},{125,-10},{350,-10},{350,65},{355,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul_4x5.zn,ul_zn) annotation(Line(
			points={{35,-25},{40,-25},{320,-25},{320,65},{325,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol_4x5.zn,ol_zn) annotation(Line(
			points={{35,65},{40,65},{315,65},{315,90},{320,90}},
			color={0,0,0},
			thickness=0.0625));
		connect(om_2x4.zn,om_zn) annotation(Line(
			points={{120,55},{125,55},{345,55},{345,90},{350,90}},
			color={0,0,0},
			thickness=0.0625));
		connect(or_4x5.zn,or_zn) annotation(Line(
			points={{215,65},{220,65},{375,65},{375,90},{380,90}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul_4x5.zp,ul_zp) annotation(Line(
			points={{25,-35},{20,-35},{-100,-35},{-100,-135},{-105,-135}},
			color={0,0,0},
			thickness=0.0625));
		connect(um_2x4.zp,um_zp) annotation(Line(
			points={{110,-20},{105,-20},{-75,-20},{-75,-135},{-80,-135}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur_4x5.zp,ur_zp) annotation(Line(
			points={{205,-35},{200,-35},{-50,-35},{-50,-135},{-55,-135}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol_4x5.zp,ol_zp) annotation(Line(
			points={{25,55},{20,55},{-105,55},{-105,-110},{-110,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(om_2x4.zp,om_zp) annotation(Line(
			points={{110,45},{105,45},{-80,45},{-80,-110},{-85,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(or_4x5.zp,or_zp) annotation(Line(
			points={{205,55},{200,55},{-55,55},{-55,-110},{-60,-110}},
			color={0,0,0},
			thickness=0.0625));
	annotation(
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
			combiTable1Ds1_yn(y(flags=2))),
		Icon(
			coordinateSystem(extent={{-201.7,-201.7},{201.7,201.7}}),
			graphics={
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-200,198},{-149.6,-198.6}}),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{146.7,200},{200,-200}}),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-92,174.3},{-45.3,-182.4}}),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{46.3,176.6},{93,-180.1}}),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-23.4,178.3},{23.3,-178.4}},
								origin={0.4,171.7},
								rotation=-90),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-23.4,178.3},{23.3,-178.4}},
								origin={-1.3,-175.5},
								rotation=-90),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-7.1,36.5},{23,-47.2}},
								origin={5.9,71.3},
								rotation=-90),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-7.1,36.5},{23,-47.2}},
								origin={5.6,-64.40000000000001},
								rotation=-90),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-27.8,37.3},{23,-47.2}},
								origin={119.4,5.5},
								rotation=-90),
							Rectangle(
								lineColor={192,192,192},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-27.8,37.3},{23,-47.2}},
								origin={-100.5,-1.5},
								rotation=-90),
							Rectangle(
								lineColor={0,0,0},
								fillColor={255,255,255},
								extent={{-63.3,196.7},{-200,0}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={255,255,255},
								extent={{-63.4,-1.2},{-200.1,-197.9}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={255,255,255},
								extent={{198.9,197.4},{62.2,0.7}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={255,255,255},
								extent={{200.5,-1.1},{63.8,-197.8}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={255,255,255},
								extent={{62.7,196.7},{-63.3,56.7}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={255,255,255},
								extent={{62.9,-58.3},{-63.1,-198.3}}),
							Text(
								textString="ol",
								lineColor={0,0,0},
								extent={{-176.4,126.5},{-73.09999999999999,56.5}}),
							Text(
								textString="om",
								lineColor={0,0,0},
								extent={{-56.3,156.2},{47,86.2}}),
							Text(
								textString="or",
								lineColor={0,0,0},
								extent={{83.7,96.09999999999999},{187,26.1}}),
							Text(
								textString="ul",
								lineColor={0,0,0},
								extent={{-172.9,-23.5},{-69.59999999999999,-93.5}}),
							Text(
								textString="um",
								lineColor={0,0,0},
								extent={{-52.6,-96.8},{50.7,-166.8}}),
							Text(
								textString="ur",
								lineColor={0,0,0},
								extent={{77.09999999999999,-60.3},{180.4,-130.3}})}),
		experiment(
			StopTime=1,
			StartTime=0));
end beesat_Panel;
