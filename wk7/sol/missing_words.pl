#!/usr/bin/perl -w
%words = ();

open FILE, "<$ARGV[0]" or die;
while (<FILE>) {
    chomp;
    foreach $word (split /\W+/) {
        $words{$word} = 1;
    }
}
close FILE;

open FILE, "<$ARGV[1]" or die;
while (<FILE>) {
    chomp;
    foreach $word (split /\W+/) {
        delete $words{$word} if exists $words{$word};
    }
}
close FILE;

foreach $word (sort keys %words) {
    print "$word\n";
}
