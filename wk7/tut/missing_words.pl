#!/usr/bin/perl -w

%words = ();

open FILE, "<$ARGV[0]" or die;
while ($word = <FILE>) {
    chomp $word;
    $words{$word} = 1;
}
close FILE;

open FILE, "<$ARGV[1]" or die;
while ($word = <FILE>) {
    chomp $word;
    if (exists $words{$word}) {
        delete $words{$word};
    }
}
close FILE;

foreach $key (sort {$a cmp $b} keys %words) {
    print "$key\n";
}
