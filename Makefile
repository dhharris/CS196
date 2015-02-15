# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:
.PHONY : .NOTPARALLEL

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip
.PHONY : install/strip/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local
.PHONY : install/local/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/hugh/GitHub/CS196/CMakeFiles /Users/hugh/GitHub/CS196/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/hugh/GitHub/CS196/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named game

# Build rule for target.
game: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 game
.PHONY : game

# fast build rule for target.
game/fast:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/build
.PHONY : game/fast

#=============================================================================
# Target rules for targets named uninstall

# Build rule for target.
uninstall: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 uninstall
.PHONY : uninstall

# fast build rule for target.
uninstall/fast:
	$(MAKE) -f deps/glfw-3.1/CMakeFiles/uninstall.dir/build.make deps/glfw-3.1/CMakeFiles/uninstall.dir/build
.PHONY : uninstall/fast

#=============================================================================
# Target rules for targets named glfw

# Build rule for target.
glfw: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 glfw
.PHONY : glfw

# fast build rule for target.
glfw/fast:
	$(MAKE) -f deps/glfw-3.1/src/CMakeFiles/glfw.dir/build.make deps/glfw-3.1/src/CMakeFiles/glfw.dir/build
.PHONY : glfw/fast

#=============================================================================
# Target rules for targets named Boing

# Build rule for target.
Boing: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Boing
.PHONY : Boing

# fast build rule for target.
Boing/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/Boing.dir/build.make deps/glfw-3.1/examples/CMakeFiles/Boing.dir/build
.PHONY : Boing/fast

#=============================================================================
# Target rules for targets named Gears

# Build rule for target.
Gears: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Gears
.PHONY : Gears

# fast build rule for target.
Gears/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/Gears.dir/build.make deps/glfw-3.1/examples/CMakeFiles/Gears.dir/build
.PHONY : Gears/fast

#=============================================================================
# Target rules for targets named Heightmap

# Build rule for target.
Heightmap: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Heightmap
.PHONY : Heightmap

# fast build rule for target.
Heightmap/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/Heightmap.dir/build.make deps/glfw-3.1/examples/CMakeFiles/Heightmap.dir/build
.PHONY : Heightmap/fast

#=============================================================================
# Target rules for targets named Particles

# Build rule for target.
Particles: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Particles
.PHONY : Particles

# fast build rule for target.
Particles/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/Particles.dir/build.make deps/glfw-3.1/examples/CMakeFiles/Particles.dir/build
.PHONY : Particles/fast

#=============================================================================
# Target rules for targets named Simple

# Build rule for target.
Simple: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Simple
.PHONY : Simple

# fast build rule for target.
Simple/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/Simple.dir/build.make deps/glfw-3.1/examples/CMakeFiles/Simple.dir/build
.PHONY : Simple/fast

#=============================================================================
# Target rules for targets named SplitView

# Build rule for target.
SplitView: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SplitView
.PHONY : SplitView

# fast build rule for target.
SplitView/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/SplitView.dir/build.make deps/glfw-3.1/examples/CMakeFiles/SplitView.dir/build
.PHONY : SplitView/fast

#=============================================================================
# Target rules for targets named Wave

# Build rule for target.
Wave: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Wave
.PHONY : Wave

# fast build rule for target.
Wave/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/Wave.dir/build.make deps/glfw-3.1/examples/CMakeFiles/Wave.dir/build
.PHONY : Wave/fast

#=============================================================================
# Target rules for targets named accuracy

# Build rule for target.
accuracy: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 accuracy
.PHONY : accuracy

# fast build rule for target.
accuracy/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/build.make deps/glfw-3.1/tests/CMakeFiles/accuracy.dir/build
.PHONY : accuracy/fast

#=============================================================================
# Target rules for targets named clipboard

# Build rule for target.
clipboard: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 clipboard
.PHONY : clipboard

