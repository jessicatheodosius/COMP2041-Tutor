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
    delete $words{$word} if exists $words{$word};
}
close FILE;

for $key (sort (keys %words)) {
    print "$key\n";
}
