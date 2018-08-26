## COMP2041 Week 6 Tutorial

- show echon.pl, test1.pl, test2.pl, test3.pl, test4.pl

### Question 1

```perl
$total_count = 0;
$prev_species = '';

foreach $line (<STDIN>) {
    next if $line !~ /^(\d+)\s+(.*)\s*$/;
    $count = $1;
    $species = $2;

    if ($species ne $prev_species) {
        printf "%d %s\n", $total_count, $prev_species if $prev_species;
        $total_count = 0;
        $prev_species = $species;
    }

    $total_count += $count;
}

printf "%d %s\n", $total_count, $prev_species if $prev_species;
```

### Question 2

- if the filename ends with a '|' , the filename is interpreted as a command that pipes output to us
- run `python3 q2.py`
- `./phone_numbers.pl localhost:5000`

```perl
foreach $url (@ARGV) {
    # read output of wget command
    open INPUT, "wget -q -O- $url|" or die;

    while ($line = <INPUT>) {
        @numbers = split /[^\d\- ]/, $line;
        foreach $num (@numbers) {
            $num =~ s/\D//g;
            print "$num\n" if length $num >= 8 && length $num <= 15;
        }
    }

    close INPUT;
}
```

### Question 3

a. (((x)))
b. hell
c. 11 12 13 (note that 10..20 is inclusive)
d. 1 1 2 3 3 4 5 5

### Question 4

- glob returns a list of files matching the pattern

```perl
$total = 0;

for $file (glob '*.{pl,txt}') {
    open F, '<', $file or die;
    @lines = <F>;
    $nlines = @lines;
    $total += $nlines;

    printf "%8d %s\n", $nlines, $file;
    close F;
}

printf "%8d total\n", $total;
```

### Question 5

```perl
($n, $m, $file) = @ARGV;

open F, '<', $file or die;

while ($line = <F>) {
    chomp $line;
    @chars = split //, $line;
    $len = @chars;

    if ($len > 0) {
        $begin = $n > $len ? $len : $n;
        $end = $m > $len ? $len : $m;
        print @chars[$begin-1..$end-1];
    }
    print "\n";
}

close F;

```

`./cut.pl 1 8 cut.pl`

`cut -c1-8 cut.pl`

### Question 6

```
while (<>) {
    chomp;
    ($sid, $mark) = split;

    if ($mark !~ /^\d+$/) {
        $grade = "??";
    } else {
        if ($mark > 100 || $mark < 0) {
            $grade = "??";
        } elsif ($mark >= 50) {
            $grade = "PS";
        } else {
            $grade = "FL";
        }
    }

    print "$sid $grade";
    print " ($mark)" if $grade eq "??";
    print "\n";
}
```

### Question 7

```perl
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
```
