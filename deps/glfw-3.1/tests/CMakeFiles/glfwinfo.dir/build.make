# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eric/CS196

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eric/CS196

# Include any dependencies generated for this target.
include deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/depend.make

# Include the progress variables for this target.
include deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/progress.make

# Include the compile flags for this target's objects.
include deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/flags.make

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: deps/glfw-3.1/tests/glfwinfo.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eric/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/glfwinfo.c.o   -c /home/eric/CS196/deps/glfw-3.1/tests/glfwinfo.c

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/glfwinfo.c.i"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/eric/CS196/deps/glfw-3.1/tests/glfwinfo.c > CMakeFiles/glfwinfo.dir/glfwinfo.c.i

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/glfwinfo.c.s"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/eric/CS196/deps/glfw-3.1/tests/glfwinfo.c -o CMakeFiles/glfwinfo.dir/glfwinfo.c.s

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build.make deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: deps/glfw-3.1/deps/getopt.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eric/CS196/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o   -c /home/eric/CS196/deps/glfw-3.1/deps/getopt.c

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/eric/CS196/deps/glfw-3.1/deps/getopt.c > CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/eric/CS196/deps/glfw-3.1/deps/getopt.c -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build.make deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o

# Object files for target glfwinfo
glfwinfo_OBJECTS = \
"CMakeFiles/glfwinfo.dir/glfwinfo.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o"

# External object files for target glfwinfo
glfwinfo_EXTERNAL_OBJECTS =

deps/glfw-3.1/tests/glfwinfo: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o
deps/glfw-3.1/tests/glfwinfo: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o
deps/glfw-3.1/tests/glfwinfo: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build.make
deps/glfw-3.1/tests/glfwinfo: deps/glfw-3.1/src/libglfw3.a
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libGLU.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libX11.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXrandr.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXinerama.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXi.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libm.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXcursor.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libGL.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXrandr.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXinerama.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXi.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libm.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libXcursor.so
deps/glfw-3.1/tests/glfwinfo: /usr/lib/x86_64-linux-gnu/libGL.so
deps/glfw-3.1/tests/glfwinfo: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable glfwinfo"
	cd /home/eric/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfwinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build: deps/glfw-3.1/tests/glfwinfo
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/requires: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o.requires
deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/requires: deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o.requires
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/requires

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/clean:
	cd /home/eric/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/glfwinfo.dir/cmake_clean.cmake
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/clean

deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/depend:
	cd /home/eric/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eric/CS196 /home/eric/CS196/deps/glfw-3.1/tests /home/eric/CS196 /home/eric/CS196/deps/glfw-3.1/tests /home/eric/CS196/deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/depend

