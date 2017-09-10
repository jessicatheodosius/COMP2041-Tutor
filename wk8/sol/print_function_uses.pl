#!/usr/bin/perl -w

$fn = shift @ARGV;

foreach $f (glob '*.c') {
	open F, "<$f";
	while ($line = <F>) {
		if ($line =~ /^\s.*\b$fn\s*\(.*?\)/) {
			printf "%s:%d function %s used\n", $f, $., $fn;
		} elsif ($line =~ /^\S.*\b$fn\s*\(.*?\);/) {
			printf "%s:%d function %s declared\n", $f, $., $fn;
		} elsif ($line =~ /^\S.*\b$fn\s*\(.*?\)\s*{/) {
			printf "%s:%d function %s defined\n", $f, $., $fn;
		}
	}
	close F;
}
