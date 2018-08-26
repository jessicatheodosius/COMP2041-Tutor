#!/usr/bin/perl -w
$total = 0;

for $file (glob '*.{pl,txt}') {
    open F, '<', $file or die;
    @lines = <F>;
    $nlines = @lines;
    $total += $nlines;

    printf "%8d %s\n", $nlines, $file;
    close F;
}

printf "%8d total\n", $total;
