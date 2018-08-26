#!/usr/bin/perl -w

($n, $m, $file) = @ARGV;

open F, '<', $file or die;

while ($line = <F>) {
    chomp $line;
    @chars = split //, $line;
    $len = @chars;

    if ($len > 0) {
        $begin = $n > $len ? $len : $n;
        $end = $m > $len ? $len : $m;
        print @chars[$begin-1..$end-1];
    }
    print "\n";
}

close F;
