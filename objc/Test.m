#import <Foundation/Foundation.h>
#import "ScriptedMain.h"

int main() {
   NSLog(
     @"%@",
     [NSString
       stringWithFormat:
                 @"Test: The meaning of life is %ld",
       [ScriptedMain meaningOfLife]
     ]
   );

  return 0;
}
