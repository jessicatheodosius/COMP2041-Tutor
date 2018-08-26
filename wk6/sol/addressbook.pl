#!/usr/bin/perl -w
$people_filename = 'people.txt';
$phones_filename = 'phones.txt';

%phones = ();

open PHONES, '<', $phones_filename or die;
foreach (<PHONES>) {
    chomp;
    ($id, $type, $number) = split /,/;
    $phones{"$id:$type"} = $number;
}
close PHONES;

open PEOPLE, '<', $people_filename or die;
foreach (<PEOPLE>) {
    chomp;
    ($id, $name, $address, $suburb) = split /,/;
    print "$name\n";
    print "$address, $suburb\n";
    print "Phones: ";
    @numbers = ();
    foreach $type ("mobile", "home", "work") {
        $key = "$id:$type";
        if (defined($phones{$key})) {
            push @numbers, "$phones{$key} ($type)";
        }
    }
    print @numbers > 0 ? join(", ", @numbers) : "?", "\n\n";
}
close PEOPLE;
