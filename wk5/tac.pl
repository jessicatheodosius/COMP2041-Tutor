#!/usr/bin/perl -w

$ARGV[0] = "-" if (!@ARGV);

foreach $file (@ARGV) {
    open INPUT, "<$file" or die;
    print reverse <INPUT>;
    close INPUT;
}
