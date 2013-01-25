model EVS
  annotation(Icon());
  buildingblock buildingblock1 annotation(Placement(visible = true, transformation(origin = {-32.5903,-2.82886}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  dockinterface dockinterface1 annotation(Placement(visible = true, transformation(origin = {-32.863,-36.0739}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock3 annotation(Placement(visible = true, transformation(origin = {-33.9283,54.8293}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {-32.8147,26.0255}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock2 annotation(Placement(visible = true, transformation(origin = {23.8909,-4.35677}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock buildingblock4 annotation(Placement(visible = true, transformation(origin = {24.0774,54.5267}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {25.1768,25.4597}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {-3.9604,54.314}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  connectionelement connectionelement4 annotation(Placement(visible = true, transformation(origin = {-3.11174,-3.39463}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(connectionelement4.iboss_int1,buildingblock1.int1) annotation(Line(points = {{-14.6114,-3.16515},{-22.0651,-3.16515},{-22.0651,-2.8628},{-22.1688,-2.8628}}));
  connect(buildingblock2.int0,connectionelement4.iBoss_Int) annotation(Line(points = {{14.1822,-4.5265},{9.05233,-4.5265},{9.05233,-2.91938},{8.7355,-2.91938}}));
  connect(connectionelement3.iBoss_Int,buildingblock4.int0) annotation(Line(points = {{7.88684,54.7893},{13.8614,54.7893},{13.8614,54.357},{14.3688,54.357}}));
  connect(buildingblock3.int1,connectionelement3.iboss_int1) annotation(Line(points = {{-23.5068,54.7954},{-15.8416,54.7954},{-15.8416,54.5435},{-15.46,54.5435}}));
  connect(connectionelement1.iBoss_Int,buildingblock3.int2) annotation(Line(points = {{-33.29,37.8727},{-33.6634,37.8727},{-33.6634,44.3739},{-33.8265,44.3739}}));
  connect(buildingblock1.int3,connectionelement1.iboss_int1) annotation(Line(points = {{-32.5224,7.59259},{-33.0976,7.59259},{-33.0976,14.5258},{-33.0442,14.5258}}));
  connect(connectionelement2.iboss_int1,buildingblock2.int3) annotation(Line(points = {{24.9473,13.9601},{24.3281,13.9601},{24.3281,6.06467},{23.9588,6.06467}}));
  connect(buildingblock4.int2,connectionelement2.iBoss_Int) annotation(Line(points = {{24.1793,44.0713},{24.611,44.0713},{24.611,37.3069},{24.7016,37.3069}}));
  connect(buildingblock1.int2,dockinterface1.iBoss_Int) annotation(Line(points = {{-32.4885,-13.2843},{-32.863,-13.2843},{-32.863,-27.7706},{-32.9009,-27.7706}}));
end EVS;

