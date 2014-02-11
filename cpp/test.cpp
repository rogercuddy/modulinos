// Copyright (C) YelloSoft

#include <iostream>
#include "./scriptedmain.h"
using std::cout;
using std::endl;

extern int meaning_of_life();

int main() {
  cout << "Test: The meaning of life is " << meaning_of_life() << endl;
  return 0;
}
