# What type of Executable we use. .exe on Windows, no extension on everything else.
ifeq ($(OS), Windows_NT)
EXECUTABLE := .exe
else
EXECUTABLE :=
endif


####
#   Declare some constants.

#   BUILD_DIR:      The Directory where the object files get stored.
#   OUTPUT_DIR:     The Directory where the .map, .elf and .gba output files get stored.
#   BUILDTOOLS_DIR: The Directory where agbcc, the linker and such is stored.
#   SCRIPT_DIR:     The base Directory where all the Scripts are.

#   TARGET_NAME:    The name of the output binaries.
#   ELF:            The path where the .elf file gets stored.
#   GBA:            The path where the .gba file gets stored.
#   MAP:            The path where the .map file gets stored.

#   LINKERSCRIPT:   The path to the linker script file for LD.
####

BUILD_DIR      := build
OUTPUT_DIR     := out
BUILDTOOLS_DIR := tools/buildtools
SCRIPT_DIR     := tools/scripts

TARGET_NAME    := Sims2GBA
ELF            := $(OUTPUT_DIR)/$(TARGET_NAME).elf
GBA            := $(OUTPUT_DIR)/$(TARGET_NAME).gba
MAP            := $(OUTPUT_DIR)/$(TARGET_NAME).map

LINKERSCRIPT   := $(BUILDTOOLS_DIR)/linker/linkerscript.ld


####
#   Declare base directories for several source types.

#   ASM_BASE:     Assembly base directory.
#   DATA_BASE:    .S / .s data base directory.
#   INCLUDE_BASE: C Header base directory.
#   C_BASE:       C source base directory.
#   LIB_BASE:     Library base directory (We just use $(BUILDTOOLS_DIR)/libs here tho).
####

ASM_BASE     := asm
DATA_BASE    := data
INCLUDE_BASE := include
CSRC_BASE    := source
LIB_BASE     := $(BUILDTOOLS_DIR)/libs


####
#   Declare all used Tools.

#   CC:      The default c compiler.
#   AS:      Compiles .s files.
#   CPP:     Preprocesses C source files.
#   LD:      Handles the linker script.
#   OBJCOPY: Copies the end result to the .gba file.
#   DENO:    Running Deno JS Scripts.
####

CC      := $(BUILDTOOLS_DIR)/agbcc/bin/agbcc$(EXECUTABLE)
AS      := $(DEVKITARM)/bin/arm-none-eabi-as$(EXECUTABLE)
CPP     := $(DEVKITARM)/bin/arm-none-eabi-cpp$(EXECUTABLE)
LD      := $(DEVKITARM)/bin/arm-none-eabi-ld$(EXECUTABLE)
OBJCOPY := $(DEVKITARM)/bin/arm-none-eabi-objcopy$(EXECUTABLE)
DENO    := Deno$(EXECUTABLE)


####
#   Directory list of the source files.

#   ASM_DIRS:     Assembly code directories.
#   DATA_DIRS:    Data file directories.
#   CSRC_DIRS:    C source directories.
#   INCLUDE_DIRS: C header directories.
####

ASM_DIRS     := $(ASM_BASE) \
				$(ASM_BASE)/agblib $(ASM_BASE)/gpntlib \
				$(ASM_BASE)/unsorted \
				$(ASM_BASE)/menus $(ASM_BASE)/menus/cas $(ASM_BASE)/menus/cutscenes $(ASM_BASE)/menus/intros $(ASM_BASE)/menus/minigames $(ASM_BASE)/menus/startmenus

DATA_DIRS    := $(DATA_BASE) \
				$(DATA_BASE)/data \
				$(DATA_BASE)/unsorted \
				$(DATA_BASE)/krawall $(DATA_BASE)/krawall/modules
				

CSRC_DIRS    := $(CSRC_BASE) \
				$(CSRC_BASE)/agblib $(CSRC_BASE)/agblib/flash $(CSRC_BASE)/gpntlib \
				$(CSRC_BASE)/menus $(CSRC_BASE)/menus/cas \
				$(CSRC_BASE)/data \

INCLUDE_DIRS := $(BUILDTOOLS_DIR)/agbcc/include \
				$(INCLUDE_BASE) \
				$(INCLUDE_BASE)/agblib $(INCLUDE_BASE)/agblib/flash $(INCLUDE_BASE)/gpntlib $(INCLUDE_BASE)/krawall \
				$(INCLUDE_BASE)/cas \
				$(INCLUDE_BASE)/data $(INCLUDE_BASE)/data/lists


####
#   File lists.
#   You really only have to modify the LIBS part here, the rest is automated based on above directory list.

#   ASM_FILES: A list of all .s assembly code files.
#   DATA_FILES: A list of all .s data files.
#   PREPROC_DATA_FILES: A list of all .S data files.
#   CSRC_FILES: A list of all .c files.
#   LIB_FILES: A list of all .a files.
####

ASM_FILES          := $(foreach dir, $(ASM_DIRS), $(wildcard $(dir)/*.s))

DATA_FILES         := $(foreach dir, $(DATA_DIRS), $(wildcard $(dir)/*.s))
PREPROC_DATA_FILES := $(foreach dir, $(DATA_DIRS), $(wildcard $(dir)/*.S))

CSRC_FILES         := $(foreach dir, $(CSRC_DIRS), $(wildcard $(dir)/*.c))

# Need to list the files manually here, since order matters on linking.
LIB_FILES          := $(LIB_BASE)/krawall.a $(LIB_BASE)/libc.a $(LIB_BASE)/libgcc.a


####
#   Setting up Objects.

#   C_OBJ:            All c source object files.
#   ASM_OBJ:          All Assembly source object files.
#   DATA_OBJ:         All non-preprocessed data object files.
#   PREPROC_DATA_OBJ: All preprocessed data object files.
####

C_OBJ            := $(patsubst $(CSRC_BASE)/%.c, $(BUILD_DIR)/$(CSRC_BASE)/%.o, $(CSRC_FILES))

ASM_OBJ          := $(patsubst $(ASM_BASE)/%.s, $(BUILD_DIR)/$(ASM_BASE)/%.o, $(ASM_FILES))

DATA_OBJ         := $(patsubst $(DATA_BASE)/%.s, $(BUILD_DIR)/$(DATA_BASE)/%.o, $(DATA_FILES))

PREPROC_DATA_OBJ := $(patsubst $(DATA_BASE)/%.S, $(BUILD_DIR)/$(DATA_BASE)/%.o, $(PREPROC_DATA_FILES))

# List all objects in here.
OBJECTS := $(C_OBJ) $(ASM_OBJ) $(DATA_OBJ) $(PREPROC_DATA_OBJ)


####
#   Last Step: Create neccessary Directories.
####

# Create Build Directories.
$(foreach dir, $(ASM_DIRS),  $(shell mkdir -p $(BUILD_DIR)/$(dir)))
$(foreach dir, $(DATA_DIRS), $(shell mkdir -p $(BUILD_DIR)/$(dir)))
$(foreach dir, $(CSRC_DIRS), $(shell mkdir -p $(BUILD_DIR)/$(dir)))

# Create Output Directory.
$(shell mkdir -p $(OUTPUT_DIR))