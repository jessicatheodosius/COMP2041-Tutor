#!/usr/bin/perl -w

sub fn {
    ($x) = @_;
}

$x = 3;
fn(5);
print "x is $x\n";

# sub otherFn {
#     my ($y) = @_;
# }

# $y = 6;
# otherFn(10);
# print "y is $y\n";
