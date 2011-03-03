#include <iostream>
#include <unistd.h>

using namespace std;

int main(int argc, char **argv) {
	char cwd[1024];
	getcwd(cwd, sizeof(cwd));

	cout << "Directory: " << cwd << endl;

	cout << "Program: " << argv[0] << endl;

	cout << "Number of Args: " << argc << endl;

	int i;
	for (i = 0; i < argc; i++) {
		cout << "Arg: " << argv[i] << endl;
	}

	return 0;
}