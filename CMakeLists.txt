cmake_minimum_required( VERSION 3.0 )
project( VideoSG )

# Add to module path, so we can find our cmake modules
set( CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake_modules ${CMAKE_MODULE_PATH} )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/.)

include(SetPlatformVars)

# Build Configures
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra -Wno-unused-local-typedefs -Wno-unused-parameter -Wno-unknown-pragmas -Wno-deprecated-declarations")
if(${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
endif()

# Build Options
option(BUILD_APPS "Build Apps" ON)
option(BUILD_SHARED_LIBS "Build Shared Library" ON)

if( NOT CMAKE_BUILD_TYPE )
   set( CMAKE_BUILD_TYPE Release )
endif()

# Build Lib
add_subdirectory(VideoSG)

# Build Apps
if(BUILD_APPS)
  add_subdirectory(app)
endif()



