#include <stdio.h>

int main(int argc, char **argv) {
	printf("Number of Args: %d\n", argc);

	printf("Program: %s\n", argv[0]);

	int i;
	for (i = 1; i < argc; i++) {
		printf("Arg: %s\n", argv[i]);
	}

	return 0;
}