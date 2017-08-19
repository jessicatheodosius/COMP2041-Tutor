#!/usr/bin/perl -w

if (@ARGV && $ARGV[0] eq "-n") {
    $show_line_number = 1;
    shift @ARGV;
}
