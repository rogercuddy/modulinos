// Copyright (C) YelloSoft

#include "./modulino.hh"

#include <iostream>

int meaning_of_life() {
    return 42;
}

#ifdef MODULINO

int main() {
    std::cout << "Main: The meaning of life is " << meaning_of_life() << std::endl;
    return 0;
}

#endif
