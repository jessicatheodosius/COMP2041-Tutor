#!/usr/bin/perl -w

$prev_total = 0;
$prev_species = "";

while ($line = <STDIN>) {
    next if $line !~ /(\d+) (.+)/;
    $count = $1;
    $species = $2;
    
    if ($species eq $prev_species) {
        $prev_total += $count;
    } else { 
        print "$prev_total $prev_species\n" if $prev_species;
        $prev_total = $count;
        $prev_species = $species;
    }

}

print "$prev_total $prev_species\n" if $prev_species;
