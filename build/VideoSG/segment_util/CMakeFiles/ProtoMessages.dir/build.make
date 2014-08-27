# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/luma/Code/Luma/VideoSG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/luma/Code/Luma/VideoSG/build

# Include any dependencies generated for this target.
include VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/depend.make

# Include the progress variables for this target.
include VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/progress.make

# Include the compile flags for this target's objects.
include VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/flags.make

VideoSG/segment_util/segmentation.pb.cc: ../VideoSG/segment_util/segmentation.proto
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/luma/Code/Luma/VideoSG/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Running C++ protocol buffer compiler on segmentation.proto"
	cd /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util && /opt/local/bin/protoc --cpp_out /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util -I /Users/luma/Code/Luma/VideoSG/VideoSG/segment_util /Users/luma/Code/Luma/VideoSG/VideoSG/segment_util/segmentation.proto

VideoSG/segment_util/segmentation.pb.h: VideoSG/segment_util/segmentation.pb.cc

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/flags.make
VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o: VideoSG/segment_util/segmentation.pb.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/luma/Code/Luma/VideoSG/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o"
	cd /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o -c /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util/segmentation.pb.cc

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.i"
	cd /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util/segmentation.pb.cc > CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.i

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.s"
	cd /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util/segmentation.pb.cc -o CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.s

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.requires:
.PHONY : VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.requires

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.provides: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.requires
	$(MAKE) -f VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/build.make VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.provides.build
.PHONY : VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.provides

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.provides.build: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o

# Object files for target ProtoMessages
ProtoMessages_OBJECTS = \
"CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o"

# External object files for target ProtoMessages
ProtoMessages_EXTERNAL_OBJECTS =

VideoSG/segment_util/libProtoMessages.dylib: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o
VideoSG/segment_util/libProtoMessages.dylib: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/build.make
VideoSG/segment_util/libProtoMessages.dylib: /usr/local/lib/libprotobuf.dylib
VideoSG/segment_util/libProtoMessages.dylib: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libProtoMessages.dylib"
	cd /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ProtoMessages.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/build: VideoSG/segment_util/libProtoMessages.dylib
.PHONY : VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/build

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/requires: VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/segmentation.pb.cc.o.requires
.PHONY : VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/requires

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/clean:
	cd /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util && $(CMAKE_COMMAND) -P CMakeFiles/ProtoMessages.dir/cmake_clean.cmake
.PHONY : VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/clean

VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/depend: VideoSG/segment_util/segmentation.pb.cc
VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/depend: VideoSG/segment_util/segmentation.pb.h
	cd /Users/luma/Code/Luma/VideoSG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luma/Code/Luma/VideoSG /Users/luma/Code/Luma/VideoSG/VideoSG/segment_util /Users/luma/Code/Luma/VideoSG/build /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util /Users/luma/Code/Luma/VideoSG/build/VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : VideoSG/segment_util/CMakeFiles/ProtoMessages.dir/depend
