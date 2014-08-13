#import <Foundation/Foundation.h>
#import "ScriptedMain.h"

int main() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

   NSLog(
     @"%@",
     [NSString
       stringWithFormat:
                 @"Test: The meaning of life is %ld",
       [ScriptedMain meaningOfLife]
     ]
   );

   [pool drain];

  return 0;
}
