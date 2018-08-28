#!/usr/bin/perl -w

$total_count = 0;
$prev_species = '';
$prev_date = '';

foreach $line (<STDIN>) {
    next if $line !~ /^(\d{2}\/\d{2}\/\d{2})\s+(\d+)\s+(.*)\s*$/;
    $date = $1;
    $count = $2;
    $species = $3;

    if ($species ne $prev_species || $date ne $prev_date) {
        printf "%s %d %s\n", $prev_date, $total_count, $prev_species if $prev_species;
        $total_count = 0;
        $prev_species = $species;
        $prev_date = $date;
    }

    $total_count += $count;
}
printf "%s %d %s\n", $prev_date, $total_count, $prev_species if $total_count;
