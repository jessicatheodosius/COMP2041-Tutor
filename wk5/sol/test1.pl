#!/usr/bin/perl -w

$x = <STDIN>;
chomp $x;
print "read: $x\n";
$x += 5;
print "add 5: $x\n";
$x .= "abc";
print "concat abc: $x\n";
