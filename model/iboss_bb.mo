model buildingblock
  //todo: der "ideale" Baustein kann nicht mit anderen Bausteinen mehrfach vebunden werden, daher müssen kabelwiederstände berücksichtigt werden.
  annotation(Diagram(), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.2278,76.0255},{74.9561,-75.256}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-69.5191,69.4202},{66.9674,-68.4328}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-20.2122,18.7864},{19.355,-20.778}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-15.3692,13.9434},{14.512,-15.6521}}),Ellipse(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-1.42575,0.571424},{0.288544,-1.14286}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-74.3791,15.6917},{-79.2362,-16.0226}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.9916,77.1881},{15.1513,72.0453}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{73.239,13.1174},{77.5247,-13.7397}}),Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.4145,-72.9759},{16.5855,-77.833}})}));
  iboss_connector Xn annotation(Placement(visible = true, transformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.082,-0.177147}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Zp annotation(Placement(visible = true, transformation(origin = {-60.7813,61.0208}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-60.7813,61.0208}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_interface int_Xn annotation(Placement(visible = true, transformation(origin = {-80.9052,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_interface int_Zp annotation(Placement(visible = true, transformation(origin = {-43.2815,61.1033}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  PCU pcu1 annotation(Placement(visible = true, transformation(origin = {-36.2093,-34.7949}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  OBC obc1 annotation(Placement(visible = true, transformation(origin = {-30.5516,13.0127}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Yp annotation(Placement(visible = true, transformation(origin = {-1.31918,98.4299}, extent = {{-12,12},{12,-12}}, rotation = -90), iconTransformation(origin = {0,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Xp annotation(Placement(visible = true, transformation(origin = {98.0223,0.041928}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {0,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Yn annotation(Placement(visible = true, transformation(origin = {-0.301046,-95.2899}, extent = {{12,-12},{-12,12}}, rotation = -270), iconTransformation(origin = {0,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_connector Zn annotation(Placement(visible = true, transformation(origin = {61.1446,-61.6101}, extent = {{12,12},{-12,-12}}, rotation = -180), iconTransformation(origin = {0,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  iboss_interface int_Yp annotation(Placement(visible = true, transformation(origin = {-0.848656,81.471}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  iboss_interface int_Zn annotation(Placement(visible = true, transformation(origin = {44.9788,-61.9519}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  iboss_interface int_Yn annotation(Placement(visible = true, transformation(origin = {-0.848656,-77.5106}, extent = {{12,-12},{-12,12}}, rotation = 90)));
  iboss_interface int_Xp annotation(Placement(visible = true, transformation(origin = {80.3395,-0.282885}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(int_Zp.pin_n,pcu1.GND) annotation(Line(points = {{-31.1967,54.8232},{-28.2885,54.8232},{-28.2885,45.2617},{-55.1627,45.2617},{-55.1627,-40.1697},{-48.3281,-40.1697},{-48.3281,-40.1245}}));
  connect(int_Yp.pin_p,int_Zp.pin_p) annotation(Line(points = {{-11.0325,69.4201},{-11.0325,69.4201},{-11.0325,64.4979},{-26.3083,64.4979},{-26.3083,46.959},{-31.4003,46.959},{-31.4003,50.9194},{-31.2306,50.9194}}));
  connect(int_Zp.pin_n,int_Yp.pin_n) annotation(Line(points = {{-31.1967,54.8232},{-28.2885,54.8232},{-28.2885,66.4781},{-7.35502,66.4781},{-7.35502,69.3862},{-7.12871,69.3862}}));
  connect(pcu1.gnd,obc1.pin_n) annotation(Line(points = {{-24.1924,-42.4668},{-17.5389,-42.4668},{-17.5389,-1.41443},{-30.5516,-1.41443},{-30.5516,1.13155},{-30.6195,1.13155}}));
  connect(pcu1.VCC5,obc1.pin_p) annotation(Line(points = {{-24.2263,-33.7426},{-20.3678,-33.7426},{-20.3678,-2.54597},{-35.9264,-2.54597},{-35.9264,1.23339},{-35.6775,1.23339}}));
  connect(int_Yn.pin_p,pcu1.VCC) annotation(Line(points = {{9.33522,-65.4597},{9.05233,-65.4597},{9.05233,-60.5375},{-52.6167,-60.5375},{-52.6167,-34.2291},{-48.2942,-34.2291},{-48.2942,-33.8444}}));
  connect(int_Yn.pin_p,int_Zn.pin_p) annotation(Line(points = {{9.33522,-65.4597},{9.05233,-65.4597},{9.05233,-60.5375},{29.9859,-60.5375},{29.9859,-51.768},{32.9279,-51.768},{32.9279,-51.768}}));
  connect(int_Yn.pin_n,pcu1.GND) annotation(Line(points = {{5.4314,-65.4258},{5.09194,-65.4258},{5.09194,-62.2348},{-55.1627,-62.2348},{-55.1627,-40.1697},{-48.3281,-40.1697},{-48.3281,-40.1245}}));
  connect(int_Zn.pin_n,int_Yn.pin_n) annotation(Line(points = {{32.894,-55.6718},{28.2885,-55.6718},{28.2885,-62.2348},{5.09194,-62.2348},{5.09194,-65.4258},{5.4314,-65.4258}}));
  connect(int_Xp.pin_n,int_Zn.pin_n) annotation(Line(points = {{68.2547,5.99717},{28.2885,5.99717},{28.2885,-55.7284},{32.894,-55.7284},{32.894,-55.6718}}));
  connect(int_Xp.pin_p,int_Zn.pin_p) annotation(Line(points = {{68.2886,9.90099},{29.9859,9.90099},{29.9859,-52.0509},{32.9279,-52.0509},{32.9279,-51.768}}));
  connect(int_Zp.pin_p,pcu1.VCC) annotation(Line(points = {{-31.2306,50.9194},{-31.4003,50.9194},{-31.4003,46.959},{-52.6167,46.959},{-52.6167,-34.2291},{-48.2942,-34.2291},{-48.2942,-33.8444}}));
  connect(int_Xn.pin_n,pcu1.GND) annotation(Line(points = {{-68.8204,-6.28006},{-55.1627,-6.28006},{-55.1627,-40.1697},{-48.3281,-40.1697},{-48.3281,-40.1245}}));
  connect(int_Xn.pin_p,pcu1.VCC) annotation(Line(points = {{-68.8543,-10.1839},{-52.6167,-10.1839},{-52.6167,-34.2291},{-48.2942,-34.2291},{-48.2942,-33.8444}}));
  connect(Yn,int_Yn.iBoss_connector);
  connect(Xn,int_Xn.iBoss_connector);
  connect(Zp,int_Zp.iBoss_connector);
  connect(Yp,int_Yp.iBoss_connector);
  connect(Xp,int_Xp.iBoss_connector);
  connect(Zn,int_Zn.iBoss_connector);
end buildingblock;

