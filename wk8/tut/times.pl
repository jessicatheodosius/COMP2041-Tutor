#!/usr/bin/perl -w

($row, $column, $width) = @ARGV;

foreach $i (1..$row) {
    printf "%${width}d", $i;
    foreach $j (1..$column) {
       print $i * $j;
    }
    print "\n";
}
