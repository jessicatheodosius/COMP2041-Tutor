#!/usr/bin/perl -w

$total = 0;
# or *.[ch] for the question
foreach $f (glob '*.{pl,txt}') {
	open F, "<$f" or die;
	@arr = <F>;
	printf "%7d %s\n", scalar @arr, $f;
    $total += @arr;
    close F;
}

printf "%7d total\n", $total;
