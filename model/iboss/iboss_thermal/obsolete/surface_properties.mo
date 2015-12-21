within iboss.iboss_thermal.obsolete;

expandable connector surface_properties "optical properties of the outer surface of the side panel"
  import Modelica.Thermal.HeatTransfer.Interfaces;
  Interfaces.HeatPort_a thermal_port;
  Modelica.SIunits.Emissivity alpha "absorption coefficent of the surface";
  Modelica.SIunits.Emissivity epsilon "emission coefficent of the surface";
  Modelica.SIunits.Area A(unit = "m2") "Querschnittsflaeche";
  annotation(Icon(graphics = {Rectangle(lineColor = {0, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-99.8, 100}, {100.2, 0}}), Rectangle(lineColor = {255, 0, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 0}, {100, -100}}), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {-48.7, 42.3}, rotation = -13), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {-12.2, 42.1}, rotation = -13), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {27.6, 42.1}, rotation = -13), Line(points = {{-8.300000000000001, -43.3}, {-28.3, -26.6}, {-1.6, -16.6}, {8.4, -10}, {-11.6, 10}, {8.4, 20}, {21.7, 26.7}, {11.7, 40}}, color = {255, 0, 0}, smooth = Smooth.Bezier, origin = {64.59999999999999, 42.1}, rotation = -13)}));
end surface_properties;