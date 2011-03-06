#include <iostream>

using namespace std;

int meaning_of_life() {
	return 42;
}

int __attribute__((weak)) main() {
	cout << "Main: The meaning of life is " << meaning_of_life() << endl;

	return 0;
}