#!/usr/bin/perl -w

print "@ARGV\n";

$first = shift @ARGV;

print "first args is \"$first\"\n";
print "remaining args are \"@ARGV\"\n";
print "or if we join them \", join(" ", @ARGV). "\"\n";
