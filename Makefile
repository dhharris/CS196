# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip
.PHONY : install/strip/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/eric/CS196/CMakeFiles /home/eric/CS196/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/eric/CS196/CMakeFiles 0
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
# Target rules for targets named boing

# Build rule for target.
boing: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 boing
.PHONY : boing

# fast build rule for target.
boing/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/boing.dir/build.make deps/glfw-3.1/examples/CMakeFiles/boing.dir/build
.PHONY : boing/fast

#=============================================================================
# Target rules for targets named gears

# Build rule for target.
gears: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gears
.PHONY : gears

# fast build rule for target.
gears/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/gears.dir/build.make deps/glfw-3.1/examples/CMakeFiles/gears.dir/build
.PHONY : gears/fast

#=============================================================================
# Target rules for targets named heightmap

# Build rule for target.
heightmap: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 heightmap
.PHONY : heightmap

# fast build rule for target.
heightmap/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/heightmap.dir/build.make deps/glfw-3.1/examples/CMakeFiles/heightmap.dir/build
.PHONY : heightmap/fast

#=============================================================================
# Target rules for targets named particles

# Build rule for target.
particles: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 particles
.PHONY : particles

# fast build rule for target.
particles/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/particles.dir/build.make deps/glfw-3.1/examples/CMakeFiles/particles.dir/build
.PHONY : particles/fast

#=============================================================================
# Target rules for targets named simple

# Build rule for target.
simple: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 simple
.PHONY : simple

# fast build rule for target.
simple/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/simple.dir/build.make deps/glfw-3.1/examples/CMakeFiles/simple.dir/build
.PHONY : simple/fast

#=============================================================================
# Target rules for targets named splitview

# Build rule for target.
splitview: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 splitview
.PHONY : splitview

# fast build rule for target.
splitview/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/splitview.dir/build.make deps/glfw-3.1/examples/CMakeFiles/splitview.dir/build
.PHONY : splitview/fast

#=============================================================================
# Target rules for targets named wave

# Build rule for target.
wave: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 wave
.PHONY : wave

# fast build rule for target.
wave/fast:
	$(MAKE) -f deps/glfw-3.1/examples/CMakeFiles/wave.dir/build.make deps/glfw-3.1/examples/CMakeFiles/wave.dir/build
.PHONY : wave/fast

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

<<<<<<< HEAD
#=============================================================================
# Target rules for targets named docs

# Build rule for target.
docs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 docs
.PHONY : docs

# fast build rule for target.
docs/fast:
	$(MAKE) -f deps/glfw-3.1/docs/CMakeFiles/docs.dir/build.make deps/glfw-3.1/docs/CMakeFiles/docs.dir/build
.PHONY : docs/fast
=======
deps/lodepng.o: deps/lodepng.c.o
.PHONY : deps/lodepng.o

# target to build an object file
deps/lodepng.c.o:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/deps/lodepng.c.o
.PHONY : deps/lodepng.c.o

deps/lodepng.i: deps/lodepng.c.i
.PHONY : deps/lodepng.i

# target to preprocess a source file
deps/lodepng.c.i:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/deps/lodepng.c.i
.PHONY : deps/lodepng.c.i

deps/lodepng.s: deps/lodepng.c.s
.PHONY : deps/lodepng.s

# target to generate assembly for a file
deps/lodepng.c.s:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/deps/lodepng.c.s
.PHONY : deps/lodepng.c.s
>>>>>>> 9cfbb0673791cbaab4e1f393582f9fc821d37cf8

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

src/textures.o: src/textures.c.o
.PHONY : src/textures.o

# target to build an object file
src/textures.c.o:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/textures.c.o
.PHONY : src/textures.c.o

src/textures.i: src/textures.c.i
.PHONY : src/textures.i

# target to preprocess a source file
src/textures.c.i:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/textures.c.i
.PHONY : src/textures.c.i

src/textures.s: src/textures.c.s
.PHONY : src/textures.s

# target to generate assembly for a file
src/textures.c.s:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/textures.c.s
.PHONY : src/textures.c.s

src/world.o: src/world.c.o
.PHONY : src/world.o

# target to build an object file
src/world.c.o:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/world.c.o
.PHONY : src/world.c.o

src/world.i: src/world.c.i
.PHONY : src/world.i

# target to preprocess a source file
src/world.c.i:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/world.c.i
.PHONY : src/world.c.i

src/world.s: src/world.c.s
.PHONY : src/world.s

# target to generate assembly for a file
src/world.c.s:
	$(MAKE) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/world.c.s
.PHONY : src/world.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... game"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... uninstall"
	@echo "... glfw"
	@echo "... boing"
	@echo "... gears"
	@echo "... heightmap"
	@echo "... particles"
	@echo "... simple"
	@echo "... splitview"
	@echo "... wave"
	@echo "... accuracy"
	@echo "... clipboard"
	@echo "... cursor"
	@echo "... cursoranim"
	@echo "... defaults"
	@echo "... empty"
	@echo "... events"
	@echo "... fsaa"
	@echo "... gamma"
	@echo "... glfwinfo"
	@echo "... iconify"
	@echo "... joysticks"
	@echo "... modes"
	@echo "... peter"
	@echo "... reopen"
<<<<<<< HEAD
	@echo "... sharing"
	@echo "... tearing"
	@echo "... threads"
	@echo "... title"
	@echo "... windows"
	@echo "... docs"
=======
	@echo "... glfwinfo"
	@echo "... events"
	@echo "... empty"
	@echo "... gamma"
	@echo "... fsaa"
	@echo "... deps/lodepng.o"
	@echo "... deps/lodepng.i"
	@echo "... deps/lodepng.s"
>>>>>>> 9cfbb0673791cbaab4e1f393582f9fc821d37cf8
	@echo "... src/block.o"
	@echo "... src/block.i"
	@echo "... src/block.s"
	@echo "... src/input.o"
	@echo "... src/input.i"
	@echo "... src/input.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/textures.o"
	@echo "... src/textures.i"
	@echo "... src/textures.s"
	@echo "... src/world.o"
	@echo "... src/world.i"
	@echo "... src/world.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

