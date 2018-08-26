#!/usr/bin/perl -w
$people_filename = 'people.txt';
$phones_filename = 'phones.txt';

open PHONES, '<', $phones_filename or die;
foreach (<PHONES>) {
}
close PHONES;

open PEOPLE, '<', $people_filename or die;
foreach (<PEOPLE>) {
}
close PEOPLE;
