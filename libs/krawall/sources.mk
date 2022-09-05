# What type of Executable we use. .exe on Windows, no extension on everything else.
ifeq ($(OS), Windows_NT)
EXECUTABLE := .exe
else
EXECUTABLE :=
endif


####
#   Declare some constants.

#   BUILD_DIR:      The Directory where the object files get stored.
#   BUILDTOOLS_DIR: The Directory where agbcc, the linker and such is stored.

#   TARGET_NAME:    The name of the output binary.
#   LIB:            The path where the .a lib file gets stored.
####

BUILD_DIR      := build
BUILDTOOLS_DIR := ../../tools/buildtools

TARGET_NAME    := krawall
LIB            := $(BUILDTOOLS_DIR)/libs/$(TARGET_NAME).a


####
#   Declare base directories for several source types.

#   ASM_BASE:     Assembly base directory.
#   DATA_BASE:    .S / .s data base directory.
#   INCLUDE_BASE: C Header base directory.
#   C_BASE:       C source base directory.
####

ASM_BASE     := asm
DATA_BASE    := data
INCLUDE_BASE := include
CSRC_BASE    := source


####
#   Declare all used Tools.

#   CC:      The default c compiler.
#   AR:      Builds libraries.
#   AS:      Compiles .s files.
#   CPP:     Preprocesses C source files.
####

CC      := $(BUILDTOOLS_DIR)/agbcc/bin/agbcc$(EXECUTABLE)
AR      := $(DEVKITARM)/bin/arm-none-eabi-ar$(EXECUTABLE)
AS      := $(DEVKITARM)/bin/arm-none-eabi-as$(EXECUTABLE)
CPP     := $(DEVKITARM)/bin/arm-none-eabi-cpp$(EXECUTABLE)


####
#   Directory list of the source files.

#   ASM_DIRS:     Assembly code directories.
#   DATA_DIRS:    Data file directories.
#   CSRC_DIRS:    C source directories.
#   INCLUDE_DIRS: C header directories.
####

ASM_DIRS     := $(ASM_BASE)

DATA_DIRS    := $(DATA_BASE)

CSRC_DIRS    := $(CSRC_BASE)

INCLUDE_DIRS := $(INCLUDE_BASE)


####
#   File lists.

#   ASM_FILES:  A list of all .s assembly code files.
#   DATA_FILES: A list of all .s data files.
#   CSRC_FILES: A list of all .c files.
####

ASM_FILES  := $(foreach dir, $(ASM_DIRS), $(wildcard $(dir)/*.s))

DATA_FILES := $(foreach dir, $(DATA_DIRS), $(wildcard $(dir)/*.s))

CSRC_FILES := $(foreach dir, $(CSRC_DIRS), $(wildcard $(dir)/*.c))


####
#   Setting up Objects.

#   C_OBJ:            All c source object files.
#   ASM_OBJ:          All Assembly source object files.
#   DATA_OBJ:         All non-preprocessed data object files.
#   PREPROC_DATA_OBJ: All preprocessed data object files.
####

C_OBJ    := $(patsubst $(CSRC_BASE)/%.c, $(BUILD_DIR)/$(CSRC_BASE)/%.o, $(CSRC_FILES))

ASM_OBJ  := $(patsubst $(ASM_BASE)/%.s, $(BUILD_DIR)/$(ASM_BASE)/%.o, $(ASM_FILES))

DATA_OBJ := $(patsubst $(DATA_BASE)/%.s, $(BUILD_DIR)/$(DATA_BASE)/%.o, $(DATA_FILES))

# List all objects in here.
OBJECTS := $(C_OBJ) $(ASM_OBJ) $(DATA_OBJ)


####
#   Last Step: Create neccessary Directories.
####

# Create Build Directories.
$(foreach dir, $(ASM_DIRS),  $(shell mkdir -p $(BUILD_DIR)/$(dir)))
$(foreach dir, $(DATA_DIRS), $(shell mkdir -p $(BUILD_DIR)/$(dir)))
$(foreach dir, $(CSRC_DIRS), $(shell mkdir -p $(BUILD_DIR)/$(dir)))