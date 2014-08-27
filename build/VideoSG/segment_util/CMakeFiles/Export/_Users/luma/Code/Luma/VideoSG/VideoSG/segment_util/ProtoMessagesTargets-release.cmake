#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ProtoMessages" for configuration "Release"
set_property(TARGET ProtoMessages APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ProtoMessages PROPERTIES
  IMPORTED_LOCATION_RELEASE "/Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util/segment_util/libProtoMessages.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libProtoMessages.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS ProtoMessages )
list(APPEND _IMPORT_CHECK_FILES_FOR_ProtoMessages "/Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util/segment_util/libProtoMessages.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
