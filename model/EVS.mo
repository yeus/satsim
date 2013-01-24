model EVS
  annotation(Icon());
  buildingblock buildingblock2 annotation(Placement(visible = true, transformation(origin = {10.0295,4.12979}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock1 annotation(Placement(visible = true, transformation(origin = {-27.2155,4.80905}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dockinterface dockinterface1 annotation(Placement(visible = true, transformation(origin = {-27.4882,-28.436}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(buildingblock1.int2,dockinterface1.iBoss_Int) annotation(Line(points = {{-27.1137,-5.64639},{-27.4882,-5.64639},{-27.4882,-20.1327},{-27.5261,-20.1327}}));
  connect(buildingblock1.int1,buildingblock2.int0) annotation(Line(points = {{-16.794,4.77511},{-0.947867,4.77511},{-0.947867,4.12979},{-0.358074,4.12979}}));
end EVS;

