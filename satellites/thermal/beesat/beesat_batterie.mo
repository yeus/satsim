// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model beesat_batterie "beesat_batterie.mo"
	iboss.iboss_thermal.components.surface_properties_out ol_zp_aussen annotation(Placement(
		transformation(extent={{-95,-165},{-75,-145}}),
		iconTransformation(extent={{-200,-100},{-220,-120}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ol(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.02,
		y=0.02,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{65,-15},{85,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop om(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.03,
		y=0.02,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{140,-15},{160,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ro(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.02,
		y=0.02,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{215,-15},{235,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ml(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.02,
		y=0.03,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{65,-65},{85,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop mm(
		dissipation_power_on=true,
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.03,
		y=0.03,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{140,-65},{160,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop mr(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.02,
		y=0.03,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{215,-65},{235,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ul(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.02,
		y=0.02,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{65,-120},{85,-100}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop um(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.03,
		y=0.02,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{140,-120},{160,-100}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ur(
		material=iboss.MaterialDatabase.Kunststoffe_PE_niedrige_mittlere_Dichte(),
		x=0.02,
		y=0.02,
		z=0.009,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Andere_Beschichtungen_NS_43_E()) annotation(Placement(transformation(extent={{215,-120},{235,-100}})));
	iboss.iboss_thermal.components.thermal_conductor_A ul_um(TIM=false) annotation(Placement(transformation(extent={{100,-120},{120,-100}})));
	iboss.iboss_thermal.components.thermal_conductor_A um_ur(TIM=false) annotation(Placement(transformation(extent={{180,-120},{200,-100}})));
	iboss.iboss_thermal.components.thermal_conductor_A ml_mm(TIM=false) annotation(Placement(transformation(extent={{100,-65},{120,-45}})));
	iboss.iboss_thermal.components.thermal_conductor_A mm_mr(TIM=false) annotation(Placement(transformation(extent={{180,-65},{200,-45}})));
	iboss.iboss_thermal.components.thermal_conductor_A ol_om(TIM=false) annotation(Placement(transformation(extent={{105,-15},{125,5}})));
	iboss.iboss_thermal.components.thermal_conductor_A om_or(TIM=false) annotation(Placement(transformation(extent={{180,-15},{200,5}})));
	iboss.iboss_thermal.components.thermal_conductor_A ml_ol(TIM=false) annotation(Placement(transformation(
		origin={75,-30},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A ul_ml(TIM=false) annotation(Placement(transformation(
		origin={75,-80},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A mm_om(TIM=false) annotation(Placement(transformation(
		origin={150,-30},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A mr_or(TIM=false) annotation(Placement(transformation(
		origin={225,-30},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A um_mm(TIM=false) annotation(Placement(transformation(
		origin={150,-85},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A ur_mr(TIM=false) annotation(Placement(transformation(
		origin={225,-85},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.surface_properties_out om_zp_aussen annotation(Placement(
		transformation(extent={{-60,-165},{-40,-145}}),
		iconTransformation(extent={{-160,-100},{-180,-120}})));
	iboss.iboss_thermal.components.surface_properties_out or_zp_aussen annotation(Placement(
		transformation(extent={{-25,-165},{-5,-145}}),
		iconTransformation(extent={{-120,-100},{-140,-120}})));
	iboss.iboss_thermal.components.surface_properties_out ml_zp_aussen annotation(Placement(
		transformation(extent={{-95,-195},{-75,-175}}),
		iconTransformation(extent={{-200,-140},{-220,-160}})));
	iboss.iboss_thermal.components.surface_properties_out mm_zp_aussen annotation(Placement(
		transformation(extent={{-60,-195},{-40,-175}}),
		iconTransformation(extent={{-160,-140},{-180,-160}})));
	iboss.iboss_thermal.components.surface_properties_out mr_zp_aussen annotation(Placement(
		transformation(extent={{-25,-195},{-5,-175}}),
		iconTransformation(extent={{-120,-140},{-140,-160}})));
	iboss.iboss_thermal.components.surface_properties_out ul_zp_aussen annotation(Placement(
		transformation(extent={{-95,-225},{-75,-205}}),
		iconTransformation(extent={{-200,-180},{-220,-200}})));
	iboss.iboss_thermal.components.surface_properties_out um_zp_aussen annotation(Placement(
		transformation(extent={{-60,-225},{-40,-205}}),
		iconTransformation(extent={{-160,-180},{-180,-200}})));
	iboss.iboss_thermal.components.surface_properties_out ur_zp_aussen annotation(Placement(
		transformation(extent={{-25,-225},{-5,-205}}),
		iconTransformation(extent={{-120,-180},{-140,-200}})));
	iboss.iboss_thermal.components.surface_properties_out ol_zn_innen annotation(Placement(
		transformation(extent={{315,85},{335,105}}),
		iconTransformation(extent={{120,180},{140,200}})));
	iboss.iboss_thermal.components.surface_properties_out om_zn_innen annotation(Placement(
		transformation(extent={{350,85},{370,105}}),
		iconTransformation(extent={{160,180},{180,200}})));
	iboss.iboss_thermal.components.surface_properties_out or_zn_innen annotation(Placement(
		transformation(extent={{385,85},{405,105}}),
		iconTransformation(extent={{200,180},{220,200}})));
	iboss.iboss_thermal.components.surface_properties_out ml_zn_innen annotation(Placement(
		transformation(extent={{315,55},{335,75}}),
		iconTransformation(extent={{120,140},{140,160}})));
	iboss.iboss_thermal.components.surface_properties_out mm_zn_innen annotation(Placement(
		transformation(extent={{350,55},{370,75}}),
		iconTransformation(extent={{160,140},{180,160}})));
	iboss.iboss_thermal.components.surface_properties_out mr_zn_innen annotation(Placement(
		transformation(extent={{385,55},{405,75}}),
		iconTransformation(extent={{200,140},{220,160}})));
	iboss.iboss_thermal.components.surface_properties_out ul_zn_innen annotation(Placement(
		transformation(extent={{315,25},{335,45}}),
		iconTransformation(extent={{120,100},{140,120}})));
	iboss.iboss_thermal.components.surface_properties_out um_zn_innen annotation(Placement(
		transformation(extent={{350,25},{370,45}}),
		iconTransformation(extent={{160,100},{180,120}})));
	iboss.iboss_thermal.components.surface_properties_out ur_zn_innen annotation(Placement(
		transformation(extent={{385,25},{405,45}}),
		iconTransformation(extent={{200,100},{220,120}})));
	iboss.iboss_thermal.components.surface_properties_out ul_yn annotation(Placement(
		transformation(extent={{90,-195},{110,-175}}),
		iconTransformation(extent={{-161.7,-308.3},{-141.7,-288.3}})));
	iboss.iboss_thermal.components.surface_properties_out um_yn annotation(Placement(
		transformation(extent={{160,-195},{180,-175}}),
		iconTransformation(extent={{-11.7,-308.3},{8.300000000000001,-288.3}})));
	iboss.iboss_thermal.components.surface_properties_out ur_yn annotation(Placement(
		transformation(extent={{235,-195},{255,-175}}),
		iconTransformation(extent={{138.3,-308.3},{158.3,-288.3}})));
	iboss.iboss_thermal.components.surface_properties_out ol_yp annotation(Placement(
		transformation(extent={{90,55},{110,75}}),
		iconTransformation(extent={{-161.7,291.7},{-141.7,311.7}})));
	iboss.iboss_thermal.components.surface_properties_out om_yp annotation(Placement(
		transformation(extent={{165,55},{185,75}}),
		iconTransformation(extent={{-11.7,291.7},{8.300000000000001,311.7}})));
	iboss.iboss_thermal.components.surface_properties_out or_yp annotation(Placement(
		transformation(extent={{240,55},{260,75}}),
		iconTransformation(extent={{138.3,291.7},{158.3,311.7}})));
	iboss.iboss_thermal.components.surface_properties_out or_xp annotation(Placement(
		transformation(extent={{315,-15},{335,5}}),
		iconTransformation(extent={{288.3,141.7},{308.3,161.7}})));
	iboss.iboss_thermal.components.surface_properties_out om_xp annotation(Placement(
		transformation(extent={{315,-65},{335,-45}}),
		iconTransformation(extent={{288.3,-8.300000000000001},{308.3,11.7}})));
	iboss.iboss_thermal.components.surface_properties_out ur_xp annotation(Placement(
		transformation(extent={{315,-120},{335,-100}}),
		iconTransformation(extent={{288.3,-158.3},{308.3,-138.3}})));
	iboss.iboss_thermal.components.surface_properties_out ol_xn annotation(Placement(
		transformation(extent={{-35,-15},{-15,5}}),
		iconTransformation(extent={{-311.7,141.7},{-291.7,161.7}})));
	iboss.iboss_thermal.components.surface_properties_out om_xn annotation(Placement(
		transformation(extent={{-35,-65},{-15,-45}}),
		iconTransformation(extent={{-311.7,-8.300000000000001},{-291.7,11.7}})));
	iboss.iboss_thermal.components.surface_properties_out ul_xn annotation(Placement(
		transformation(extent={{-35,-120},{-15,-100}}),
		iconTransformation(extent={{-311.7,-158.3},{-291.7,-138.3}})));
	Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b heatpower_mm annotation(Placement(
		transformation(extent={{0,-0},{20,20}}),
		iconTransformation(extent={{0,-0},{20,20}})));
	equation
		connect(ml_ol.surface_properties2,ol.yn) annotation(Line(
			points={{75,-20},{75,-15},{75,-17.7},{75,-12.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(ol.xp,ol_om.surface_properties1) annotation(Line(
			points={{85,-5},{90,-5},{100,-5},{105,-5}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol_om.surface_properties2,om.xn) annotation(Line(
			points={{125,-5},{130,-5},{135,-5},{140,-5}},
			color={255,0,0},
			thickness=0.0625));
		connect(om.xp,om_or.surface_properties1) annotation(Line(
			points={{160,-5},{165,-5},{175,-5},{180,-5}},
			color={0,0,0},
			thickness=0.0625));
		connect(om_or.surface_properties2,ro.xn) annotation(Line(
			points={{200,-5},{205,-5},{210,-5},{215,-5}},
			color={255,0,0},
			thickness=0.0625));
		connect(mr_or.surface_properties2,ro.yn) annotation(Line(
			points={{225,-20},{225,-15},{225,-17.7},{225,-12.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(mr_or.surface_properties1,mr.yp) annotation(Line(
			points={{225,-40},{225,-45},{225,-42.3},{225,-47.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(mr.xn,mm_mr.surface_properties2) annotation(Line(
			points={{215,-55},{210,-55},{205,-55},{200,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm.xp,mm_mr.surface_properties1) annotation(Line(
			points={{160,-55},{165,-55},{175,-55},{180,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm.xn,ml_mm.surface_properties2) annotation(Line(
			points={{140,-55},{135,-55},{125,-55},{120,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(ml.xp,ml_mm.surface_properties1) annotation(Line(
			points={{85,-55},{90,-55},{95,-55},{100,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm_om.surface_properties2,om.yn) annotation(Line(
			points={{150,-20},{150,-15},{150,-17.7},{150,-12.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(mm_om.surface_properties1,mm.yp) annotation(Line(
			points={{150,-40},{150,-45},{150,-42.3},{150,-47.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(ml.yn,ul_ml.surface_properties2) annotation(Line(
			points={{75,-62.7},{75,-67.7},{75,-65},{75,-70}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul_ml.surface_properties1,ul.yp) annotation(Line(
			points={{75,-90},{75,-95},{75,-97.3},{75,-102.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(ul.xp,ul_um.surface_properties1) annotation(Line(
			points={{85,-110},{90,-110},{95,-110},{100,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul_um.surface_properties2,um.xn) annotation(Line(
			points={{120,-110},{125,-110},{135,-110},{140,-110}},
			color={255,0,0},
			thickness=0.0625));
		connect(um.yp,um_mm.surface_properties1) annotation(Line(
			points={{150,-102.3},{150,-97.3},{150,-100},{150,-95}},
			color={0,0,0},
			thickness=0.0625));
		connect(um_mm.surface_properties2,mm.yn) annotation(Line(
			points={{150,-75},{150,-70},{150,-67.7},{150,-62.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(um.xp,um_ur.surface_properties1) annotation(Line(
			points={{160,-110},{165,-110},{175,-110},{180,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(um_ur.surface_properties2,ur.xn) annotation(Line(
			points={{200,-110},{205,-110},{210,-110},{215,-110}},
			color={255,0,0},
			thickness=0.0625));
		connect(ur.yp,ur_mr.surface_properties1) annotation(Line(
			points={{225,-102.3},{225,-97.3},{225,-100},{225,-95}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur_mr.surface_properties2,mr.yn) annotation(Line(
			points={{225,-75},{225,-70},{225,-67.7},{225,-62.7}},
			color={255,0,0},
			thickness=0.0625));
		
		connect(ml_ol.surface_properties1,ml.yp) annotation(Line(
			points={{75,-40},{75,-45},{75,-42.3},{75,-47.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(ol.xn,ol_xn) annotation(Line(
			points={{65,-5},{60,-5},{-20,-5},{-25,-5}},
			color={0,0,0},
			thickness=0.0625));
		connect(ml.xn,om_xn) annotation(Line(
			points={{65,-55},{60,-55},{-20,-55},{-25,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul.xn,ul_xn) annotation(Line(
			points={{65,-110},{60,-110},{-20,-110},{-25,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul.yn,ul_yn) annotation(Line(
			points={{75,-117.7},{75,-122.7},{75,-185},{95,-185},{100,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(um.yn,um_yn) annotation(Line(
			points={{150,-117.7},{150,-122.7},{150,-185},{165,-185},{170,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur.yn,ur_yn) annotation(Line(
			points={{225,-117.7},{225,-122.7},{225,-185},{240,-185},{245,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol.yp,ol_yp) annotation(Line(
			points={{75,2.7},{75,7.7},{75,65},{95,65},{100,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(om.yp,om_yp) annotation(Line(
			points={{150,2.7},{150,7.7},{150,65},{170,65},{175,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ro.yp,or_yp) annotation(Line(
			points={{225,2.7},{225,7.7},{225,65},{245,65},{250,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ro.xp,or_xp) annotation(Line(
			points={{235,-5},{240,-5},{320,-5},{325,-5}},
			color={0,0,0},
			thickness=0.0625));
		connect(mr.xp,om_xp) annotation(Line(
			points={{235,-55},{240,-55},{320,-55},{325,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur.xp,ur_xp) annotation(Line(
			points={{235,-110},{240,-110},{320,-110},{325,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul.zp,ul_zp_aussen) annotation(Line(
			points={{70,-115},{65,-115},{-80,-115},{-80,-215},{-85,-215}},
			color={0,0,0},
			thickness=0.0625));
		connect(um.zp,um_zp_aussen) annotation(Line(
			points={{145,-115},{140,-115},{-45,-115},{-45,-215},{-50,-215}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur.zp,ur_zp_aussen) annotation(Line(
			points={{220,-115},{215,-115},{-10,-115},{-10,-215},{-15,-215}},
			color={0,0,0},
			thickness=0.0625));
		connect(ml.zp,ml_zp_aussen) annotation(Line(
			points={{70,-60},{65,-60},{-80,-60},{-80,-185},{-85,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm.zp,mm_zp_aussen) annotation(Line(
			points={{145,-60},{140,-60},{-45,-60},{-45,-185},{-50,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(mr.zp,mr_zp_aussen) annotation(Line(
			points={{220,-60},{215,-60},{-10,-60},{-10,-185},{-15,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol.zp,ol_zp_aussen) annotation(Line(
			points={{70,-10},{65,-10},{-80,-10},{-80,-155},{-85,-155}},
			color={0,0,0},
			thickness=0.0625));
		connect(om.zp,om_zp_aussen) annotation(Line(
			points={{145,-10},{140,-10},{-45,-10},{-45,-155},{-50,-155}},
			color={0,0,0},
			thickness=0.0625));
		connect(ro.zp,or_zp_aussen) annotation(Line(
			points={{220,-10},{215,-10},{-10,-10},{-10,-155},{-15,-155}},
			color={0,0,0},
			thickness=0.0625));
		connect(ro.zn,or_zn_innen) annotation(Line(
			points={{230,0},{235,0},{390,0},{390,95},{395,95}},
			color={0,0,0},
			thickness=0.0625));
		connect(om.zn,om_zn_innen) annotation(Line(
			points={{155,0},{160,0},{355,0},{355,95},{360,95}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol.zn,ol_zn_innen) annotation(Line(
			points={{80,0},{85,0},{320,0},{320,95},{325,95}},
			color={0,0,0},
			thickness=0.0625));
		connect(ml.zn,ml_zn_innen) annotation(Line(
			points={{80,-50},{85,-50},{320,-50},{320,65},{325,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm.zn,mm_zn_innen) annotation(Line(
			points={{155,-50},{160,-50},{355,-50},{355,65},{360,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(mr.zn,mr_zn_innen) annotation(Line(
			points={{230,-50},{235,-50},{390,-50},{390,65},{395,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul.zn,ul_zn_innen) annotation(Line(
			points={{80,-105},{85,-105},{320,-105},{320,35},{325,35}},
			color={0,0,0},
			thickness=0.0625));
		connect(um.zn,um_zn_innen) annotation(Line(
			points={{155,-105},{160,-105},{355,-105},{355,35},{360,35}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur.zn,ur_zn_innen) annotation(Line(
			points={{230,-105},{235,-105},{390,-105},{390,35},{395,35}},
			color={0,0,0},
			thickness=0.0625));
		
		connect(mm.dissipation_power,heatpower_mm) annotation(Line(
			points={{147,-55.7},{142,-55.7},{15,-55.7},{15,10},{10,10}},
			color={191,0,0},
			thickness=0.0625));
	annotation(
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
		Icon(
			coordinateSystem(extent={{-301.7,-301.7},{301.7,301.7}}),
			graphics={
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-300,306.7},{300,-306.7}}),
							Text(
								textString="ol",
								lineColor={255,255,0},
								extent={{-232.8,242.9},{-129.5,172.9}}),
							Text(
								textString="om",
								lineColor={255,255,0},
								extent={{-46.4,259.6},{56.9,189.6}}),
							Text(
								textString="or",
								lineColor={255,255,0},
								extent={{160,272.7},{263.3,202.7}}),
							Text(
								textString="um",
								lineColor={255,255,0},
								extent={{-55.8,-210.1},{47.5,-280.1}}),
							Text(
								textString="ur",
								lineColor={255,255,0},
								extent={{140.4,-223.6},{243.7,-293.6}}),
							Text(
								textString="ul",
								lineColor={255,255,0},
								extent={{-238.7,-230.1},{-135.4,-300.1}}),
							Text(
								textString="zp-außen",
								lineColor={0,0,0},
								extent={{-89.5,-153.7},{90.40000000000001,-220.5}}),
							Text(
								textString="zn-innen",
								lineColor={0,0,0},
								extent={{-96.2,220.1},{90.59999999999999,143.1}}),
							Text(
								textString="mr",
								lineColor={255,255,0},
								extent={{150.2,39.4},{253.5,-30.6}}),
							Text(
								textString="mm",
								lineColor={255,255,0},
								extent={{-29.7,42.6},{73.59999999999999,-27.4}}),
							Text(
								textString="ml",
								lineColor={255,255,0},
								extent={{-233,39.3},{-129.7,-30.7}}),
							Text(
								textString="Batterie",
								lineColor={0,0,0},
								extent={{-110.3,-66.90000000000001},{269.7,-150.3}})}),
		experiment(
			StopTime=1,
			StartTime=0));
end beesat_batterie;