# fast build rule for target.
clipboard/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/clipboard.dir/build.make deps/glfw-3.1/tests/CMakeFiles/clipboard.dir/build
.PHONY : clipboard/fast

#=============================================================================
# Target rules for targets named cursor

# Build rule for target.
cursor: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cursor
.PHONY : cursor

# fast build rule for target.
cursor/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/cursor.dir/build.make deps/glfw-3.1/tests/CMakeFiles/cursor.dir/build
.PHONY : cursor/fast

#=============================================================================
# Target rules for targets named cursoranim

# Build rule for target.
cursoranim: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cursoranim
.PHONY : cursoranim

# fast build rule for target.
cursoranim/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/cursoranim.dir/build.make deps/glfw-3.1/tests/CMakeFiles/cursoranim.dir/build
.PHONY : cursoranim/fast

#=============================================================================
# Target rules for targets named defaults

# Build rule for target.
defaults: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 defaults
.PHONY : defaults

# fast build rule for target.
defaults/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/defaults.dir/build.make deps/glfw-3.1/tests/CMakeFiles/defaults.dir/build
.PHONY : defaults/fast

#=============================================================================
# Target rules for targets named empty

# Build rule for target.
empty: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 empty
.PHONY : empty

# fast build rule for target.
empty/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/empty.dir/build.make deps/glfw-3.1/tests/CMakeFiles/empty.dir/build
.PHONY : empty/fast

#=============================================================================
# Target rules for targets named events

# Build rule for target.
events: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 events
.PHONY : events

# fast build rule for target.
events/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/events.dir/build.make deps/glfw-3.1/tests/CMakeFiles/events.dir/build
.PHONY : events/fast

#=============================================================================
# Target rules for targets named fsaa

# Build rule for target.
fsaa: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 fsaa
.PHONY : fsaa

# fast build rule for target.
fsaa/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/fsaa.dir/build.make deps/glfw-3.1/tests/CMakeFiles/fsaa.dir/build
.PHONY : fsaa/fast

#=============================================================================
# Target rules for targets named gamma

# Build rule for target.
gamma: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gamma
.PHONY : gamma

# fast build rule for target.
gamma/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/gamma.dir/build.make deps/glfw-3.1/tests/CMakeFiles/gamma.dir/build
.PHONY : gamma/fast

#=============================================================================
# Target rules for targets named glfwinfo

# Build rule for target.
glfwinfo: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 glfwinfo
.PHONY : glfwinfo

# fast build rule for target.
glfwinfo/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build.make deps/glfw-3.1/tests/CMakeFiles/glfwinfo.dir/build
.PHONY : glfwinfo/fast

#=============================================================================
# Target rules for targets named iconify

# Build rule for target.
iconify: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 iconify
.PHONY : iconify

# fast build rule for target.
iconify/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/iconify.dir/build.make deps/glfw-3.1/tests/CMakeFiles/iconify.dir/build
.PHONY : iconify/fast

#=============================================================================
# Target rules for targets named joysticks

# Build rule for target.
joysticks: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 joysticks
.PHONY : joysticks

# fast build rule for target.
joysticks/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/joysticks.dir/build.make deps/glfw-3.1/tests/CMakeFiles/joysticks.dir/build
.PHONY : joysticks/fast

#=============================================================================
# Target rules for targets named modes

# Build rule for target.
modes: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 modes
.PHONY : modes

# fast build rule for target.
modes/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/modes.dir/build.make deps/glfw-3.1/tests/CMakeFiles/modes.dir/build
.PHONY : modes/fast

#=============================================================================
# Target rules for targets named peter

# Build rule for target.
peter: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 peter
.PHONY : peter

# fast build rule for target.
peter/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/peter.dir/build.make deps/glfw-3.1/tests/CMakeFiles/peter.dir/build
.PHONY : peter/fast

#=============================================================================
# Target rules for targets named reopen

# Build rule for target.
reopen: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 reopen
.PHONY : reopen

