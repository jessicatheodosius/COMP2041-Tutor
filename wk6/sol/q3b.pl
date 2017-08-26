#!/usr/bin/perl -w

@hi = split //,"hello";
for ($i = 0; $i < 4; $i++) {
    print $hi[$i];
}
print "\n";
