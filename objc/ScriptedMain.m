#import <Foundation/Foundation.h>
#import "ScriptedMain.h"

@implementation ScriptedMain

+ (NSInteger) meaningOfLife {
  return 42;
}

@end

int __attribute__((weak)) main() {
   NSLog(
     @"%@",
     [NSString
       stringWithFormat:
                 @"Main: The meaning of life is %ld",
       [ScriptedMain meaningOfLife]
     ]
   );

  return 0;
}
