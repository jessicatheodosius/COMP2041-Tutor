#!/usr/bin/perl -w

# get all digits in the line
$line = "123hello456world78";
@numbers = $line =~ /\d+/g;
print "Getting numbers from $line\n";
printf "There are %d elements: %s\n", scalar @numbers, join(',', @numbers);
print "\n";


# greedy and non-greedy regex (talked about it in week 6, want to clarify)
$line = "-A-B-C-D-E-";

# in greedy, it searches for the longest one, so it will return A-B-C-D-E
($greedy) = $line =~ /-(.*)-/;
print "greedy: $greedy\n";

# in non-greedy, it stops once it matches, so it will return A
($non_greedy) = $line =~ /-(.*?)-/;
print "non-greedy: $non_greedy\n";

# if we combine both of them together, the first one won't match with anything
($first, $second) = $line =~ /-(.*?)(.*)-/;
print "combination: first($first) second($second)\n";
print "\n";

# example from week 6 tut
$line = "21/09/17   18    Big Whale    ";

# the second regex needs to be non-greedy so that it does not match the trailing spaces
($date, $species_str) = $line =~ /^(\S+)\s+\d+\s+(.*?)\s+$/;
print "date ($date), species ($species_str)\n";
print "\n";


# join different ways
@arr = (1, 2, 3, 4);
print join('_', @arr), "\n";
print join('_', 5, 6, 7), "\n";
print join('_', (8, 9), 10, 11), "\n";
print "\n";


# upper and lower case
$line = "HeLLo!";
print "Upper case: ", uc $line, "\n";
print "Lower case: ", lc $line, "\n";
print "\n";


# 2D hash
my %students;
$students{"z5057844"}{"name"} = "Jessica";
$students{"z5057844"}{"degree"} = "3707";
$students{"z5057844"}{"graduation"} = "2019";

$students{"z5083765"}{"name"} = "Bella";
$students{"z5083765"}{"start"} = "2016";

# printing details for each student
foreach $zid (sort keys %students) {
    print "-- $zid --\n";
    foreach $attr (sort keys %{$students{$zid}}) {
        print "$attr: $students{$zid}{$attr}\n";
    }
    print "\n";
}
print "\n";


# sorting, note the difference of cmp and <=>
@numbers = (1, 18, 7, 4, 13, 15, 20, 12, 8, 9);
print 'sort @numbers: ', join(',', sort @numbers), "\n";
print 'sort { $a cmp $b } @numbers: ', join(',', sort { $a cmp $b } @numbers), "\n";
print 'sort { $a <=> $b } @numbers: ', join(',', sort { $a <=> $b } @numbers), "\n";
print 'sort { $b <=> $a } @numbers: ', join(',', sort { $b <=> $a } @numbers), "\n";


# multi-line comment
=for comment
example of multi-line comment
example of multi-line comment
example of multi-line comment
example of multi-line comment
=cut
