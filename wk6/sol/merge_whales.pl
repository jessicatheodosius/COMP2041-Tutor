#!/usr/bin/perl -w

$total = 0;
$last = "";

while ($line = <STDIN>) {
    next if $line !~ /^(\d+)\s*(.+)\s*$/;
    $count = $1;
    $species = $2;

    if ($species ne $last) {
        print "$total $last\n" if $last;
        $total = 0;
        $last = $species;
    }

    $total += $count;
}

print "$total $last\n" if $last;
