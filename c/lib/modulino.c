// Copyright (C) YelloSoft

#include <stdio.h>
#include "modulino.h"

int meaning_of_life(void) {
    return 42;
}

#ifdef MODULINO

int main() {
    printf("Main: The meaning of life is %d\n", meaning_of_life());

    return 0;
}

#endif
