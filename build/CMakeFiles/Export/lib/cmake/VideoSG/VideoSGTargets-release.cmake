#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "VideoSG" for configuration "Release"
set_property(TARGET VideoSG APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(VideoSG PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/usr/local/lib/libVideoSG.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS VideoSG )
list(APPEND _IMPORT_CHECK_FILES_FOR_VideoSG "/usr/local/lib/libVideoSG.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
