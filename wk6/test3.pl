#!/usr/bin/perl -w

$a[3] = "four";
print "==only initialise 4th element==\n@a\n\n";

$a[0] = "one";
$a[1] = "two";
$a[2] = "three";

print "==print array with quotes==\n@a\n\n";
print "==print array without quotes==\n", @a, "\n\n";

@b = ("zero", "one", "two", "three");
print "==using array literals==\n@b\n\n";

print "== printing the first two==\n@b[0..1]\n\n";

print "==printing the first and third element==\n@b[0,2]\n\n";

push @b, "four";
print "==pushing four==\n@b\n\n";

push @b, ("five", "six");
print "==pushing five and six==\n@b\n\n";

$x = pop @b;
print "==pop==\npopped: $x, remaining: @b\n\n";

$string = "1,2,3,4,5";
@c = split(/,/, $string);
print "==split from string==\n@c\n\n";
