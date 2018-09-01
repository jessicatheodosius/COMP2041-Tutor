#!/usr/bin/perl -w

%count_words = ();
@lines = <STDIN>;
$line_str = lc join '', @lines;

foreach $word (split /\W+/, $line_str) {
    $count_words{$word} += 1;
}

# it's sort of like anonymous function
foreach $key (sort {$count_words{$a} <=> $count_words{$b}} (keys %count_words)) {
    print "$count_words{$key} $key\n";
}

# using subroutine
sub by_count {
    $count_words{$a} <=> $count_words{$b};
}

foreach $key (sort by_count (keys %count_words)) {
    print "$count_words{$key} $key\n";
}
