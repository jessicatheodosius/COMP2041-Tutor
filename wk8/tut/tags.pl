#!/usr/bin/perl -w

$website = `wget -q -O- $ARGV[0]`;

%tag_count = ();
$website = lc $website;
@tags = $website =~ /<([a-z]+)[^>]+>/g;
foreach $tag (@tags) {
    $tag_count{$tag}++;
}

foreach $key (sort { $tag_count{$a} <=> $tag_count{$b} } keys %tag_count) {
    print "$key $tag_count{$key}\n";
}
