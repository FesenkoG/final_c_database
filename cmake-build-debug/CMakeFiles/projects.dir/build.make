# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2017.2.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2017.2.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\projects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\projects\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/projects.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/projects.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/projects.dir/flags.make

CMakeFiles/projects.dir/main.cpp.obj: CMakeFiles/projects.dir/flags.make
CMakeFiles/projects.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\projects\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/projects.dir/main.cpp.obj"
	D:\compile\C\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\projects.dir\main.cpp.obj -c D:\projects\main.cpp

CMakeFiles/projects.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projects.dir/main.cpp.i"
	D:\compile\C\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\projects\main.cpp > CMakeFiles\projects.dir\main.cpp.i

CMakeFiles/projects.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projects.dir/main.cpp.s"
	D:\compile\C\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\projects\main.cpp -o CMakeFiles\projects.dir\main.cpp.s

CMakeFiles/projects.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/projects.dir/main.cpp.obj.requires

CMakeFiles/projects.dir/main.cpp.obj.provides: CMakeFiles/projects.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\projects.dir\build.make CMakeFiles/projects.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/projects.dir/main.cpp.obj.provides

CMakeFiles/projects.dir/main.cpp.obj.provides.build: CMakeFiles/projects.dir/main.cpp.obj


# Object files for target projects
projects_OBJECTS = \
"CMakeFiles/projects.dir/main.cpp.obj"

# External object files for target projects
projects_EXTERNAL_OBJECTS =

projects.exe: CMakeFiles/projects.dir/main.cpp.obj
projects.exe: CMakeFiles/projects.dir/build.make
projects.exe: CMakeFiles/projects.dir/linklibs.rsp
projects.exe: CMakeFiles/projects.dir/objects1.rsp
projects.exe: CMakeFiles/projects.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\projects\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable projects.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\projects.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/projects.dir/build: projects.exe

.PHONY : CMakeFiles/projects.dir/build

CMakeFiles/projects.dir/requires: CMakeFiles/projects.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/projects.dir/requires

CMakeFiles/projects.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\projects.dir\cmake_clean.cmake
.PHONY : CMakeFiles/projects.dir/clean

CMakeFiles/projects.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\projects D:\projects D:\projects\cmake-build-debug D:\projects\cmake-build-debug D:\projects\cmake-build-debug\CMakeFiles\projects.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/projects.dir/depend
