# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hugh/GitHub/CS196

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hugh/GitHub/CS196

# Include any dependencies generated for this target.
include deps/glfw-3.1/tests/CMakeFiles/threads.dir/depend.make

# Include the progress variables for this target.
include deps/glfw-3.1/tests/CMakeFiles/threads.dir/progress.make

# Include the compile flags for this target's objects.
include deps/glfw-3.1/tests/CMakeFiles/threads.dir/flags.make

deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o: deps/glfw-3.1/tests/CMakeFiles/threads.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o: deps/glfw-3.1/tests/threads.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/threads.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/threads.c

deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/threads.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/threads.c > CMakeFiles/threads.dir/threads.c.i

deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/threads.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/threads.c -o CMakeFiles/threads.dir/threads.c.s

deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/threads.dir/build.make deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o

deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: deps/glfw-3.1/tests/CMakeFiles/threads.dir/flags.make
deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: deps/glfw-3.1/deps/tinycthread.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/tinycthread.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/deps/tinycthread.c

deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/tinycthread.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/deps/tinycthread.c > CMakeFiles/threads.dir/__/deps/tinycthread.c.i

deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/tinycthread.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/deps/tinycthread.c -o CMakeFiles/threads.dir/__/deps/tinycthread.c.s

deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires:
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires

deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides: deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/threads.dir/build.make deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides

deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build: deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o

# Object files for target threads
threads_OBJECTS = \
"CMakeFiles/threads.dir/threads.c.o" \
"CMakeFiles/threads.dir/__/deps/tinycthread.c.o"

# External object files for target threads
threads_EXTERNAL_OBJECTS =

deps/glfw-3.1/tests/threads.app/Contents/MacOS/threads: deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o
deps/glfw-3.1/tests/threads.app/Contents/MacOS/threads: deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o
deps/glfw-3.1/tests/threads.app/Contents/MacOS/threads: deps/glfw-3.1/tests/CMakeFiles/threads.dir/build.make
deps/glfw-3.1/tests/threads.app/Contents/MacOS/threads: deps/glfw-3.1/src/libglfw3.a
deps/glfw-3.1/tests/threads.app/Contents/MacOS/threads: deps/glfw-3.1/tests/CMakeFiles/threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable threads.app/Contents/MacOS/threads"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/glfw-3.1/tests/CMakeFiles/threads.dir/build: deps/glfw-3.1/tests/threads.app/Contents/MacOS/threads
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/build

deps/glfw-3.1/tests/CMakeFiles/threads.dir/requires: deps/glfw-3.1/tests/CMakeFiles/threads.dir/threads.c.o.requires
deps/glfw-3.1/tests/CMakeFiles/threads.dir/requires: deps/glfw-3.1/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/requires

deps/glfw-3.1/tests/CMakeFiles/threads.dir/clean:
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/threads.dir/cmake_clean.cmake
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/clean

deps/glfw-3.1/tests/CMakeFiles/threads.dir/depend:
	cd /Users/hugh/GitHub/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/CMakeFiles/threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/glfw-3.1/tests/CMakeFiles/threads.dir/depend

