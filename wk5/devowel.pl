#!/usr/bin/perl -w

while (<>) {
    s/[aieuo]//gi;
    print;
}
