#!/usr/bin/perl -w

while (<>) {
    chomp;
    ($sid, $mark) = split;

    if ($mark !~ /^\d+$/) {
        $grade = "??";
    } else {
        if ($mark > 100 || $mark < 0) {
            $grade = "??";
        } elsif ($mark >= 50) {
            $grade = "PS";
        } else {
            $grade = "FL";
        }
    }

    print "$sid $grade";
    print " ($mark)" if $grade eq "??";
    print "\n";
}
