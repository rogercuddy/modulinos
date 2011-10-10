// Compile:
//
// gcc -o scriptedmain -lobjc -framework foundation scriptedmain.m scriptedmain.h
//
// Run:
//
// ./scriptedmain

#import "scriptedmain.h"
#import <Foundation/Foundation.h>

@implementation ScriptedMain

+ (int)meaningOfLife {
	return 42;
}

@end

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	printf("Main: The meaning of life is %d\n", [ScriptedMain meaningOfLife]);

	[pool drain];

	return 0;
}