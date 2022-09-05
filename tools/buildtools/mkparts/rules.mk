####
#   Declare default tool flags.

#   CFLAGS:   Flags for the C Compiler.
#   CPPFLAGS: Flags for the pre-processor.
#   ASFLAGS:  Flags for the Assembler.

#   Try to only use the neccessary stuff though.
####

CFLAGS   := -mthumb-interwork -O2
CPPFLAGS := $(foreach dir, $(INCLUDE_DIRS), -iquote $(dir)) -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I asminclude


####
#   Special Exceptions Flags for certain files are here.

#   The agbflash stuff needs the -O1 optimization flag set to match.
####

$(BUILD_DIR)/$(CSRC_BASE)/agblib/flash/agb_flash.o:  CFLAGS := -O1 -mthumb-interwork
$(BUILD_DIR)/$(CSRC_BASE)/agblib/flash/agb_flash%.o: CFLAGS := -O1 -mthumb-interwork

####
#   The actual rules are here.
####

# Create the GBA from the ELF using objcopy.
$(GBA): $(ELF)
	$(OBJCOPY) -O binary --gap-fill 0x00 --pad-to 0x0A000000 $< $@

# Link the Objects into the ELF.
$(ELF): $(OBJECTS) $(LINKERSCRIPT)
	$(LD) -T $(LINKERSCRIPT) -Map $(MAP) $(OBJECTS) $(LIB_FILES) -o $@

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

# Preprocessed Data to Object (TODO: Preprocess with CPP?).
$(BUILD_DIR)/$(DATA_BASE)/%.o: $(DATA_BASE)/%.S
	$(AS) $(ASFLAGS) -o $@ $<