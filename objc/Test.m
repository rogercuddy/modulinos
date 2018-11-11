#import <Foundation/Foundation.h>
#import "Modulino.h"

int main() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    NSLog(
        @"%@",
        [NSString
            stringWithFormat:
            @"Test: The meaning of life is %ld",
            [Modulino meaningOfLife]
        ]
    );

    [pool drain];

    return 0;
}
