# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/younes/Projects/flappy-bird

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/younes/Projects/flappy-bird/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/flappy_bird.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/flappy_bird.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/flappy_bird.dir/flags.make

src/CMakeFiles/flappy_bird.dir/main.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/flappy_bird.dir/main.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/main.cpp.o -c /Users/younes/Projects/flappy-bird/src/main.cpp

src/CMakeFiles/flappy_bird.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/main.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/main.cpp > CMakeFiles/flappy_bird.dir/main.cpp.i

src/CMakeFiles/flappy_bird.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/main.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/main.cpp -o CMakeFiles/flappy_bird.dir/main.cpp.s

src/CMakeFiles/flappy_bird.dir/main.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/main.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/main.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/main.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/main.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/main.cpp.o


src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o: ../src/StateMachine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/StateMachine.cpp.o -c /Users/younes/Projects/flappy-bird/src/StateMachine.cpp

src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/StateMachine.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/StateMachine.cpp > CMakeFiles/flappy_bird.dir/StateMachine.cpp.i

src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/StateMachine.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/StateMachine.cpp -o CMakeFiles/flappy_bird.dir/StateMachine.cpp.s

src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o


src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o: ../src/AssetManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/AssetManager.cpp.o -c /Users/younes/Projects/flappy-bird/src/AssetManager.cpp

src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/AssetManager.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/AssetManager.cpp > CMakeFiles/flappy_bird.dir/AssetManager.cpp.i

src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/AssetManager.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/AssetManager.cpp -o CMakeFiles/flappy_bird.dir/AssetManager.cpp.s

src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o


src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o: ../src/InputManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/InputManager.cpp.o -c /Users/younes/Projects/flappy-bird/src/InputManager.cpp

src/CMakeFiles/flappy_bird.dir/InputManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/InputManager.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/InputManager.cpp > CMakeFiles/flappy_bird.dir/InputManager.cpp.i

src/CMakeFiles/flappy_bird.dir/InputManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/InputManager.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/InputManager.cpp -o CMakeFiles/flappy_bird.dir/InputManager.cpp.s

src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o


src/CMakeFiles/flappy_bird.dir/Game.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/Game.cpp.o: ../src/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/flappy_bird.dir/Game.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/Game.cpp.o -c /Users/younes/Projects/flappy-bird/src/Game.cpp

src/CMakeFiles/flappy_bird.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/Game.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/Game.cpp > CMakeFiles/flappy_bird.dir/Game.cpp.i

src/CMakeFiles/flappy_bird.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/Game.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/Game.cpp -o CMakeFiles/flappy_bird.dir/Game.cpp.s

src/CMakeFiles/flappy_bird.dir/Game.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/Game.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/Game.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/Game.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/Game.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/Game.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/Game.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/Game.cpp.o


src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o: ../src/SplashState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/SplashState.cpp.o -c /Users/younes/Projects/flappy-bird/src/SplashState.cpp

src/CMakeFiles/flappy_bird.dir/SplashState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/SplashState.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/SplashState.cpp > CMakeFiles/flappy_bird.dir/SplashState.cpp.i

src/CMakeFiles/flappy_bird.dir/SplashState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/SplashState.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/SplashState.cpp -o CMakeFiles/flappy_bird.dir/SplashState.cpp.s

src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o


src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o: ../src/MainMenuState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o -c /Users/younes/Projects/flappy-bird/src/MainMenuState.cpp

src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/MainMenuState.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/MainMenuState.cpp > CMakeFiles/flappy_bird.dir/MainMenuState.cpp.i

src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/MainMenuState.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/MainMenuState.cpp -o CMakeFiles/flappy_bird.dir/MainMenuState.cpp.s

src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o


src/CMakeFiles/flappy_bird.dir/GameState.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/GameState.cpp.o: ../src/GameState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/flappy_bird.dir/GameState.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/GameState.cpp.o -c /Users/younes/Projects/flappy-bird/src/GameState.cpp

src/CMakeFiles/flappy_bird.dir/GameState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/GameState.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/GameState.cpp > CMakeFiles/flappy_bird.dir/GameState.cpp.i

src/CMakeFiles/flappy_bird.dir/GameState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/GameState.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/GameState.cpp -o CMakeFiles/flappy_bird.dir/GameState.cpp.s

src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/GameState.cpp.o


src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o: ../src/GameOverState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/GameOverState.cpp.o -c /Users/younes/Projects/flappy-bird/src/GameOverState.cpp

src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/GameOverState.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/GameOverState.cpp > CMakeFiles/flappy_bird.dir/GameOverState.cpp.i

src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/GameOverState.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/GameOverState.cpp -o CMakeFiles/flappy_bird.dir/GameOverState.cpp.s

src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o


src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o: ../src/Pipe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/Pipe.cpp.o -c /Users/younes/Projects/flappy-bird/src/Pipe.cpp

src/CMakeFiles/flappy_bird.dir/Pipe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/Pipe.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/Pipe.cpp > CMakeFiles/flappy_bird.dir/Pipe.cpp.i

