cmake_minimum_required(VERSION 3.0)

project(seg_tree_sample)

#######################################################
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x -Wall  -Werror")

IF(${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
ENDIF()

#######################################################
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
find_package(VideoSG)

set(CMAKE_INCLUDE_CURRENT_DIR 1)
option(NO_X_SUPPORT "Disables interactive output and linking of X libraries" OFF)
option(WITH_QT "Enables QT video and segmentation display" OFF)

if (NO_X_SUPPORT)
  add_definitions(-DNO_X_SUPPORT)
endif(NO_X_SUPPORT)

if (WITH_QT)
  add_definitions(-DWITH_QT)
endif(WITH_QT)

include_directories(${VideoSG_INCLUDE_DIRS})
add_executable(seg_tree_sample seg_tree.cpp)
target_link_libraries(seg_tree_sample ${VideoSG_LIBRARIES})

