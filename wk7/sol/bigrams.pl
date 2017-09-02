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

foreach $key (sort (keys %bigrams)) {
    $total = 0;
    $max_word = "";
    $max_count = 0;

    for $word (keys %{$bigrams{$key}}) {
        $total += $bigrams{$key}{$word};
        if ($max_count < $bigrams{$key}{$word}) {
            $max_count = $bigrams{$key}{$word};
            $max_word = $word;
        }
    }
    printf "%s(%d) %s(%d)\n", $key, $total, $max_word, $max_count;
}
