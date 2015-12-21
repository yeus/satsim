within iboss.iboss_thermal.components;

expandable connector panel_surface "optical properties of the outer surface of the side panel"
  Modelica.SIunits.Emissivity alpha_TSS "absorption coefficent of the thermal interface";
  Modelica.SIunits.Emissivity alpha_MSS "absorption coefficent of the mechanical interface";
  Modelica.SIunits.Emissivity alpha_ESS "absorption coefficent of the electrical interface";
  Modelica.SIunits.Emissivity alpha_Rad "absorption coefficent of the radiator";
  Modelica.SIunits.Emissivity epsilon_TSS "emission coefficent of the thermal interface";
  Modelica.SIunits.Emissivity epsilon_MSS "emission coefficent of the mechanical interface";
  Modelica.SIunits.Emissivity epsilon_ESS "emission coefficent of the electrical interface";
  Modelica.SIunits.Emissivity epsilon_Rad "emission coefficent of the radiator";
  Modelica.SIunits.Area A_TSS(unit = "m2") "Querschnittsflaeche der TSS";
  Modelica.SIunits.Area A_MSS(unit = "m2") "Querschnittsflaeche der MSS";
  Modelica.SIunits.Area A_ESS(unit = "m2") "Querschnittsflaeche der ESS";
  Modelica.SIunits.Area A_Rad(unit = "m2") "Querschnittsflaeche des Panels";
  annotation(Icon(graphics = {Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 0}, {100, -100}}), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {-48.7, 42.3}, rotation = -13), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {-12.2, 42.1}, rotation = -13), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {27.6, 42.1}, rotation = -13), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {64.59999999999999, 42.1}, rotation = -13)}));
end panel_surface;