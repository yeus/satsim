// CP: 65001
// SimulationX Version: 3.6.5.34033 x64
within ;
model beesat_Deckel_comp "beesat_Deckel_comp.mo"
	iboss.iboss_thermal.components.surface_properties_out ol_zp annotation(Placement(
		transformation(extent={{-95,-165},{-75,-145}}),
		iconTransformation(extent={{-200,-100},{-220,-120}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ol(
		x=0.04,
		y=0.04,
		z=0.002,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{65,-15},{85,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop om(
		x=0.02,
		y=0.04,
		z=0.002,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{140,-15},{160,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ro(
		x=0.04,
		y=0.04,
		z=0.002,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{215,-15},{235,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ml(
		x=0.04,
		y=0.02,
		z=0.001,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{65,-65},{85,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop mm(
		x=0.02,
		y=0.02,
		z=0.0005,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{140,-65},{160,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop mr(
		x=0.04,
		y=0.02,
		z=0.001,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{215,-65},{235,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ul(
		x=0.04,
		y=0.04,
		z=0.002,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{65,-120},{85,-100}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop um(
		x=0.02,
		y=0.04,
		z=0.002,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{140,-120},{160,-100}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop ur(
		x=0.04,
		y=0.04,
		z=0.002,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{215,-120},{235,-100}})));
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
	iboss.iboss_thermal.components.surface_properties_out om_zp annotation(Placement(
		transformation(extent={{-60,-165},{-40,-145}}),
		iconTransformation(extent={{-160,-100},{-180,-120}})));
	iboss.iboss_thermal.components.surface_properties_out or_zp annotation(Placement(
		transformation(extent={{-25,-165},{-5,-145}}),
		iconTransformation(extent={{-120,-100},{-140,-120}})));
	iboss.iboss_thermal.components.surface_properties_out ml_zp annotation(Placement(
		transformation(extent={{-95,-195},{-75,-175}}),
		iconTransformation(extent={{-200,-140},{-220,-160}})));
	iboss.iboss_thermal.components.surface_properties_out mm_zp annotation(Placement(
		transformation(extent={{-60,-195},{-40,-175}}),
		iconTransformation(extent={{-160,-140},{-180,-160}})));
	iboss.iboss_thermal.components.surface_properties_out mr_zp annotation(Placement(
		transformation(extent={{-25,-195},{-5,-175}}),
		iconTransformation(extent={{-120,-140},{-140,-160}})));
	iboss.iboss_thermal.components.surface_properties_out ul_zp annotation(Placement(
		transformation(extent={{-95,-225},{-75,-205}}),
		iconTransformation(extent={{-200,-180},{-220,-200}})));
	iboss.iboss_thermal.components.surface_properties_out um_zp annotation(Placement(
		transformation(extent={{-60,-225},{-40,-205}}),
		iconTransformation(extent={{-160,-180},{-180,-200}})));
	iboss.iboss_thermal.components.surface_properties_out ur_zp annotation(Placement(
		transformation(extent={{-25,-225},{-5,-205}}),
		iconTransformation(extent={{-120,-180},{-140,-200}})));
	iboss.iboss_thermal.components.surface_properties_out ol_zn annotation(Placement(
		transformation(extent={{315,85},{335,105}}),
		iconTransformation(extent={{120,180},{140,200}})));
	iboss.iboss_thermal.components.surface_properties_out om_zn annotation(Placement(
		transformation(extent={{350,85},{370,105}}),
		iconTransformation(extent={{160,180},{180,200}})));
	iboss.iboss_thermal.components.surface_properties_out or_zn annotation(Placement(
		transformation(extent={{385,85},{405,105}}),
		iconTransformation(extent={{200,180},{220,200}})));
	iboss.iboss_thermal.components.surface_properties_out ml_zn annotation(Placement(
		transformation(extent={{315,55},{335,75}}),
		iconTransformation(extent={{120,140},{140,160}})));
	iboss.iboss_thermal.components.surface_properties_out mm_zn annotation(Placement(
		transformation(extent={{350,55},{370,75}}),
		iconTransformation(extent={{160,140},{180,160}})));
	iboss.iboss_thermal.components.surface_properties_out mr_zn annotation(Placement(
		transformation(extent={{385,55},{405,75}}),
		iconTransformation(extent={{200,140},{220,160}})));
	iboss.iboss_thermal.components.surface_properties_out ul_zn annotation(Placement(
		transformation(extent={{315,25},{335,45}}),
		iconTransformation(extent={{120,100},{140,120}})));
	iboss.iboss_thermal.components.surface_properties_out um_zn annotation(Placement(
		transformation(extent={{350,25},{370,45}}),
		iconTransformation(extent={{160,100},{180,120}})));
	iboss.iboss_thermal.components.surface_properties_out ur_zn annotation(Placement(
		transformation(extent={{385,25},{405,45}}),
		iconTransformation(extent={{200,100},{220,120}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop vierkant_Deckel_ul(
		x=0.04,
		y=0.002,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{90,-160},{110,-140}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop vierkant_Deckel_um(
		x=0.02,
		y=0.002,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{160,-160},{180,-140}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop vierkant_Deckel_ur(
		x=0.04,
		y=0.002,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{235,-160},{255,-140}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop vierkant_Deckel_ol(
		x=0.04,
		y=0.002,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{90,30},{110,50}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop vierkant_Deckel_om(
		x=0.02,
		y=0.002,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{165,30},{185,50}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop vierkant_Deckel_or(
		x=0.04,
		y=0.002,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{240,30},{260,50}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop steg_ml(
		x=0.002,
		y=0.02,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{5,-65},{25,-45}})));
	iboss.iboss_thermal.components.thermal_conductor_A ul_vierkant(
		TIM=true,
		h_contact=100) annotation(Placement(transformation(extent={{80,-140},{100,-120}})));
	iboss.iboss_thermal.components.thermal_conductor_A um_vierkant(
		TIM=true,
		h_contact=100) annotation(Placement(transformation(extent={{155,-140},{175,-120}})));
	iboss.iboss_thermal.components.thermal_conductor_A ur_vierkant(
		TIM=true,
		h_contact=100) annotation(Placement(transformation(extent={{230,-140},{250,-120}})));
	iboss.iboss_thermal.components.thermal_conductor_A ol_vierkant(
		TIM=true,
		h_contact=100) annotation(Placement(transformation(extent={{80,0},{100,20}})));
	iboss.iboss_thermal.components.thermal_conductor_A om_vierkant(
		TIM=true,
		h_contact=100) annotation(Placement(transformation(extent={{155,0},{175,20}})));
	iboss.iboss_thermal.components.thermal_conductor_A or_vierkant(
		TIM=true,
		h_contact=100) annotation(Placement(transformation(extent={{225,5},{245,25}})));
	iboss.iboss_thermal.components.thermal_conductor_A vierkant_ul_um(TIM=false) annotation(Placement(transformation(extent={{120,-160},{140,-140}})));
	iboss.iboss_thermal.components.thermal_conductor_A vierkant_um_ur(TIM=false) annotation(Placement(transformation(extent={{200,-160},{220,-140}})));
	iboss.iboss_thermal.components.thermal_conductor_A vierkant_ol_om(TIM=false) annotation(Placement(transformation(extent={{120,30},{140,50}})));
	iboss.iboss_thermal.components.thermal_conductor_A vierkant_ol_om1(TIM=false) annotation(Placement(transformation(extent={{200,30},{220,50}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop steg_ul(
		x=0.002,
		y=0.02,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{5,-120},{25,-100}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop steg_ol(
		x=0.002,
		y=0.02,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{5,-15},{25,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop steg_mr(
		x=0.002,
		y=0.02,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{275,-65},{295,-45}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop steg_or(
		x=0.002,
		y=0.02,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{275,-15},{295,5}})));
	iboss.iboss_thermal.components.thermal_element_opt_prop steg_ur(
		x=0.002,
		y=0.02,
		z=0.01,
		opticalProperties_xn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_xp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_yp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zn=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium(),
		opticalProperties_zp=iboss.OpticalPropertiesDatabase.Oberflaechenbehandlungen_Poliert_Ende_der_Nutzungsdauer_Aluminium()) annotation(Placement(transformation(extent={{275,-120},{295,-100}})));
	iboss.iboss_thermal.components.thermal_conductor_A deckel_steg_ol(TIM=false) annotation(Placement(transformation(extent={{35,-15},{55,5}})));
	iboss.iboss_thermal.components.thermal_conductor_A deckel_steg_ml(TIM=false) annotation(Placement(transformation(extent={{35,-65},{55,-45}})));
	iboss.iboss_thermal.components.thermal_conductor_A deckel_steg_ul(TIM=false) annotation(Placement(transformation(extent={{35,-120},{55,-100}})));
	iboss.iboss_thermal.components.thermal_conductor_A deckel_steg_or(TIM=false) annotation(Placement(transformation(extent={{245,-15},{265,5}})));
	iboss.iboss_thermal.components.thermal_conductor_A deckel_steg_mr(TIM=false) annotation(Placement(transformation(extent={{245,-65},{265,-45}})));
	iboss.iboss_thermal.components.thermal_conductor_A deckel_steg_ur(TIM=false) annotation(Placement(transformation(extent={{245,-120},{265,-100}})));
	iboss.iboss_thermal.components.thermal_conductor_A steg_ul_ml(TIM=false) annotation(Placement(transformation(
		origin={15,-80},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A steg_ml_ol(TIM=false) annotation(Placement(transformation(
		origin={15,-30},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A steg_ur_mr(TIM=false) annotation(Placement(transformation(
		origin={285,-85},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
	iboss.iboss_thermal.components.thermal_conductor_A steg_mr_or(TIM=false) annotation(Placement(transformation(
		origin={285,-30},
		extent={{-10,-10},{10,10}},
		rotation=-270)));
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
	equation
		connect(ro.zn,or_zn) annotation(Line(
			points={{230,0},{235,0},{390,0},{390,95},{395,95}},
			color={0,0,0},
			thickness=0.0625));
		connect(om.zn,om_zn) annotation(Line(
			points={{155,0},{160,0},{355,0},{355,95},{360,95}},
			color={0,0,0},
			thickness=0.0625));
		connect(ol.zn,ol_zn) annotation(Line(
			points={{80,0},{85,0},{320,0},{320,95},{325,95}},
			color={0,0,0},
			thickness=0.0625));
		connect(mr.zn,mr_zn) annotation(Line(
			points={{230,-50},{235,-50},{390,-50},{390,65},{395,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm.zn,mm_zn) annotation(Line(
			points={{155,-50},{160,-50},{355,-50},{355,65},{360,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ml.zn,ml_zn) annotation(Line(
			points={{80,-50},{85,-50},{320,-50},{320,65},{325,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul.zn,ul_zn) annotation(Line(
			points={{80,-105},{85,-105},{320,-105},{320,35},{325,35}},
			color={0,0,0},
			thickness=0.0625));
		connect(um.zn,um_zn) annotation(Line(
			points={{155,-105},{160,-105},{355,-105},{355,35},{360,35}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur.zn,ur_zn) annotation(Line(
			points={{230,-105},{235,-105},{390,-105},{390,35},{395,35}},
			color={0,0,0},
			thickness=0.0625));
		connect(ro.zp,or_zp) annotation(
			Line(
				points={{220,-10},{215,-15},{-10,-15},{-10,-155},{-15,-155}},
				color={0,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(om.zp,om_zp) annotation(
			Line(
				points={{145,-10},{140,-20},{-45,-20},{-45,-155},{-50,-155}},
				color={0,0,0},
				thickness=0.0625),
			AutoRoute=false);
		connect(ol.zp,ol_zp) annotation(Line(
			points={{70,-10},{65,-10},{-80,-10},{-80,-155},{-85,-155}},
			color={0,0,0},
			thickness=0.0625));
		connect(ml.zp,ml_zp) annotation(Line(
			points={{70,-60},{65,-60},{-80,-60},{-80,-185},{-85,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(mm.zp,mm_zp) annotation(Line(
			points={{145,-60},{140,-60},{-45,-60},{-45,-185},{-50,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(mr.zp,mr_zp) annotation(Line(
			points={{220,-60},{215,-60},{-10,-60},{-10,-185},{-15,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(ul.zp,ul_zp) annotation(Line(
			points={{70,-115},{65,-115},{-80,-115},{-80,-215},{-85,-215}},
			color={0,0,0},
			thickness=0.0625));
		connect(um.zp,um_zp) annotation(Line(
			points={{145,-115},{140,-115},{-45,-115},{-45,-215},{-50,-215}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur.zp,ur_zp) annotation(Line(
			points={{220,-115},{215,-115},{-10,-115},{-10,-215},{-15,-215}},
			color={0,0,0},
			thickness=0.0625));
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
		
		
		
		
		
		
		
		
		
		connect(ur.yn,ur_vierkant.surface_properties1) annotation(Line(
			points={{225,-117.7},{225,-122.7},{225,-130},{230,-130}},
			color={0,0,0},
			thickness=0.0625));
		connect(ur_vierkant.surface_properties2,vierkant_Deckel_ur.zn) annotation(Line(
			points={{250,-130},{255,-130},{255,-145},{250,-145}},
			color={255,0,0},
			thickness=0.0625));
		
		
		
		connect(ul_vierkant.surface_properties2,vierkant_Deckel_ul.zn) annotation(Line(
			points={{100,-130},{105,-130},{105,-137.3},{100,-137.3},{100,-145},{105,
			-145}},
			color={255,0,0},
			thickness=0.0625));
		connect(ul_vierkant.surface_properties1,ul.yn) annotation(Line(
			points={{80,-130},{75,-130},{75,-122.7},{75,-117.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(um_vierkant.surface_properties2,vierkant_Deckel_um.zn) annotation(Line(
			points={{175,-130},{180,-130},{180,-145},{175,-145}},
			color={255,0,0},
			thickness=0.0625));
		connect(um.yn,um_vierkant.surface_properties1) annotation(Line(
			points={{150,-117.7},{150,-122.7},{150,-130},{155,-130}},
			color={0,0,0},
			thickness=0.0625));
		
		
		connect(ol_vierkant.surface_properties2,vierkant_Deckel_ol.zp) annotation(Line(
			points={{100,10},{105,10},{105,35},{100,35},{95,35}},
			color={255,0,0},
			thickness=0.0625));
		connect(ol_vierkant.surface_properties1,ol.yp) annotation(Line(
			points={{80,10},{75,10},{75,7.7},{75,2.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(om.yp,om_vierkant.surface_properties1) annotation(Line(
			points={{150,2.7},{150,7.7},{150,10},{155,10}},
			color={0,0,0},
			thickness=0.0625));
		connect(om_vierkant.surface_properties2,vierkant_Deckel_om.zp) annotation(Line(
			points={{175,10},{180,10},{180,35},{175,35},{170,35}},
			color={255,0,0},
			thickness=0.0625));
		connect(or_vierkant.surface_properties2,vierkant_Deckel_or.zp) annotation(Line(
			points={{245,15},{250,15},{250,35},{245,35}},
			color={255,0,0},
			thickness=0.0625));
		connect(or_vierkant.surface_properties1,ro.yp) annotation(Line(
			points={{225,15},{220,15},{220,11.3},{225,11.3},{225,7.7},{225,
			2.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_ul_um.surface_properties1,vierkant_Deckel_ul.xp) annotation(Line(
			points={{120,-150},{115,-150},{110,-150}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_ul_um.surface_properties2,vierkant_Deckel_um.xn) annotation(Line(
			points={{140,-150},{145,-150},{155,-150},{160,-150}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_um_ur.surface_properties1,vierkant_Deckel_um.xp) annotation(Line(
			points={{200,-150},{195,-150},{185,-150},{180,-150}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_um_ur.surface_properties2,vierkant_Deckel_ur.xn) annotation(Line(
			points={{220,-150},{225,-150},{230,-150},{235,-150}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_ol_om.surface_properties1,vierkant_Deckel_ol.xp) annotation(Line(
			points={{120,40},{115,40},{110,40}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_ol_om.surface_properties2,vierkant_Deckel_om.xn) annotation(Line(
			points={{140,40},{145,40},{160,40},{165,40}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_om.xp,vierkant_ol_om1.surface_properties1) annotation(Line(
			points={{185,40},{190,40},{195,40},{200,40}},
			color={0,0,0},
			thickness=0.0625));
		connect(vierkant_ol_om1.surface_properties2,vierkant_Deckel_or.xn) annotation(Line(
			points={{220,40},{225,40},{235,40},{240,40}},
			color={255,0,0},
			thickness=0.0625));
		connect(deckel_steg_ol.surface_properties2,ol.xn) annotation(Line(
			points={{55,-5},{60,-5},{65,-5}},
			color={255,0,0},
			thickness=0.0625));
		connect(deckel_steg_ol.surface_properties1,steg_ol.xp) annotation(Line(
			points={{35,-5},{30,-5},{25,-5}},
			color={255,0,0},
			thickness=0.0625));
		connect(steg_ml.xp,deckel_steg_ml.surface_properties1) annotation(Line(
			points={{25,-55},{30,-55},{35,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(deckel_steg_ml.surface_properties2,ml.xn) annotation(Line(
			points={{55,-55},{60,-55},{65,-55}},
			color={255,0,0},
			thickness=0.0625));
		connect(steg_ul.xp,deckel_steg_ul.surface_properties1) annotation(Line(
			points={{25,-110},{30,-110},{35,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(deckel_steg_ul.surface_properties2,ul.xn) annotation(Line(
			points={{55,-110},{60,-110},{65,-110}},
			color={255,0,0},
			thickness=0.0625));
		
		connect(deckel_steg_or.surface_properties1,ro.xp) annotation(Line(
			points={{245,-5},{240,-5},{235,-5}},
			color={255,0,0},
			thickness=0.0625));
		connect(steg_or.xn,deckel_steg_or.surface_properties2) annotation(Line(
			points={{275,-5},{270,-5},{265,-5}},
			color={0,0,0},
			thickness=0.0625));
		
		
		connect(steg_mr.xn,deckel_steg_mr.surface_properties2) annotation(Line(
			points={{275,-55},{270,-55},{265,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(deckel_steg_mr.surface_properties1,mr.xp) annotation(Line(
			points={{245,-55},{240,-55},{235,-55}},
			color={255,0,0},
			thickness=0.0625));
		
		
		connect(deckel_steg_ur.surface_properties2,steg_ur.xn) annotation(Line(
			points={{265,-110},{270,-110},{275,-110}},
			color={255,0,0},
			thickness=0.0625));
		connect(deckel_steg_ur.surface_properties1,ur.xp) annotation(Line(
			points={{245,-110},{240,-110},{235,-110}},
			color={255,0,0},
			thickness=0.0625));
		
		
		connect(steg_ul_ml.surface_properties2,steg_ml.yn) annotation(Line(
			points={{15,-70},{15,-65},{15,-67.7},{15,-62.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(steg_ul_ml.surface_properties1,steg_ul.yp) annotation(Line(
			points={{15,-90},{15,-95},{15,-97.3},{15,-102.3}},
			color={255,0,0},
			thickness=0.0625));
		
		
		connect(steg_ml_ol.surface_properties2,steg_ol.yn) annotation(Line(
			points={{15,-20},{15,-15},{15,-17.7},{15,-12.7}},
			color={255,0,0},
			thickness=0.0625));
		connect(steg_ml_ol.surface_properties1,steg_ml.yp) annotation(Line(
			points={{15,-40},{15,-45},{15,-42.3},{15,-47.3}},
			color={255,0,0},
			thickness=0.0625));
		
		
		connect(steg_ur.yp,steg_ur_mr.surface_properties1) annotation(Line(
			points={{285,-102.3},{285,-97.3},{285,-100},{285,-95}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_mr.yn,steg_ur_mr.surface_properties2) annotation(Line(
			points={{285,-62.7},{285,-67.7},{285,-70},{285,-75}},
			color={0,0,0},
			thickness=0.0625));
		
		
		connect(steg_or.yn,steg_mr_or.surface_properties2) annotation(Line(
			points={{285,-12.7},{285,-17.7},{285,-15},{285,-20}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_mr_or.surface_properties1,steg_mr.yp) annotation(Line(
			points={{285,-40},{285,-45},{285,-42.3},{285,-47.3}},
			color={255,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_ur.yn,ur_yn) annotation(Line(
			points={{245,-157.7},{245,-162.7},{250,-162.7},{250,-185},{245,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_um.yn,um_yn) annotation(Line(
			points={{170,-157.7},{170,-162.7},{175,-162.7},{175,-185},{170,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_ul.yn,ul_yn) annotation(Line(
			points={{100,-157.7},{100,-162.7},{105,-162.7},{105,-185},{100,-185}},
			color={0,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_ol.yp,ol_yp) annotation(Line(
			points={{100,47.7},{100,52.7},{105,52.7},{105,65},{100,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_om.yp,om_yp) annotation(Line(
			points={{175,47.7},{175,52.7},{180,52.7},{180,65},{175,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(vierkant_Deckel_or.yp,or_yp) annotation(Line(
			points={{250,47.7},{250,52.7},{255,52.7},{255,65},{250,65}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_or.xp,or_xp) annotation(Line(
			points={{295,-5},{300,-5},{320,-5},{325,-5}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_mr.xp,om_xp) annotation(Line(
			points={{295,-55},{300,-55},{320,-55},{325,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_ur.xp,ur_xp) annotation(Line(
			points={{295,-110},{300,-110},{320,-110},{325,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_ul.xn,ul_xn) annotation(Line(
			points={{5,-110},{0,-110},{-20,-110},{-25,-110}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_ml.xn,om_xn) annotation(Line(
			points={{5,-55},{0,-55},{-20,-55},{-25,-55}},
			color={0,0,0},
			thickness=0.0625));
		connect(steg_ol.xn,ol_xn) annotation(Line(
			points={{5,-5},{0,-5},{-20,-5},{-25,-5}},
			color={0,0,0},
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
			combiTable1Ds1_yn(y(flags=2))),
		Icon(
			coordinateSystem(extent={{-301.7,-301.7},{301.7,301.7}}),
			graphics={
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-303.3,-306.7},{-253.3,300}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{252.7,-303.1},{302.7,303.6}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-250,299},{-93.3,92.3}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-90,299.7},{100,90}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{100,303.3},{250,90}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-250.5,-96.8},{-93.8,-303.5}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-90.5,-96.09999999999999},{99.5,-305.8}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{99.5,-92.5},{249.5,-305.8}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-93.3,96.7},{-251,-96.3}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{255.1,93.3},{97.40000000000001,-99.7}}),
							Rectangle(
								lineColor={0,0,0},
								fillColor={192,192,192},
								fillPattern=FillPattern.Solid,
								extent={{-93.3,-96.7},{100,96.7}}),
							Rectangle(
								radius=4,
								lineColor={0,0,0},
								fillColor={255,255,255},
								fillPattern=FillPattern.Solid,
								extent={{-223.3,63.3},{-130,-66.7}}),
							Rectangle(
								radius=4,
								lineColor={0,0,0},
								fillColor={255,255,255},
								fillPattern=FillPattern.Solid,
								extent={{133.4,56.5},{226.7,-73.5}}),
							Ellipse(
								lineColor={0,0,0},
								fillColor={255,255,255},
								fillPattern=FillPattern.Solid,
								extent={{-73.3,73.3},{80,-76.7}})}),
		experiment(
			StopTime=1,
			StartTime=0));
end beesat_Deckel_comp;
