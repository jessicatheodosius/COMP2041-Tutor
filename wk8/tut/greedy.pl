#!/usr/bin/perl -w

$s = "-A-B-C-D-E-";

($greedy) = $s =~ /-(.*)-/;
print "$greedy\n";

($non_greedy) = $s =~ /-(.*?)-/;
print "$non_greedy\n";

($bcde) = $s =~ /-.*?-(.*)-/;
print "$bcde\n";
