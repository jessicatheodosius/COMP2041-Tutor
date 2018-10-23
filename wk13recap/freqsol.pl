#!/usr/bin/perl -w

%freq = ();
while ($line = <STDIN>) {
    @letters = $line =~ /\w/g;
    foreach $l (@letters) {
        $freq{$l}++;
    }
}

foreach $l (sort keys %freq) {
    printf "'%s' occured %d times\n", $l, $freq{$l};
}
