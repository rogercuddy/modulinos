all: ScriptedMain.pm test.pl
	perl ScriptedMain.pm
	perl test.pl

lint:
	-perlcritic . | grep -v "source OK"
