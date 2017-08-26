#!/usr/bin/perl -w

($n, $m, $file) = @ARGV;
open INPUT, "<", $file or die;

while (<INPUT>) {
    chomp;
    @chars = split //;
    # do some checking on n and m if more than characters
    print @chars[$n-1..$m-1], "\n";
}

close INPUT;
