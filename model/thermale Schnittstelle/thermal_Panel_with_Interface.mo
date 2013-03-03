model thermal_Panel_with_Interface "Seitenpanel mit Schnittstelle"
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, origin={-10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.VerticalCylinder, extent={{-10.0,-100.0},{10.0,100.0}}),Rectangle(visible=true, origin={10.0,0.0}, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-10.0,-50.0},{10.0,50.0}}),Text(visible=true, rotation=90, fillPattern=FillPattern.Solid, extent={{-100.0,-20.0},{100.0,20.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-105.0,-74.0},{105.0,74.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Schnittstelle schnittstelle1(A_ESS=A_ESS, x_ESS=x_ESS, material_ESS=material_ESS, A_MSS=A_MSS, x_MSS=x_MSS, material_MSS=material_MSS, A_TSS=A_TSS, x_TSS=x_TSS, material_TSS=material_TSS) annotation(Placement(visible=true, transformation(origin={20.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_element BuildingBlock_Panel(A=A_Panel, x=x_Panel, material=material_Panel) annotation(Placement(visible=true, transformation(origin={-20.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  thermal_connector thermal_connector1 annotation(Placement(visible=true, transformation(origin={60.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180), iconTransformation(origin={30.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
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
  connect(thermal_connector1.Rad,BuildingBlock_Panel.port_b) annotation(Line(visible=true, origin={17.8179,-6.691}, points={{38.7269,-0.7641},{38.7269,-6.309},{-24.8179,-6.309},{-24.8179,6.691},{-27.8179,6.691}}, color={191,0,0}));
  connect(schnittstelle1.TSS_IF,thermal_connector1.TSS) annotation(Line(visible=true, origin={45.1253,-3.7513}, points={{-15.1253,-1.2486},{1.8747,-1.2486},{1.8747,1.2486},{11.3759,1.2486}}, color={191,0,0}));
  connect(schnittstelle1.MSS_IF,thermal_connector1.MSS) annotation(Line(visible=true, origin={45.0846,1.2362}, points={{-15.2172,-1.2984},{1.9154,-1.2984},{1.9154,1.2984},{11.3863,1.2984}}, color={191,0,0}));
  connect(schnittstelle1.ESS_IF,thermal_connector1.ESS) annotation(Line(visible=true, origin={41.7788,8.7073}, points={{-11.7788,-3.7073},{-8.7788,-3.7073},{-8.7788,4.2927},{14.6683,4.2927},{14.6683,-1.1707}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_b,schnittstelle1.port_a) annotation(Line(visible=true, origin={3.6,0.0}, points={{-13.6,-0.0},{13.6,0.0}}, color={191,0,0}));
  connect(BuildingBlock_Panel.port_a,port_a) annotation(Line(visible=true, origin={-45.1,0.0}, points={{14.9,-0.0},{-14.9,0.0}}, color={191,0,0}));
end thermal_Panel_with_Interface;
