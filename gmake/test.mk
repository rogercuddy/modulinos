.PHONY: test

all: test

include meaning-of-life.mk

test: meaning-of-life
	@echo "(Test)"
