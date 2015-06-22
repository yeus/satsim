rosmo
=====

rom[*]_ is a modelica library to interface models from modelica
with the ros operating system.

.. [*] *ROS* *Mo* delica

Installation
============

compile the interface to ros with the following command::
  
  gcc -fPIC -c -o librosmo.a rosmo.cpp
  gcc -Wall main.cpp rosmo.cpp -fPIC -o rosmo -lstdc++
  
or::
  
  gcc -fPIC -c -o librosmoc.a rosmoc.c

bug reports:
============

compiling ros functions into fmume10
------------------------------------

folling linker command is executed, when linking ros executables::
  
  /usr/bin/c++    -fPIC    -fPIC CMakeFiles/talker.dir/main.cpp.o  -o devel/lib/rosmo/talker -rdynamic devel/lib/librosmo.a 
  /opt/ros/indigo/lib/libroscpp.so 
  -lboost_signals 
  -lboost_filesystem 
  /opt/ros/indigo/lib/librosconsole.so 
  /opt/ros/indigo/lib/librosconsole_log4cxx.so 
  /opt/ros/indigo/lib/librosconsole_backend_interface.so 
  -llog4cxx -lboost_regex /opt/ros/indigo/lib/libxmlrpcpp.so 
  /opt/ros/indigo/lib/libroscpp_serialization.so 
  /opt/ros/indigo/lib/librostime.so 
  -lboost_date_time 
  -lboost_system 
  -lboost_thread 
  -lpthread 
  /opt/ros/indigo/lib/libcpp_common.so 
  /opt/ros/indigo/lib/libconsole_bridge.so 
  -Wl,-rpath,/opt/ros/indigo/lib 



problem, compiling modelica model with external Functions
---------------------------------------------------------

Hi eveyone,

I am trying to compile a modelica model to FMU which makes use of external functions (you can find a zip file with all the required files to "replay" this error in the following URL:  https://dl.dropboxusercontent.com/u/6602612/compile_rosmoc.py.zip)

I am on revision r6380 and use Ubuntu 14.04 (installation of jmodelica and compilation worked flawlessly).

now to the first bug:

first I compile the library using this command:

gcc -fPIC -c -o librosmoc.a rosmoc.c

After that I have to copy the library and header-file into a new resources directory (thats where jmodelica looks for it):

./Resources/Library/librosmoc.a
./Resources/Include/rosmoc.h

then I start the compilation with the included script in the zip-file:

jm_python compile_rosmoc.py

When doing this I an Error:

pymodelica.compiler_exceptions.CcodeCompilationError: Compilation of generated C code failed.
C file location: /tmp/jmc2695195137742289524out/sources/rosmo_ExternalLibraries.c

In debug mode the error becomes clear:

Generating code...
====== Model compiled successfully =======
make -f /home/tom/build/jmodelica/Makefiles/MakeFile JMI_AD=JMI_AD_NONE fmume10_
make[1]: Entering directory `/tmp/jmc2695195137742289524out'
gcc -g -std=c89 -pedantic -DJMI_AD=JMI_AD_NONE -fPIC -I/home/tom/build/jmodelica/include/RuntimeLibrary -I/home/tom/build/jmodelica/ThirdParty/FMI/2.0 -I"/home/tom/Encfs/securedropbox/iboss/software/iboss_sim/communications_library/./Resources/Include" -I/home/tom/build/jmodelica/ThirdParty/Sundials/include -c -o rosmo_ExternalLibraries.o sources/rosmo_ExternalLibraries.c
mkdir -p binaries/linux64
g++ -shared -Wl,-rpath,'$ORIGIN',--no-undefined -pthread -g -std=c89 -pedantic -DJMI_AD=JMI_AD_NONE -fPIC -o binaries/linux64/rosmo_ExternalLibraries.so rosmo_ExternalLibraries.o -L/home/tom/build/jmodelica/lib/RuntimeLibrary -L"/home/tom/Encfs/securedropbox/iboss/software/iboss_sim/communications_library/./Resources/Library" -l:librosmoc.a -l:librosmoc.a -lfmi1_me -ldl -ljmi -lModelicaExternalC -L/home/tom/build/jmodelica/lib -l:liblapack.a -l:libblas.a -lgfortran -L/home/tom/build/jmodelica/ThirdParty/Sundials/lib -l:libsundials_kinsol.a -l:libsundials_nvecserial.a -L/home/tom/build/jmodelica/ThirdParty/Minpack/lib -l:libcminpack.a -lstdc++ -lm
/home/tom/Encfs/securedropbox/iboss/software/iboss_sim/communications_library/./Resources/Library/librosmoc.a: In function `ExternalFunc1_ext':
make[1]: Leaving directory `/tmp/jmc2695195137742289524out'
rosmoc.c:(.text+0x0): multiple definition of `ExternalFunc1_ext'
/home/tom/Encfs/securedropbox/iboss/software/iboss_sim/communications_library/./Resources/Library/librosmoc.a:rosmoc.c:(.text+0x0): first defined here
collect2: error: ld returned 1 exit status
make[1]: *** [fmume10_] Error 1
make: *** [fmume10] Error 2

the error occurs when linking my librosmoc.a  with the project, because there are multiple definitions of it. 

That is because the g++ command is invoked with twice including the library:

-l:librosmoc.a -l:librosmoc.a

When I manually run the code, compilation works. The problem is: I can not manually put together the rest of the FMU so I rely on jmodelica invoking g++. Did I forget anything? Or is it just a bug?

 

second bug:

One more sub-question: in the modelica file I included librosmoc.a like this:

external y = ExternalFunc1_ext(x) annotation(Include = "#include \"rosmoc.h\"",Library = ":librosmoc.a");

As you can see I had to include Library=":librosmoc.a". with a colon as a workaroung, because if not doing this g++ will be invoked with -llibrosmoc.a and the library isn't found by the linker. Any idea whats going on here?



BUG FOUND:
----------

  I think, I have found the bug in the compiler code of jmodelica:  in the file:

./JModelica.org/Compiler/ModelicaCompiler/src/jastadd/ModelicaCompiler.jrag

In Line 2503, function: "addFixedMakeVars"  I think make file options are set.

There in line 2511 is the code line:

        vars.put("EXT_LIBS", varFromList(ext_libs)!=null?
                      (varFromList(ext_libs) + " " + varFromList(ext_libs)): null);

varFromList(ext_libs)  occurs twice in the construct. i think this should rather be:                  
  
  vars.put("EXT_LIBS", varFromList(ext_libs)!=null? 
                                          (varFromList(ext_libs)): null);