#!/usr/bin/perl -w

foreach $url (@ARGV) {
    # read output of wget command
    open INPUT, "wget -q -O- $url|" or die;

    while ($line = <INPUT>) {
        @numbers = split /[^\d\- ]/, $line;
        foreach $num (@numbers) {
            $num =~ s/\D//g;
            print "$num\n" if length $num >= 8 && length $num <= 15;
        }
    }

    close INPUT;
}
