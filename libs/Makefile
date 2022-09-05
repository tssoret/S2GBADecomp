####
#   List all Lib directories here.
####

LIBS = krawall

.PHONY: $(LIBS) all clean


# Building all libs with all.
all: $(LIBS)


# Calling clean for all libs.
clean:
	@for dir in $(LIBS); do $(MAKE) clean -C $$dir; done


# Executing Krawall make.
krawall:
	@$(MAKE) -C krawall