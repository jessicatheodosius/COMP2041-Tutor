#!/usr/bin/perl -w

sub lunh_checksum {
    my ($number) = @_;
    my $checksum = 0;
    my $index = 0;
    foreach my $digit (reverse(split //, $number)){
        my $multiplier = 1 + $index % 2;
        my $d = $digit * $multiplier;
        $d -= 9 if $d > 9;
        $checksum += $d;
        $index++;
    }
    return $checksum;
}

sub validate {
    my ($credit_card) = @_;
    $number = $credit_card;
    $number =~ s/\D//g;

    if (length $number != 16) {
        return $credit_card." is invalid - does not contain exactly 16 digits";
    } elsif (lunh_checksum($number) % 10 == 0) {
        return $credit_card." is valid"
    } else {
        return $credit_card." is invalid"
    }
}

foreach $arg (@ARGV) {
    print(validate($arg), "\n");
}
