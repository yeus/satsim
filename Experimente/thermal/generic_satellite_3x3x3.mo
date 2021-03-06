// CP: 65001
// SimulationX Version: 3.6.1.26028 x64
within ;
model generic_satellite_3x3x3 "generic_satellite_3x3x3.mo"
	import iboss.*;
	import iboss.illumination.*;
	parameter illumination.LEO.Strahlungsleistung_3x3x3_LEO_EnMap_NadirPointing orbit_illumination;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB111;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB112;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB113;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB121;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB122;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB123;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB131;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB132;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB133;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB211;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB212;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB213;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB221;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB222;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB223;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB231;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB232;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB233;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB311;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB312;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB313;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB321;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB322;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB323;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB331;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB332;
	iboss_thermal.buildingblocks.thermal_for_combined_sim BB333;
	iboss_thermal.components.thermal_TIM TIM_BB111_BB112;
	iboss_thermal.components.thermal_TIM TIM_BB112_BB113;
	iboss_thermal.components.thermal_TIM TIM_BB111_BB121;
	iboss_thermal.components.thermal_TIM TIM_BB112_BB122;
	iboss_thermal.components.thermal_TIM TIM_BB121_BB122;
	iboss_thermal.components.thermal_TIM TIM_BB113_BB123;
	iboss_thermal.components.thermal_TIM TIM_BB122_BB123;
	iboss_thermal.components.thermal_TIM TIM_BB121_BB131;
	iboss_thermal.components.thermal_TIM TIM_BB122_BB132;
	iboss_thermal.components.thermal_TIM TIM_BB131_BB132;
	iboss_thermal.components.thermal_TIM TIM_BB123_BB133;
	iboss_thermal.components.thermal_TIM TIM_BB132_BB133;
	iboss_thermal.components.thermal_TIM TIM_BB111_BB211;
	iboss_thermal.components.thermal_TIM TIM_BB112_BB212;
	iboss_thermal.components.thermal_TIM TIM_BB211_BB212;
	iboss_thermal.components.thermal_TIM TIM_BB113_BB213;
	iboss_thermal.components.thermal_TIM TIM_BB212_BB213;
	iboss_thermal.components.thermal_TIM TIM_BB121_BB221;
	iboss_thermal.components.thermal_TIM TIM_BB211_BB221;
	iboss_thermal.components.thermal_TIM TIM_BB122_BB222;
	iboss_thermal.components.thermal_TIM TIM_BB212_BB222;
	iboss_thermal.components.thermal_TIM TIM_BB221_BB222;
	iboss_thermal.components.thermal_TIM TIM_BB123_BB223;
	iboss_thermal.components.thermal_TIM TIM_BB213_BB223;
	iboss_thermal.components.thermal_TIM TIM_BB222_BB223;
	iboss_thermal.components.thermal_TIM TIM_BB131_BB231;
	iboss_thermal.components.thermal_TIM TIM_BB221_BB231;
	iboss_thermal.components.thermal_TIM TIM_BB132_BB232;
	iboss_thermal.components.thermal_TIM TIM_BB222_BB232;
	iboss_thermal.components.thermal_TIM TIM_BB231_BB232;
	iboss_thermal.components.thermal_TIM TIM_BB133_BB233;
	iboss_thermal.components.thermal_TIM TIM_BB223_BB233;
	iboss_thermal.components.thermal_TIM TIM_BB232_BB233;
	iboss_thermal.components.thermal_TIM TIM_BB211_BB311;
	iboss_thermal.components.thermal_TIM TIM_BB212_BB312;
	iboss_thermal.components.thermal_TIM TIM_BB311_BB312;
	iboss_thermal.components.thermal_TIM TIM_BB213_BB313;
	iboss_thermal.components.thermal_TIM TIM_BB312_BB313;
	iboss_thermal.components.thermal_TIM TIM_BB221_BB321;
	iboss_thermal.components.thermal_TIM TIM_BB311_BB321;
	iboss_thermal.components.thermal_TIM TIM_BB222_BB322;
	iboss_thermal.components.thermal_TIM TIM_BB312_BB322;
	iboss_thermal.components.thermal_TIM TIM_BB321_BB322;
	iboss_thermal.components.thermal_TIM TIM_BB223_BB323;
	iboss_thermal.components.thermal_TIM TIM_BB313_BB323;
	iboss_thermal.components.thermal_TIM TIM_BB322_BB323;
	iboss_thermal.components.thermal_TIM TIM_BB231_BB331;
	iboss_thermal.components.thermal_TIM TIM_BB321_BB331;
	iboss_thermal.components.thermal_TIM TIM_BB232_BB332;
	iboss_thermal.components.thermal_TIM TIM_BB322_BB332;
	iboss_thermal.components.thermal_TIM TIM_BB331_BB332;
	iboss_thermal.components.thermal_TIM TIM_BB233_BB333;
	iboss_thermal.components.thermal_TIM TIM_BB323_BB333;
	iboss_thermal.components.thermal_TIM TIM_BB332_BB333;
	iboss_thermal.components.environment BB111nX(illumination=orbit_illumination.BB111nX);
	iboss_thermal.components.environment BB111pX(illumination=orbit_illumination.BB111pX);
	iboss_thermal.components.environment BB111nY(illumination=orbit_illumination.BB111nY);
	iboss_thermal.components.environment BB111pY(illumination=orbit_illumination.BB111pY);
	iboss_thermal.components.environment BB111nZ(illumination=orbit_illumination.BB111nZ);
	iboss_thermal.components.environment BB111pZ(illumination=orbit_illumination.BB111pZ);
	iboss_thermal.components.environment BB112nX(illumination=orbit_illumination.BB112nX);
	iboss_thermal.components.environment BB112pX(illumination=orbit_illumination.BB112pX);
	iboss_thermal.components.environment BB112nY(illumination=orbit_illumination.BB112nY);
	iboss_thermal.components.environment BB112pY(illumination=orbit_illumination.BB112pY);
	iboss_thermal.components.environment BB112nZ(illumination=orbit_illumination.BB112nZ);
	iboss_thermal.components.environment BB112pZ(illumination=orbit_illumination.BB112pZ);
	iboss_thermal.components.environment BB113nX(illumination=orbit_illumination.BB113nX);
	iboss_thermal.components.environment BB113pX(illumination=orbit_illumination.BB113pX);
	iboss_thermal.components.environment BB113nY(illumination=orbit_illumination.BB113nY);
	iboss_thermal.components.environment BB113pY(illumination=orbit_illumination.BB113pY);
	iboss_thermal.components.environment BB113nZ(illumination=orbit_illumination.BB113nZ);
	iboss_thermal.components.environment BB113pZ(illumination=orbit_illumination.BB113pZ);
	iboss_thermal.components.environment BB121nX(illumination=orbit_illumination.BB121nX);
	iboss_thermal.components.environment BB121pX(illumination=orbit_illumination.BB121pX);
	iboss_thermal.components.environment BB121nY(illumination=orbit_illumination.BB121nY);
	iboss_thermal.components.environment BB121pY(illumination=orbit_illumination.BB121pY);
	iboss_thermal.components.environment BB121nZ(illumination=orbit_illumination.BB121nZ);
	iboss_thermal.components.environment BB121pZ(illumination=orbit_illumination.BB121pZ);
	iboss_thermal.components.environment BB122nX(illumination=orbit_illumination.BB122nX);
	iboss_thermal.components.environment BB122pX(illumination=orbit_illumination.BB122pX);
	iboss_thermal.components.environment BB122nY(illumination=orbit_illumination.BB122nY);
	iboss_thermal.components.environment BB122pY(illumination=orbit_illumination.BB122pY);
	iboss_thermal.components.environment BB122nZ(illumination=orbit_illumination.BB122nZ);
	iboss_thermal.components.environment BB122pZ(illumination=orbit_illumination.BB122pZ);
	iboss_thermal.components.environment BB123nX(illumination=orbit_illumination.BB123nX);
	iboss_thermal.components.environment BB123pX(illumination=orbit_illumination.BB123pX);
	iboss_thermal.components.environment BB123nY(illumination=orbit_illumination.BB123nY);
	iboss_thermal.components.environment BB123pY(illumination=orbit_illumination.BB123pY);
	iboss_thermal.components.environment BB123nZ(illumination=orbit_illumination.BB123nZ);
	iboss_thermal.components.environment BB123pZ(illumination=orbit_illumination.BB123pZ);
	iboss_thermal.components.environment BB131nX(illumination=orbit_illumination.BB131nX);
	iboss_thermal.components.environment BB131pX(illumination=orbit_illumination.BB131pX);
	iboss_thermal.components.environment BB131nY(illumination=orbit_illumination.BB131nY);
	iboss_thermal.components.environment BB131pY(illumination=orbit_illumination.BB131pY);
	iboss_thermal.components.environment BB131nZ(illumination=orbit_illumination.BB131nZ);
	iboss_thermal.components.environment BB131pZ(illumination=orbit_illumination.BB131pZ);
	iboss_thermal.components.environment BB132nX(illumination=orbit_illumination.BB132nX);
	iboss_thermal.components.environment BB132pX(illumination=orbit_illumination.BB132pX);
	iboss_thermal.components.environment BB132nY(illumination=orbit_illumination.BB132nY);
	iboss_thermal.components.environment BB132pY(illumination=orbit_illumination.BB132pY);
	iboss_thermal.components.environment BB132nZ(illumination=orbit_illumination.BB132nZ);
	iboss_thermal.components.environment BB132pZ(illumination=orbit_illumination.BB132pZ);
	iboss_thermal.components.environment BB133nX(illumination=orbit_illumination.BB133nX);
	iboss_thermal.components.environment BB133pX(illumination=orbit_illumination.BB133pX);
	iboss_thermal.components.environment BB133nY(illumination=orbit_illumination.BB133nY);
	iboss_thermal.components.environment BB133pY(illumination=orbit_illumination.BB133pY);
	iboss_thermal.components.environment BB133nZ(illumination=orbit_illumination.BB133nZ);
	iboss_thermal.components.environment BB133pZ(illumination=orbit_illumination.BB133pZ);
	iboss_thermal.components.environment BB211nX(illumination=orbit_illumination.BB211nX);
	iboss_thermal.components.environment BB211pX(illumination=orbit_illumination.BB211pX);
	iboss_thermal.components.environment BB211nY(illumination=orbit_illumination.BB211nY);
	iboss_thermal.components.environment BB211pY(illumination=orbit_illumination.BB211pY);
	iboss_thermal.components.environment BB211nZ(illumination=orbit_illumination.BB211nZ);
	iboss_thermal.components.environment BB211pZ(illumination=orbit_illumination.BB211pZ);
	iboss_thermal.components.environment BB212nX(illumination=orbit_illumination.BB212nX);
	iboss_thermal.components.environment BB212pX(illumination=orbit_illumination.BB212pX);
	iboss_thermal.components.environment BB212nY(illumination=orbit_illumination.BB212nY);
	iboss_thermal.components.environment BB212pY(illumination=orbit_illumination.BB212pY);
	iboss_thermal.components.environment BB212nZ(illumination=orbit_illumination.BB212nZ);
	iboss_thermal.components.environment BB212pZ(illumination=orbit_illumination.BB212pZ);
	iboss_thermal.components.environment BB213nX(illumination=orbit_illumination.BB213nX);
	iboss_thermal.components.environment BB213pX(illumination=orbit_illumination.BB213pX);
	iboss_thermal.components.environment BB213nY(illumination=orbit_illumination.BB213nY);
	iboss_thermal.components.environment BB213pY(illumination=orbit_illumination.BB213pY);
	iboss_thermal.components.environment BB213nZ(illumination=orbit_illumination.BB213nZ);
	iboss_thermal.components.environment BB213pZ(illumination=orbit_illumination.BB213pZ);
	iboss_thermal.components.environment BB221nX(illumination=orbit_illumination.BB221nX);
	iboss_thermal.components.environment BB221pX(illumination=orbit_illumination.BB221pX);
	iboss_thermal.components.environment BB221nY(illumination=orbit_illumination.BB221nY);
	iboss_thermal.components.environment BB221pY(illumination=orbit_illumination.BB221pY);
	iboss_thermal.components.environment BB221nZ(illumination=orbit_illumination.BB221nZ);
	iboss_thermal.components.environment BB221pZ(illumination=orbit_illumination.BB221pZ);
	iboss_thermal.components.environment BB222nX(illumination=orbit_illumination.BB222nX);
	iboss_thermal.components.environment BB222pX(illumination=orbit_illumination.BB222pX);
	iboss_thermal.components.environment BB222nY(illumination=orbit_illumination.BB222nY);
	iboss_thermal.components.environment BB222pY(illumination=orbit_illumination.BB222pY);
	iboss_thermal.components.environment BB222nZ(illumination=orbit_illumination.BB222nZ);
	iboss_thermal.components.environment BB222pZ(illumination=orbit_illumination.BB222pZ);
	iboss_thermal.components.environment BB223nX(illumination=orbit_illumination.BB223nX);
	iboss_thermal.components.environment BB223pX(illumination=orbit_illumination.BB223pX);
	iboss_thermal.components.environment BB223nY(illumination=orbit_illumination.BB223nY);
	iboss_thermal.components.environment BB223pY(illumination=orbit_illumination.BB223pY);
	iboss_thermal.components.environment BB223nZ(illumination=orbit_illumination.BB223nZ);
	iboss_thermal.components.environment BB223pZ(illumination=orbit_illumination.BB223pZ);
	iboss_thermal.components.environment BB231nX(illumination=orbit_illumination.BB231nX);
	iboss_thermal.components.environment BB231pX(illumination=orbit_illumination.BB231pX);
	iboss_thermal.components.environment BB231nY(illumination=orbit_illumination.BB231nY);
	iboss_thermal.components.environment BB231pY(illumination=orbit_illumination.BB231pY);
	iboss_thermal.components.environment BB231nZ(illumination=orbit_illumination.BB231nZ);
	iboss_thermal.components.environment BB231pZ(illumination=orbit_illumination.BB231pZ);
	iboss_thermal.components.environment BB232nX(illumination=orbit_illumination.BB232nX);
	iboss_thermal.components.environment BB232pX(illumination=orbit_illumination.BB232pX);
	iboss_thermal.components.environment BB232nY(illumination=orbit_illumination.BB232nY);
	iboss_thermal.components.environment BB232pY(illumination=orbit_illumination.BB232pY);
	iboss_thermal.components.environment BB232nZ(illumination=orbit_illumination.BB232nZ);
	iboss_thermal.components.environment BB232pZ(illumination=orbit_illumination.BB232pZ);
	iboss_thermal.components.environment BB233nX(illumination=orbit_illumination.BB233nX);
	iboss_thermal.components.environment BB233pX(illumination=orbit_illumination.BB233pX);
	iboss_thermal.components.environment BB233nY(illumination=orbit_illumination.BB233nY);
	iboss_thermal.components.environment BB233pY(illumination=orbit_illumination.BB233pY);
	iboss_thermal.components.environment BB233nZ(illumination=orbit_illumination.BB233nZ);
	iboss_thermal.components.environment BB233pZ(illumination=orbit_illumination.BB233pZ);
	iboss_thermal.components.environment BB311nX(illumination=orbit_illumination.BB311nX);
	iboss_thermal.components.environment BB311pX(illumination=orbit_illumination.BB311pX);
	iboss_thermal.components.environment BB311nY(illumination=orbit_illumination.BB311nY);
	iboss_thermal.components.environment BB311pY(illumination=orbit_illumination.BB311pY);
	iboss_thermal.components.environment BB311nZ(illumination=orbit_illumination.BB311nZ);
	iboss_thermal.components.environment BB311pZ(illumination=orbit_illumination.BB311pZ);
	iboss_thermal.components.environment BB312nX(illumination=orbit_illumination.BB312nX);
	iboss_thermal.components.environment BB312pX(illumination=orbit_illumination.BB312pX);
	iboss_thermal.components.environment BB312nY(illumination=orbit_illumination.BB312nY);
	iboss_thermal.components.environment BB312pY(illumination=orbit_illumination.BB312pY);
	iboss_thermal.components.environment BB312nZ(illumination=orbit_illumination.BB312nZ);
	iboss_thermal.components.environment BB312pZ(illumination=orbit_illumination.BB312pZ);
	iboss_thermal.components.environment BB313nX(illumination=orbit_illumination.BB313nX);
	iboss_thermal.components.environment BB313pX(illumination=orbit_illumination.BB313pX);
	iboss_thermal.components.environment BB313nY(illumination=orbit_illumination.BB313nY);
	iboss_thermal.components.environment BB313pY(illumination=orbit_illumination.BB313pY);
	iboss_thermal.components.environment BB313nZ(illumination=orbit_illumination.BB313nZ);
	iboss_thermal.components.environment BB313pZ(illumination=orbit_illumination.BB313pZ);
	iboss_thermal.components.environment BB321nX(illumination=orbit_illumination.BB321nX);
	iboss_thermal.components.environment BB321pX(illumination=orbit_illumination.BB321pX);
	iboss_thermal.components.environment BB321nY(illumination=orbit_illumination.BB321nY);
	iboss_thermal.components.environment BB321pY(illumination=orbit_illumination.BB321pY);
	iboss_thermal.components.environment BB321nZ(illumination=orbit_illumination.BB321nZ);
	iboss_thermal.components.environment BB321pZ(illumination=orbit_illumination.BB321pZ);
	iboss_thermal.components.environment BB322nX(illumination=orbit_illumination.BB322nX);
	iboss_thermal.components.environment BB322pX(illumination=orbit_illumination.BB322pX);
	iboss_thermal.components.environment BB322nY(illumination=orbit_illumination.BB322nY);
	iboss_thermal.components.environment BB322pY(illumination=orbit_illumination.BB322pY);
	iboss_thermal.components.environment BB322nZ(illumination=orbit_illumination.BB322nZ);
	iboss_thermal.components.environment BB322pZ(illumination=orbit_illumination.BB322pZ);
	iboss_thermal.components.environment BB323nX(illumination=orbit_illumination.BB323nX);
	iboss_thermal.components.environment BB323pX(illumination=orbit_illumination.BB323pX);
	iboss_thermal.components.environment BB323nY(illumination=orbit_illumination.BB323nY);
	iboss_thermal.components.environment BB323pY(illumination=orbit_illumination.BB323pY);
	iboss_thermal.components.environment BB323nZ(illumination=orbit_illumination.BB323nZ);
	iboss_thermal.components.environment BB323pZ(illumination=orbit_illumination.BB323pZ);
	iboss_thermal.components.environment BB331nX(illumination=orbit_illumination.BB331nX);
	iboss_thermal.components.environment BB331pX(illumination=orbit_illumination.BB331pX);
	iboss_thermal.components.environment BB331nY(illumination=orbit_illumination.BB331nY);
	iboss_thermal.components.environment BB331pY(illumination=orbit_illumination.BB331pY);
	iboss_thermal.components.environment BB331nZ(illumination=orbit_illumination.BB331nZ);
	iboss_thermal.components.environment BB331pZ(illumination=orbit_illumination.BB331pZ);
	iboss_thermal.components.environment BB332nX(illumination=orbit_illumination.BB332nX);
	iboss_thermal.components.environment BB332pX(illumination=orbit_illumination.BB332pX);
	iboss_thermal.components.environment BB332nY(illumination=orbit_illumination.BB332nY);
	iboss_thermal.components.environment BB332pY(illumination=orbit_illumination.BB332pY);
	iboss_thermal.components.environment BB332nZ(illumination=orbit_illumination.BB332nZ);
	iboss_thermal.components.environment BB332pZ(illumination=orbit_illumination.BB332pZ);
	iboss_thermal.components.environment BB333nX(illumination=orbit_illumination.BB333nX);
	iboss_thermal.components.environment BB333pX(illumination=orbit_illumination.BB333pX);
	iboss_thermal.components.environment BB333nY(illumination=orbit_illumination.BB333nY);
	iboss_thermal.components.environment BB333pY(illumination=orbit_illumination.BB333pY);
	iboss_thermal.components.environment BB333nZ(illumination=orbit_illumination.BB333nZ);
	iboss_thermal.components.environment BB333pZ(illumination=orbit_illumination.BB333pZ);
	equation
		connect(BB111nX.thermal_connector_env,BB111.thermal_connector_xn);
		connect(BB111pX.thermal_connector_env,BB111.thermal_connector_xp);
		connect(BB111nY.thermal_connector_env,BB111.thermal_connector_yn);
		connect(BB111pY.thermal_connector_env,BB111.thermal_connector_yp);
		connect(BB111nZ.thermal_connector_env,BB111.thermal_connector_zn);
		connect(BB111pZ.thermal_connector_env,BB111.thermal_connector_zp);
		connect(BB112nX.thermal_connector_env,BB112.thermal_connector_xn);
		connect(BB112pX.thermal_connector_env,BB112.thermal_connector_xp);
		connect(BB112nY.thermal_connector_env,BB112.thermal_connector_yn);
		connect(BB112pY.thermal_connector_env,BB112.thermal_connector_yp);
		connect(BB112nZ.thermal_connector_env,BB112.thermal_connector_zn);
		connect(BB112pZ.thermal_connector_env,BB112.thermal_connector_zp);
		connect(BB111.thermal_connector_zp,TIM_BB111_BB112.thermal_connector2);
		connect(BB112.thermal_connector_zn,TIM_BB111_BB112.thermal_connector1);
		connect(BB113nX.thermal_connector_env,BB113.thermal_connector_xn);
		connect(BB113pX.thermal_connector_env,BB113.thermal_connector_xp);
		connect(BB113nY.thermal_connector_env,BB113.thermal_connector_yn);
		connect(BB113pY.thermal_connector_env,BB113.thermal_connector_yp);
		connect(BB113nZ.thermal_connector_env,BB113.thermal_connector_zn);
		connect(BB113pZ.thermal_connector_env,BB113.thermal_connector_zp);
		connect(BB112.thermal_connector_zp,TIM_BB112_BB113.thermal_connector2);
		connect(BB113.thermal_connector_zn,TIM_BB112_BB113.thermal_connector1);
		connect(BB121nX.thermal_connector_env,BB121.thermal_connector_xn);
		connect(BB121pX.thermal_connector_env,BB121.thermal_connector_xp);
		connect(BB121nY.thermal_connector_env,BB121.thermal_connector_yn);
		connect(BB121pY.thermal_connector_env,BB121.thermal_connector_yp);
		connect(BB121nZ.thermal_connector_env,BB121.thermal_connector_zn);
		connect(BB121pZ.thermal_connector_env,BB121.thermal_connector_zp);
		connect(BB111.thermal_connector_yp,TIM_BB111_BB121.thermal_connector2);
		connect(BB121.thermal_connector_yn,TIM_BB111_BB121.thermal_connector1);
		connect(BB122nX.thermal_connector_env,BB122.thermal_connector_xn);
		connect(BB122pX.thermal_connector_env,BB122.thermal_connector_xp);
		connect(BB122nY.thermal_connector_env,BB122.thermal_connector_yn);
		connect(BB122pY.thermal_connector_env,BB122.thermal_connector_yp);
		connect(BB122nZ.thermal_connector_env,BB122.thermal_connector_zn);
		connect(BB122pZ.thermal_connector_env,BB122.thermal_connector_zp);
		connect(BB112.thermal_connector_yp,TIM_BB112_BB122.thermal_connector2);
		connect(BB122.thermal_connector_yn,TIM_BB112_BB122.thermal_connector1);
		connect(BB121.thermal_connector_zp,TIM_BB121_BB122.thermal_connector2);
		connect(BB122.thermal_connector_zn,TIM_BB121_BB122.thermal_connector1);
		connect(BB123nX.thermal_connector_env,BB123.thermal_connector_xn);
		connect(BB123pX.thermal_connector_env,BB123.thermal_connector_xp);
		connect(BB123nY.thermal_connector_env,BB123.thermal_connector_yn);
		connect(BB123pY.thermal_connector_env,BB123.thermal_connector_yp);
		connect(BB123nZ.thermal_connector_env,BB123.thermal_connector_zn);
		connect(BB123pZ.thermal_connector_env,BB123.thermal_connector_zp);
		connect(BB113.thermal_connector_yp,TIM_BB113_BB123.thermal_connector2);
		connect(BB123.thermal_connector_yn,TIM_BB113_BB123.thermal_connector1);
		connect(BB122.thermal_connector_zp,TIM_BB122_BB123.thermal_connector2);
		connect(BB123.thermal_connector_zn,TIM_BB122_BB123.thermal_connector1);
		connect(BB131nX.thermal_connector_env,BB131.thermal_connector_xn);
		connect(BB131pX.thermal_connector_env,BB131.thermal_connector_xp);
		connect(BB131nY.thermal_connector_env,BB131.thermal_connector_yn);
		connect(BB131pY.thermal_connector_env,BB131.thermal_connector_yp);
		connect(BB131nZ.thermal_connector_env,BB131.thermal_connector_zn);
		connect(BB131pZ.thermal_connector_env,BB131.thermal_connector_zp);
		connect(BB121.thermal_connector_yp,TIM_BB121_BB131.thermal_connector2);
		connect(BB131.thermal_connector_yn,TIM_BB121_BB131.thermal_connector1);
		connect(BB132nX.thermal_connector_env,BB132.thermal_connector_xn);
		connect(BB132pX.thermal_connector_env,BB132.thermal_connector_xp);
		connect(BB132nY.thermal_connector_env,BB132.thermal_connector_yn);
		connect(BB132pY.thermal_connector_env,BB132.thermal_connector_yp);
		connect(BB132nZ.thermal_connector_env,BB132.thermal_connector_zn);
		connect(BB132pZ.thermal_connector_env,BB132.thermal_connector_zp);
		connect(BB122.thermal_connector_yp,TIM_BB122_BB132.thermal_connector2);
		connect(BB132.thermal_connector_yn,TIM_BB122_BB132.thermal_connector1);
		connect(BB131.thermal_connector_zp,TIM_BB131_BB132.thermal_connector2);
		connect(BB132.thermal_connector_zn,TIM_BB131_BB132.thermal_connector1);
		connect(BB133nX.thermal_connector_env,BB133.thermal_connector_xn);
		connect(BB133pX.thermal_connector_env,BB133.thermal_connector_xp);
		connect(BB133nY.thermal_connector_env,BB133.thermal_connector_yn);
		connect(BB133pY.thermal_connector_env,BB133.thermal_connector_yp);
		connect(BB133nZ.thermal_connector_env,BB133.thermal_connector_zn);
		connect(BB133pZ.thermal_connector_env,BB133.thermal_connector_zp);
		connect(BB123.thermal_connector_yp,TIM_BB123_BB133.thermal_connector2);
		connect(BB133.thermal_connector_yn,TIM_BB123_BB133.thermal_connector1);
		connect(BB132.thermal_connector_zp,TIM_BB132_BB133.thermal_connector2);
		connect(BB133.thermal_connector_zn,TIM_BB132_BB133.thermal_connector1);
		connect(BB211nX.thermal_connector_env,BB211.thermal_connector_xn);
		connect(BB211pX.thermal_connector_env,BB211.thermal_connector_xp);
		connect(BB211nY.thermal_connector_env,BB211.thermal_connector_yn);
		connect(BB211pY.thermal_connector_env,BB211.thermal_connector_yp);
		connect(BB211nZ.thermal_connector_env,BB211.thermal_connector_zn);
		connect(BB211pZ.thermal_connector_env,BB211.thermal_connector_zp);
		connect(BB111.thermal_connector_xp,TIM_BB111_BB211.thermal_connector2);
		connect(BB211.thermal_connector_xn,TIM_BB111_BB211.thermal_connector1);
		connect(BB212nX.thermal_connector_env,BB212.thermal_connector_xn);
		connect(BB212pX.thermal_connector_env,BB212.thermal_connector_xp);
		connect(BB212nY.thermal_connector_env,BB212.thermal_connector_yn);
		connect(BB212pY.thermal_connector_env,BB212.thermal_connector_yp);
		connect(BB212nZ.thermal_connector_env,BB212.thermal_connector_zn);
		connect(BB212pZ.thermal_connector_env,BB212.thermal_connector_zp);
		connect(BB112.thermal_connector_xp,TIM_BB112_BB212.thermal_connector2);
		connect(BB212.thermal_connector_xn,TIM_BB112_BB212.thermal_connector1);
		connect(BB211.thermal_connector_zp,TIM_BB211_BB212.thermal_connector2);
		connect(BB212.thermal_connector_zn,TIM_BB211_BB212.thermal_connector1);
		connect(BB213nX.thermal_connector_env,BB213.thermal_connector_xn);
		connect(BB213pX.thermal_connector_env,BB213.thermal_connector_xp);
		connect(BB213nY.thermal_connector_env,BB213.thermal_connector_yn);
		connect(BB213pY.thermal_connector_env,BB213.thermal_connector_yp);
		connect(BB213nZ.thermal_connector_env,BB213.thermal_connector_zn);
		connect(BB213pZ.thermal_connector_env,BB213.thermal_connector_zp);
		connect(BB113.thermal_connector_xp,TIM_BB113_BB213.thermal_connector2);
		connect(BB213.thermal_connector_xn,TIM_BB113_BB213.thermal_connector1);
		connect(BB212.thermal_connector_zp,TIM_BB212_BB213.thermal_connector2);
		connect(BB213.thermal_connector_zn,TIM_BB212_BB213.thermal_connector1);
		connect(BB221nX.thermal_connector_env,BB221.thermal_connector_xn);
		connect(BB221pX.thermal_connector_env,BB221.thermal_connector_xp);
		connect(BB221nY.thermal_connector_env,BB221.thermal_connector_yn);
		connect(BB221pY.thermal_connector_env,BB221.thermal_connector_yp);
		connect(BB221nZ.thermal_connector_env,BB221.thermal_connector_zn);
		connect(BB221pZ.thermal_connector_env,BB221.thermal_connector_zp);
		connect(BB121.thermal_connector_xp,TIM_BB121_BB221.thermal_connector2);
		connect(BB221.thermal_connector_xn,TIM_BB121_BB221.thermal_connector1);
		connect(BB211.thermal_connector_yp,TIM_BB211_BB221.thermal_connector2);
		connect(BB221.thermal_connector_yn,TIM_BB211_BB221.thermal_connector1);
		connect(BB222nX.thermal_connector_env,BB222.thermal_connector_xn);
		connect(BB222pX.thermal_connector_env,BB222.thermal_connector_xp);
		connect(BB222nY.thermal_connector_env,BB222.thermal_connector_yn);
		connect(BB222pY.thermal_connector_env,BB222.thermal_connector_yp);
		connect(BB222nZ.thermal_connector_env,BB222.thermal_connector_zn);
		connect(BB222pZ.thermal_connector_env,BB222.thermal_connector_zp);
		connect(BB122.thermal_connector_xp,TIM_BB122_BB222.thermal_connector2);
		connect(BB222.thermal_connector_xn,TIM_BB122_BB222.thermal_connector1);
		connect(BB212.thermal_connector_yp,TIM_BB212_BB222.thermal_connector2);
		connect(BB222.thermal_connector_yn,TIM_BB212_BB222.thermal_connector1);
		connect(BB221.thermal_connector_zp,TIM_BB221_BB222.thermal_connector2);
		connect(BB222.thermal_connector_zn,TIM_BB221_BB222.thermal_connector1);
		connect(BB223nX.thermal_connector_env,BB223.thermal_connector_xn);
		connect(BB223pX.thermal_connector_env,BB223.thermal_connector_xp);
		connect(BB223nY.thermal_connector_env,BB223.thermal_connector_yn);
		connect(BB223pY.thermal_connector_env,BB223.thermal_connector_yp);
		connect(BB223nZ.thermal_connector_env,BB223.thermal_connector_zn);
		connect(BB223pZ.thermal_connector_env,BB223.thermal_connector_zp);
		connect(BB123.thermal_connector_xp,TIM_BB123_BB223.thermal_connector2);
		connect(BB223.thermal_connector_xn,TIM_BB123_BB223.thermal_connector1);
		connect(BB213.thermal_connector_yp,TIM_BB213_BB223.thermal_connector2);
		connect(BB223.thermal_connector_yn,TIM_BB213_BB223.thermal_connector1);
		connect(BB222.thermal_connector_zp,TIM_BB222_BB223.thermal_connector2);
		connect(BB223.thermal_connector_zn,TIM_BB222_BB223.thermal_connector1);
		connect(BB231nX.thermal_connector_env,BB231.thermal_connector_xn);
		connect(BB231pX.thermal_connector_env,BB231.thermal_connector_xp);
		connect(BB231nY.thermal_connector_env,BB231.thermal_connector_yn);
		connect(BB231pY.thermal_connector_env,BB231.thermal_connector_yp);
		connect(BB231nZ.thermal_connector_env,BB231.thermal_connector_zn);
		connect(BB231pZ.thermal_connector_env,BB231.thermal_connector_zp);
		connect(BB131.thermal_connector_xp,TIM_BB131_BB231.thermal_connector2);
		connect(BB231.thermal_connector_xn,TIM_BB131_BB231.thermal_connector1);
		connect(BB221.thermal_connector_yp,TIM_BB221_BB231.thermal_connector2);
		connect(BB231.thermal_connector_yn,TIM_BB221_BB231.thermal_connector1);
		connect(BB232nX.thermal_connector_env,BB232.thermal_connector_xn);
		connect(BB232pX.thermal_connector_env,BB232.thermal_connector_xp);
		connect(BB232nY.thermal_connector_env,BB232.thermal_connector_yn);
		connect(BB232pY.thermal_connector_env,BB232.thermal_connector_yp);
		connect(BB232nZ.thermal_connector_env,BB232.thermal_connector_zn);
		connect(BB232pZ.thermal_connector_env,BB232.thermal_connector_zp);
		connect(BB132.thermal_connector_xp,TIM_BB132_BB232.thermal_connector2);
		connect(BB232.thermal_connector_xn,TIM_BB132_BB232.thermal_connector1);
		connect(BB222.thermal_connector_yp,TIM_BB222_BB232.thermal_connector2);
		connect(BB232.thermal_connector_yn,TIM_BB222_BB232.thermal_connector1);
		connect(BB231.thermal_connector_zp,TIM_BB231_BB232.thermal_connector2);
		connect(BB232.thermal_connector_zn,TIM_BB231_BB232.thermal_connector1);
		connect(BB233nX.thermal_connector_env,BB233.thermal_connector_xn);
		connect(BB233pX.thermal_connector_env,BB233.thermal_connector_xp);
		connect(BB233nY.thermal_connector_env,BB233.thermal_connector_yn);
		connect(BB233pY.thermal_connector_env,BB233.thermal_connector_yp);
		connect(BB233nZ.thermal_connector_env,BB233.thermal_connector_zn);
		connect(BB233pZ.thermal_connector_env,BB233.thermal_connector_zp);
		connect(BB133.thermal_connector_xp,TIM_BB133_BB233.thermal_connector2);
		connect(BB233.thermal_connector_xn,TIM_BB133_BB233.thermal_connector1);
		connect(BB223.thermal_connector_yp,TIM_BB223_BB233.thermal_connector2);
		connect(BB233.thermal_connector_yn,TIM_BB223_BB233.thermal_connector1);
		connect(BB232.thermal_connector_zp,TIM_BB232_BB233.thermal_connector2);
		connect(BB233.thermal_connector_zn,TIM_BB232_BB233.thermal_connector1);
		connect(BB311nX.thermal_connector_env,BB311.thermal_connector_xn);
		connect(BB311pX.thermal_connector_env,BB311.thermal_connector_xp);
		connect(BB311nY.thermal_connector_env,BB311.thermal_connector_yn);
		connect(BB311pY.thermal_connector_env,BB311.thermal_connector_yp);
		connect(BB311nZ.thermal_connector_env,BB311.thermal_connector_zn);
		connect(BB311pZ.thermal_connector_env,BB311.thermal_connector_zp);
		connect(BB211.thermal_connector_xp,TIM_BB211_BB311.thermal_connector2);
		connect(BB311.thermal_connector_xn,TIM_BB211_BB311.thermal_connector1);
		connect(BB312nX.thermal_connector_env,BB312.thermal_connector_xn);
		connect(BB312pX.thermal_connector_env,BB312.thermal_connector_xp);
		connect(BB312nY.thermal_connector_env,BB312.thermal_connector_yn);
		connect(BB312pY.thermal_connector_env,BB312.thermal_connector_yp);
		connect(BB312nZ.thermal_connector_env,BB312.thermal_connector_zn);
		connect(BB312pZ.thermal_connector_env,BB312.thermal_connector_zp);
		connect(BB212.thermal_connector_xp,TIM_BB212_BB312.thermal_connector2);
		connect(BB312.thermal_connector_xn,TIM_BB212_BB312.thermal_connector1);
		connect(BB311.thermal_connector_zp,TIM_BB311_BB312.thermal_connector2);
		connect(BB312.thermal_connector_zn,TIM_BB311_BB312.thermal_connector1);
		connect(BB313nX.thermal_connector_env,BB313.thermal_connector_xn);
		connect(BB313pX.thermal_connector_env,BB313.thermal_connector_xp);
		connect(BB313nY.thermal_connector_env,BB313.thermal_connector_yn);
		connect(BB313pY.thermal_connector_env,BB313.thermal_connector_yp);
		connect(BB313nZ.thermal_connector_env,BB313.thermal_connector_zn);
		connect(BB313pZ.thermal_connector_env,BB313.thermal_connector_zp);
		connect(BB213.thermal_connector_xp,TIM_BB213_BB313.thermal_connector2);
		connect(BB313.thermal_connector_xn,TIM_BB213_BB313.thermal_connector1);
		connect(BB312.thermal_connector_zp,TIM_BB312_BB313.thermal_connector2);
		connect(BB313.thermal_connector_zn,TIM_BB312_BB313.thermal_connector1);
		connect(BB321nX.thermal_connector_env,BB321.thermal_connector_xn);
		connect(BB321pX.thermal_connector_env,BB321.thermal_connector_xp);
		connect(BB321nY.thermal_connector_env,BB321.thermal_connector_yn);
		connect(BB321pY.thermal_connector_env,BB321.thermal_connector_yp);
		connect(BB321nZ.thermal_connector_env,BB321.thermal_connector_zn);
		connect(BB321pZ.thermal_connector_env,BB321.thermal_connector_zp);
		connect(BB221.thermal_connector_xp,TIM_BB221_BB321.thermal_connector2);
		connect(BB321.thermal_connector_xn,TIM_BB221_BB321.thermal_connector1);
		connect(BB311.thermal_connector_yp,TIM_BB311_BB321.thermal_connector2);
		connect(BB321.thermal_connector_yn,TIM_BB311_BB321.thermal_connector1);
		connect(BB322nX.thermal_connector_env,BB322.thermal_connector_xn);
		connect(BB322pX.thermal_connector_env,BB322.thermal_connector_xp);
		connect(BB322nY.thermal_connector_env,BB322.thermal_connector_yn);
		connect(BB322pY.thermal_connector_env,BB322.thermal_connector_yp);
		connect(BB322nZ.thermal_connector_env,BB322.thermal_connector_zn);
		connect(BB322pZ.thermal_connector_env,BB322.thermal_connector_zp);
		connect(BB222.thermal_connector_xp,TIM_BB222_BB322.thermal_connector2);
		connect(BB322.thermal_connector_xn,TIM_BB222_BB322.thermal_connector1);
		connect(BB312.thermal_connector_yp,TIM_BB312_BB322.thermal_connector2);
		connect(BB322.thermal_connector_yn,TIM_BB312_BB322.thermal_connector1);
		connect(BB321.thermal_connector_zp,TIM_BB321_BB322.thermal_connector2);
		connect(BB322.thermal_connector_zn,TIM_BB321_BB322.thermal_connector1);
		connect(BB323nX.thermal_connector_env,BB323.thermal_connector_xn);
		connect(BB323pX.thermal_connector_env,BB323.thermal_connector_xp);
		connect(BB323nY.thermal_connector_env,BB323.thermal_connector_yn);
		connect(BB323pY.thermal_connector_env,BB323.thermal_connector_yp);
		connect(BB323nZ.thermal_connector_env,BB323.thermal_connector_zn);
		connect(BB323pZ.thermal_connector_env,BB323.thermal_connector_zp);
		connect(BB223.thermal_connector_xp,TIM_BB223_BB323.thermal_connector2);
		connect(BB323.thermal_connector_xn,TIM_BB223_BB323.thermal_connector1);
		connect(BB313.thermal_connector_yp,TIM_BB313_BB323.thermal_connector2);
		connect(BB323.thermal_connector_yn,TIM_BB313_BB323.thermal_connector1);
		connect(BB322.thermal_connector_zp,TIM_BB322_BB323.thermal_connector2);
		connect(BB323.thermal_connector_zn,TIM_BB322_BB323.thermal_connector1);
		connect(BB331nX.thermal_connector_env,BB331.thermal_connector_xn);
		connect(BB331pX.thermal_connector_env,BB331.thermal_connector_xp);
		connect(BB331nY.thermal_connector_env,BB331.thermal_connector_yn);
		connect(BB331pY.thermal_connector_env,BB331.thermal_connector_yp);
		connect(BB331nZ.thermal_connector_env,BB331.thermal_connector_zn);
		connect(BB331pZ.thermal_connector_env,BB331.thermal_connector_zp);
		connect(BB231.thermal_connector_xp,TIM_BB231_BB331.thermal_connector2);
		connect(BB331.thermal_connector_xn,TIM_BB231_BB331.thermal_connector1);
		connect(BB321.thermal_connector_yp,TIM_BB321_BB331.thermal_connector2);
		connect(BB331.thermal_connector_yn,TIM_BB321_BB331.thermal_connector1);
		connect(BB332nX.thermal_connector_env,BB332.thermal_connector_xn);
		connect(BB332pX.thermal_connector_env,BB332.thermal_connector_xp);
		connect(BB332nY.thermal_connector_env,BB332.thermal_connector_yn);
		connect(BB332pY.thermal_connector_env,BB332.thermal_connector_yp);
		connect(BB332nZ.thermal_connector_env,BB332.thermal_connector_zn);
		connect(BB332pZ.thermal_connector_env,BB332.thermal_connector_zp);
		connect(BB232.thermal_connector_xp,TIM_BB232_BB332.thermal_connector2);
		connect(BB332.thermal_connector_xn,TIM_BB232_BB332.thermal_connector1);
		connect(BB322.thermal_connector_yp,TIM_BB322_BB332.thermal_connector2);
		connect(BB332.thermal_connector_yn,TIM_BB322_BB332.thermal_connector1);
		connect(BB331.thermal_connector_zp,TIM_BB331_BB332.thermal_connector2);
		connect(BB332.thermal_connector_zn,TIM_BB331_BB332.thermal_connector1);
		connect(BB333nX.thermal_connector_env,BB333.thermal_connector_xn);
		connect(BB333pX.thermal_connector_env,BB333.thermal_connector_xp);
		connect(BB333nY.thermal_connector_env,BB333.thermal_connector_yn);
		connect(BB333pY.thermal_connector_env,BB333.thermal_connector_yp);
		connect(BB333nZ.thermal_connector_env,BB333.thermal_connector_zn);
		connect(BB333pZ.thermal_connector_env,BB333.thermal_connector_zp);
		connect(BB233.thermal_connector_xp,TIM_BB233_BB333.thermal_connector2);
		connect(BB333.thermal_connector_xn,TIM_BB233_BB333.thermal_connector1);
		connect(BB323.thermal_connector_yp,TIM_BB323_BB333.thermal_connector2);
		connect(BB333.thermal_connector_yn,TIM_BB323_BB333.thermal_connector1);
		connect(BB332.thermal_connector_zp,TIM_BB332_BB333.thermal_connector2);
		connect(BB333.thermal_connector_zn,TIM_BB332_BB333.thermal_connector1);
	annotation(
		orbit_illumination(viewinfo[0](
			position(
				left=0,
				top=0,
				right=61,
				bottom=31),
			typename="ObjectInfo")),
		BB111(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB112(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB113(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB121(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB122(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB123(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB131(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB132(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB133(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB211(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB212(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB213(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB221(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB222(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB223(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB231(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB232(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB233(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB311(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB312(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB313(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB321(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB322(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB323(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB331(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB332(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		BB333(
			port_b(
				T(flags=2),
				Q_flow(flags=2)),
			tCS1(temperature_EB(
				T(flags=2),
				port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		viewinfo[2](
			viewSettings(clrRaster=12632256),
			typename="ModelInfo"),
		experiment(
			StopTime=20000,
			StartTime=0));
end generic_satellite_3x3x3;