src/CMakeFiles/flappy_bird.dir/Pipe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/Pipe.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/Pipe.cpp -o CMakeFiles/flappy_bird.dir/Pipe.cpp.s

src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o


src/CMakeFiles/flappy_bird.dir/Land.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/Land.cpp.o: ../src/Land.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/flappy_bird.dir/Land.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/Land.cpp.o -c /Users/younes/Projects/flappy-bird/src/Land.cpp

src/CMakeFiles/flappy_bird.dir/Land.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/Land.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/Land.cpp > CMakeFiles/flappy_bird.dir/Land.cpp.i

src/CMakeFiles/flappy_bird.dir/Land.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/Land.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/Land.cpp -o CMakeFiles/flappy_bird.dir/Land.cpp.s

src/CMakeFiles/flappy_bird.dir/Land.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/Land.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/Land.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/Land.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/Land.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/Land.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/Land.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/Land.cpp.o


src/CMakeFiles/flappy_bird.dir/Bird.cpp.o: src/CMakeFiles/flappy_bird.dir/flags.make
src/CMakeFiles/flappy_bird.dir/Bird.cpp.o: ../src/Bird.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/flappy_bird.dir/Bird.cpp.o"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flappy_bird.dir/Bird.cpp.o -c /Users/younes/Projects/flappy-bird/src/Bird.cpp

src/CMakeFiles/flappy_bird.dir/Bird.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flappy_bird.dir/Bird.cpp.i"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/younes/Projects/flappy-bird/src/Bird.cpp > CMakeFiles/flappy_bird.dir/Bird.cpp.i

src/CMakeFiles/flappy_bird.dir/Bird.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flappy_bird.dir/Bird.cpp.s"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/younes/Projects/flappy-bird/src/Bird.cpp -o CMakeFiles/flappy_bird.dir/Bird.cpp.s

src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.requires:

.PHONY : src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.requires

src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.provides: src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/flappy_bird.dir/build.make src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.provides.build
.PHONY : src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.provides

src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.provides.build: src/CMakeFiles/flappy_bird.dir/Bird.cpp.o


# Object files for target flappy_bird
flappy_bird_OBJECTS = \
"CMakeFiles/flappy_bird.dir/main.cpp.o" \
"CMakeFiles/flappy_bird.dir/StateMachine.cpp.o" \
"CMakeFiles/flappy_bird.dir/AssetManager.cpp.o" \
"CMakeFiles/flappy_bird.dir/InputManager.cpp.o" \
"CMakeFiles/flappy_bird.dir/Game.cpp.o" \
"CMakeFiles/flappy_bird.dir/SplashState.cpp.o" \
"CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o" \
"CMakeFiles/flappy_bird.dir/GameState.cpp.o" \
"CMakeFiles/flappy_bird.dir/GameOverState.cpp.o" \
"CMakeFiles/flappy_bird.dir/Pipe.cpp.o" \
"CMakeFiles/flappy_bird.dir/Land.cpp.o" \
"CMakeFiles/flappy_bird.dir/Bird.cpp.o"

# External object files for target flappy_bird
flappy_bird_EXTERNAL_OBJECTS =

src/flappy_bird: src/CMakeFiles/flappy_bird.dir/main.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/Game.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/GameState.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/Land.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/Bird.cpp.o
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/build.make
src/flappy_bird: ../extlibs/SFML/lib/libsfml-system.dylib
src/flappy_bird: ../extlibs/SFML/lib/libsfml-window.dylib
src/flappy_bird: ../extlibs/SFML/lib/libsfml-graphics.dylib
src/flappy_bird: ../extlibs/SFML/lib/libsfml-network.dylib
src/flappy_bird: ../extlibs/SFML/lib/libsfml-audio.dylib
src/flappy_bird: src/CMakeFiles/flappy_bird.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/younes/Projects/flappy-bird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable flappy_bird"
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flappy_bird.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/flappy_bird.dir/build: src/flappy_bird

.PHONY : src/CMakeFiles/flappy_bird.dir/build

src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/main.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/StateMachine.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/AssetManager.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/InputManager.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/Game.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/SplashState.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/MainMenuState.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/GameState.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/GameOverState.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/Pipe.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/Land.cpp.o.requires
src/CMakeFiles/flappy_bird.dir/requires: src/CMakeFiles/flappy_bird.dir/Bird.cpp.o.requires

.PHONY : src/CMakeFiles/flappy_bird.dir/requires

src/CMakeFiles/flappy_bird.dir/clean:
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/flappy_bird.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/flappy_bird.dir/clean

src/CMakeFiles/flappy_bird.dir/depend:
	cd /Users/younes/Projects/flappy-bird/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/younes/Projects/flappy-bird /Users/younes/Projects/flappy-bird/src /Users/younes/Projects/flappy-bird/cmake-build-debug /Users/younes/Projects/flappy-bird/cmake-build-debug/src /Users/younes/Projects/flappy-bird/cmake-build-debug/src/CMakeFiles/flappy_bird.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/flappy_bird.dir/depend

