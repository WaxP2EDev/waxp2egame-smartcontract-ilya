# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /wax/deferred/reaper/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /wax/deferred/reaper/build/reaper

# Include any dependencies generated for this target.
include CMakeFiles/reaper.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/reaper.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/reaper.dir/flags.make

CMakeFiles/reaper.dir/reaper.obj: CMakeFiles/reaper.dir/flags.make
CMakeFiles/reaper.dir/reaper.obj: /wax/deferred/reaper/src/reaper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/wax/deferred/reaper/build/reaper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/reaper.dir/reaper.obj"
	/usr/local/eosio.cdt/bin/eosio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/reaper.dir/reaper.obj -c /wax/deferred/reaper/src/reaper.cpp

CMakeFiles/reaper.dir/reaper.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reaper.dir/reaper.i"
	/usr/local/eosio.cdt/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /wax/deferred/reaper/src/reaper.cpp > CMakeFiles/reaper.dir/reaper.i

CMakeFiles/reaper.dir/reaper.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reaper.dir/reaper.s"
	/usr/local/eosio.cdt/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /wax/deferred/reaper/src/reaper.cpp -o CMakeFiles/reaper.dir/reaper.s

CMakeFiles/reaper.dir/reaper.obj.requires:

.PHONY : CMakeFiles/reaper.dir/reaper.obj.requires

CMakeFiles/reaper.dir/reaper.obj.provides: CMakeFiles/reaper.dir/reaper.obj.requires
	$(MAKE) -f CMakeFiles/reaper.dir/build.make CMakeFiles/reaper.dir/reaper.obj.provides.build
.PHONY : CMakeFiles/reaper.dir/reaper.obj.provides

CMakeFiles/reaper.dir/reaper.obj.provides.build: CMakeFiles/reaper.dir/reaper.obj


# Object files for target reaper
reaper_OBJECTS = \
"CMakeFiles/reaper.dir/reaper.obj"

# External object files for target reaper
reaper_EXTERNAL_OBJECTS =

reaper.wasm: CMakeFiles/reaper.dir/reaper.obj
reaper.wasm: CMakeFiles/reaper.dir/build.make
reaper.wasm: CMakeFiles/reaper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/wax/deferred/reaper/build/reaper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable reaper.wasm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reaper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/reaper.dir/build: reaper.wasm

.PHONY : CMakeFiles/reaper.dir/build

CMakeFiles/reaper.dir/requires: CMakeFiles/reaper.dir/reaper.obj.requires

.PHONY : CMakeFiles/reaper.dir/requires

CMakeFiles/reaper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/reaper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/reaper.dir/clean

CMakeFiles/reaper.dir/depend:
	cd /wax/deferred/reaper/build/reaper && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wax/deferred/reaper/src /wax/deferred/reaper/src /wax/deferred/reaper/build/reaper /wax/deferred/reaper/build/reaper /wax/deferred/reaper/build/reaper/CMakeFiles/reaper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/reaper.dir/depend

