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
CMAKE_SOURCE_DIR = /home/albur/Documents/Github/CS196

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/albur/Documents/Github/CS196

# Include any dependencies generated for this target.
include deps/glfw-3.1/tests/CMakeFiles/empty.dir/depend.make

# Include the progress variables for this target.
include deps/glfw-3.1/tests/CMakeFiles/empty.dir/progress.make

# Include the compile flags for this target's objects.
include deps/glfw-3.1/tests/CMakeFiles/empty.dir/flags.make

deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o: deps/glfw-3.1/tests/CMakeFiles/empty.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o: deps/glfw-3.1/tests/empty.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/albur/Documents/Github/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/empty.dir/empty.c.o   -c /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests/empty.c

deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/empty.c.i"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests/empty.c > CMakeFiles/empty.dir/empty.c.i

deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/empty.c.s"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests/empty.c -o CMakeFiles/empty.dir/empty.c.s

deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/empty.dir/build.make deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o

deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: deps/glfw-3.1/tests/CMakeFiles/empty.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: deps/glfw-3.1/deps/tinycthread.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/albur/Documents/Github/CS196/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/empty.dir/__/deps/tinycthread.c.o   -c /home/albur/Documents/Github/CS196/deps/glfw-3.1/deps/tinycthread.c

deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/tinycthread.c.i"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/albur/Documents/Github/CS196/deps/glfw-3.1/deps/tinycthread.c > CMakeFiles/empty.dir/__/deps/tinycthread.c.i

deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/tinycthread.c.s"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/albur/Documents/Github/CS196/deps/glfw-3.1/deps/tinycthread.c -o CMakeFiles/empty.dir/__/deps/tinycthread.c.s

deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/empty.dir/build.make deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o

# Object files for target empty
empty_OBJECTS = \
"CMakeFiles/empty.dir/empty.c.o" \
"CMakeFiles/empty.dir/__/deps/tinycthread.c.o"

# External object files for target empty
empty_EXTERNAL_OBJECTS =

deps/glfw-3.1/tests/empty: deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o
deps/glfw-3.1/tests/empty: deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o
deps/glfw-3.1/tests/empty: deps/glfw-3.1/tests/CMakeFiles/empty.dir/build.make
deps/glfw-3.1/tests/empty: deps/glfw-3.1/src/libglfw3.a
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libGLU.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libX11.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXrandr.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXinerama.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXi.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libm.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXcursor.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libGL.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/librt.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXrandr.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXinerama.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXi.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libm.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libXcursor.so
deps/glfw-3.1/tests/empty: /usr/lib/x86_64-linux-gnu/libGL.so
deps/glfw-3.1/tests/empty: deps/glfw-3.1/tests/CMakeFiles/empty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable empty"
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/empty.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/glfw-3.1/tests/CMakeFiles/empty.dir/build: deps/glfw-3.1/tests/empty
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/build

deps/glfw-3.1/tests/CMakeFiles/empty.dir/requires: deps/glfw-3.1/tests/CMakeFiles/empty.dir/empty.c.o.requires
deps/glfw-3.1/tests/CMakeFiles/empty.dir/requires: deps/glfw-3.1/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o.requires
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/requires

deps/glfw-3.1/tests/CMakeFiles/empty.dir/clean:
	cd /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/empty.dir/cmake_clean.cmake
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/clean

deps/glfw-3.1/tests/CMakeFiles/empty.dir/depend:
	cd /home/albur/Documents/Github/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/albur/Documents/Github/CS196 /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests /home/albur/Documents/Github/CS196 /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests /home/albur/Documents/Github/CS196/deps/glfw-3.1/tests/CMakeFiles/empty.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/glfw-3.1/tests/CMakeFiles/empty.dir/depend

