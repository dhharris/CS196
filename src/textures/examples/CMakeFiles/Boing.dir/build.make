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
include src/textures/examples/CMakeFiles/Boing.dir/depend.make

# Include the progress variables for this target.
include src/textures/examples/CMakeFiles/Boing.dir/progress.make

# Include the compile flags for this target's objects.
include src/textures/examples/CMakeFiles/Boing.dir/flags.make

src/textures/examples/CMakeFiles/Boing.dir/boing.c.o: src/textures/examples/CMakeFiles/Boing.dir/flags.make
src/textures/examples/CMakeFiles/Boing.dir/boing.c.o: deps/glfw-3.1/examples/boing.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/textures/examples/CMakeFiles/Boing.dir/boing.c.o"
	cd /Users/hugh/GitHub/CS196/src/textures/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Boing.dir/boing.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/examples/boing.c

src/textures/examples/CMakeFiles/Boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Boing.dir/boing.c.i"
	cd /Users/hugh/GitHub/CS196/src/textures/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/examples/boing.c > CMakeFiles/Boing.dir/boing.c.i

src/textures/examples/CMakeFiles/Boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Boing.dir/boing.c.s"
	cd /Users/hugh/GitHub/CS196/src/textures/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/examples/boing.c -o CMakeFiles/Boing.dir/boing.c.s

src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.requires:
.PHONY : src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.requires

src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.provides: src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.requires
	$(MAKE) -f src/textures/examples/CMakeFiles/Boing.dir/build.make src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.provides.build
.PHONY : src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.provides

src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.provides.build: src/textures/examples/CMakeFiles/Boing.dir/boing.c.o

# Object files for target Boing
Boing_OBJECTS = \
"CMakeFiles/Boing.dir/boing.c.o"

# External object files for target Boing
Boing_EXTERNAL_OBJECTS =

src/textures/examples/Boing.app/Contents/MacOS/Boing: src/textures/examples/CMakeFiles/Boing.dir/boing.c.o
src/textures/examples/Boing.app/Contents/MacOS/Boing: src/textures/examples/CMakeFiles/Boing.dir/build.make
src/textures/examples/Boing.app/Contents/MacOS/Boing: src/textures/src/libglfw3.a
src/textures/examples/Boing.app/Contents/MacOS/Boing: src/textures/examples/CMakeFiles/Boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable Boing.app/Contents/MacOS/Boing"
	cd /Users/hugh/GitHub/CS196/src/textures/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Boing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/textures/examples/CMakeFiles/Boing.dir/build: src/textures/examples/Boing.app/Contents/MacOS/Boing
.PHONY : src/textures/examples/CMakeFiles/Boing.dir/build

src/textures/examples/CMakeFiles/Boing.dir/requires: src/textures/examples/CMakeFiles/Boing.dir/boing.c.o.requires
.PHONY : src/textures/examples/CMakeFiles/Boing.dir/requires

src/textures/examples/CMakeFiles/Boing.dir/clean:
	cd /Users/hugh/GitHub/CS196/src/textures/examples && $(CMAKE_COMMAND) -P CMakeFiles/Boing.dir/cmake_clean.cmake
.PHONY : src/textures/examples/CMakeFiles/Boing.dir/clean

src/textures/examples/CMakeFiles/Boing.dir/depend:
	cd /Users/hugh/GitHub/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/deps/glfw-3.1/examples /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/src/textures/examples /Users/hugh/GitHub/CS196/src/textures/examples/CMakeFiles/Boing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/textures/examples/CMakeFiles/Boing.dir/depend
