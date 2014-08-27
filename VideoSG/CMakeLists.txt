add_subdirectory( segment_util )


set(HEADERS
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

SET(SOURCES
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

#######################################################
## Find required dependencies
find_package(Boost REQUIRED)
find_package(GLog REQUIRED)
find_package(OpenCV2 REQUIRED)

## Apply project include directories
list( APPEND VideoSG_INC "${CMAKE_CURRENT_SOURCE_DIR}/../VideoSG;${CMAKE_CURRENT_BINARY_DIR}/VideoSG” )
list( APPEND USER_INC  ${CMAKE_CURRENT_BINARY_DIR}
                       ${CMAKE_CURRENT_SOURCE_DIR}
                       ${OpenCV2_INCLUDE_DIRS}
                       ${Boost_INCLUDE_DIR}
                       ${GLOG_INCLUDE_DIR} 
		      )

#######################################################
## Setup and configure library

# Include source/build directories first to preempt any installed VideoSG
include_directories( ${VideoSG_INC} )
include_directories( ${USER_INC} )

## Generate symbol export helper header on MSVC
IF(MSVC)
    string(TOUPPER ${LIBRARY_NAME} LIBRARY_NAME_CAPS)
    include(GenerateExportHeader)
    GENERATE_EXPORT_HEADER( ${LIBRARY_NAME}
        BASE_NAME ${LIBRARY_NAME_CAPS}
        EXPORT_MACRO_NAME ${LIBRARY_NAME_CAPS}_EXPORT
        EXPORT_FILE_NAME "${CMAKE_CURRENT_BINARY_DIR}/${LIBRARY_NAME}/${LIBRARY_NAME}_export.h"
        STATIC_DEFINE ${LIBRARY_NAME_CAPS}_BUILT_AS_STATIC
    )
ENDIF()

#######################################################
## Create configure file for inclusion in library

# Platform configuration vars
## Compiler configuration
include(SetPlatformVars)
configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/config.h.in"
  "${CMAKE_CURRENT_BINARY_DIR}/${LIBRARY_NAME}/config.h"
)

list(APPEND VideoSG_INC ${CMAKE_CURRENT_BINARY_DIR}/VideoSG/)

# Configure the include directories for export_package
set(EXPORT_VideoSG_INC ${VideoSG_INC} ${USER_INC} PARENT_SCOPE)
set(VideoSG_HEADERS ${HEADERS} PARENT_SCOPE)
set(VideoSG_SOURCES ${SOURCES} PARENT_SCOPE)
set(VideoSG_LINK_LIBS ${LINK_LIBS} PARENT_SCOPE)

#######################################################
## Install headers

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${LIBRARY_NAME}/config.h"
  DESTINATION ${CMAKE_INSTALL_PREFIX}/${LIBRARY_NAME}
)
install(DIRECTORY ${INC_DIR}
  DESTINATION ${CMAKE_INSTALL_PREFIX}/VideoSG
)