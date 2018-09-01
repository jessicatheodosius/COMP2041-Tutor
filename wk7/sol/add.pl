#!/usr/bin/perl -w

sub add {
    $x = $_[0];
    $y = $_[1];
    return $x + $y;
}

print "add(5, 7) = ", add(5, 7), "\n";


sub anotherAdd {
    my ($x, $y) = @_;
    # no explicit return
    $x + $y;
}

print "anotherAdd(2, 3) = ", anotherAdd(2, 3), "\n";
