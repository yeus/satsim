model EVS
  annotation(Icon());
  buildingblock buildingblock1 annotation(Placement(visible = true, transformation(origin = {-40.1697,4.80905}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock2 annotation(Placement(visible = true, transformation(origin = {10.0295,4.12979}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(buildingblock1.int1,buildingblock2.int0) annotation(Line(points = {{-29.7482,4.77511},{-0.294985,4.77511},{-0.294985,4.12979},{-0.358074,4.12979}}));
end EVS;

