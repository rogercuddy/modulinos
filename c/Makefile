CC=clang
FLAGS=-O2 -Wall -Wextra -Wmost -Weverything

SCRIPTED_MAIN=bin/scriptedmain
TEST=bin/test

all: $(SCRIPTED_MAIN) $(TEST)
	$(SCRIPTED_MAIN)
	$(TEST)

$(SCRIPTED_MAIN): scriptedmain.c scriptedmain.h
	mkdir -p bin/
	$(CC) $(FLAGS) -o $(SCRIPTED_MAIN) -DSCRIPTEDMAIN scriptedmain.c

$(TEST): test.c scriptedmain.h scriptedmain.c
	mkdir -p bin/
	$(CC) $(FLAGS) -o $(TEST) test.c scriptedmain.c

cppcheck:
	cppcheck --quiet --enable=all --suppressions $$HOME/suppressions.cfg .

splint:
	find . -type f -name '*.[ch]' -exec splint {} \;

vera++:
	find . -type f -name '*.cpp' -o -name '*.[ch]' -exec vera++ -s {} \;

astyle-apply:
	-find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[chm]" -exec astyle {} \; | grep -v Unchanged

astyle:
	-find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[chm]" -exec astyle --dry-run {} \; | grep -v Unchanged

clean-astyle:
	-find . -type f -name "*.orig" -exec rm {} \;

lint: cppcheck splint vera++ astyle

valgrind: scriptedmain test
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./scriptedmain
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean: clean-astyle
	-rm -rf bin/
