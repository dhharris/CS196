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
include src/textures/tests/CMakeFiles/windows.dir/depend.make

# Include the progress variables for this target.
include src/textures/tests/CMakeFiles/windows.dir/progress.make

# Include the compile flags for this target's objects.
include src/textures/tests/CMakeFiles/windows.dir/flags.make

src/textures/tests/CMakeFiles/windows.dir/windows.c.o: src/textures/tests/CMakeFiles/windows.dir/flags.make
src/textures/tests/CMakeFiles/windows.dir/windows.c.o: deps/glfw-3.1/tests/windows.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/textures/tests/CMakeFiles/windows.dir/windows.c.o"
	cd /Users/hugh/GitHub/CS196/src/textures/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/windows.dir/windows.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/windows.c

src/textures/tests/CMakeFiles/windows.dir/windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/windows.c.i"
	cd /Users/hugh/GitHub/CS196/src/textures/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/windows.c > CMakeFiles/windows.dir/windows.c.i

src/textures/tests/CMakeFiles/windows.dir/windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/windows.c.s"
	cd /Users/hugh/GitHub/CS196/src/textures/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests/windows.c -o CMakeFiles/windows.dir/windows.c.s

src/textures/tests/CMakeFiles/windows.dir/windows.c.o.requires:
.PHONY : src/textures/tests/CMakeFiles/windows.dir/windows.c.o.requires

src/textures/tests/CMakeFiles/windows.dir/windows.c.o.provides: src/textures/tests/CMakeFiles/windows.dir/windows.c.o.requires
	$(MAKE) -f src/textures/tests/CMakeFiles/windows.dir/build.make src/textures/tests/CMakeFiles/windows.dir/windows.c.o.provides.build
.PHONY : src/textures/tests/CMakeFiles/windows.dir/windows.c.o.provides

src/textures/tests/CMakeFiles/windows.dir/windows.c.o.provides.build: src/textures/tests/CMakeFiles/windows.dir/windows.c.o

# Object files for target windows
windows_OBJECTS = \
"CMakeFiles/windows.dir/windows.c.o"

# External object files for target windows
windows_EXTERNAL_OBJECTS =

src/textures/tests/windows.app/Contents/MacOS/windows: src/textures/tests/CMakeFiles/windows.dir/windows.c.o
src/textures/tests/windows.app/Contents/MacOS/windows: src/textures/tests/CMakeFiles/windows.dir/build.make
src/textures/tests/windows.app/Contents/MacOS/windows: src/textures/src/libglfw3.a
src/textures/tests/windows.app/Contents/MacOS/windows: src/textures/tests/CMakeFiles/windows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable windows.app/Contents/MacOS/windows"
	cd /Users/hugh/GitHub/CS196/src/textures/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/windows.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/textures/tests/CMakeFiles/windows.dir/build: src/textures/tests/windows.app/Contents/MacOS/windows
.PHONY : src/textures/tests/CMakeFiles/windows.dir/build

src/textures/tests/CMakeFiles/windows.dir/requires: src/textures/tests/CMakeFiles/windows.dir/windows.c.o.requires
.PHONY : src/textures/tests/CMakeFiles/windows.dir/requires

src/textures/tests/CMakeFiles/windows.dir/clean:
	cd /Users/hugh/GitHub/CS196/src/textures/tests && $(CMAKE_COMMAND) -P CMakeFiles/windows.dir/cmake_clean.cmake
.PHONY : src/textures/tests/CMakeFiles/windows.dir/clean

src/textures/tests/CMakeFiles/windows.dir/depend:
	cd /Users/hugh/GitHub/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/deps/glfw-3.1/tests /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/src/textures/tests /Users/hugh/GitHub/CS196/src/textures/tests/CMakeFiles/windows.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/textures/tests/CMakeFiles/windows.dir/depend

