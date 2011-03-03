<?php
function main($args) {
	echo "Number of Args: " . count($args) . "\n";

	echo "Program: " . $_SERVER["SCRIPT_NAME"] . "\n";

	foreach($args as $arg) {
		echo "Arg: $arg\n";
	}
}

if (preg_match("/scriptedmain/", $_SERVER["SCRIPT_NAME"])) {
	main($argv);
}
?>