#!/usr/bin/perl -w
%bigrams = ();
$prev_word = "";

while (<STDIN>) {
    chomp;
    foreach $word (split /\W+/) {
        $word = lc $word;
        $bigrams{$prev_word}{$word}++ if $prev_word;
        $prev_word = $word;
    }
}

foreach $prev_word (sort keys %bigrams) {
    $total = 0;
    $max_word = "";
    $max_count = 0;

    for $word (keys %{$bigrams{$prev_word}}) {
        $total += $bigrams{$prev_word}{$word};
        if ($max_count < $bigrams{$prev_word}{$word}) {
            $max_count = $bigrams{$prev_word}{$word};
            $max_word = $word;
        }
    }
    printf "%s(%d) %s(%d)\n", $prev_word, $total, $max_word, $max_count;
}
