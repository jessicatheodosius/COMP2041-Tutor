#!/usr/bin/perl -w

sub nlines {
    my ($n) = @_;
    my $text = "";
    $text .= <> foreach (1..$n);
    return $text;
}

$n = shift @ARGV or die;
print nlines($n);
