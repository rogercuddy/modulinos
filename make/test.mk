all: test

test:
	@make -f modulino.mk meaning-of-life
	@echo "(Test)"
