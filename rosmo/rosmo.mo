package rosmo
  model ExternalLibraries
    Real x(start = 1.0);
    Real y(start = 2.0);
    Boolean initialized = false;
  equation
    der(x) = -ExternalFunc1(x);
    der(y) = x;
  algorithm
    writetofile("sending message ...");
    SendRosMessage();
  end ExternalLibraries;

  function SendRosMessage
    external Send_Message() annotation(Include = "#include \"rosmo.h\"",Library = {":/home/tom/build/rosmo/devel/lib/librosmo.a",
                                                                                     ":/opt/ros/indigo/lib/libroscpp.so",
                                                                                     ":/opt/ros/indigo/lib/librosconsole.so",
                                                                                     ":/opt/ros/indigo/lib/librosconsole_log4cxx.so",
                                                                                     ":/opt/ros/indigo/lib/librosconsole_backend_interface.so",
                                                                                     ":/opt/ros/indigo/lib/libxmlrpcpp.so",
                                                                                     ":/opt/ros/indigo/lib/libroscpp_serialization.so",
                                                                                     ":/opt/ros/indigo/lib/librostime.so",
                                                                                     ":/opt/ros/indigo/lib/libcpp_common.so",
                                                                                     ":/opt/ros/indigo/lib/libconsole_bridge.so",
                                                                                     "boost_thread","pthread","boost_signals","boost_filesystem","boost_date_time","boost_system","log4cxx","boost_regex"});
  end SendRosMessage;

  function ExternalFunc1
    input Real x;
    output Real y;
  
    external y = ExternalFunc1_ext(x) annotation(Include = "#include \"rosmo.h\"",Library = ":librosmo.a");
  end ExternalFunc1;

  function writetofile
    input String x;
    
    String roslib = ":/opt/ros/indigo/lib/";
    external writetofile(x) annotation(Include = "#include \"rosmo.h\"",Library = {":/home/tom/build/rosmo/devel/lib/librosmo.a",
                                                                                     ":/opt/ros/indigo/lib/libroscpp.so",
                                                                                     ":/opt/ros/indigo/lib/librosconsole.so",
                                                                                     ":/opt/ros/indigo/lib/librosconsole_log4cxx.so",
                                                                                     ":/opt/ros/indigo/lib/librosconsole_backend_interface.so",
                                                                                     ":/opt/ros/indigo/lib/libxmlrpcpp.so",
                                                                                     ":/opt/ros/indigo/lib/libroscpp_serialization.so",
                                                                                     ":/opt/ros/indigo/lib/librostime.so",
                                                                                     ":/opt/ros/indigo/lib/libcpp_common.so",
                                                                                     ":/opt/ros/indigo/lib/libconsole_bridge.so",
                                                                                     "boost_thread","pthread","boost_signals","boost_filesystem","boost_date_time","boost_system","log4cxx","boost_regex"});
    
  end writetofile;

//   function ExternalFunc2
//     input Real x;
//     output Real y;
//   
//     external "C"  annotation(Include = "#include \"rosmo.h\"",Library = ":librosmo.a");
//   end ExternalFunc2;
end rosmo;