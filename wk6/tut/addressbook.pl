#!/usr/bin/perl -w

open PHONES, "<phones.txt" or die;

while (<PHONES>) {
    chomp;
    ($username, $type, $number) = split /,/;
    $phones{"$username:$type"} = $number;
}

close PHONES;

open PEOPLE, "<people.txt" or die;

while (<PEOPLE>) {
    chomp;
    ($username, $name, $address, $suburb) = split /,/;
    print "$name\n";
    print "$address, $suburb\n";
    print "Phones: ";

    foreach $type ("mobile", "home", "work") {
        print $phones{"$username:$type"}, "\n" if defined $phones{"$username:$type"};
    }
}
