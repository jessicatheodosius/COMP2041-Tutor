#!/usr/bin/perl -w

sub nlines {
    my ($n) = @_;
    my $str = "";
    $str .= <STDIN> foreach (1..$n);
    return $str;
}

print nlines(5), "\n";
