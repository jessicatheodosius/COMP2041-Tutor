#!/usr/bin/perl -w

sub include {
    my ($filename) = @_;
    open (my $F, "<$filename") or die;

    while (my $line = <$F>) {
        if ($line =~ /^#include "(.*)"$/) {
            include($1);
        } else {
            print $line;
        }
    }
}

include($ARGV[0]);
