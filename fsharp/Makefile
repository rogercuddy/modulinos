SCRIPTED_MAIN=bin/scriptedmain.exe
TEST=bin/test.exe

all: $(SCRIPTED_MAIN) $(TEST)
	mono $(SCRIPTED_MAIN)
	mono $(TEST)

$(SCRIPTED_MAIN): ScriptedMain.fs
	mkdir -p bin/
	fsharpc --nologo --out:$(SCRIPTED_MAIN) ScriptedMain.fs

$(TEST): Test.fs ScriptedMain.fs
	mkdir -p bin/
	fsharpc --nologo --out:$(TEST) ScriptedMain.fs Test.fs

clean:
	-rm -rf bin/
