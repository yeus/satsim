model EVS6
  bb_catalogue.bb_solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-79.1429,-3.14286}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {-51.1429,-3.42857}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {6.28571,-3.71429}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher1 annotation(Placement(visible = true, transformation(origin = {-22.8571,-2.85714}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher2 annotation(Placement(visible = true, transformation(origin = {34.5714,-2.57143}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  bb_catalogue.bb_verbraucher bb_verbraucher3 annotation(Placement(visible = true, transformation(origin = {90.2857,-2}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {62,-2.85714}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(connectionelement3.int2,bb_verbraucher2.Xp) annotation(Line(points = {{51.4509,-2.37375},{46.5714,-2.37375},{46.5714,-2.5664},{46.3341,-2.5664}}));
  connect(bb_verbraucher3.Xn,connectionelement3.int1) annotation(Line(points = {{78.2759,-2.02126},{73.4286,-2.02126},{73.4286,-2.314},{72.6252,-2.314}}));
  connect(bb_verbraucher2.Xn,connectionelement2.int1) annotation(Line(points = {{22.5616,-2.59269},{16.2857,-2.59269},{16.2857,-3.17115},{16.9109,-3.17115}}));
  connect(bb_verbraucher1.Xn,connectionelement1.int1) annotation(Line(points = {{-34.867,-2.8784},{-40.2857,-2.8784},{-40.2857,-2.88543},{-40.5177,-2.88543}}));
  connect(connectionelement2.int2,bb_verbraucher1.Xp) annotation(Line(points = {{-4.26343,-3.23089},{-11.1429,-3.23089},{-11.1429,-2.85211},{-11.0945,-2.85211}}));
  connect(connectionelement1.int2,bb_solar1.Yp) annotation(Line(points = {{-61.692,-2.94518},{-67.7143,-2.94518},{-67.7143,-2.98456},{-67.3313,-2.98456}}));
end EVS6;

