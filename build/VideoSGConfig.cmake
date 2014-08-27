# Compute paths
get_filename_component( PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
SET( VideoSG_INCLUDE_DIRS "/Users/luma/Code/Luma/VideoSGNew/VideoSG;/usr/local/include;/usr/local/include/opencv2;/usr/local/include/opencv2/core;/usr/local/include/opencv2/imgproc;/usr/local/include/opencv2/features2d;/usr/local/include/opencv2/flann;/usr/local/include/opencv2/calib3d;/usr/local/include/opencv2/objdetect;/usr/local/include/opencv2/contrib;/usr/local/include/opencv2/highgui;/usr/local/include/opencv2/ml;/usr/local/include/opencv2/video;/usr/local/include/opencv2/gpu;/usr/local/include/opencv2/legacy;/Users/luma/Code/Luma/VideoSGNew/VideoSG/build;/Users/luma/Code/Luma/VideoSGNew/VideoSG;/usr/local/include;/usr/local/include/opencv2;/usr/local/include/opencv2/core;/usr/local/include/opencv2/imgproc;/usr/local/include/opencv2/features2d;/usr/local/include/opencv2/flann;/usr/local/include/opencv2/calib3d;/usr/local/include/opencv2/objdetect;/usr/local/include/opencv2/contrib;/usr/local/include/opencv2/highgui;/usr/local/include/opencv2/ml;/usr/local/include/opencv2/video;/usr/local/include/opencv2/gpu;/usr/local/include/opencv2/legacy;/opt/local/include;/usr/local/include" )

# Library dependencies (contains definitions for IMPORTED targets)
if( NOT TARGET VideoSG AND NOT VideoSG_BINARY_DIR )
  include( "${PROJECT_CMAKE_DIR}/VideoSGTargets.cmake" )
endif()

SET( VideoSG_LIBRARIES "VideoSG" )
