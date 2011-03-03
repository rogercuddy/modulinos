#!/usr/bin/env perl

use strict;

sub main {
	print "Number of Args: " . ($#ARGV + 1) . "\n";

	print "Program: $0\n";

	foreach my $i (0 .. $#ARGV) {
		print "$ARGV[$i]\n";
	}
}

unless(caller) { main; }