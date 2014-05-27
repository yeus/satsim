package rosmo
  model ExternalLibraries
    Real x(start = 1.0);
    Real y(start = 2.0);
  equation
    der(x) = -ExternalFunc1(x);
    der(y) = x;
  algorithm
    writetofile(x,y);
    
  end ExternalLibraries;

  function ExternalFunc1
    input Real x;
    output Real y;
  
    external y = ExternalFunc1_ext(x) annotation(Include = "#include \"rosmo.h\"",Library = ":librosmo.a");
  end ExternalFunc1;

  function writetofile
    input Real x;
    input Real y;
    
    external writetofile(x,y) annotation(Include = "#include \"rosmo.h\"",Library = ":librosmo.a");
    
  end writetofile;

//   function ExternalFunc2
//     input Real x;
//     output Real y;
//   
//     external "C"  annotation(Include = "#include \"rosmo.h\"",Library = ":librosmo.a");
//   end ExternalFunc2;
end rosmo;