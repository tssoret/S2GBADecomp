####
#   Handle Deno JS Scripts.
#   The Scpt extension at the end means SCriPT.

#   cmpScpt:            Compare the base ROM with the result ROM and display the amount of differences.
#   krawallextractScpt: Extract the Instruments, Modules and Samples from the base ROM.
#   mkgbaheaderScpt:    Creates a GBA Header for the ROM.
####

.PHONY: cmpScpt krawallextractScpt mkgbaheaderScpt

cmpScpt:
	cd $(SCRIPT_DIR) && $(DENO) run --allow-read ResultCompare.js

krawallextractScpt:
	cd $(SCRIPT_DIR) && $(DENO) run --allow-read --allow-write KrawallDataExtractor.js

mkgbaheaderScpt:
	cd $(SCRIPT_DIR) && $(DENO) run --allow-read --allow-write MakeGBAHeader.js