#!/usr/bin/perl -w

%count_tags = ();

$webpage = `wget -q -O- $ARGV[0]`;
$webpage = lc $webpage;
@tags = $webpage =~ /<(\w+).*>/g;
foreach $tag (@tags) {
    $count_tags{$tag}++;
}

foreach $tag (sort { $count_tags{$a} <=> $count_tags{$b} } keys %count_tags) {
    print "$tag $count_tags{$tag}\n";
}
