#!/usr/bin/perl -w

%phones = ();
open(PHONES, "<phones.txt") or die;
while(<PHONES>) {
    chomp;
    ($id, $type, $number) = split ',';
    $phones{"$id:$type"} = $number;
}
close PHONES;

open(PEOPLE, "<people.txt") or die;
while(<PEOPLE>) {
    chomp;
    ($id, $name, $address, $suburb) = split ',';
    print "$name\n$address, $suburb\nPhones: ";
    @numbers = ();

    foreach $type (("mobile", "home", "work")) {
        push @numbers, $phones{"$id:$type"}." ($type)"
            if defined $phones{"$id:$type"};
    }
    print @numbers > 0 ? join(", ", @numbers) : "?", "\n\n";
}
close PHONES;
