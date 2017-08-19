#!/usr/bin/perl -w

# while ($line = <>) {
#     $line =~ s/[aiueo]//gi;
#     print $line;
# }

while (<>) {
    s/[aiueo]//gi;
    print;
}
