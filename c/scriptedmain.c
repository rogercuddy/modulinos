#include <stdio.h>
#include "scriptedmain.h"

int meaning_of_life(void) {
  return 42;
}

#ifdef SCRIPTEDMAIN

int main() {
  printf("Main: The meaning of life is %d\n", meaning_of_life());

  return 0;
}

#endif
