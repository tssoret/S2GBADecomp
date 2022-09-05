include tools/buildtools/mkparts/sources.mk
include tools/buildtools/mkparts/rules.mk
include tools/buildtools/mkparts/scripts.mk

# Main Targets.
.PHONY: all compile compilemin clean cleanall compareRes fixHeader extractData buildlibs


all:
	@echo please pass one of the following targets:
	@echo - compile:     Use this when you want to build the binary and compare for differences.
	@echo - compilemin:  Use this if you just want to build the binary with no compare checks.
	@echo - clean:       cleans the output and build directory.
	@echo - cleanall:    Same as clean, but also cleans the Krawall Module data.
	@echo - compareRes:  Compare the base and result ROM for differences.
	@echo - fixHeader:   Creates a GBA Header for the ROM and adds the Nintendo Logo + fixes the Checksum.
	@echo - extractData: Extract assets from the ROM, such as the Instruments, Modules and Samples for Krawall.
	@echo - buildlibs:   Build the libraries.


# Compile Message.
compileMsg:
	@echo compiling...

# Compile the ROM, fix the Header and compare.
compile: compileMsg $(GBA) mkgbaheaderScpt compareRes

# Same as above, but without the compare.
compilemin: compileMsg $(GBA) mkgbaheaderScpt


# Clean things up.
clean:
	@echo cleaning up...
	@rm -fr $(OUTPUT_DIR)
	@rm -fr $(BUILD_DIR)

# Clean all things up, even the Krawall data things.
cleanall: clean
	@rm -fr $(DATA_BASE)/krawall
	@rm -fr $(INCLUDE_BASE)/krawall


# Compares the base ROM and the result ROM.
compareRes: cmpScpt


# Creates a GBA Header for the ROM and adds the Nintendo Logo + fixes the Checksum.
fixHeader: mkgbaheaderScpt


# Exracts assets data from the base ROM for the decomp, such as Modules, Samples and Instruments.
extractData: krawallextractScpt


# Build the Libraries.
buildlibs:
	@$(MAKE) krawall -C libs