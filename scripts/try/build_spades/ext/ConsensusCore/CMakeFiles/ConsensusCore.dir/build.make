# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/sg461/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/sg461/anaconda3/lib/python3.6/site-packages/cmake/data/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades

# Include any dependencies generated for this target.
include ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/depend.make

# Include the progress variables for this target.
include ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/progress.make

# Include the compile flags for this target's objects.
include ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/AffineAlignment.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/AffineAlignment.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/AffineAlignment.cpp > CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/AffineAlignment.cpp -o CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Coverage.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Coverage.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Coverage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Coverage.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Coverage.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Coverage.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Coverage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Coverage.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Coverage.cpp > CMakeFiles/ConsensusCore.dir/Coverage.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Coverage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Coverage.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Coverage.cpp -o CMakeFiles/ConsensusCore.dir/Coverage.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Feature.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Feature.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Feature.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Feature.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Feature.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Feature.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Feature.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Feature.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Feature.cpp > CMakeFiles/ConsensusCore.dir/Feature.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Feature.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Feature.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Feature.cpp -o CMakeFiles/ConsensusCore.dir/Feature.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Features.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Features.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Features.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Features.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Features.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Features.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Features.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Features.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Features.cpp > CMakeFiles/ConsensusCore.dir/Features.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Features.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Features.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Features.cpp -o CMakeFiles/ConsensusCore.dir/Features.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Mutation.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Mutation.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Mutation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Mutation.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Mutation.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Mutation.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Mutation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Mutation.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Mutation.cpp > CMakeFiles/ConsensusCore.dir/Mutation.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Mutation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Mutation.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Mutation.cpp -o CMakeFiles/ConsensusCore.dir/Mutation.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/PairwiseAlignment.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/PairwiseAlignment.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/PairwiseAlignment.cpp > CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/PairwiseAlignment.cpp -o CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Sequence.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Sequence.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Sequence.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Sequence.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Sequence.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Sequence.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Sequence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Sequence.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Sequence.cpp > CMakeFiles/ConsensusCore.dir/Sequence.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Sequence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Sequence.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Sequence.cpp -o CMakeFiles/ConsensusCore.dir/Sequence.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Utils.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Utils.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Utils.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Utils.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Utils.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Utils.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Utils.cpp > CMakeFiles/ConsensusCore.dir/Utils.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Utils.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Utils.cpp -o CMakeFiles/ConsensusCore.dir/Utils.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Version.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Version.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Version.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Version.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Version.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Version.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Version.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Version.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Version.cpp > CMakeFiles/ConsensusCore.dir/Version.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Version.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Version.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Version.cpp -o CMakeFiles/ConsensusCore.dir/Version.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/DenseMatrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/DenseMatrix.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/DenseMatrix.cpp > CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/DenseMatrix.cpp -o CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/SparseMatrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/SparseMatrix.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/SparseMatrix.cpp > CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Matrix/SparseMatrix.cpp -o CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConfig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConfig.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConfig.cpp > CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConfig.cpp -o CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConsensus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConsensus.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConsensus.cpp > CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaConsensus.cpp -o CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.s

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.o: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/flags.make
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.o: /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaGraph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.o"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.o -c /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaGraph.cpp

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.i"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaGraph.cpp > CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.i

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.s"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && /home/sg461/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore/Poa/PoaGraph.cpp -o CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.s

# Object files for target ConsensusCore
ConsensusCore_OBJECTS = \
"CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Coverage.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Feature.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Features.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Mutation.cpp.o" \
"CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Sequence.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Utils.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Version.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.o" \
"CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.o"

# External object files for target ConsensusCore
ConsensusCore_EXTERNAL_OBJECTS =

ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/AffineAlignment.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Coverage.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Feature.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Features.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Mutation.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/PairwiseAlignment.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Sequence.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Utils.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Version.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/DenseMatrix.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Matrix/SparseMatrix.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConfig.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaConsensus.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/Poa/PoaGraph.cpp.o
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/build.make
ext/ConsensusCore/libConsensusCore.a: ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX static library libConsensusCore.a"
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && $(CMAKE_COMMAND) -P CMakeFiles/ConsensusCore.dir/cmake_clean_target.cmake
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ConsensusCore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/build: ext/ConsensusCore/libConsensusCore.a

.PHONY : ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/build

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/clean:
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore && $(CMAKE_COMMAND) -P CMakeFiles/ConsensusCore.dir/cmake_clean.cmake
.PHONY : ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/clean

ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/depend:
	cd /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/src /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/ext/src/ConsensusCore /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore /n/groups/church/shilpa/new/butter_ex/butter_ex/scripts/try/build_spades/ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ext/ConsensusCore/CMakeFiles/ConsensusCore.dir/depend

