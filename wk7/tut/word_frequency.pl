#!/usr/bin/perl -w

%count_words = ();

while ($line = <STDIN>) {
    $line = lc $line;
    @words = split /[^a-z]+/, $line;
    foreach $word (@words) {
        $count_words{$word} += 1;
    }
}

sub by_count {
    $count_words{$a} <=> $count_words{$b};
}

foreach $key (sort by_count (keys %count_words)) {
    print "$count_words{$key} $key\n";
}



$words{$prev}{$current} += 1;

$words{$prev}
