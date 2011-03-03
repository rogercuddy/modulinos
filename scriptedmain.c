#include "scriptedmain.h"

#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv) {
	char cwd[1024];
	getcwd(cwd, sizeof(cwd));

	printf("Directory: %s\n", cwd);

	printf("Program: %s\n", argv[0]);

	printf("Number of Args: %d\n", argc);

	int i;
	for (i = 0; i < argc; i++) {
		printf("Arg: %s\n", argv[i]);
	}

	return 0;
}