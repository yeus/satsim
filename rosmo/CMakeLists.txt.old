# The name of our project is "HELLO". CMakeLists files in this project can
# refer to the root source directory of the project as ${HELLO_SOURCE_DIR} and
# to the root binary directory of the project as ${HELLO_BINARY_DIR}.
cmake_minimum_required (VERSION 2.6)
project (roma)

#set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )
#set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )
#set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR} )
#set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )


#SET(ibossi2c_lib_src DS1621.cpp)
add_library(rosmo STATIC rosmo.cpp) 
#target_link_libraries(roma roma)
#add_library(ibossi2c SHARED DS1621.cpp)

#Static start
set_target_properties(rosmo PROPERTIES LINK_SEARCH_START_STATIC 1)
set_target_properties(rosmo PROPERTIES LINK_SEARCH_END_STATIC 1)
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
#Static Libs

#Set Linker flags
set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")

# copy custom required files
# we don't want to copy if we're building in the source dir
if (NOT CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_CURRENT_BINARY_DIR)

    # list of files for which we add a copy rule
    set(mysources rosmo.mo)
    set(data_SHADOW readme.rst ${mysources})

    foreach(item IN LISTS data_SHADOW)
        message(STATUS ${item})
        add_custom_command(
            OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/${item}"
            COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_SOURCE_DIR}/${item}" "${CMAKE_CURRENT_BINARY_DIR}/${item}"
            DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/${item}"
        )
    endforeach()
endif()

# files are only copied if a target depends on them
add_custom_target(modelica ALL DEPENDS ${data_SHADOW} SOURCES ${mysources})

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set (CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/installed" CACHE PATH "default install path" FORCE )
endif()

install(TARGETS rosmo DESTINATION ./)
install(FILES ${data_SHADOW} DESTINATION ./)
install(DIRECTORY ./ DESTINATION ./
                 FILES_MATCHING PATTERN "*.h")