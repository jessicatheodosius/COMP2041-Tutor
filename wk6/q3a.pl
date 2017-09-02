#!/usr/bin/perl -w

$x = 'x';
for ($i = 1; $i <= 3; $i++) {
    $x = "($x)";
    print "current \$x is $x\n";
}
print "$x\n";
