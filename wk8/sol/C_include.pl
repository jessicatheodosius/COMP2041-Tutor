#!/usr/bin/perl -w

sub include {
	my ($f) = @_;
    open (my $F, "<$f") or die;

	while (my $line = <$F>) {
		if ($line =~ /^#include "(.*)"$/) {
			include($1);
		} else {
			print $line;
		}
	}
}

include ($ARGV[0]);
