# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(rosmo)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
#add_message_files(FILES Num.msg)
#add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

SET(GCC_COVERAGE_COMPILE_FLAGS "-fPIC")
SET(GCC_COVERAGE_LINK_FLAGS    "-fPIC")
SET( CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}" )
SET( CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS}" )


add_library(rosmo STATIC rosmo.cpp) 
target_link_libraries(rosmo ${catkin_LIBRARIES})

add_executable(talker main.cpp)
target_link_libraries(talker rosmo ${catkin_LIBRARIES})
add_dependencies(talker beginner_tutorials_generate_messages_cpp)

# add_executable(listener src/listener.cpp)
# target_link_libraries(listener ${catkin_LIBRARIES})
# add_dependencies(listener beginner_tutorials_generate_messages_cpp)
