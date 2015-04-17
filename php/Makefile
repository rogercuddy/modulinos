all: modulino.php test.php
	php modulino.php
	php test.php

lint:
	-for f in *.php; do php -l $$f | grep -v "No syntax errors detected"; done
