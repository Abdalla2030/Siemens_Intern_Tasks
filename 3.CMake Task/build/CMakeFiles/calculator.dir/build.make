# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Siemens Tasks\2\calculator"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Siemens Tasks\2\calculator\build"

# Include any dependencies generated for this target.
include CMakeFiles/calculator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculator.dir/flags.make

CMakeFiles/calculator.dir/main.c.obj: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/main.c.obj: D:/Siemens\ Tasks/2/calculator/main.c
CMakeFiles/calculator.dir/main.c.obj: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Siemens Tasks\2\calculator\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/calculator.dir/main.c.obj"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/calculator.dir/main.c.obj -MF CMakeFiles\calculator.dir\main.c.obj.d -o CMakeFiles\calculator.dir\main.c.obj -c "D:\Siemens Tasks\2\calculator\main.c"

CMakeFiles/calculator.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calculator.dir/main.c.i"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Siemens Tasks\2\calculator\main.c" > CMakeFiles\calculator.dir\main.c.i

CMakeFiles/calculator.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calculator.dir/main.c.s"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Siemens Tasks\2\calculator\main.c" -o CMakeFiles\calculator.dir\main.c.s

CMakeFiles/calculator.dir/add.c.obj: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/add.c.obj: D:/Siemens\ Tasks/2/calculator/add.c
CMakeFiles/calculator.dir/add.c.obj: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Siemens Tasks\2\calculator\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/calculator.dir/add.c.obj"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/calculator.dir/add.c.obj -MF CMakeFiles\calculator.dir\add.c.obj.d -o CMakeFiles\calculator.dir\add.c.obj -c "D:\Siemens Tasks\2\calculator\add.c"

CMakeFiles/calculator.dir/add.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calculator.dir/add.c.i"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Siemens Tasks\2\calculator\add.c" > CMakeFiles\calculator.dir\add.c.i

CMakeFiles/calculator.dir/add.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calculator.dir/add.c.s"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Siemens Tasks\2\calculator\add.c" -o CMakeFiles\calculator.dir\add.c.s

CMakeFiles/calculator.dir/divide.c.obj: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/divide.c.obj: D:/Siemens\ Tasks/2/calculator/divide.c
CMakeFiles/calculator.dir/divide.c.obj: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Siemens Tasks\2\calculator\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/calculator.dir/divide.c.obj"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/calculator.dir/divide.c.obj -MF CMakeFiles\calculator.dir\divide.c.obj.d -o CMakeFiles\calculator.dir\divide.c.obj -c "D:\Siemens Tasks\2\calculator\divide.c"

CMakeFiles/calculator.dir/divide.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calculator.dir/divide.c.i"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Siemens Tasks\2\calculator\divide.c" > CMakeFiles\calculator.dir\divide.c.i

CMakeFiles/calculator.dir/divide.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calculator.dir/divide.c.s"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Siemens Tasks\2\calculator\divide.c" -o CMakeFiles\calculator.dir\divide.c.s

CMakeFiles/calculator.dir/multiply.c.obj: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/multiply.c.obj: D:/Siemens\ Tasks/2/calculator/multiply.c
CMakeFiles/calculator.dir/multiply.c.obj: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Siemens Tasks\2\calculator\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/calculator.dir/multiply.c.obj"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/calculator.dir/multiply.c.obj -MF CMakeFiles\calculator.dir\multiply.c.obj.d -o CMakeFiles\calculator.dir\multiply.c.obj -c "D:\Siemens Tasks\2\calculator\multiply.c"

CMakeFiles/calculator.dir/multiply.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calculator.dir/multiply.c.i"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Siemens Tasks\2\calculator\multiply.c" > CMakeFiles\calculator.dir\multiply.c.i

CMakeFiles/calculator.dir/multiply.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calculator.dir/multiply.c.s"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Siemens Tasks\2\calculator\multiply.c" -o CMakeFiles\calculator.dir\multiply.c.s

CMakeFiles/calculator.dir/subtract.c.obj: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/subtract.c.obj: D:/Siemens\ Tasks/2/calculator/subtract.c
CMakeFiles/calculator.dir/subtract.c.obj: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Siemens Tasks\2\calculator\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/calculator.dir/subtract.c.obj"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/calculator.dir/subtract.c.obj -MF CMakeFiles\calculator.dir\subtract.c.obj.d -o CMakeFiles\calculator.dir\subtract.c.obj -c "D:\Siemens Tasks\2\calculator\subtract.c"

CMakeFiles/calculator.dir/subtract.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calculator.dir/subtract.c.i"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Siemens Tasks\2\calculator\subtract.c" > CMakeFiles\calculator.dir\subtract.c.i

CMakeFiles/calculator.dir/subtract.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calculator.dir/subtract.c.s"
	D:\Setup\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Siemens Tasks\2\calculator\subtract.c" -o CMakeFiles\calculator.dir\subtract.c.s

# Object files for target calculator
calculator_OBJECTS = \
"CMakeFiles/calculator.dir/main.c.obj" \
"CMakeFiles/calculator.dir/add.c.obj" \
"CMakeFiles/calculator.dir/divide.c.obj" \
"CMakeFiles/calculator.dir/multiply.c.obj" \
"CMakeFiles/calculator.dir/subtract.c.obj"

# External object files for target calculator
calculator_EXTERNAL_OBJECTS =

calculator.exe: CMakeFiles/calculator.dir/main.c.obj
calculator.exe: CMakeFiles/calculator.dir/add.c.obj
calculator.exe: CMakeFiles/calculator.dir/divide.c.obj
calculator.exe: CMakeFiles/calculator.dir/multiply.c.obj
calculator.exe: CMakeFiles/calculator.dir/subtract.c.obj
calculator.exe: CMakeFiles/calculator.dir/build.make
calculator.exe: CMakeFiles/calculator.dir/linkLibs.rsp
calculator.exe: CMakeFiles/calculator.dir/objects1.rsp
calculator.exe: CMakeFiles/calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Siemens Tasks\2\calculator\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable calculator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\calculator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculator.dir/build: calculator.exe
.PHONY : CMakeFiles/calculator.dir/build

CMakeFiles/calculator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\calculator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/calculator.dir/clean

CMakeFiles/calculator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Siemens Tasks\2\calculator" "D:\Siemens Tasks\2\calculator" "D:\Siemens Tasks\2\calculator\build" "D:\Siemens Tasks\2\calculator\build" "D:\Siemens Tasks\2\calculator\build\CMakeFiles\calculator.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/calculator.dir/depend

