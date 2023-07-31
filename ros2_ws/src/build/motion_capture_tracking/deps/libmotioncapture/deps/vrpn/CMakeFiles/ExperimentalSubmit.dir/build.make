# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /special/ros2_ws/src/motion_capture_tracking/motion_capture_tracking

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /special/ros2_ws/src/build/motion_capture_tracking

# Utility rule file for ExperimentalSubmit.

# Include any custom commands dependencies for this target.
include deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/progress.make

deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit:
	cd /special/ros2_ws/src/build/motion_capture_tracking/deps/libmotioncapture/deps/vrpn && /usr/bin/ctest -D ExperimentalSubmit

ExperimentalSubmit: deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit
ExperimentalSubmit: deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/build.make
.PHONY : ExperimentalSubmit

# Rule to build all files generated by this target.
deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/build: ExperimentalSubmit
.PHONY : deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/build

deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/clean:
	cd /special/ros2_ws/src/build/motion_capture_tracking/deps/libmotioncapture/deps/vrpn && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalSubmit.dir/cmake_clean.cmake
.PHONY : deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/clean

deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/depend:
	cd /special/ros2_ws/src/build/motion_capture_tracking && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /special/ros2_ws/src/motion_capture_tracking/motion_capture_tracking /special/ros2_ws/src/motion_capture_tracking/motion_capture_tracking/deps/libmotioncapture/deps/vrpn /special/ros2_ws/src/build/motion_capture_tracking /special/ros2_ws/src/build/motion_capture_tracking/deps/libmotioncapture/deps/vrpn /special/ros2_ws/src/build/motion_capture_tracking/deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/libmotioncapture/deps/vrpn/CMakeFiles/ExperimentalSubmit.dir/depend

