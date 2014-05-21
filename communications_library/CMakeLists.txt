# The name of our project is "HELLO". CMakeLists files in this project can
# refer to the root source directory of the project as ${HELLO_SOURCE_DIR} and
# to the root binary directory of the project as ${HELLO_BINARY_DIR}.
cmake_minimum_required (VERSION 2.6)
project (roma)

set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )

#SET(ibossi2c_lib_src DS1621.cpp)
add_library(rosmo STATIC rosmo.cpp) 
#target_link_libraries(roma roma)
#add_library(ibossi2c SHARED DS1621.cpp)

#INSTALL(FILES roof.h
#        DESTINATION include
#        PERMISSIONS OWNER_READ GROUP_READ WORLD_READ)

# Recurse into the "Hello" and "Demo" subdirectories. This does not actually
# cause another cmake executable to run. The same process will walk through
# the project's entire directory structure.
#ADD_SUBDIRECTORY(src)
