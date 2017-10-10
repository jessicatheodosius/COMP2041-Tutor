#!/usr/bin/perl -w

sub fn {
    ($x) = @_;
}

sub otherFn {
    my ($y) = @_;
}

$x = 3;
fn(5);
print($x, "\n");

$y = 6;
otherFn(10);
print($y, "\n");