# fast build rule for target.
reopen/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/reopen.dir/build.make deps/glfw-3.1/tests/CMakeFiles/reopen.dir/build
.PHONY : reopen/fast

#=============================================================================
# Target rules for targets named sharing

# Build rule for target.
sharing: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sharing
.PHONY : sharing

# fast build rule for target.
sharing/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/sharing.dir/build.make deps/glfw-3.1/tests/CMakeFiles/sharing.dir/build
.PHONY : sharing/fast

#=============================================================================
# Target rules for targets named tearing

# Build rule for target.
tearing: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tearing
.PHONY : tearing

# fast build rule for target.
tearing/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/tearing.dir/build.make deps/glfw-3.1/tests/CMakeFiles/tearing.dir/build
.PHONY : tearing/fast

#=============================================================================
# Target rules for targets named threads

# Build rule for target.
threads: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 threads
.PHONY : threads

# fast build rule for target.
threads/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/threads.dir/build.make deps/glfw-3.1/tests/CMakeFiles/threads.dir/build
.PHONY : threads/fast

#=============================================================================
# Target rules for targets named title

# Build rule for target.
title: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 title
.PHONY : title

# fast build rule for target.
title/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/title.dir/build.make deps/glfw-3.1/tests/CMakeFiles/title.dir/build
.PHONY : title/fast

#=============================================================================
# Target rules for targets named windows

# Build rule for target.
windows: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 windows
.PHONY : windows

# fast build rule for target.
windows/fast:
	$(MAKE) -f deps/glfw-3.1/tests/CMakeFiles/windows.dir/build.make deps/glfw-3.1/tests/CMakeFiles/windows.dir/build
.PHONY : windows/fast

src/block.o: src/block.c.o
.PHONY : src/block.o

# target to build an object file
src/block.c.o:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/block.c.o
.PHONY : src/block.c.o

src/block.i: src/block.c.i
.PHONY : src/block.i

# target to preprocess a source file
src/block.c.i:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/block.c.i
.PHONY : src/block.c.i

src/block.s: src/block.c.s
.PHONY : src/block.s

# target to generate assembly for a file
src/block.c.s:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/block.c.s
.PHONY : src/block.c.s

src/input.o: src/input.c.o
.PHONY : src/input.o

# target to build an object file
src/input.c.o:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/input.c.o
.PHONY : src/input.c.o

src/input.i: src/input.c.i
.PHONY : src/input.i

# target to preprocess a source file
src/input.c.i:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/input.c.i
.PHONY : src/input.c.i

src/input.s: src/input.c.s
.PHONY : src/input.s

# target to generate assembly for a file
src/input.c.s:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/input.c.s
.PHONY : src/input.c.s

src/main.o: src/main.c.o
.PHONY : src/main.o

# target to build an object file
src/main.c.o:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/main.c.o
.PHONY : src/main.c.o

src/main.i: src/main.c.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/main.c.s
.PHONY : src/main.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/strip"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... game"
	@echo "... install/local"
	@echo "... uninstall"
	@echo "... glfw"
	@echo "... Simple"
	@echo "... Gears"
	@echo "... Wave"
	@echo "... Boing"
	@echo "... SplitView"
	@echo "... Particles"
	@echo "... Heightmap"
	@echo "... title"
	@echo "... joysticks"
	@echo "... modes"
	@echo "... cursor"
	@echo "... sharing"
	@echo "... defaults"
	@echo "... iconify"
	@echo "... cursoranim"
	@echo "... windows"
	@echo "... accuracy"
	@echo "... peter"
	@echo "... clipboard"
	@echo "... threads"
	@echo "... tearing"
	@echo "... reopen"
	@echo "... glfwinfo"
	@echo "... events"
	@echo "... empty"
	@echo "... gamma"
	@echo "... fsaa"
	@echo "... src/block.o"
	@echo "... src/block.i"
	@echo "... src/block.s"
	@echo "... src/input.o"
	@echo "... src/input.i"
	@echo "... src/input.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

