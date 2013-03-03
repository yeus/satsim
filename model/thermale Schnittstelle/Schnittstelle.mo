model Schnittstelle
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Rectangle(visible=true, lineColor={255,0,0}, fillColor={255,255,255}, fillPattern=FillPattern.CrossDiag, extent={{-30.0,-100.0},{30.0,100.0}}),Text(visible=true, origin={60.0,-0.0}, rotation=90, fillPattern=FillPattern.Solid, extent={{-100.0,-30.0},{100.0,30.0}}, textString="%name", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram());
  parameter Modelica.SIunits.Area A_ESS "Surface Area of ESS in m2";
  parameter Modelica.SIunits.Area A_MSS "Surface Area of MSS in m2";
  parameter Modelica.SIunits.Area A_TSS "Surface Area of TSS in m2";
  parameter Modelica.SIunits.Length x_ESS "length of ESS in m";
  parameter Modelica.SIunits.Length x_MSS "length of MSS in m";
  parameter Modelica.SIunits.Length x_TSS "length of TSS in m";
  replaceable parameter MaterialDatabase.Material material_ESS "Material of ESS from MaterialDataBase" annotation(choicesAllMatching=true);
  replaceable parameter MaterialDatabase.Material material_MSS "Material of MSS from MaterialDataBase" annotation(choicesAllMatching=true);
  replaceable parameter MaterialDatabase.Material material_TSS "Material of TSS from MaterialDataBase" annotation(choicesAllMatching=true);
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible=true, transformation(origin={-40.0,-0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0), iconTransformation(origin={-28.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element ESS(A=A_ESS, x=x_ESS, material=material_ESS) annotation(Placement(visible=true, transformation(origin={-0.0,40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element MSS(A=A_MSS, x=x_MSS, material=material_ESS) annotation(Placement(visible=true, transformation(origin={0.0,0.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  thermal_element TSS(A=A_TSS, x=x_TSS, material=material_ESS) annotation(Placement(visible=true, transformation(origin={-0.0,-40.0}, extent={{-12.0,-12.0},{12.0,12.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a ESS_IF annotation(Placement(visible=true, transformation(origin={40.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={100.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a MSS_IF annotation(Placement(visible=true, transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={98.674,-0.6225}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a TSS_IF annotation(Placement(visible=true, transformation(origin={40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={100.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(TSS_IF,TSS.port_b) annotation(Line(visible=true, origin={26.0,-40.0}, points={{14.0,0.0},{-14.0,0.0}}, color={191,0,0}));
  connect(MSS.port_b,MSS_IF) annotation(Line(visible=true, origin={26.0,0.0}, points={{-14.0,0.0},{14.0,0.0}}, color={191,0,0}));
  connect(ESS.port_b,ESS_IF) annotation(Line(visible=true, origin={26.0,40.0}, points={{-14.0,0.0},{14.0,0.0}}, color={191,0,0}));
  connect(TSS.port_a,port_a) annotation(Line(visible=true, origin={-30.7467,-26.6667}, points={{18.5067,-13.3333},{-9.2533,-13.3333},{-9.2533,26.6667}}, color={191,0,0}));
  connect(port_a,ESS.port_a) annotation(Line(visible=true, origin={-30.7467,26.6667}, points={{-9.2533,-26.6667},{-9.2533,13.3333},{18.5067,13.3333}}, color={191,0,0}));
  connect(port_a,MSS.port_a) annotation(Line(visible=true, origin={-26.12,-0.0}, points={{-13.88,-0.0},{13.88,0.0}}, color={191,0,0}));
end Schnittstelle;
