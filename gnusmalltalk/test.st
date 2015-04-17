"exec" "gst" "-f" "$0" "$0" "$@"
"exit"

"
First install the Modulino package:

$ gst-package -t ~/.st package.xml &>/dev/null

Then run the test:

$ ./test.st
Test: The meaning of life is 42
"

PackageLoader fileInPackage: 'Modulino'.

Transcript show: 'Test: The meaning of life is ', ((Modulino meaningOfLife) printString); cr.
