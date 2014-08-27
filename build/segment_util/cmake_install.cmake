# Install script for directory: /Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/segment_util/libProtoMessages.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/segment_util" TYPE STATIC_LIBRARY FILES "/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/libProtoMessages.a")
  if(EXISTS "$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/segment_util/libProtoMessages.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/segment_util/libProtoMessages.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/segment_util/libProtoMessages.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets.cmake"
         "/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/CMakeFiles/Export/_Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util" TYPE FILE FILES "/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/CMakeFiles/Export/_Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util" TYPE FILE FILES "/Users/luma/Code/Luma/VideoSGNew/VideoSG/build/segment_util/CMakeFiles/Export/_Users/luma/Code/Luma/VideoSGNew/VideoSG/segment_util/ProtoMessagesTargets-release.cmake")
  endif()
endif()

