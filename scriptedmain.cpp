#include <iostream>

using namespace std;

int meaning_of_life() {
	return 42;
}

int __attribute__((weak)) main(int argc, char **argv) {
	cout << "Main: The meaning of life is " << meaning_of_life() << endl;

	return 0;
}