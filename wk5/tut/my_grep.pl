#!/usr/bin/perl -w

$pattern = shift @ARGV;

while(<>) {
    print if /$pattern/;
}
