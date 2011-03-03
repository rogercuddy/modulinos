#!/usr/bin/env perl

use strict;
use Cwd qw(getcwd);

sub main {
	print "Dirctory: " . getcwd . "\n";

	print "Program: $0\n";

	print "Number of Args: " . ($#ARGV + 1) . "\n";

	foreach my $i (0 .. $#ARGV) {
		print "Arg: $ARGV[$i]\n";
	}
}

unless(caller) { main; }