// Compile:
//
// gcc -o test -lobjc -framework foundation test.m scriptedmain.m
//
// Run:
//
// ./test

#import "scriptedmain.h"
#import <Foundation/Foundation.h>

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	printf("Test: The meaning of life is %d\n", [ScriptedMain meaningOfLife]);

	[pool drain];

	return 0;
}