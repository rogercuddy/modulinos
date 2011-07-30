#include <stdio.h>

int meaning_of_life() {
	return 42;
}

int __attribute__((weak)) main() {
	printf("Main: The meaning of life is %d\n", meaning_of_life());

	return 0;
}