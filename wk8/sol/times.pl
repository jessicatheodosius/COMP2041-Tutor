#!/usr/bin/perl -w

($n, $m, $width) = @ARGV;

$format = "%${width}d";

foreach $x (1..$n) {
    printf $format, $x;
    foreach $y (1..$m) {
        printf $format, $x*$y;
    }
    print "\n";
}
