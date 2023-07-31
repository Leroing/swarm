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
CMAKE_SOURCE_DIR = /special/ros2_ws/src/crazyswarm2/crazyflie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /special/ros2_ws/src/build/crazyflie

# Include any dependencies generated for this target.
include deps/crazyflie_tools/CMakeFiles/scan.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/crazyflie_tools/CMakeFiles/scan.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/crazyflie_tools/CMakeFiles/scan.dir/progress.make

# Include the compile flags for this target's objects.
include deps/crazyflie_tools/CMakeFiles/scan.dir/flags.make

deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.o: deps/crazyflie_tools/CMakeFiles/scan.dir/flags.make
deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.o: /special/ros2_ws/src/crazyswarm2/crazyflie/deps/crazyflie_tools/src/scan.cpp
deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.o: deps/crazyflie_tools/CMakeFiles/scan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/special/ros2_ws/src/build/crazyflie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.o"
	cd /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.o -MF CMakeFiles/scan.dir/src/scan.cpp.o.d -o CMakeFiles/scan.dir/src/scan.cpp.o -c /special/ros2_ws/src/crazyswarm2/crazyflie/deps/crazyflie_tools/src/scan.cpp

deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scan.dir/src/scan.cpp.i"
	cd /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /special/ros2_ws/src/crazyswarm2/crazyflie/deps/crazyflie_tools/src/scan.cpp > CMakeFiles/scan.dir/src/scan.cpp.i

deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scan.dir/src/scan.cpp.s"
	cd /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /special/ros2_ws/src/crazyswarm2/crazyflie/deps/crazyflie_tools/src/scan.cpp -o CMakeFiles/scan.dir/src/scan.cpp.s

# Object files for target scan
scan_OBJECTS = \
"CMakeFiles/scan.dir/src/scan.cpp.o"

# External object files for target scan
scan_EXTERNAL_OBJECTS =

deps/crazyflie_tools/scan: deps/crazyflie_tools/CMakeFiles/scan.dir/src/scan.cpp.o
deps/crazyflie_tools/scan: deps/crazyflie_tools/CMakeFiles/scan.dir/build.make
deps/crazyflie_tools/scan: deps/crazyflie_tools/crazyflie_cpp/libcrazyflie_cpp.a
deps/crazyflie_tools/scan: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.74.0
deps/crazyflie_tools/scan: deps/crazyflie_tools/crazyflie_cpp/crazyflie-link-cpp/libcrazyflieLinkCpp.a
deps/crazyflie_tools/scan: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
deps/crazyflie_tools/scan: deps/crazyflie_tools/CMakeFiles/scan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/special/ros2_ws/src/build/crazyflie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable scan"
	cd /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/crazyflie_tools/CMakeFiles/scan.dir/build: deps/crazyflie_tools/scan
.PHONY : deps/crazyflie_tools/CMakeFiles/scan.dir/build

deps/crazyflie_tools/CMakeFiles/scan.dir/clean:
	cd /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools && $(CMAKE_COMMAND) -P CMakeFiles/scan.dir/cmake_clean.cmake
.PHONY : deps/crazyflie_tools/CMakeFiles/scan.dir/clean

deps/crazyflie_tools/CMakeFiles/scan.dir/depend:
	cd /special/ros2_ws/src/build/crazyflie && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /special/ros2_ws/src/crazyswarm2/crazyflie /special/ros2_ws/src/crazyswarm2/crazyflie/deps/crazyflie_tools /special/ros2_ws/src/build/crazyflie /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools /special/ros2_ws/src/build/crazyflie/deps/crazyflie_tools/CMakeFiles/scan.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/crazyflie_tools/CMakeFiles/scan.dir/depend

