model noise
  //uniform noise
  Integer x(start = 0);
  parameter Integer m = 4294967296 "=2^32";
  parameter Integer a = 214013;
  parameter Integer c = 2531011;
  annotation(experiment(StartTime = 0.0, StopTime = 20.0, Tolerance = 0.000001));
algorithm
  //x:=mod(a * integer(time) + c, m); //LCG Noise
  when sample(0, 0.01) then
      x:=mod(a * pre(x) + c, m);  
  end when;
end noise;

