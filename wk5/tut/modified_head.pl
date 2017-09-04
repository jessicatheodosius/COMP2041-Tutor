#!/usr/bin/perl -w

$n = 10;

if (@ARGV && $ARGV[0] =~ /-[0-9]+/) {
    $n = shift @ARGV;
    $n =~ s/-//;
}
