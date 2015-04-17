// Copyright (C) YelloSoft

#include <iostream>
#include "./modulino.h"
using std::cout;
using std::endl;

int meaning_of_life() {
  return 42;
}

#ifdef MODULINO

int main() {
  cout << "Main: The meaning of life is " << meaning_of_life() << endl;
  return 0;
}

#endif
