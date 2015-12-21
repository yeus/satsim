within iboss.iboss_thermal.obsolete;

block variable_Gain "Output the product of a variable gain value with the input signal"
  discrete Real k(start = 1, unit = "1") "Gain value multiplied with input signal";
  input Modelica.Blocks.Interfaces.RealInput u "Input signal connector" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
  output Modelica.Blocks.Interfaces.RealOutput y "Output signal connector" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
equation
  y = k * u;
  annotation(Icon(graphics = {Polygon(points = {{-100, -100}, {-100, 100}, {100, 0}, {-100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(textString = "k=%k", lineColor = {0, 0, 0}, extent = {{-150, -140}, {150, -100}}), Text(textString = "%name", extent = {{-150, 140}, {150, 100}})}), Diagram(graphics = {Polygon(points = {{-100, -100}, {-100, 100}, {100, 0}, {-100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(textString = "k", extent = {{-76, 38}, {0, -34}})}), Documentation(info = "<html>
 <p>
 This block computes output <i>y</i> as
 <i>product</i> of gain <i>k</i> with the
 input <i>u</i>:
 </p>
 <pre>
     y = k * u;
 </pre>

 </html>"));
end variable_Gain;