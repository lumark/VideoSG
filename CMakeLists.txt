project( VideoSG )
cmake_minimum_required(VERSION 3.0)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/CMakeModules/)
include(def_library)
include(export_package)



#######################################################
set(CMAKE_CXX_FLAGS "-std=c++0x -Wall ${CMAKE_CXX_FLAGS}")
if(${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
endif()

# Common flags for all projects.
if (UNIX)
  set(CMAKE_CXX_FLAGS "-D__STDC_CONSTANT_MACROS")
  set(CMAKE_BUILD_TYPE Release)
  # set(CMAKE_BUILD_TYPE Debug)

  # Parallelization.
  if (NOT APPLE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")
  else (NOT APPLE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DPARALLEL_FOR_THREAD")
  endif (NOT APPLE)

  # C++11 support.
  if (APPLE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
  else (APPLE)
    # Linux adaptations.
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
  endif (APPLE)
endif (UNIX)

if (APPLE)
  set(CMAKE_HOST_SYSTEM_PROCESSOR "x86_64")
endif (APPLE)

#######################################################
## Find required dependencies
find_package(OpenCV REQUIRED )
find_package(Boost REQUIRED)
find_package(GLog REQUIRED)
find_package(OpenCV2 REQUIRED)

list( APPEND LIB_INC_DIR "${CMAKE_CURRENT_BINARY_DIR}/..;${CMAKE_CURRENT_SOURCE_DIR}/.." )
list( APPEND USER_INC   ${CMAKE_CURRENT_BINARY_DIR}
                        ${CMAKE_CURRENT_SOURCE_DIR}
                        ${OpenCV2_INCLUDE_DIRS}
                        ${Boost_INCLUDE_DIR}
                        ${GLOG_INCLUDE_DIR} )

list( APPEND LINK_LIBS  ${OpenCV2_LIBRARIES}
                        ${Boost_LIBRARIES}
                        ${GLOG_LIBRARIES})

include_directories( ${LIB_INC_DIR} )
include_directories( ${USER_INC} )
#######################################################

# Overide with cmake -DCMAKE_BUILD_TYPE=Debug {dir}
if( NOT CMAKE_BUILD_TYPE )
   set( CMAKE_BUILD_TYPE Release )
endif()

#######################################################
string(TOLOWER ${PROJECT_NAME} LIBRARY_NAME)
add_subdirectory(VideoSG)


include_directories(${EXPORT_VideoSG_INC})

def_library(VideoSG
  SOURCES ${VideoSG_HEADERS} ${VideoSG_SOURCES}
  LINK_LIBS ${VideoSG_LINK_LIBS}
  PACKAGE VideoSG
  )

export_package(VideoSG
  TARGETS ${LIBRARY_NAME}
  VERSION ${VideoSG_VERSION}
  LIBRARY ${LIBRARY_NAME}
  LIBRARIES ${LIBRARY_NAME}
  INCLUDE_DIRS ${EXPORT_VideoSG_INC}
  )




