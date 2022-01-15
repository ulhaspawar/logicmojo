##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=backtracking
ConfigurationName      :=Debug
WorkspacePath          :=/home/ulhas/data/Playground/algorithms/logicmojo/logicmojo
ProjectPath            :=/home/ulhas/data/Playground/algorithms/logicmojo/logicmojo/backtracking
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Ulhas Yashwant Pawar
Date                   :=15/01/22
CodeLitePath           :=/home/ulhas/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="backtracking.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -static
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -std=c++17 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/sudoku.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/pow.cpp$(ObjectSuffix) $(IntermediateDirectory)/ratmaze.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)


$(IntermediateDirectory)/.d:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/sudoku.cpp$(ObjectSuffix): sudoku.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sudoku.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/sudoku.cpp$(DependSuffix) -MM sudoku.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ulhas/data/Playground/algorithms/logicmojo/logicmojo/backtracking/sudoku.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sudoku.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sudoku.cpp$(PreprocessSuffix): sudoku.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sudoku.cpp$(PreprocessSuffix) sudoku.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ulhas/data/Playground/algorithms/logicmojo/logicmojo/backtracking/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/pow.cpp$(ObjectSuffix): pow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/pow.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/pow.cpp$(DependSuffix) -MM pow.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ulhas/data/Playground/algorithms/logicmojo/logicmojo/backtracking/pow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/pow.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/pow.cpp$(PreprocessSuffix): pow.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/pow.cpp$(PreprocessSuffix) pow.cpp

$(IntermediateDirectory)/ratmaze.cpp$(ObjectSuffix): ratmaze.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ratmaze.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ratmaze.cpp$(DependSuffix) -MM ratmaze.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ulhas/data/Playground/algorithms/logicmojo/logicmojo/backtracking/ratmaze.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ratmaze.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ratmaze.cpp$(PreprocessSuffix): ratmaze.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ratmaze.cpp$(PreprocessSuffix) ratmaze.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


