model buildingblock
  //todo: der "ideale" Baustein kann nicht mit anderen Bausteinen mehrfach vebunden werden, daher müssen kabelwiederstände berücksichtigt werden.
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.2278,76.0255},{74.9561,-75.256}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.5191,69.4202},{66.9674,-68.4328}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20.2122,18.7864},{19.355,-20.778}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-15.3692,13.9434},{14.512,-15.6521}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-1.42575,0.571424},{0.288544,-1.14286}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-74.3791,15.6917},{-79.2362,-16.0226}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.9916,77.1881},{15.1513,72.0453}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{73.239,13.1174},{77.5247,-13.7397}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.4145,-72.9759},{16.5855,-77.833}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-49.505,66.761},{55.4455,27.4399}}, textString = "%name")}));
  iboss_connector Xn annotation(Placement(visible = true, transformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_interface int_Xn annotation(Placement(visible = true, transformation(origin = {-80.9052,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_interface int_Zp annotation(Placement(visible = true, transformation(origin = {-43.2815,61.1033}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_interface int_Yp annotation(Placement(visible = true, transformation(origin = {-0.848656,81.471}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  iboss_interface int_Zn annotation(Placement(visible = true, transformation(origin = {44.9788,-61.9519}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  iboss_interface int_Yn annotation(Placement(visible = true, transformation(origin = {-0.848656,-77.5106}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  iboss_interface int_Xp annotation(Placement(visible = true, transformation(origin = {80.3395,-0.282885}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  iboss_connector Zp annotation(Placement(visible = true, transformation(origin = {-55.7223,55.2872}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-55.7223,55.2872}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Zn annotation(Placement(visible = true, transformation(origin = {52.2766,-53.6256}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {52.2766,-53.6256}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Yn annotation(Placement(visible = true, transformation(origin = {0.337268,-97.1332}, extent = {{12,-12},{-12,12}}, rotation = -270), iconTransformation(origin = {0.337268,-97.1332}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Xp annotation(Placement(visible = true, transformation(origin = {99.8314,0.337268}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {99.8314,0.337268}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Yp annotation(Placement(visible = true, transformation(origin = {0.337268,99.4941}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {0.337268,99.4941}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(int_Yn.vcc,int_Xn.vcc) annotation(Line(points = {{1.3239,-65.3578},{1.13154,-65.3578},{1.13154,-59.6888},{-61.3861,-59.6888},{-61.3861,-2.26308},{-68.7524,-2.26308},{-68.7524,-2.17255}}));
  connect(int_Zn.vcc,int_Yn.vcc) annotation(Line(points = {{32.826,-59.7793},{1.13154,-59.7793},{1.13154,-65.3578},{1.3239,-65.3578}}));
  connect(int_Xp.vcc,int_Zn.vcc) annotation(Line(points = {{68.1867,1.88967},{63.3663,1.88967},{63.3663,-39.604},{27.7228,-39.604},{27.7228,-59.6888},{32.826,-59.6888},{32.826,-59.7793}}));
  connect(int_Zn.gnd,int_Xp.gnd) annotation(Line(points = {{32.7921,-55.8416},{25.1768,-55.8416},{25.1768,-37.058},{61.1033,-37.058},{61.1033,6.22348},{68.1528,6.22348},{68.1528,5.82744}}));
  connect(int_Yn.gnd,int_Zn.gnd) annotation(Line(points = {{5.26167,-65.3239},{5.37482,-65.3239},{5.37482,-58.5573},{25.1768,-58.5573},{25.1768,-55.4455},{32.7921,-55.4455},{32.7921,-55.8416}}));
  connect(int_Xn.gnd,int_Yn.gnd) annotation(Line(points = {{-68.7185,-6.11033},{-59.1231,-6.11033},{-59.1231,-58.5573},{5.37482,-58.5573},{5.37482,-65.3239},{5.26167,-65.3239}}));
  connect(int_Zp.gnd,int_Xn.gnd) annotation(Line(points = {{-31.0948,54.993},{-23.4795,54.993},{-23.4795,38.7553},{-58.8402,38.7553},{-58.8402,-6.50636},{-68.7185,-6.50636},{-68.7185,-6.11033}}));
  connect(int_Yp.gnd,int_Zp.gnd) annotation(Line(points = {{-6.95898,69.2843},{-7.35502,69.2843},{-7.35502,61.1033},{-23.1966,61.1033},{-23.1966,54.8798},{-31.0948,54.8798},{-31.0948,54.993}}));
  connect(int_Zp.vcc,int_Yp.vcc) annotation(Line(points = {{-31.1287,58.9307},{-26.5912,58.9307},{-26.5912,63.9321},{-3.67751,63.9321},{-3.67751,69.3182},{-3.02121,69.3182}}));
  connect(int_Xn.vcc,int_Zp.vcc) annotation(Line(points = {{-68.7524,-2.17255},{-61.3861,-2.17255},{-61.3861,41.0184},{-26.0255,41.0184},{-26.0255,59.1231},{-31.1287,59.1231},{-31.1287,58.9307}}));
  connect(Yn,int_Yn.iBoss_connector);
  connect(Xn,int_Xn.iBoss_connector);
  connect(Zp,int_Zp.iBoss_connector);
  connect(Yp,int_Yp.iBoss_connector);
  connect(Xp,int_Xp.iBoss_connector);
  connect(Zn,int_Zn.iBoss_connector);
end buildingblock;

