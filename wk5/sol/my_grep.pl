#!/usr/bin/perl -w

$pattern = shift @ARGV;

while($line = <>) {
    print $line if $line =~ /$pattern/;
}

while(<>) {
    print if /$pattern/;
}
