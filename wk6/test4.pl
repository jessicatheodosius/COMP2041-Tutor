#!/usr/bin/perl -w

%students = ("5057844" => "Jessica");

$students{"5083765"} = "Bella";

print "==order is not guaranteed==\n";
foreach $key (keys %students) {
    print "z$key - $students{$key}\n";
}

print "\n==only printing names==\n";
foreach $val (values %students) {
    print "$val\n";
}

print "\n==only printing names with array==\n";
@names = values %students;
foreach $val (@names) {
    print "$val\n";
}

print "\n==using each==\n";
while (($key, $val) = each %students) {
    print "z$key - $val\n";
}
