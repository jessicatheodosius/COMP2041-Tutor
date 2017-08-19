#!/usr/bin/perl -w

if ($ARGV[0] eq "-v") {
    $reverse = 1;
    shift @ARGV;
}

$pattern = shift @ARGV;

while (<>) {
    if ($reverse) {
        print if !/$pattern/;
    } else {
        print if /$pattern/;
    }
}
