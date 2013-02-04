block random
  import Modelica.Blocks.Interfaces;
  parameter Real seed = 1234;
  parameter Real range = 10;
  Integer X = 0;
  extends Interfaces.SO;
algorithm
  X:=X + 1;
  y:=X;
end random;

