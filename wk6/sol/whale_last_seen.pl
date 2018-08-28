#!/usr/bin/perl -w

%last_seen = ();

foreach $line (<STDIN>) {
    next if $line !~ /^(\d{2}\/\d{2}\/\d{2})\s+\d+\s+(.*)\s*$/;
    $date = $1;
    $species = $2;
    $last_seen{$species} = $date;
}

foreach $species (sort keys %last_seen) {
        print "$species $last_seen{$species}\n";
}
