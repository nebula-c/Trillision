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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/schoi/Documents/Trillision/TwoParticles

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/schoi/Documents/Trillision/TwoParticles/build

# Include any dependencies generated for this target.
include CMakeFiles/TwoParticles.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TwoParticles.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TwoParticles.dir/flags.make

CMakeFiles/TwoParticles.dir/TwoParticles.cc.o: CMakeFiles/TwoParticles.dir/flags.make
CMakeFiles/TwoParticles.dir/TwoParticles.cc.o: ../TwoParticles.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TwoParticles.dir/TwoParticles.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TwoParticles.dir/TwoParticles.cc.o -c /Users/schoi/Documents/Trillision/TwoParticles/TwoParticles.cc

CMakeFiles/TwoParticles.dir/TwoParticles.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TwoParticles.dir/TwoParticles.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/Trillision/TwoParticles/TwoParticles.cc > CMakeFiles/TwoParticles.dir/TwoParticles.cc.i

CMakeFiles/TwoParticles.dir/TwoParticles.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TwoParticles.dir/TwoParticles.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/Trillision/TwoParticles/TwoParticles.cc -o CMakeFiles/TwoParticles.dir/TwoParticles.cc.s

CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.requires:

.PHONY : CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.requires

CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.provides: CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.requires
	$(MAKE) -f CMakeFiles/TwoParticles.dir/build.make CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.provides.build
.PHONY : CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.provides

CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.provides.build: CMakeFiles/TwoParticles.dir/TwoParticles.cc.o


CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o: CMakeFiles/TwoParticles.dir/flags.make
CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o: ../src/TPDetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o -c /Users/schoi/Documents/Trillision/TwoParticles/src/TPDetectorConstruction.cc

CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/Trillision/TwoParticles/src/TPDetectorConstruction.cc > CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.i

CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/Trillision/TwoParticles/src/TPDetectorConstruction.cc -o CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.s

CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.requires:

.PHONY : CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.requires

CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.provides: CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/TwoParticles.dir/build.make CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.provides

CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.provides.build: CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o


CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o: CMakeFiles/TwoParticles.dir/flags.make
CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o: ../src/TPPrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o -c /Users/schoi/Documents/Trillision/TwoParticles/src/TPPrimaryGeneratorAction.cc

CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/Trillision/TwoParticles/src/TPPrimaryGeneratorAction.cc > CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.i

CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/Trillision/TwoParticles/src/TPPrimaryGeneratorAction.cc -o CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.s

CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.requires:

.PHONY : CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.requires

CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.provides: CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.requires
	$(MAKE) -f CMakeFiles/TwoParticles.dir/build.make CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.provides.build
.PHONY : CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.provides

CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.provides.build: CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o


CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o: CMakeFiles/TwoParticles.dir/flags.make
CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o: ../src/TPRunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o -c /Users/schoi/Documents/Trillision/TwoParticles/src/TPRunAction.cc

CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/Trillision/TwoParticles/src/TPRunAction.cc > CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.i

CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/Trillision/TwoParticles/src/TPRunAction.cc -o CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.s

CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.requires:

.PHONY : CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.requires

CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.provides: CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.requires
	$(MAKE) -f CMakeFiles/TwoParticles.dir/build.make CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.provides.build
.PHONY : CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.provides

CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.provides.build: CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o


CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o: CMakeFiles/TwoParticles.dir/flags.make
CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o: ../src/TPSteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o -c /Users/schoi/Documents/Trillision/TwoParticles/src/TPSteppingAction.cc

CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/Trillision/TwoParticles/src/TPSteppingAction.cc > CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.i

CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/Trillision/TwoParticles/src/TPSteppingAction.cc -o CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.s

CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.requires:

.PHONY : CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.requires

CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.provides: CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.requires
	$(MAKE) -f CMakeFiles/TwoParticles.dir/build.make CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.provides.build
.PHONY : CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.provides

CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.provides.build: CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o


# Object files for target TwoParticles
TwoParticles_OBJECTS = \
"CMakeFiles/TwoParticles.dir/TwoParticles.cc.o" \
"CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o" \
"CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o" \
"CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o" \
"CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o"

# External object files for target TwoParticles
TwoParticles_EXTERNAL_OBJECTS =

TwoParticles: CMakeFiles/TwoParticles.dir/TwoParticles.cc.o
TwoParticles: CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o
TwoParticles: CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o
TwoParticles: CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o
TwoParticles: CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o
TwoParticles: CMakeFiles/TwoParticles.dir/build.make
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4Tree.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4GMocren.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4visHepRep.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4RayTracer.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4VRML.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4OpenGL.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4gl2ps.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4interfaces.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4persistency.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4error_propagation.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4readout.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4physicslists.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4parmodels.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4FR.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4vis_management.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4modeling.dylib
TwoParticles: /usr/X11R6/lib/libSM.dylib
TwoParticles: /usr/X11R6/lib/libICE.dylib
TwoParticles: /usr/X11R6/lib/libX11.dylib
TwoParticles: /usr/X11R6/lib/libXext.dylib
TwoParticles: /usr/X11R6/lib/libGL.dylib
TwoParticles: /usr/X11R6/lib/libGLU.dylib
TwoParticles: /usr/X11R6/lib/libXmu.dylib
TwoParticles: /usr/local/opt/qt/lib/QtOpenGL.framework/QtOpenGL
TwoParticles: /usr/local/opt/qt/lib/QtPrintSupport.framework/QtPrintSupport
TwoParticles: /usr/local/opt/qt/lib/QtWidgets.framework/QtWidgets
TwoParticles: /usr/local/opt/qt/lib/QtGui.framework/QtGui
TwoParticles: /usr/local/opt/qt/lib/QtCore.framework/QtCore
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4run.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4event.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4tracking.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4processes.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4analysis.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4zlib.dylib
TwoParticles: /usr/lib/libexpat.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4digits_hits.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4track.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4particles.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4geometry.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4materials.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4graphics_reps.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4intercoms.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4global.dylib
TwoParticles: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4clhep.dylib
TwoParticles: CMakeFiles/TwoParticles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable TwoParticles"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TwoParticles.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TwoParticles.dir/build: TwoParticles

.PHONY : CMakeFiles/TwoParticles.dir/build

CMakeFiles/TwoParticles.dir/requires: CMakeFiles/TwoParticles.dir/TwoParticles.cc.o.requires
CMakeFiles/TwoParticles.dir/requires: CMakeFiles/TwoParticles.dir/src/TPDetectorConstruction.cc.o.requires
CMakeFiles/TwoParticles.dir/requires: CMakeFiles/TwoParticles.dir/src/TPPrimaryGeneratorAction.cc.o.requires
CMakeFiles/TwoParticles.dir/requires: CMakeFiles/TwoParticles.dir/src/TPRunAction.cc.o.requires
CMakeFiles/TwoParticles.dir/requires: CMakeFiles/TwoParticles.dir/src/TPSteppingAction.cc.o.requires

.PHONY : CMakeFiles/TwoParticles.dir/requires

CMakeFiles/TwoParticles.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TwoParticles.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TwoParticles.dir/clean

CMakeFiles/TwoParticles.dir/depend:
	cd /Users/schoi/Documents/Trillision/TwoParticles/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/schoi/Documents/Trillision/TwoParticles /Users/schoi/Documents/Trillision/TwoParticles /Users/schoi/Documents/Trillision/TwoParticles/build /Users/schoi/Documents/Trillision/TwoParticles/build /Users/schoi/Documents/Trillision/TwoParticles/build/CMakeFiles/TwoParticles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TwoParticles.dir/depend

