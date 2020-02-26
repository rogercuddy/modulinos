// Copyright (C) YelloSoft

#include "./modulino.hh"

#include <iostream>

extern int meaning_of_life();

int main() {
    std::cout << "Test: The meaning of life is " << meaning_of_life() << std::endl;
    return 0;
}
