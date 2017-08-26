#!/usr/bin/perl -w

while (<>) {
    chomp;
    ($id, $mark) = split;   # default split is space
    if ($mark !~ /^(\d{1,2}|100)$/) {
        $grade = "??";
    } else {
        $grade = "FL";
        $grade = "PS" if $mark >= 50 && $mark <= 100;
    }
    $extra = ($grade ne "??") ? "" : " ($mark)";
    print "$id $mark$extra\n";
}
