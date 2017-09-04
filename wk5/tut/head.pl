#!/usr/bin/perl -w

$n = 10;
if (@ARGV && $ARGV[0] =~ /^-[0-9]+$/) {
    $n = shift @ARGV;
    $n =~ s/-//;
}

@ARGV = ("-") if (!@ARGV);

foreach $file(@ARGV) {
    open(INPUT, "<$file") or die("$file: cannot open this, $!");
    print "==> $file <==\n";
    @lines = <INPUT>;
    $n = @lines if $n > @lines;
    print @lines[0..$n-1];
    close INPUT;
}

