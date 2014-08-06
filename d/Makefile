FLAGS=-w -wi

SCRIPTED_MAIN=bin/scriptedmain
TEST=bin/text

all: $(SCRIPTED_MAIN) $(TEST)
	$(SCRIPTED_MAIN)
	$(TEST)

$(SCRIPTED_MAIN): scriptedmain.d
	mkdir -p bin/
	dmd $(FLAGS) -of$(SCRIPTED_MAIN) scriptedmain.d -version=scriptedmain

$(TEST): test.d scriptedmain.d
	mkdir -p bin/
	dmd $(FLAGS) -of$(TEST) test.d scriptedmain.d -version=test

clean:
	-rm -rf bin/
	-rm *.o
