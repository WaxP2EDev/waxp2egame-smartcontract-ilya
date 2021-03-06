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
CMAKE_SOURCE_DIR = /wax/deferred/reaper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /wax/deferred/reaper/build

# Utility rule file for reaper_project.

# Include the progress variables for this target.
include CMakeFiles/reaper_project.dir/progress.make

CMakeFiles/reaper_project: CMakeFiles/reaper_project-complete


CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-install
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-mkdir
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-download
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-update
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-patch
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-build
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-install
CMakeFiles/reaper_project-complete: reaper_project-prefix/src/reaper_project-stamp/reaper_project-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'reaper_project'"
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/build/CMakeFiles
	/usr/bin/cmake -E touch /wax/deferred/reaper/build/CMakeFiles/reaper_project-complete
	/usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-done

reaper_project-prefix/src/reaper_project-stamp/reaper_project-install: reaper_project-prefix/src/reaper_project-stamp/reaper_project-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'reaper_project'"
	cd /wax/deferred/reaper/build/reaper && /usr/bin/cmake -E echo_append
	cd /wax/deferred/reaper/build/reaper && /usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-install

reaper_project-prefix/src/reaper_project-stamp/reaper_project-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'reaper_project'"
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/src
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/build/reaper
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/build/reaper_project-prefix
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/build/reaper_project-prefix/tmp
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp
	/usr/bin/cmake -E make_directory /wax/deferred/reaper/build/reaper_project-prefix/src
	/usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-mkdir

reaper_project-prefix/src/reaper_project-stamp/reaper_project-download: reaper_project-prefix/src/reaper_project-stamp/reaper_project-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'reaper_project'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-download

reaper_project-prefix/src/reaper_project-stamp/reaper_project-update: reaper_project-prefix/src/reaper_project-stamp/reaper_project-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'reaper_project'"
	cd /wax/deferred/reaper/src && /usr/bin/cmake -E echo_append
	cd /wax/deferred/reaper/src && /usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-update

reaper_project-prefix/src/reaper_project-stamp/reaper_project-patch: reaper_project-prefix/src/reaper_project-stamp/reaper_project-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'reaper_project'"
	cd /wax/deferred/reaper/src && /usr/bin/cmake -E echo_append
	cd /wax/deferred/reaper/src && /usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-patch

reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure: reaper_project-prefix/tmp/reaper_project-cfgcmd.txt
reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure: reaper_project-prefix/src/reaper_project-stamp/reaper_project-update
reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure: reaper_project-prefix/src/reaper_project-stamp/reaper_project-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'reaper_project'"
	cd /wax/deferred/reaper/build/reaper && /usr/bin/cmake -DCMAKE_TOOLCHAIN_FILE=/usr/local/eosio.cdt/lib/cmake/eosio.cdt/EosioWasmToolchain.cmake "-GUnix Makefiles" /wax/deferred/reaper/src
	cd /wax/deferred/reaper/build/reaper && /usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure

reaper_project-prefix/src/reaper_project-stamp/reaper_project-build: reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'reaper_project'"
	cd /wax/deferred/reaper/build/reaper && $(MAKE)

reaper_project-prefix/src/reaper_project-stamp/reaper_project-test: reaper_project-prefix/src/reaper_project-stamp/reaper_project-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/deferred/reaper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'reaper_project'"
	cd /wax/deferred/reaper/build/reaper && /usr/bin/cmake -E echo_append
	cd /wax/deferred/reaper/build/reaper && /usr/bin/cmake -E touch /wax/deferred/reaper/build/reaper_project-prefix/src/reaper_project-stamp/reaper_project-test

reaper_project: CMakeFiles/reaper_project
reaper_project: CMakeFiles/reaper_project-complete
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-install
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-mkdir
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-download
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-update
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-patch
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-configure
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-build
reaper_project: reaper_project-prefix/src/reaper_project-stamp/reaper_project-test
reaper_project: CMakeFiles/reaper_project.dir/build.make

.PHONY : reaper_project

# Rule to build all files generated by this target.
CMakeFiles/reaper_project.dir/build: reaper_project

.PHONY : CMakeFiles/reaper_project.dir/build

CMakeFiles/reaper_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/reaper_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/reaper_project.dir/clean

CMakeFiles/reaper_project.dir/depend:
	cd /wax/deferred/reaper/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wax/deferred/reaper /wax/deferred/reaper /wax/deferred/reaper/build /wax/deferred/reaper/build /wax/deferred/reaper/build/CMakeFiles/reaper_project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/reaper_project.dir/depend

