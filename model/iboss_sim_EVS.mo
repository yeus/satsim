model EVS
  annotation(Icon(), experiment(StartTime = 0.0, StopTime = 20000, Tolerance = 0.000001));
  buildingblock BB2 annotation(Placement(visible = true, transformation(origin = {55.5866,-23.3742}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement1 annotation(Placement(visible = true, transformation(origin = {27.1696,-23.5436}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement2 annotation(Placement(visible = true, transformation(origin = {27.4524,35.0137}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock BB1 annotation(Placement(visible = true, transformation(origin = {-0.89458,-22.695}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock BB3 annotation(Placement(visible = true, transformation(origin = {-1.10108,35.529}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  buildingblock BB4 annotation(Placement(visible = true, transformation(origin = {56.3389,35.2264}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement5 annotation(Placement(visible = true, transformation(origin = {-30.5391,-23.2607}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connectionelement3 annotation(Placement(visible = true, transformation(origin = {-1.96768,8.13957}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  connectionelement connectionelement4 annotation(Placement(visible = true, transformation(origin = {55.5262,6.30594}, extent = {{-12,12},{12,-12}}, rotation = -90)));
  bb_solar bb_solar1 annotation(Placement(visible = true, transformation(origin = {-59.9592,-22.6949}, extent = {{12,-12},{-12,12}}, rotation = 90)));
equation
  connect(bb_solar1.Yn,connectionelement5.int2) annotation(Line(points = {{-48.5244,-22.7311},{-48.5244,-22.6949},{-41.0882,-22.6949},{-41.0882,-22.7773}}));
  connect(connectionelement4.int1,BB2.Yp) annotation(Line(points = {{56.0694,-4.31923},{55.1752,-4.31923},{55.1752,-11.5626},{55.4283,-11.5626}}));
  connect(BB4.Yn,connectionelement4.int2) annotation(Line(points = {{56.3028,23.7916},{55.4581,23.7916},{55.4581,16.8551},{56.0096,16.8551}}));
  connect(BB1.Yp,connectionelement3.int1) annotation(Line(points = {{-1.05288,-10.8834},{-1.40188,-10.8834},{-1.40188,-2.4856},{-1.42454,-2.4856}}));
  connect(connectionelement3.int2,BB3.Yn) annotation(Line(points = {{-1.48429,18.6887},{-1.40188,18.6887},{-1.40188,24.0942},{-1.1372,24.0942}}));
  connect(connectionelement5.int1,BB1.Xn) annotation(Line(points = {{-19.9139,-22.7176},{-13.0002,-22.7176},{-13.0002,-22.7162},{-12.9044,-22.7162}}));
  connect(connectionelement2.int1,BB4.Xn) annotation(Line(points = {{38.0776,35.5568},{46.1229,35.5568},{46.1229,35.2051},{44.3291,35.2051}}));
  connect(BB3.Xp,connectionelement2.int2) annotation(Line(points = {{10.6616,35.534},{17.2685,35.534},{17.2685,35.4971},{16.9033,35.4971}}));
  connect(connectionelement1.int2,BB1.Xp) annotation(Line(points = {{16.6204,-23.0602},{10.1964,-23.0602},{10.1964,-22.6899},{10.8681,-22.6899}}));
  connect(BB2.Xn,connectionelement1.int1) annotation(Line(points = {{43.5768,-23.3955},{38.2021,-23.3955},{38.2021,-23.0004},{37.7947,-23.0004}}));
end EVS;

