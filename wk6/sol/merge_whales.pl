#!/usr/bin/perl -w

$total_count = 0;
$prev_species = '';

foreach $line (<STDIN>) {
    next if $line !~ /^(\d+)\s+(.*)\s*$/;
    $count = $1;
    $species = $2;

    if ($species ne $prev_species) {
        printf "%d %s\n", $total_count, $prev_species if $prev_species;
        $total_count = 0;
        $prev_species = $species;
    }

    $total_count += $count;
}

printf "%d %s\n", $total_count, $prev_species if $prev_species;
