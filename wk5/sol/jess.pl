#!/usr/bin/perl -w

foreach $file (@ARGV) {
    open my $input, "<$file" or die "can't open $file";
    print reverse <$input>;
    close $input;
}
