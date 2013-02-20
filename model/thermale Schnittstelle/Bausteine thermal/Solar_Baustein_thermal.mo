model Solar_Baustein_thermal "thermisches model eines Bausteins mit 6 Seiten mit Schnittstellen"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-90.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-50.0},{10.0,50.0}}),Rectangle(visible=true, origin={90.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-50.0},{10.0,50.0}}),Rectangle(visible=true, origin={0.0,90.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-50.0,-10.0},{50.0,10.0}}),Rectangle(visible=true, origin={0.0,-90.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-50.0,-10.0},{50.0,10.0}}),Rectangle(visible=true, lineColor={255,0,0}, fillColor={255,255,255}, lineThickness=2, extent={{-80.0,-80.0},{80.0,80.0}}),Text(visible=true, origin={0.0,30.0}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-78.4853,-20.0},{78.4853,20.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold}),Text(visible=true, origin={0.0,68.5471}, fillPattern=FillPattern.Solid, extent={{-13.4032,-11.4529},{13.4032,11.4529}}, textString="yp", fontName="Arial"),Text(visible=true, origin={0.0,-66.5225}, fillPattern=FillPattern.Solid, extent={{-13.4032,-11.4529},{13.4032,11.4529}}, textString="yn", fontName="Arial"),Text(visible=true, origin={66.5968,-0.0}, fillPattern=FillPattern.Solid, extent={{-13.4032,-11.4529},{13.4032,11.4529}}, textString="xp", fontName="Arial"),Text(visible=true, origin={-66.5968,-0.0}, fillPattern=FillPattern.Solid, extent={{-13.4032,-11.4529},{13.4032,11.4529}}, textString="xn", fontName="Arial"),Text(visible=true, origin={-36.5968,51.4529}, fillPattern=FillPattern.Solid, extent={{-13.4032,-11.4529},{13.4032,11.4529}}, textString="zp", fontName="Arial"),Text(visible=true, origin={36.5968,-50.0}, fillPattern=FillPattern.Solid, extent={{-13.4032,-11.4529},{13.4032,11.4529}}, textString="zn", fontName="Arial")}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  parameter Modelica.SIunits.ThermalConductance G_TSS=190 "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_MSS=20 "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_ESS=1 "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_Panel=7500 "Constant thermal conductance of material orthogonal to main surface";
  parameter Modelica.SIunits.ThermalConductance G_EB=1000 "Constant thermal conductance of electonic box material tbd";
  parameter Modelica.SIunits.ThermalConductance G_P_EB=350 "Constant thermal conductance between Panel - Electronic Box";
  parameter Modelica.SIunits.ThermalConductance G_oP=0 "Constant thermal conductance between two panels (opposite Panels)";
  parameter Modelica.SIunits.ThermalConductance G_aP=130 "Constant thermal conductance between two panels (adjoining Panels)";
  parameter Modelica.SIunits.ThermalConductance G_Panel_p=1.5 "Constant thermal conductance of material parallel to main surface (standard - near ro infinity if connected to main surface)";
  parameter Modelica.SIunits.HeatCapacity C_TSS=200 "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_MSS=500 "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_ESS=15 "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_Panel=750 "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_EB=300 "Heat capacity of element (= cp*m)tbd";
  parameter Real Gr_P_EB(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(Panel - Electronic Box) tbd";
  parameter Real Gr_oP(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(opposite Panels) tbd";
  parameter Real Gr_aP(unit="m2")=0 "Net radiation conductance between two surfaces (see docu)(adjoining Panels) tbd";
  parameter Real Gr_Rad(unit="m2")=0.01 "Net radiation conductance between two surfaces (see docu) tbd";
  parameter Modelica.SIunits.Power Solar_module_Power=100 "Leistungsbedarf des Solarbauteins";
  thermal_Panel_with_Interface Panel_xp(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS, C_Panel=C_Panel, G_Panel=G_Panel) annotation(Placement(visible=true, transformation(origin={100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_Panel_with_Interface Panel_xn(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS, C_Panel=C_Panel, G_Panel=G_Panel) annotation(Placement(visible=true, transformation(origin={-100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  thermal_Panel_with_Interface Panel_yp(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS, C_Panel=C_Panel, G_Panel=G_Panel) annotation(Placement(visible=true, transformation(origin={0.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  thermal_Panel_with_Interface Panel_yn(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS, C_Panel=C_Panel, G_Panel=G_Panel) annotation(Placement(visible=true, transformation(origin={0.0,-81.6332}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  thermal_Panel_with_Interface Panel_zn(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS, C_Panel=C_Panel, G_Panel=G_Panel) annotation(Placement(visible=true, transformation(origin={100.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_Panel_with_Interface Panel_zp(C_ESS=C_ESS, G_ESS=G_ESS, C_MSS=C_MSS, G_MSS=G_MSS, C_TSS=C_TSS, G_TSS=G_TSS, C_Panel=C_Panel, G_Panel=G_Panel) annotation(Placement(visible=true, transformation(origin={-100.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  thermalModel_ElectronicBox thermalModel_ElectronicBox1(C=C_EB, G=G_EB) annotation(Placement(visible=true, transformation(origin={0.0,-0.0}, extent={{-30.0,-30.0},{30.0,30.0}}, rotation=0)));
  thermal_connector thermal_connector_xp annotation(Placement(visible=true, transformation(origin={140.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector_yp annotation(Placement(visible=true, transformation(origin={0.0,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270), iconTransformation(origin={0.0,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector_xn annotation(Placement(visible=true, transformation(origin={-142.091,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={-100.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector_zp annotation(Placement(visible=true, transformation(origin={-138.1713,95.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={-60.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector_zn annotation(Placement(visible=true, transformation(origin={140.0,-97.2865}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360), iconTransformation(origin={60.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector_yn annotation(Placement(visible=true, transformation(origin={0.0,-100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90), iconTransformation(origin={0.0,-100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(Placement(visible=true, transformation(origin={-75.0,-75.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  intra_BuildingBlock_connector EB_Pxp(Gr=Gr_P_EB, G_c=G_P_EB/2, G_p=G_P_EB/2) annotation(Placement(visible=true, transformation(origin={46.6332,0.0}, extent={{-6.6332,-6.6332},{6.6332,6.6332}}, rotation=0)));
  intra_BuildingBlock_connector EB_Pxn(Gr=Gr_P_EB, G_c=G_P_EB/2, G_p=G_P_EB/2) annotation(Placement(visible=true, transformation(origin={-46.25,-0.0}, extent={{-6.25,-6.25},{6.25,6.25}}, rotation=0)));
  intra_BuildingBlock_connector EB_Pyn(Gr=Gr_P_EB, G_c=G_P_EB/2, G_p=G_P_EB/2) annotation(Placement(visible=true, transformation(origin={-0.0,-45.0}, extent={{-6.4815,-6.4815},{6.4815,6.4815}}, rotation=-90)));
  intra_BuildingBlock_connector EB_Pyp(Gr=Gr_P_EB, G_c=G_P_EB/2, G_p=G_P_EB/2) annotation(Placement(visible=true, transformation(origin={-0.0,45.0}, extent={{-6.6332,-6.6332},{6.6332,6.6332}}, rotation=-90)));
  intra_BuildingBlock_connector EB_Pzp(Gr=Gr_P_EB, G_c=G_P_EB/2, G_p=G_P_EB/2) annotation(Placement(visible=true, transformation(origin={-25.8667,34.1333}, extent={{-5.8667,-5.8667},{5.8667,5.8667}}, rotation=0)));
  intra_BuildingBlock_connector EB_Pzn(Gr=Gr_P_EB, G_c=G_P_EB/2, G_p=G_P_EB/2) annotation(Placement(visible=true, transformation(origin={28.5057,-38.5057}, extent={{-6.4943,-6.4943},{6.4943,6.4943}}, rotation=0)));
  intra_BuildingBlock_connector oppositePanel_x(Gr=Gr_oP, G_c=G_oP/2, G_p=G_oP/2) annotation(Placement(visible=true, transformation(origin={-46.3927,48.6073}, extent={{-6.3927,-6.3927},{6.3927,6.3927}}, rotation=0)));
  intra_BuildingBlock_connector oppositePanel_z(Gr=Gr_oP, G_c=G_oP/2, G_p=G_oP/2) annotation(Placement(visible=true, transformation(origin={40.0,43.9455}, extent={{-6.0545,-6.0545},{6.0545,6.0545}}, rotation=0)));
  intra_BuildingBlock_connector oppositePanel_y(Gr=Gr_oP, G_c=G_oP/2, G_p=G_oP/2) annotation(Placement(visible=true, transformation(origin={-58.8323,-23.8323}, extent={{-6.1677,-6.1677},{6.1677,6.1677}}, rotation=-90)));
  intra_BuildingBlock_connector adjoiningPanel_xp_yn(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={40.8179,-70.8179}, extent={{-5.8179,-5.8179},{5.8179,5.8179}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_xp_yp(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={51.2693,63.7307}, extent={{-6.2693,-6.2693},{6.2693,6.2693}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_xp_zn(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={86.7065,-27.01}, extent={{-4.7981,-4.7981},{4.7981,4.7981}}, rotation=-90)));
  intra_BuildingBlock_connector adjoiningPanel_xp_zp(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={75.0,85.0}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_xn_yn(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={-43.4555,-63.4555}, extent={{-6.5445,-6.5445},{6.5445,6.5445}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_xn_yp(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={-65.0,65.0}, extent={{-6.2294,-6.2294},{6.2294,6.2294}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_xn_zn(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={-58.6317,-93.6317}, extent={{-6.3683,-6.3683},{6.3683,6.3683}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_xn_zp(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={-105.8783,35.0}, extent={{-5.8783,-5.8783},{5.8783,5.8783}}, rotation=-90)));
  intra_BuildingBlock_connector adjoiningPanel_yn_zn(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={65.8526,-80.0}, extent={{-5.8526,-5.8526},{5.8526,5.8526}}, rotation=0)));
  intra_BuildingBlock_connector adjoiningPanel_yn_zp(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={-84.222,-44.222}, extent={{-5.778,-5.778},{5.778,5.778}}, rotation=-90)));
  intra_BuildingBlock_connector adjoiningPanel_yp_zn(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={68.7461,-18.7461}, extent={{-6.2539,-6.2539},{6.2539,6.2539}}, rotation=-90)));
  intra_BuildingBlock_connector adjoiningPanel_yp_zp(Gr=Gr_aP, G_c=G_aP, G_p=G_Panel_p) annotation(Placement(visible=true, transformation(origin={-38.8542,78.8542}, extent={{-6.1458,-6.1458},{6.1458,6.1458}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow Solar_Power(Q_flow=Solar_module_Power) annotation(Placement(visible=true, transformation(origin={-132.2917,-75.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(Solar_Power.port,port_b) annotation(Line(visible=true, origin={-98.6458,-75.0}, points={{-23.6458,0.0},{23.6458,0.0}}, color={191,0,0}));
  connect(adjoiningPanel_yp_zn.port_b,Panel_zn.port_a) annotation(Line(visible=true, origin={83.0452,-59.7588}, points={{-13.9548,34.6986},{-13.9548,-7.2287},{13.9548,-7.2287},{13.9548,-20.2412}}, color={191,0,0}));
  connect(Panel_yp.port_a,adjoiningPanel_yp_zn.port_a) annotation(Line(visible=true, origin={34.5405,11.37}, points={{-34.5405,65.63},{-34.5405,-20.8623},{34.5405,-20.8623},{34.5405,-23.9053}}, color={191,0,0}));
  connect(adjoiningPanel_yp_zp.port_a,Panel_zp.port_a) annotation(Line(visible=true, origin={-78.9894,79.5916}, points={{34.0317,-0.4084},{-8.0106,-0.4084},{-8.0106,0.4084},{-18.0106,0.4084}}, color={191,0,0}));
  connect(adjoiningPanel_yp_zp.port_b,Panel_yp.port_a) annotation(Line(visible=true, origin={-14.6685,78.0963}, points={{-17.9806,1.0963},{1.656,1.0963},{1.656,-1.0963},{14.6685,-1.0963}}, color={191,0,0}));
  connect(adjoiningPanel_yn_zp.port_b,Panel_yn.port_a) annotation(Line(visible=true, origin={-55.9359,-69.1073}, points={{-27.9679,19.0517},{-27.9679,-9.5259},{55.9359,-9.5259}}, color={191,0,0}));
  connect(adjoiningPanel_yn_zp.port_a,Panel_zp.port_a) annotation(Line(visible=true, origin={-90.4563,43.8728}, points={{6.5437,-82.3565},{6.5437,23.1147},{-6.5437,23.1147},{-6.5437,36.1272}}, color={191,0,0}));
  connect(adjoiningPanel_yn_zn.port_b,Panel_zn.port_a) annotation(Line(visible=true, origin={85.6904,-79.8389}, points={{-13.9288,0.1611},{1.3096,0.1611},{1.3096,-0.1611},{11.3096,-0.1611}}, color={191,0,0}));
  connect(adjoiningPanel_yn_zn.port_a,Panel_yn.port_a) annotation(Line(visible=true, origin={21.5163,-79.1599}, points={{38.5239,-0.5267},{-8.5038,-0.5267},{-8.5038,0.5267},{-21.5163,0.5267}}, color={191,0,0}));
  connect(adjoiningPanel_xn_zp.port_b,Panel_xn.port_a) annotation(Line(visible=true, origin={-101.2773,13.7725}, points={{-4.2773,15.2925},{-4.2773,-0.76},{4.2773,-0.76},{4.2773,-13.7725}}, color={191,0,0}));
  connect(Panel_zp.port_a,adjoiningPanel_xn_zp.port_a) annotation(Line(visible=true, origin={-101.2818,52.1486}, points={{4.2818,27.8514},{4.2818,-8.2703},{-4.2818,-8.2703},{-4.2818,-11.3107}}, color={191,0,0}));
  connect(adjoiningPanel_xn_yp.port_b,Panel_yp.port_a) annotation(Line(visible=true, origin={-21.1839,71.1715}, points={{-37.5267,-5.8285},{8.1714,-5.8285},{8.1714,5.8285},{21.1839,5.8285}}, color={191,0,0}));
  connect(Panel_xn.port_a,adjoiningPanel_xn_yp.port_a) annotation(Line(visible=true, origin={-88.3955,43.5557}, points={{-8.6045,-43.5557},{-8.6045,21.7778},{17.2089,21.7778}}, color={191,0,0}));
  connect(adjoiningPanel_xn_zn.port_b,Panel_zn.port_a) annotation(Line(visible=true, origin={54.6995,-86.6405}, points={{-106.9015,-6.6405},{32.3005,-6.6405},{32.3005,6.6405},{42.3005,6.6405}}, color={191,0,0}));
  connect(Panel_xn.port_a,adjoiningPanel_xn_zn.port_a) annotation(Line(visible=true, origin={-86.3187,-62.1938}, points={{-10.6813,62.1938},{-10.6813,-31.0969},{21.3625,-31.0969}}, color={191,0,0}));
  connect(adjoiningPanel_xn_yn.port_b,Panel_yn.port_a) annotation(Line(visible=true, origin={-15.7182,-70.8642}, points={{-21.1297,7.769},{2.7057,7.769},{2.7057,-7.769},{15.7182,-7.769}}, color={191,0,0}));
  connect(Panel_xn.port_a,adjoiningPanel_xn_yn.port_a) annotation(Line(visible=true, origin={-81.3183,-42.0701}, points={{-15.6817,42.0701},{-15.6817,-21.035},{31.3633,-21.035}}, color={191,0,0}));
  connect(adjoiningPanel_xp_zp.port_b,Panel_xp.port_a) annotation(Line(visible=true, origin={92.1907,56.942}, points={{-9.6185,28.471},{4.8093,28.471},{4.8093,-56.942}}, color={191,0,0}));
  connect(adjoiningPanel_xp_zp.port_a,Panel_zp.port_a) annotation(Line(visible=true, origin={-50.8621,82.7008}, points={{118.4137,2.7008},{-36.1379,2.7008},{-36.1379,-2.7008},{-46.1379,-2.7008}}, color={191,0,0}));
  connect(adjoiningPanel_xp_yn.port_b,Panel_xp.port_a) annotation(Line(visible=true, origin={80.2306,-46.9984}, points={{-33.5388,-23.4992},{16.7694,-23.4992},{16.7694,46.9984}}, color={191,0,0}));
  connect(Panel_yn.port_a,adjoiningPanel_xp_yn.port_a) annotation(Line(visible=true, origin={24.76,-74.5698}, points={{-24.76,-4.0634},{7.24,-4.0634},{7.24,4.0634},{10.28,4.0634}}, color={191,0,0}));
  connect(adjoiningPanel_xp_yp.port_b,Panel_xp.port_a) annotation(Line(visible=true, origin={83.8663,42.7173}, points={{-26.2674,21.3586},{13.1337,21.3586},{13.1337,-42.7173}}, color={191,0,0}));
  connect(Panel_yp.port_a,adjoiningPanel_xp_yp.port_a) annotation(Line(visible=true, origin={32.2608,70.5332}, points={{-32.2608,6.4668},{9.7392,6.4668},{9.7392,-6.4668},{12.7823,-6.4668}}, color={191,0,0}));
  connect(adjoiningPanel_xp_zn.port_b,Panel_zn.port_a) annotation(Line(visible=true, origin={91.9854,-61.4573}, points={{-5.0146,29.603},{-5.0146,-5.5302},{5.0146,-5.5302},{5.0146,-18.5427}}, color={191,0,0}));
  connect(Panel_xp.port_a,adjoiningPanel_xp_zn.port_a) annotation(Line(visible=true, origin={91.9817,-15.1672}, points={{5.0183,15.1672},{5.0183,-4.0447},{-5.0183,-4.0447},{-5.0183,-7.0777}}, color={191,0,0}));
  connect(oppositePanel_y.port_b,Panel_yn.port_a) annotation(Line(visible=true, origin={-38.9951,-62.4419}, points={{-19.4976,32.3825},{-19.4976,-16.1913},{38.9951,-16.1913}}, color={191,0,0}));
  connect(Panel_yp.port_a,oppositePanel_y.port_a) annotation(Line(visible=true, origin={-29.2511,7.4909}, points={{29.2511,69.5091},{29.2511,-22.1555},{-29.2511,-22.1555},{-29.2511,-25.198}}, color={191,0,0}));
  connect(oppositePanel_z.port_b,Panel_zn.port_a) annotation(Line(visible=true, origin={80.0376,2.8526}, points={{-33.9248,41.4263},{16.9624,41.4263},{16.9624,-82.8526}}, color={191,0,0}));
  connect(oppositePanel_z.port_a,Panel_zp.port_a) annotation(Line(visible=true, origin={-59.2532,62.1348}, points={{93.2403,-17.8652},{-27.7468,-17.8652},{-27.7468,17.8652},{-37.7468,17.8652}}, color={191,0,0}));
  connect(oppositePanel_x.port_b,Panel_xp.port_a) annotation(Line(visible=true, origin={57.7654,24.4796}, points={{-97.7038,24.4796},{29.2346,24.4796},{29.2346,-24.4796},{39.2346,-24.4796}}, color={191,0,0}));
  connect(Panel_xn.port_a,oppositePanel_x.port_a) annotation(Line(visible=true, origin={-82.2472,32.633}, points={{-14.7528,-32.633},{-14.7528,16.3165},{29.5057,16.3165}}, color={191,0,0}));
  connect(thermalModel_ElectronicBox1.EB_zn,EB_Pzn.port_a) annotation(Line(visible=true, origin={19.352,-31.4387}, points={{-1.352,13.4387},{-1.352,-6.7193},{2.704,-6.7193}}, color={191,0,0}));
  connect(EB_Pzn.port_b,Panel_zn.port_a) annotation(Line(visible=true, origin={76.5156,-59.074}, points={{-41.4531,20.926},{10.4844,20.926},{10.4844,-20.926},{20.4844,-20.926}}, color={191,0,0}));
  connect(thermalModel_ElectronicBox1.EB_yn,EB_Pyn.port_a) annotation(Line(visible=true, origin={0.1735,-34.9}, points={{-0.1735,4.9},{-0.1735,-0.6185},{0.1735,-0.6185},{0.1735,-3.6631}}, color={191,0,0}));
  connect(EB_Pyn.port_b,Panel_yn.port_a) annotation(Line(visible=true, origin={0.1784,-66.8609}, points={{0.1784,15.317},{0.1784,-1.7723},{-0.1784,-1.7723},{-0.1784,-11.7723}}, color={191,0,0}));
  connect(thermalModel_ElectronicBox1.EB_xp,EB_Pxp.port_a) annotation(Line(visible=true, origin={36.0114,0.1776}, points={{-6.0114,-0.1776},{0.9886,-0.1776},{0.9886,0.1776},{4.0342,0.1776}}, color={191,0,0}));
  connect(EB_Pxp.port_b,Panel_xp.port_a) annotation(Line(visible=true, origin={81.0826,0.1826}, points={{-27.7522,0.1826},{5.9174,0.1826},{5.9174,-0.1826},{15.9174,-0.1826}}, color={191,0,0}));
  connect(thermalModel_ElectronicBox1.EB_yp,EB_Pyp.port_b) annotation(Line(visible=true, origin={0.1826,34.6038}, points={{-0.1826,-5.0972},{-0.1826,0.6991},{0.1826,0.6991},{0.1826,3.6991}}, color={191,0,0}));
  connect(EB_Pyp.port_a,Panel_yp.port_a) annotation(Line(visible=true, origin={0.1776,65.6469}, points={{0.1776,-14.0593},{0.1776,1.3531},{-0.1776,1.3531},{-0.1776,11.3531}}, color={191,0,0}));
  connect(thermalModel_ElectronicBox1.EB_zp,EB_Pzp.port_b) annotation(Line(visible=true, origin={-18.6478,28.9709}, points={{0.6478,-10.9709},{0.6478,5.4854},{-1.2957,5.4854}}, color={191,0,0}));
  connect(EB_Pzp.port_a,Panel_zp.port_a) annotation(Line(visible=true, origin={-75.6733,57.2237}, points={{43.9801,-22.7763},{-11.3267,-22.7763},{-11.3267,22.7763},{-21.3267,22.7763}}, color={191,0,0}));
  connect(thermalModel_ElectronicBox1.EB_xn,EB_Pxn.port_b) annotation(Line(visible=true, origin={-35.9549,0.1721}, points={{5.9549,-0.1721},{-0.985,-0.1721},{-0.985,0.1721},{-3.985,0.1721}}, color={191,0,0}));
  connect(EB_Pxn.port_a,Panel_xn.port_a) annotation(Line(visible=true, origin={-70.4275,0.2677}, points={{17.9705,0.0669},{8.0381,0.2677},{8.0381,-0.2677},{-26.5725,-0.2677}}, color={191,0,0}));
  connect(thermal_connector_xp,Panel_xp.thermal_connector1) annotation(Line(visible=true, origin={121.5,0.0}, points={{18.5,0.0},{-18.5,0.0}}, color={255,0,0}));
  connect(thermal_connector_zn,Panel_zn.thermal_connector1) annotation(Line(visible=true, origin={117.25,-88.6432}, points={{22.75,-8.6433},{-4.25,-8.6433},{-4.25,8.6432},{-14.25,8.6432}}, color={255,0,0}));
  connect(thermal_connector_yn,Panel_yn.thermal_connector1) annotation(Line(visible=true, origin={0.0,-92.3166}, points={{0.0,-7.6834},{0.0,7.6834}}, color={255,0,0}));
  connect(thermal_connector_xn,Panel_xn.thermal_connector1) annotation(Line(visible=true, origin={-122.5455,0.0}, points={{-19.5455,0.0},{19.5455,0.0}}, color={255,0,0}));
  connect(Panel_zp.thermal_connector1,thermal_connector_zp) annotation(Line(visible=true, origin={-122.8785,87.5}, points={{19.8785,-7.5},{-2.2928,-7.5},{-2.2928,7.5},{-15.2928,7.5}}));
  connect(Panel_yp.thermal_connector1,thermal_connector_yp) annotation(Line(visible=true, origin={0.0,91.5}, points={{0.0,-8.5},{0.0,8.5}}));
  connect(port_b,thermalModel_ElectronicBox1.dissipationPower) annotation(Line(visible=true, origin={-36.0217,-40.4205}, points={{-38.9783,-34.5795},{-23.9783,-19.5795},{-3.9783,0.4205},{36.0217,40.4205}}, color={191,0,0}));
end Solar_Baustein_thermal;
