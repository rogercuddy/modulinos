CC=clang++
FLAGS=-std=c++11 -stdlib=libc++ -O2 -Wall -Wextra -pedantic -Weffc++ -Wmost -Weverything -Wno-c++98-compat

MODULINO=bin/modulino
TEST=bin/test

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.cpp modulino.hh
	mkdir -p bin
	$(CC) $(FLAGS) -o $(MODULINO) -DMODULINO modulino.cpp

$(TEST): test.cpp modulino.hh modulino.cpp
	mkdir -p bin
	$(CC) $(FLAGS) -o $(TEST) test.cpp modulino.cpp

cppcheck:
	cppcheck --quiet --enable=all --suppressions-list=$$HOME/suppressions.cfg .

cpplint:
	find . -type f -iname '*.cpp' -o -iname '*.cc' -o -iname '*.cxx' -o -iname '*.c' -o -iname '*.hh' -o -iname '*.hxx' -o -iname '*.h' -exec cpplint --filter=-readability/streams,-build/header_guard,-whitespace/parens,-readability/braces,-whitespace/newline,-legal/copyright {} \;

splint:
	find . -type f -iname '*.c' -exec splint {} \;

vera++:
	find . -type f -iname '*.cpp' -o -iname '*.cc' -o -iname '*.cxx' -o -iname '*.c' -o -iname '*.hh' -o -iname '*.hxx' -o -iname '*.h' -exec vera++ -s {} \;

astyle-apply:
	-find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[chm]" -exec astyle {} \; | grep -v Unchanged

astyle:
	-find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[chm]" -exec astyle --dry-run {} \; | grep -v Unchanged

clean-astyle:
	-find . -type f -name "*.orig" -exec rm {} \;

lint: cppcheck cpplint splint vera++ astyle

valgrind: modulino test
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./modulino
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean: clean-astyle
	-rm -rf bin
