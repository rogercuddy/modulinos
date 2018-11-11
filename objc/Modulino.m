#import <Foundation/Foundation.h>
#import "Modulino.h"

@implementation Modulino

+ (NSInteger) meaningOfLife {
    return 42;
}

@end

int __attribute__((weak)) main() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    NSLog(
        @"%@",
        [NSString
            stringWithFormat:
            @"Main: The meaning of life is %ld",
            [Modulino meaningOfLife]
        ]
    );

    [pool drain];

    return 0;
}
