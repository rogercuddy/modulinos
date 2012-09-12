"exec" "gst" "-f" "$0" "$0" "$@"
"exit"

"
First install the ScriptedMain package:

$ gst-package -t ~/.st package.xml &>/dev/null

Then run the test:

$ ./test.st
Test: The meaning of life is 42
"

PackageLoader fileInPackage: 'ScriptedMain'.

Transcript show: 'Test: The meaning of life is ', ((ScriptedMain meaningOfLife) printString); cr.