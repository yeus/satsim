model Schnittstelle
  annotation(Icon(), Diagram());
  parameter Modelica.SIunits.ThermalConductance G_ESS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_MSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.ThermalConductance G_TSS "Constant thermal conductance of material";
  parameter Modelica.SIunits.HeatCapacity C_ESS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_MSS "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.HeatCapacity C_TSS "Heat capacity of element (= cp*m)";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(Placement(visible = true, transformation(origin = {-100.652,7.04042}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.652,7.04042}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  thermal_element ESS(C = C_ESS, G = G_ESS) annotation(Placement(visible = true, transformation(origin = {-13.5593,-35.9844}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  thermal_element MSS(C = C_MSS, G = G_MSS) annotation(Placement(visible = true, transformation(origin = {-13.8201,8.08344}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  thermal_element TSS(C = C_TSS, G = G_TSS) annotation(Placement(visible = true, transformation(origin = {-14.6023,49.5437}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(TSS.port_a,port_a) annotation(Line(points = {{-26.5198,50.1861},{-71.708,50.1861},{-71.708,8.60495},{-100.652,8.60495},{-100.652,7.04042}}));
  connect(MSS.port_a,port_a) annotation(Line(points = {{-25.7375,8.72586},{-71.4472,8.72586},{-71.4472,8.60495},{-100.652,8.60495},{-100.652,7.04042}}));
  connect(ESS.port_a,port_a) annotation(Line(points = {{-25.4768,-35.3419},{-71.708,-35.3419},{-71.708,8.60495},{-100.652,8.60495},{-100.652,7.04042}}));
end Schnittstelle;

