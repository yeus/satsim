package rosmo
  model ExternalLibraries
    Real x(start = 1.0);
  equation
    der(x) = -ExternalFunc1(x);
  end ExternalLibraries;

  function ExternalFunc1
    input Real x;
    output Real y;
  
    external y = ExternalFunc1_ext(x) annotation(Include = "#include \"rosmoc.h\"",Library = ":librosmoc.a");
  end ExternalFunc1;
end rosmo;