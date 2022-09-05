####
#   Declare default tool flags.

#   CFLAGS:   Flags for the C Compiler.
#   CPPFLAGS: Flags for the pre-processor.
#   ASFLAGS:  Flags for the Assembler.

#   Try to only use the neccessary stuff though.
####

CFLAGS    := -mthumb-interwork -O2
CPPFLAGS  := $(foreach dir, $(INCLUDE_DIRS), -iquote $(dir))
ASFLAGS   := -mcpu=arm7tdmi -mthumb-interwork


####
#   The actual rules are here.
####

# Create the Library from all the Objects.
$(LIB): $(OBJECTS)
	$(AR) rcs $(LIB) $(OBJECTS)

# C Source to Object.
$(BUILD_DIR)/$(CSRC_BASE)/%.o: $(CSRC_BASE)/%.c
	$(CPP) $(CPPFLAGS) $< | $(CC) $(CFLAGS) -o $(BUILD_DIR)/$(CSRC_BASE)/$*.s
	$(AS)  $(ASFLAGS) -o $@ $(BUILD_DIR)/$(CSRC_BASE)/$*.s

# Assembly to Object.
$(BUILD_DIR)/$(ASM_BASE)/%.o: $(ASM_BASE)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

# Normal Data to Object.
$(BUILD_DIR)/$(DATA_BASE)/%.o: $(DATA_BASE)/%.s
	$(AS) $(ASFLAGS) -o $@ $<