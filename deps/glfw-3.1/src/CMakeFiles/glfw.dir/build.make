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
include deps/glfw-3.1/src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include deps/glfw-3.1/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make

deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o: deps/glfw-3.1/src/context.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/context.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/context.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/context.c > CMakeFiles/glfw.dir/context.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/context.c -o CMakeFiles/glfw.dir/context.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o: deps/glfw-3.1/src/init.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/init.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/init.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/init.c > CMakeFiles/glfw.dir/init.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/init.c -o CMakeFiles/glfw.dir/init.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o: deps/glfw-3.1/src/input.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/input.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/input.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/input.c > CMakeFiles/glfw.dir/input.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/input.c -o CMakeFiles/glfw.dir/input.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o: deps/glfw-3.1/src/monitor.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/monitor.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/monitor.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/monitor.c > CMakeFiles/glfw.dir/monitor.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/monitor.c -o CMakeFiles/glfw.dir/monitor.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o: deps/glfw-3.1/src/window.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/window.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/window.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/window.c > CMakeFiles/glfw.dir/window.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/window.c -o CMakeFiles/glfw.dir/window.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o: deps/glfw-3.1/src/cocoa_init.m
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_init.m.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_init.m

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_init.m.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_init.m > CMakeFiles/glfw.dir/cocoa_init.m.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_init.m.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_init.m -o CMakeFiles/glfw.dir/cocoa_init.m.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: deps/glfw-3.1/src/cocoa_monitor.m
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_monitor.m.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_monitor.m

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_monitor.m.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_monitor.m > CMakeFiles/glfw.dir/cocoa_monitor.m.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_monitor.m.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_monitor.m -o CMakeFiles/glfw.dir/cocoa_monitor.m.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o: deps/glfw-3.1/src/cocoa_window.m
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_window.m.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_window.m

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_window.m.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_window.m > CMakeFiles/glfw.dir/cocoa_window.m.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_window.m.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/cocoa_window.m -o CMakeFiles/glfw.dir/cocoa_window.m.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o: deps/glfw-3.1/src/iokit_joystick.m
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/iokit_joystick.m.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/iokit_joystick.m

deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/iokit_joystick.m.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/iokit_joystick.m > CMakeFiles/glfw.dir/iokit_joystick.m.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/iokit_joystick.m.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/iokit_joystick.m -o CMakeFiles/glfw.dir/iokit_joystick.m.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o: deps/glfw-3.1/src/mach_time.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/mach_time.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/mach_time.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/mach_time.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/mach_time.c > CMakeFiles/glfw.dir/mach_time.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/mach_time.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/mach_time.c -o CMakeFiles/glfw.dir/mach_time.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o: deps/glfw-3.1/src/posix_tls.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_tls.c.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/posix_tls.c

deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_tls.c.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/posix_tls.c > CMakeFiles/glfw.dir/posix_tls.c.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_tls.c.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/posix_tls.c -o CMakeFiles/glfw.dir/posix_tls.c.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o

deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o: deps/glfw-3.1/src/CMakeFiles/glfw.dir/flags.make
deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o: deps/glfw-3.1/src/nsgl_context.m
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hugh/GitHub/CS196/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/glfw.dir/nsgl_context.m.o   -c /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/nsgl_context.m

deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/nsgl_context.m.i"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/nsgl_context.m > CMakeFiles/glfw.dir/nsgl_context.m.i

deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/nsgl_context.m.s"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/nsgl_context.m -o CMakeFiles/glfw.dir/nsgl_context.m.s

deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.requires:
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.provides: deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.requires
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.provides.build
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.provides

deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.provides.build: deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/cocoa_init.m.o" \
"CMakeFiles/glfw.dir/cocoa_monitor.m.o" \
"CMakeFiles/glfw.dir/cocoa_window.m.o" \
"CMakeFiles/glfw.dir/iokit_joystick.m.o" \
"CMakeFiles/glfw.dir/mach_time.c.o" \
"CMakeFiles/glfw.dir/posix_tls.c.o" \
"CMakeFiles/glfw.dir/nsgl_context.m.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make
deps/glfw-3.1/src/libglfw3.a: deps/glfw-3.1/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libglfw3.a"
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/glfw-3.1/src/CMakeFiles/glfw.dir/build: deps/glfw-3.1/src/libglfw3.a
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/build

deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/context.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/init.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/input.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/monitor.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/window.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/iokit_joystick.m.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/mach_time.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/posix_tls.c.o.requires
deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires: deps/glfw-3.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o.requires
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/requires

deps/glfw-3.1/src/CMakeFiles/glfw.dir/clean:
	cd /Users/hugh/GitHub/CS196/deps/glfw-3.1/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/clean

deps/glfw-3.1/src/CMakeFiles/glfw.dir/depend:
	cd /Users/hugh/GitHub/CS196 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/deps/glfw-3.1/src /Users/hugh/GitHub/CS196 /Users/hugh/GitHub/CS196/deps/glfw-3.1/src /Users/hugh/GitHub/CS196/deps/glfw-3.1/src/CMakeFiles/glfw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/glfw-3.1/src/CMakeFiles/glfw.dir/depend

