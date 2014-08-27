project( VideoSG )
cmake_minimum_required(VERSION 3.0)

set(PROJECT_NAME VideoSG)
set(LIBRARY_NAME ${PROJECT_NAME})

add_subdirectory( segment_util )

#######################################################
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/.)

#######################################################
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x -Wall  -Werror")

IF(${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
ENDIF()


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

if( OpenCV2_FOUND )
    add_definitions( -DHAVE_OPENCV )
    list(APPEND LINK_LIBS ${OpenCV2_LIBRARIES})
    list(APPEND USER_INC ${OpenCV2_INCLUDE_DIRS})
else()
    message(STATUS "OpenCV2 not found")
endif()

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
## SRC and HDR
set(SRCS
    base/base_impl.cpp
    base/base.cpp

    imagefilter/image_filter.cpp
    segment_util/segmentation_boundary.cpp
    segment_util/segmentation_io.cpp
    segment_util/segmentation_render.cpp
    segment_util/segmentation_util.cpp

    segmentation/boundary.cpp
    segmentation/dense_seg_graph_interface.cpp
    segmentation/dense_segmentation_graph.cpp
    segmentation/dense_segmentation.cpp
    segmentation/histograms.cpp
    segmentation/pixel_distance.cpp
    segmentation/region_descriptor.cpp
    segmentation/region_segmentation_graph.cpp
    segmentation/region_segmentation.cpp
    segmentation/segmentation_common.cpp
    segmentation/segmentation_graph.cpp
    segmentation/segmentation_unit.cpp
    segmentation/segmentation.cpp

#    video_display_qt/main_window.cpp
#    video_display_qt/video_display_qt_unit.cpp

    video_framework/flow_reader.cpp
    video_framework/video_capture_unit.cpp
    video_framework/video_display_unit.cpp
    video_framework/video_pipeline.cpp
    video_framework/video_reader_unit.cpp
    video_framework/video_unit.cpp
    video_framework/video_writer_unit.cpp
   )

set(HDRS
    base/base_impl.h
    base/base.h

    imagefilter/image_filter.h
    imagefilter/image_util.h

    segment_util/segmentation_boundary.h
    segment_util/segmentation_io.h
    segment_util/segmentation_render.h
    segment_util/segmentation_util.h

    segmentation/boundary.h
    segmentation/dense_seg_graph_interface.h
    segmentation/dense_segmentation_graph.h
    segmentation/dense_segmentation.h
    segmentation/histograms.h
    segmentation/pixel_distance.h
    segmentation/region_descriptor.h
    segmentation/region_segmentation_graph.h
    segmentation/region_segmentation.h
    segmentation/segmentation_common.h
    segmentation/segmentation_graph.h
    segmentation/segmentation_unit.h
    segmentation/segmentation.h

#    video_display_qt/main_window.h
#    video_display_qt/video_display_qt_unit.h

    video_framework/flow_reader.h
    video_framework/video_capture_unit.h
    video_framework/video_display_unit.h
    video_framework/video_pipeline.h
    video_framework/video_reader_unit.h
    video_framework/video_unit.h
    video_framework/video_writer_unit.h
   )

#######################################################
# CREATE THE DDTR LIBRARY
#######################################################

add_library(${PROJECT_NAME} ${SRCS} ${HDRS}  )

target_link_libraries(${PROJECT_NAME}
 	              ${OpenCV2_LIBRARIES}
                      ${Boost_LIBRARIES}
                      ${GLOG_LIBRARIES}
                      ProtoMessages
  )


#######################################################
#######################################################
#######################################################
## Create configure file for inclusion in library

CONFIGURE_FILE(
  "${CMAKE_CURRENT_SOURCE_DIR}/config.h.in"
  "${CMAKE_CURRENT_BINARY_DIR}/config.h"
)

#######################################################

# This relative path allows installed files to be relocatable.
set( CMAKECONFIG_INSTALL_DIR "lib/cmake/${PROJECT_NAME}" )
file( RELATIVE_PATH REL_INCLUDE_DIR
    "${CMAKE_INSTALL_PREFIX}/${CMAKECONFIG_INSTALL_DIR}"
    "${CMAKE_INSTALL_PREFIX}/include" )

# Export library for easy inclusion from other cmake projects.
file( REMOVE "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Targets.cmake" )
export( TARGETS ${LIBRARY_NAME}
        APPEND FILE "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Targets.cmake" )

# Version information
configure_file("${PROJECT_NAME}ConfigVersion.cmake.in"
  "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake" @ONLY)

# Build tree config
set( EXPORT_LIB_INC_DIR "${CMAKE_CURRENT_SOURCE_DIR}" )
CONFIGURE_FILE( "${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_NAME}Config.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake" @ONLY IMMEDIATE )

# Install tree config
#set( EXPORT_LIB_INC_DIR "\${${PROJECT_NAME}_CMAKE_DIR}/${REL_INCLUDE_DIR}" )
#configure_file( "${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_NAME}Config.cmake.in"
#    "${CMAKE_CURRENT_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/${PROJECT_NAME}Config.cmake" @ONLY )

# Add package to CMake package registery for use from the build tree
option( EXPORT_${PROJECT_NAME}
  "Should the ${PROJECT_NAME} package be exported for use by other software" ON )

if( EXPORT_${PROJECT_NAME} )
  export( PACKAGE ${PROJECT_NAME} )
endif()

#######################################################
## Install headers / targets

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/config.h"
  DESTINATION ${CMAKE_INSTALL_PREFIX}/include/${PROJECT_NAME}
)
install(FILES ${HEADERS}
  DESTINATION ${CMAKE_INSTALL_PREFIX}/include/${PROJECT_NAME}
)

install(TARGETS ${LIBRARY_NAME}
  EXPORT "${PROJECT_NAME}Targets"
  RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin
  LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
  ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)

#######################################################
## Install CMake config

INSTALL(
    FILES "${CMAKE_CURRENT_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/${PROJECT_NAME}Config.cmake"
          "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
    DESTINATION ${CMAKECONFIG_INSTALL_DIR} )

install( EXPORT "${PROJECT_NAME}Targets" DESTINATION ${CMAKECONFIG_INSTALL_DIR} )
