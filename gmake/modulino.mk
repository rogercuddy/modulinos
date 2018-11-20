.PHONY: modulino

all: modulino

include meaning-of-life.mk

modulino: meaning-of-life
	@echo "(Main)"
