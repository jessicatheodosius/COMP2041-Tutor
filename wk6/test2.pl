#!/usr/bin/perl -w

if (@ARGV && $ARGV[0] =~ /^-(\d+)$/) {
    $n = $1;
    print "number after dash is $n\n";
}
