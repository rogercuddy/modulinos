<?php
function main($args) {
	echo "Directory: " . getcwd() . "\n";

	echo "Program: " . $_SERVER["SCRIPT_NAME"] . "\n";

	echo "Number of Args: " . count($args) . "\n";

	foreach($args as $arg) {
		echo "Arg: $arg\n";
	}
}

if (preg_match("/scriptedmain/", $_SERVER["SCRIPT_NAME"])) {
	main($argv);
}
?>