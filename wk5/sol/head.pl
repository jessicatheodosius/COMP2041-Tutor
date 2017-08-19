#!/usr/bin/perl -w

$n = 10;

if (@ARGV && $ARGV[0] =~ /-[0-9]+/) {
    $n = shift @ARGV;
    $n =~ s/-//;
}

$i = 1;
while (<STDIN>) {
    last if ($i++ == $n);
    print;
}

@lines = <STDIN>;
$n = @lines if $n > @lines;
print @lines[0..$n-1];
