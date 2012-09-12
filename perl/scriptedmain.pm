#!/usr/bin/env perl

use strict;

sub meaning_of_life {
	return 42;
}

sub main {
	print "Main: The meaning of life is " . meaning_of_life . "\n";
}

unless(caller) { main; }