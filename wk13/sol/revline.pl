#!/usr/bin/perl -w

while ($line = <STDIN>) {
    chomp $line;
    @words = reverse split ' ', $line;
    print "@words\n";
}
