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
CMAKE_SOURCE_DIR = /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/build

# Include any dependencies generated for this target.
include CMakeFiles/seg_tree_sample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/seg_tree_sample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/seg_tree_sample.dir/flags.make

CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o: CMakeFiles/seg_tree_sample.dir/flags.make
CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o: ../seg_tree.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o -c /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/seg_tree.cpp

CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/seg_tree.cpp > CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.i

CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/seg_tree.cpp -o CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.s

CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.requires:
.PHONY : CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.requires

CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.provides: CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.requires
	$(MAKE) -f CMakeFiles/seg_tree_sample.dir/build.make CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.provides.build
.PHONY : CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.provides

CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.provides.build: CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o

# Object files for target seg_tree_sample
seg_tree_sample_OBJECTS = \
"CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o"

# External object files for target seg_tree_sample
seg_tree_sample_EXTERNAL_OBJECTS =

seg_tree_sample: CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o
seg_tree_sample: CMakeFiles/seg_tree_sample.dir/build.make
seg_tree_sample: CMakeFiles/seg_tree_sample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable seg_tree_sample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/seg_tree_sample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/seg_tree_sample.dir/build: seg_tree_sample
.PHONY : CMakeFiles/seg_tree_sample.dir/build

CMakeFiles/seg_tree_sample.dir/requires: CMakeFiles/seg_tree_sample.dir/seg_tree.cpp.o.requires
.PHONY : CMakeFiles/seg_tree_sample.dir/requires

CMakeFiles/seg_tree_sample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/seg_tree_sample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/seg_tree_sample.dir/clean

CMakeFiles/seg_tree_sample.dir/depend:
	cd /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/build /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/build /Users/luma/Code/Luma/VideoSGNew/VideoSG/app/seg_tree_sample/build/CMakeFiles/seg_tree_sample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/seg_tree_sample.dir/depend
