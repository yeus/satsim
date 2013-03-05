model thermal_Panel_with_Interface "Seitenpanel mit Schnittstelle"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.VerticalCylinder, extent={{-10.0,-100.0},{10.0,100.0}}),Rectangle(visible=true, origin={10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-50.0},{10.0,50.0}}),Text(visible=true, origin={-10.0,135.6661}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, extent={{-100.0,-20.0},{100.0,20.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1(A_ESS=A_ESS, x_ESS=x_ESS, material_ESS=material_ESS, A_MSS=A_MSS, x_MSS=x_MSS, material_MSS=material_MSS, A_TSS=A_TSS, x_TSS=x_TSS, material_TSS=material_TSS) annotation(Placement(visible=true, transformation(origin={-10.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_element BuildingBlock_Panel(A=A_Panel, x=x_Panel, material=material_Panel) annotation(Placement(visible=true, transformation(origin={-41.5072,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-147.3668,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={70.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  parameter Modelica.SIunits.Area A_ESS "Surface Area of ESS in m2";
  parameter Modelica.SIunits.Area A_MSS "Surface Area of MSS in m2";
  parameter Modelica.SIunits.Area A_TSS "Surface Area of TSS in m2";
  parameter Modelica.SIunits.Area A_Panel "Surface Area of Panel in m2";
  parameter Modelica.SIunits.Length x_ESS "length of ESS in m";
  parameter Modelica.SIunits.Length x_MSS "length of MSS in m";
  parameter Modelica.SIunits.Length x_TSS "length of TSS in m";
  parameter Modelica.SIunits.Length x_Panel "length of Panel in m";
  replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
  replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
  replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
  replaceable parameter MaterialDatabase.Material material_Panel "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
equation 
  connect(schnittstelle1.ESS_IF,thermal_connector1.ESS) annotation(Line(visible=true, origin={27.7788,8.7073}, points={{-27.7788,-3.7073},{-24.7788,-3.7073},{-24.7788,4.2927},{38.6683,4.2927},{38.6683,-1.1707}}, color={191,0,0}));
  connect(schnittstelle1.MSS_IF,thermal_connector1.MSS) annotation(Line(visible=true, origin={45.0846,1.2362}, points={{-45.2172,-1.2984},{11.9154,-1.2984},{11.9154,1.2984},{21.3863,1.2984}}, color={191,0,0}));
  connect(schnittstelle1.TSS_IF,thermal_connector1.TSS) annotation(Line(visible=true, origin={45.1253,-3.7514}, points={{-45.1253,-1.2486},{11.8747,-1.2486},{11.8747,1.2487},{21.3759,1.2487}}, color={191,0,0}));
  connect(thermal_connector1.Rad,BuildingBlock_Panel.port_b) annotation(Line(visible=true, origin={9.0336,-6.771}, points={{57.5112,-0.6841},{57.5112,-6.229},{-37.3408,-6.229},{-37.3408,6.571},{-40.3408,6.571}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_a,port_a) annotation(Line(visible=true, origin={-99.537,0.0}, points={{47.8298,0.0},{-47.8298,0.0}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={-22.5268,-0.1}, points={{-8.7804,-0.1},{-0.4732,-0.1},{-0.4732,0.1},{9.7268,0.1}}, color={191,0,0}));
end thermal_Panel_with_Interface;
