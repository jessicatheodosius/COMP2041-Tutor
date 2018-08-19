#!/usr/bin/perl -w

# # scalar, array, hash
# $scalar = "scalar";
# @arr = (1, 2, 3);
# %h = ("a" => 1, "b" => 2);
#
# print "$scalar\n";
# print "@arr\n";
# print "a => $h{'a'}\n";

# # read
# $line = <STDIN>;
# print "original: $line\n";
# chomp $line;
# print "with chomp: $line\n";

# # print stream
# print STDERR "there is an error! run!!!\n"

# # control flow and comparison (>)
# $a = <>;
# chomp $a;
# if ($a > 20) {
#     print "$a greater than 20\n";
# } else {
#     print "$a is not greater than 20\n";
# }

# # control flow and comparison (gt)
# $a = <>;
# chomp $a;
# if ($a gt 20) {
#     print "$a is greater than 20\n";
# } else {
#     print "$a is not greater than 20\n";
# }

# # append
# $a = <STDIN>;
# chomp $a;
# $b = <STDIN>;
# chomp $b;
# print $a.$b, "\n";

# # open and close file
# $filename = <STDIN>;
# chomp $filename;
# open FILE, '<', $filename or die;
# foreach $line (<FILE>) {
#     # depends on what you want
#     chomp $line;
#     print "$line\n";
# }

# # external command
# $var = `date`;
# print "date is $var";

# # special var
# while (<STDIN>) {
#     print "$_";
# }

# # arguments
# $i = 1;
# foreach (@ARGV) {
#     print "argument $i is $_\n";
#     $i += 1;
# }

# # name of perl script
# print "$0\n";

# # line number
# while ($line = <STDIN>) {
#     chomp $line;
#     print "line $.: $line\n";
# }

# # regex
# $line = "hello world, how are you?";
# $line =~ s/o/0/g; # replace o with 0
# print "$line\n";
#
# $var = "123";
# if ($var =~ /^\d+/) {
#     print "$var is a number\n";
# } else {
#     print "$var is not a number\n";
# }
