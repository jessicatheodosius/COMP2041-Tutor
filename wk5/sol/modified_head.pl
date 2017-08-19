#!/usr/bin/perl -w

$n = 10;

if (@ARGV && $ARGV[0] =~ /-[0-9]+/) {
    $n = shift @ARGV;
    $n =~ s/-//;
}

# specify to get the input from STDIN
$ARGV[0] = "-" if @ARGV == 0;
foreach $file (@ARGV) {
    open(INPUT, "<$file") or die("$file: cannot be opened: $!\n");
    print "==> $file <==\n";
    $i = 0;
    while(<INPUT>) {
        last if ($i++ == $n);
        print;
    }
    close INPUT;
}
