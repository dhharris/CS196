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
include deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/depend.make

# Include the progress variables for this target.
include deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/progress.make

# Include the compile flags for this target's objects.
include deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/flags.make

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o: deps/glfw-3.1/tests/accuracy.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eric/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/accuracy.dir/accuracy.c.o   -c /home/eric/CS196/deps/glfw-3.1/tests/accuracy.c

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/accuracy.dir/accuracy.c.i"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/eric/CS196/deps/glfw-3.1/tests/accuracy.c > CMakeFiles/accuracy.dir/accuracy.c.i

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/accuracy.dir/accuracy.c.s"
	cd /home/eric/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/eric/CS196/deps/glfw-3.1/tests/accuracy.c -o CMakeFiles/accuracy.dir/accuracy.c.s

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/build.make deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o

# Object files for target accuracy
accuracy_OBJECTS = \
"CMakeFiles/accuracy.dir/accuracy.c.o"

# External object files for target accuracy
accuracy_EXTERNAL_OBJECTS =

deps/glfw-3.1/tests/accuracy: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o
deps/glfw-3.1/tests/accuracy: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/build.make
deps/glfw-3.1/tests/accuracy: deps/glfw-3.1/src/libglfw3.a
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libGLU.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libX11.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXrandr.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXinerama.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXi.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libm.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXcursor.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libGL.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXrandr.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXinerama.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXi.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libm.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libXcursor.so
deps/glfw-3.1/tests/accuracy: /usr/lib/x86_64-linux-gnu/libGL.so
deps/glfw-3.1/tests/accuracy: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable accuracy"
	cd /home/eric/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/accuracy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/build: deps/glfw-3.1/tests/accuracy
.PHONY : deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/build

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/requires: deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/accuracy.c.o.requires
.PHONY : deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/requires

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/clean:
	cd /home/eric/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/accuracy.dir/cmake_clean.cmake
.PHONY : deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/clean

deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/depend:
	cd /home/eric/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eric/CS196 /home/eric/CS196/deps/glfw-3.1/tests /home/eric/CS196 /home/eric/CS196/deps/glfw-3.1/tests /home/eric/CS196/deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/depend

