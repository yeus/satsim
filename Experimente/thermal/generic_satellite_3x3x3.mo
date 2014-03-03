// CP: 65001
// SimulationX Version: 3.6.1.26028 x64
within ;
model generic_satellite_3x3x3 "generic_satellite_3x3x3.mo"
	import illumination.*;
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
	iboss_thermal.components.environment BB111nY(illumination=orbit_illumination.BB111nY);
	iboss_thermal.components.environment BB111nZ(illumination=orbit_illumination.BB111nZ);
	iboss_thermal.components.environment BB112nX(illumination=orbit_illumination.BB112nX);
	iboss_thermal.components.environment BB112nY(illumination=orbit_illumination.BB112nY);
	iboss_thermal.components.environment BB113nX(illumination=orbit_illumination.BB113nX);
	iboss_thermal.components.environment BB113nY(illumination=orbit_illumination.BB113nY);
	iboss_thermal.components.environment BB113pZ(illumination=orbit_illumination.BB113pZ);
	iboss_thermal.components.environment BB121nX(illumination=orbit_illumination.BB121nX);
	iboss_thermal.components.environment BB121nZ(illumination=orbit_illumination.BB121nZ);
	iboss_thermal.components.environment BB122nX(illumination=orbit_illumination.BB122nX);
	iboss_thermal.components.environment BB123nX(illumination=orbit_illumination.BB123nX);
	iboss_thermal.components.environment BB123pZ(illumination=orbit_illumination.BB123pZ);
	iboss_thermal.components.environment BB131nX(illumination=orbit_illumination.BB131nX);
	iboss_thermal.components.environment BB131pY(illumination=orbit_illumination.BB131pY);
	iboss_thermal.components.environment BB131nZ(illumination=orbit_illumination.BB131nZ);
	iboss_thermal.components.environment BB132nX(illumination=orbit_illumination.BB132nX);
	iboss_thermal.components.environment BB132pY(illumination=orbit_illumination.BB132pY);
	iboss_thermal.components.environment BB133nX(illumination=orbit_illumination.BB133nX);
	iboss_thermal.components.environment BB133pY(illumination=orbit_illumination.BB133pY);
	iboss_thermal.components.environment BB133pZ(illumination=orbit_illumination.BB133pZ);
	iboss_thermal.components.environment BB211nY(illumination=orbit_illumination.BB211nY);
	iboss_thermal.components.environment BB211nZ(illumination=orbit_illumination.BB211nZ);
	iboss_thermal.components.environment BB212nY(illumination=orbit_illumination.BB212nY);
	iboss_thermal.components.environment BB213nY(illumination=orbit_illumination.BB213nY);
	iboss_thermal.components.environment BB213pZ(illumination=orbit_illumination.BB213pZ);
	iboss_thermal.components.environment BB221nZ(illumination=orbit_illumination.BB221nZ);
	iboss_thermal.components.environment BB223pZ(illumination=orbit_illumination.BB223pZ);
	iboss_thermal.components.environment BB231pY(illumination=orbit_illumination.BB231pY);
	iboss_thermal.components.environment BB231nZ(illumination=orbit_illumination.BB231nZ);
	iboss_thermal.components.environment BB232pY(illumination=orbit_illumination.BB232pY);
	iboss_thermal.components.environment BB233pY(illumination=orbit_illumination.BB233pY);
	iboss_thermal.components.environment BB233pZ(illumination=orbit_illumination.BB233pZ);
	iboss_thermal.components.environment BB311pX(illumination=orbit_illumination.BB311pX);
	iboss_thermal.components.environment BB311nY(illumination=orbit_illumination.BB311nY);
	iboss_thermal.components.environment BB311nZ(illumination=orbit_illumination.BB311nZ);
	iboss_thermal.components.environment BB312pX(illumination=orbit_illumination.BB312pX);
	iboss_thermal.components.environment BB312nY(illumination=orbit_illumination.BB312nY);
	iboss_thermal.components.environment BB313pX(illumination=orbit_illumination.BB313pX);
	iboss_thermal.components.environment BB313nY(illumination=orbit_illumination.BB313nY);
	iboss_thermal.components.environment BB313pZ(illumination=orbit_illumination.BB313pZ);
	iboss_thermal.components.environment BB321pX(illumination=orbit_illumination.BB321pX);
	iboss_thermal.components.environment BB321nZ(illumination=orbit_illumination.BB321nZ);
	iboss_thermal.components.environment BB322pX(illumination=orbit_illumination.BB322pX);
	iboss_thermal.components.environment BB323pX(illumination=orbit_illumination.BB323pX);
	iboss_thermal.components.environment BB323pZ(illumination=orbit_illumination.BB323pZ);
	iboss_thermal.components.environment BB331pX(illumination=orbit_illumination.BB331pX);
	iboss_thermal.components.environment BB331pY(illumination=orbit_illumination.BB331pY);
	iboss_thermal.components.environment BB331nZ(illumination=orbit_illumination.BB331nZ);
	iboss_thermal.components.environment BB332pX(illumination=orbit_illumination.BB332pX);
	iboss_thermal.components.environment BB332pY(illumination=orbit_illumination.BB332pY);
	iboss_thermal.components.environment BB333pX(illumination=orbit_illumination.BB333pX);
	iboss_thermal.components.environment BB333pY(illumination=orbit_illumination.BB333pY);
	iboss_thermal.components.environment BB333pZ(illumination=orbit_illumination.BB333pZ);
	equation
		connect(BB111nX.thermal_connector_env,BB111.thermal_connector_xn);
		connect(BB111nY.thermal_connector_env,BB111.thermal_connector_yn);
		connect(BB111nZ.thermal_connector_env,BB111.thermal_connector_zn);
		connect(BB112nX.thermal_connector_env,BB112.thermal_connector_xn);
		connect(BB112nY.thermal_connector_env,BB112.thermal_connector_yn);
		connect(BB111.thermal_connector_zp,TIM_BB111_BB112.thermal_connector2);
		connect(BB112.thermal_connector_zn,TIM_BB111_BB112.thermal_connector1);
		connect(BB113nX.thermal_connector_env,BB113.thermal_connector_xn);
		connect(BB113nY.thermal_connector_env,BB113.thermal_connector_yn);
		connect(BB113pZ.thermal_connector_env,BB113.thermal_connector_zp);
		connect(BB112.thermal_connector_zp,TIM_BB112_BB113.thermal_connector2);
		connect(BB113.thermal_connector_zn,TIM_BB112_BB113.thermal_connector1);
		connect(BB121nX.thermal_connector_env,BB121.thermal_connector_xn);
		connect(BB121nZ.thermal_connector_env,BB121.thermal_connector_zn);
		connect(BB111.thermal_connector_yp,TIM_BB111_BB121.thermal_connector2);
		connect(BB121.thermal_connector_yn,TIM_BB111_BB121.thermal_connector1);
		connect(BB122nX.thermal_connector_env,BB122.thermal_connector_xn);
		connect(BB112.thermal_connector_yp,TIM_BB112_BB122.thermal_connector2);
		connect(BB122.thermal_connector_yn,TIM_BB112_BB122.thermal_connector1);
		connect(BB121.thermal_connector_zp,TIM_BB121_BB122.thermal_connector2);
		connect(BB122.thermal_connector_zn,TIM_BB121_BB122.thermal_connector1);
		connect(BB123nX.thermal_connector_env,BB123.thermal_connector_xn);
		connect(BB123pZ.thermal_connector_env,BB123.thermal_connector_zp);
		connect(BB113.thermal_connector_yp,TIM_BB113_BB123.thermal_connector2);
		connect(BB123.thermal_connector_yn,TIM_BB113_BB123.thermal_connector1);
		connect(BB122.thermal_connector_zp,TIM_BB122_BB123.thermal_connector2);
		connect(BB123.thermal_connector_zn,TIM_BB122_BB123.thermal_connector1);
		connect(BB131nX.thermal_connector_env,BB131.thermal_connector_xn);
		connect(BB131pY.thermal_connector_env,BB131.thermal_connector_yp);
		connect(BB131nZ.thermal_connector_env,BB131.thermal_connector_zn);
		connect(BB121.thermal_connector_yp,TIM_BB121_BB131.thermal_connector2);
		connect(BB131.thermal_connector_yn,TIM_BB121_BB131.thermal_connector1);
		connect(BB132nX.thermal_connector_env,BB132.thermal_connector_xn);
		connect(BB132pY.thermal_connector_env,BB132.thermal_connector_yp);
		connect(BB122.thermal_connector_yp,TIM_BB122_BB132.thermal_connector2);
		connect(BB132.thermal_connector_yn,TIM_BB122_BB132.thermal_connector1);
		connect(BB131.thermal_connector_zp,TIM_BB131_BB132.thermal_connector2);
		connect(BB132.thermal_connector_zn,TIM_BB131_BB132.thermal_connector1);
		connect(BB133nX.thermal_connector_env,BB133.thermal_connector_xn);
		connect(BB133pY.thermal_connector_env,BB133.thermal_connector_yp);
		connect(BB133pZ.thermal_connector_env,BB133.thermal_connector_zp);
		connect(BB123.thermal_connector_yp,TIM_BB123_BB133.thermal_connector2);
		connect(BB133.thermal_connector_yn,TIM_BB123_BB133.thermal_connector1);
		connect(BB132.thermal_connector_zp,TIM_BB132_BB133.thermal_connector2);
		connect(BB133.thermal_connector_zn,TIM_BB132_BB133.thermal_connector1);
		connect(BB211nY.thermal_connector_env,BB211.thermal_connector_yn);
		connect(BB211nZ.thermal_connector_env,BB211.thermal_connector_zn);
		connect(BB111.thermal_connector_xp,TIM_BB111_BB211.thermal_connector2);
		connect(BB211.thermal_connector_xn,TIM_BB111_BB211.thermal_connector1);
		connect(BB212nY.thermal_connector_env,BB212.thermal_connector_yn);
		connect(BB112.thermal_connector_xp,TIM_BB112_BB212.thermal_connector2);
		connect(BB212.thermal_connector_xn,TIM_BB112_BB212.thermal_connector1);
		connect(BB211.thermal_connector_zp,TIM_BB211_BB212.thermal_connector2);
		connect(BB212.thermal_connector_zn,TIM_BB211_BB212.thermal_connector1);
		connect(BB213nY.thermal_connector_env,BB213.thermal_connector_yn);
		connect(BB213pZ.thermal_connector_env,BB213.thermal_connector_zp);
		connect(BB113.thermal_connector_xp,TIM_BB113_BB213.thermal_connector2);
		connect(BB213.thermal_connector_xn,TIM_BB113_BB213.thermal_connector1);
		connect(BB212.thermal_connector_zp,TIM_BB212_BB213.thermal_connector2);
		connect(BB213.thermal_connector_zn,TIM_BB212_BB213.thermal_connector1);
		connect(BB221nZ.thermal_connector_env,BB221.thermal_connector_zn);
		connect(BB121.thermal_connector_xp,TIM_BB121_BB221.thermal_connector2);
		connect(BB221.thermal_connector_xn,TIM_BB121_BB221.thermal_connector1);
		connect(BB211.thermal_connector_yp,TIM_BB211_BB221.thermal_connector2);
		connect(BB221.thermal_connector_yn,TIM_BB211_BB221.thermal_connector1);
		connect(BB122.thermal_connector_xp,TIM_BB122_BB222.thermal_connector2);
		connect(BB222.thermal_connector_xn,TIM_BB122_BB222.thermal_connector1);
		connect(BB212.thermal_connector_yp,TIM_BB212_BB222.thermal_connector2);
		connect(BB222.thermal_connector_yn,TIM_BB212_BB222.thermal_connector1);
		connect(BB221.thermal_connector_zp,TIM_BB221_BB222.thermal_connector2);
		connect(BB222.thermal_connector_zn,TIM_BB221_BB222.thermal_connector1);
		connect(BB223pZ.thermal_connector_env,BB223.thermal_connector_zp);
		connect(BB123.thermal_connector_xp,TIM_BB123_BB223.thermal_connector2);
		connect(BB223.thermal_connector_xn,TIM_BB123_BB223.thermal_connector1);
		connect(BB213.thermal_connector_yp,TIM_BB213_BB223.thermal_connector2);
		connect(BB223.thermal_connector_yn,TIM_BB213_BB223.thermal_connector1);
		connect(BB222.thermal_connector_zp,TIM_BB222_BB223.thermal_connector2);
		connect(BB223.thermal_connector_zn,TIM_BB222_BB223.thermal_connector1);
		connect(BB231pY.thermal_connector_env,BB231.thermal_connector_yp);
		connect(BB231nZ.thermal_connector_env,BB231.thermal_connector_zn);
		connect(BB131.thermal_connector_xp,TIM_BB131_BB231.thermal_connector2);
		connect(BB231.thermal_connector_xn,TIM_BB131_BB231.thermal_connector1);
		connect(BB221.thermal_connector_yp,TIM_BB221_BB231.thermal_connector2);
		connect(BB231.thermal_connector_yn,TIM_BB221_BB231.thermal_connector1);
		connect(BB232pY.thermal_connector_env,BB232.thermal_connector_yp);
		connect(BB132.thermal_connector_xp,TIM_BB132_BB232.thermal_connector2);
		connect(BB232.thermal_connector_xn,TIM_BB132_BB232.thermal_connector1);
		connect(BB222.thermal_connector_yp,TIM_BB222_BB232.thermal_connector2);
		connect(BB232.thermal_connector_yn,TIM_BB222_BB232.thermal_connector1);
		connect(BB231.thermal_connector_zp,TIM_BB231_BB232.thermal_connector2);
		connect(BB232.thermal_connector_zn,TIM_BB231_BB232.thermal_connector1);
		connect(BB233pY.thermal_connector_env,BB233.thermal_connector_yp);
		connect(BB233pZ.thermal_connector_env,BB233.thermal_connector_zp);
		connect(BB133.thermal_connector_xp,TIM_BB133_BB233.thermal_connector2);
		connect(BB233.thermal_connector_xn,TIM_BB133_BB233.thermal_connector1);
		connect(BB223.thermal_connector_yp,TIM_BB223_BB233.thermal_connector2);
		connect(BB233.thermal_connector_yn,TIM_BB223_BB233.thermal_connector1);
		connect(BB232.thermal_connector_zp,TIM_BB232_BB233.thermal_connector2);
		connect(BB233.thermal_connector_zn,TIM_BB232_BB233.thermal_connector1);
		connect(BB311pX.thermal_connector_env,BB311.thermal_connector_xp);
		connect(BB311nY.thermal_connector_env,BB311.thermal_connector_yn);
		connect(BB311nZ.thermal_connector_env,BB311.thermal_connector_zn);
		connect(BB211.thermal_connector_xp,TIM_BB211_BB311.thermal_connector2);
		connect(BB311.thermal_connector_xn,TIM_BB211_BB311.thermal_connector1);
		connect(BB312pX.thermal_connector_env,BB312.thermal_connector_xp);
		connect(BB312nY.thermal_connector_env,BB312.thermal_connector_yn);
		connect(BB212.thermal_connector_xp,TIM_BB212_BB312.thermal_connector2);
		connect(BB312.thermal_connector_xn,TIM_BB212_BB312.thermal_connector1);
		connect(BB311.thermal_connector_zp,TIM_BB311_BB312.thermal_connector2);
		connect(BB312.thermal_connector_zn,TIM_BB311_BB312.thermal_connector1);
		connect(BB313pX.thermal_connector_env,BB313.thermal_connector_xp);
		connect(BB313nY.thermal_connector_env,BB313.thermal_connector_yn);
		connect(BB313pZ.thermal_connector_env,BB313.thermal_connector_zp);
		connect(BB213.thermal_connector_xp,TIM_BB213_BB313.thermal_connector2);
		connect(BB313.thermal_connector_xn,TIM_BB213_BB313.thermal_connector1);
		connect(BB312.thermal_connector_zp,TIM_BB312_BB313.thermal_connector2);
		connect(BB313.thermal_connector_zn,TIM_BB312_BB313.thermal_connector1);
		connect(BB321pX.thermal_connector_env,BB321.thermal_connector_xp);
		connect(BB321nZ.thermal_connector_env,BB321.thermal_connector_zn);
		connect(BB221.thermal_connector_xp,TIM_BB221_BB321.thermal_connector2);
		connect(BB321.thermal_connector_xn,TIM_BB221_BB321.thermal_connector1);
		connect(BB311.thermal_connector_yp,TIM_BB311_BB321.thermal_connector2);
		connect(BB321.thermal_connector_yn,TIM_BB311_BB321.thermal_connector1);
		connect(BB322pX.thermal_connector_env,BB322.thermal_connector_xp);
		connect(BB222.thermal_connector_xp,TIM_BB222_BB322.thermal_connector2);
		connect(BB322.thermal_connector_xn,TIM_BB222_BB322.thermal_connector1);
		connect(BB312.thermal_connector_yp,TIM_BB312_BB322.thermal_connector2);
		connect(BB322.thermal_connector_yn,TIM_BB312_BB322.thermal_connector1);
		connect(BB321.thermal_connector_zp,TIM_BB321_BB322.thermal_connector2);
		connect(BB322.thermal_connector_zn,TIM_BB321_BB322.thermal_connector1);
		connect(BB323pX.thermal_connector_env,BB323.thermal_connector_xp);
		connect(BB323pZ.thermal_connector_env,BB323.thermal_connector_zp);
		connect(BB223.thermal_connector_xp,TIM_BB223_BB323.thermal_connector2);
		connect(BB323.thermal_connector_xn,TIM_BB223_BB323.thermal_connector1);
		connect(BB313.thermal_connector_yp,TIM_BB313_BB323.thermal_connector2);
		connect(BB323.thermal_connector_yn,TIM_BB313_BB323.thermal_connector1);
		connect(BB322.thermal_connector_zp,TIM_BB322_BB323.thermal_connector2);
		connect(BB323.thermal_connector_zn,TIM_BB322_BB323.thermal_connector1);
		connect(BB331pX.thermal_connector_env,BB331.thermal_connector_xp);
		connect(BB331pY.thermal_connector_env,BB331.thermal_connector_yp);
		connect(BB331nZ.thermal_connector_env,BB331.thermal_connector_zn);
		connect(BB231.thermal_connector_xp,TIM_BB231_BB331.thermal_connector2);
		connect(BB331.thermal_connector_xn,TIM_BB231_BB331.thermal_connector1);
		connect(BB321.thermal_connector_yp,TIM_BB321_BB331.thermal_connector2);
		connect(BB331.thermal_connector_yn,TIM_BB321_BB331.thermal_connector1);
		connect(BB332pX.thermal_connector_env,BB332.thermal_connector_xp);
		connect(BB332pY.thermal_connector_env,BB332.thermal_connector_yp);
		connect(BB232.thermal_connector_xp,TIM_BB232_BB332.thermal_connector2);
		connect(BB332.thermal_connector_xn,TIM_BB232_BB332.thermal_connector1);
		connect(BB322.thermal_connector_yp,TIM_BB322_BB332.thermal_connector2);
		connect(BB332.thermal_connector_yn,TIM_BB322_BB332.thermal_connector1);
		connect(BB331.thermal_connector_zp,TIM_BB331_BB332.thermal_connector2);
		connect(BB332.thermal_connector_zn,TIM_BB331_BB332.thermal_connector1);
		connect(BB333pX.thermal_connector_env,BB333.thermal_connector_xp);
		connect(BB333pY.thermal_connector_env,BB333.thermal_connector_yp);
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
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
			tCS1(
				heater_on(flags=2),
				cooler_on(flags=2),
				temperature_EB(
					T(flags=2),
					port(T(flags=2)))),
			heater_cooler_EPS1(
				heating_power(y(flags=2)),
				heater_power(port(Q_flow(flags=2))),
				cooling_power(y(flags=2)),
				cooler_power(port(Q_flow(flags=2))),
				lower_Temp(y(flags=2)),
				upper_Temp(y(flags=2)))),
		TIM_BB111_BB112(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB112_BB113(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB111_BB121(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB112_BB122(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB121_BB122(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB113_BB123(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB122_BB123(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB121_BB131(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB122_BB132(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB131_BB132(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB123_BB133(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB132_BB133(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB111_BB211(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB112_BB212(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB211_BB212(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB113_BB213(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB212_BB213(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB121_BB221(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB211_BB221(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB122_BB222(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB212_BB222(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB221_BB222(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB123_BB223(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB213_BB223(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB222_BB223(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB131_BB231(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB221_BB231(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB132_BB232(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB222_BB232(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB231_BB232(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB133_BB233(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB223_BB233(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB232_BB233(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB211_BB311(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB212_BB312(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB311_BB312(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB213_BB313(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB312_BB313(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB221_BB321(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB311_BB321(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB222_BB322(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB312_BB322(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB321_BB322(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB223_BB323(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB313_BB323(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB322_BB323(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB231_BB331(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB321_BB331(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB232_BB332(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB322_BB332(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB331_BB332(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB233_BB333(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB323_BB333(Conductance_TIM_TSS(Q_flow(flags=2))),
		TIM_BB332_BB333(Conductance_TIM_TSS(Q_flow(flags=2))),
		BB111nX(HeatFlow_Rad(port(Q_flow(flags=2)))),
		BB312pX(HeatFlow_Rad(port(Q_flow(flags=2)))),
		viewinfo[2](
			viewSettings(clrRaster=12632256),
			typename="ModelInfo"),
		experiment(
			StopTime=125000,
			StartTime=0));
end generic_satellite_3x3x3;
