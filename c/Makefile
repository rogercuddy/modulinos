CC=clang
FLAGS=-O2 -Wall -Wextra -Wmost -Weverything

MODULINO=bin/modulino
TEST=bin/test

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.c modulino.h
	mkdir -p bin/
	$(CC) $(FLAGS) -o $(MODULINO) -DMODULINO modulino.c

$(TEST): test.c modulino.h modulino.c
	mkdir -p bin/
	$(CC) $(FLAGS) -o $(TEST) test.c modulino.c

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

valgrind: modulino test
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./modulino
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean: clean-astyle
	-rm -rf bin/
