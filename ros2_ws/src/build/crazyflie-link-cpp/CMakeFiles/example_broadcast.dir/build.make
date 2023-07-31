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
CMAKE_SOURCE_DIR = /special/ros2_ws/src/crazyflie-link-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /special/ros2_ws/src/build/crazyflie-link-cpp

# Include any dependencies generated for this target.
include CMakeFiles/example_broadcast.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/example_broadcast.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/example_broadcast.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example_broadcast.dir/flags.make

CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o: CMakeFiles/example_broadcast.dir/flags.make
CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o: /special/ros2_ws/src/crazyflie-link-cpp/examples/broadcast.cpp
CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o: CMakeFiles/example_broadcast.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/special/ros2_ws/src/build/crazyflie-link-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o -MF CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o.d -o CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o -c /special/ros2_ws/src/crazyflie-link-cpp/examples/broadcast.cpp

CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /special/ros2_ws/src/crazyflie-link-cpp/examples/broadcast.cpp > CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.i

CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /special/ros2_ws/src/crazyflie-link-cpp/examples/broadcast.cpp -o CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.s

# Object files for target example_broadcast
example_broadcast_OBJECTS = \
"CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o"

# External object files for target example_broadcast
example_broadcast_EXTERNAL_OBJECTS =

example_broadcast: CMakeFiles/example_broadcast.dir/examples/broadcast.cpp.o
example_broadcast: CMakeFiles/example_broadcast.dir/build.make
example_broadcast: libcrazyflieLinkCpp.a
example_broadcast: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
example_broadcast: CMakeFiles/example_broadcast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/special/ros2_ws/src/build/crazyflie-link-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_broadcast"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_broadcast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example_broadcast.dir/build: example_broadcast
.PHONY : CMakeFiles/example_broadcast.dir/build

CMakeFiles/example_broadcast.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example_broadcast.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example_broadcast.dir/clean

CMakeFiles/example_broadcast.dir/depend:
	cd /special/ros2_ws/src/build/crazyflie-link-cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /special/ros2_ws/src/crazyflie-link-cpp /special/ros2_ws/src/crazyflie-link-cpp /special/ros2_ws/src/build/crazyflie-link-cpp /special/ros2_ws/src/build/crazyflie-link-cpp /special/ros2_ws/src/build/crazyflie-link-cpp/CMakeFiles/example_broadcast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example_broadcast.dir/depend
