model iboss_sat
  parameter Integer size_x = 2,size_y = 2,size_z = 2;
  bb_catalogue.bb_verbraucher bb[size_x,size_y,size_z] annotation(Placement(visible = true, transformation(origin = {16.9731,-61.6691}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  connectionelement connelem[size_x - 1,size_y - 1,size_z - 1];
equation
  for j, k, i in 1:size_x - 1 loop
  connect(bb[i,j,k].Xp,connelem[i,j,k].int1);

  end for;
  //connect(bb[i+1,j+1,k+1].Xn,connelem[i,j,k].int2);
end iboss_sat;

