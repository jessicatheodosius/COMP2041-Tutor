#!/usr/bin/perl -w

%count_words = ();

while (<STDIN>) {
    chomp;
    foreach $word (split /\W+/) {
        $count_words{lc($word)}++;
    }
}

foreach $key (sort {$count_words{$a} <=> $count_words{$b}} (keys %count_words)) {
    print "$count_words{$key} $key\n";
}

sub by_count {
    $count_words{$a} <=> $count_words{$b};
}

foreach $key (sort by_count (keys %count_words)) {
    print "$count_words{$key} $key\n";
}
