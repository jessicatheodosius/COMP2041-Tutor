## COMP2041 Week 8 Tutorial

- python `example.py`, `read_file.py`
- talk about non greedy search in perl `greedy.pl`
- https://perlmaven.com/sorting-arrays-in-perl
- https://perlmaven.com/qw-quote-word
- https://perlmaven.com/here-documents
- talk about comments

### Question 1

```
%count_tags = ();

$webpage = `wget -q -O- $ARGV[0]`;
$webpage = lc $webpage;
@tags = $webpage =~ /<(\w+).*>/g;
foreach $tag (@tags) {
    $count_tags{$tag}++;
}

foreach $tag (sort { $count_tags{$a} <=> $count_tags{$b} } keys %count_tags) {
    print "$tag $count_tags{$tag}\n";
}
```


### Question 2

```
(sort { $count_tags{$a} <=> $count_tags{$b} } keys %count_tags)
```

### Question 3

```
sub nlines {
    my ($n) = @_;
    my $text = "";
    $text .= <> foreach (1..$n);
    return $text;
}

$n = shift @ARGV or die;
print nlines($n);
```

### Question 4

```
$fn = shift @ARGV;

foreach $f (glob '*.c') {
	open F, "<$f";
	while ($line = <F>) {
		if ($line =~ /^\s.*\b$fn\s*\(.*?\)/) {
			printf "%s:%d function %s used\n", $f, $., $fn;
		} else if ($line =~ /^\S.*\b$fn\s*\(.*?\);/) {
			printf "%s:%d function %s declared\n", $f, $., $fn;
		} else if ($line =~ /^\S.*\b$fn\s*\(.*?\)\s*{/) {
			printf "%s:%d function %s defined\n", $f, $., $fn;
		}
	}
	close F;
}

```

### Question 6

```
sub include {
	my ($f) = @_;
    open (my $F, "<$f") or die;

	while (my $line = <$F>) {
		if ($line =~ /^#include "(.*)"$/) {
			include($1);
		} else {
			print $line;
		}
	}
}

include ($ARGV[0]);
```

### Question 8

```
($n, $m, $width) = @ARGV;

$format = "%${width}d";

foreach $x (1..$n) {
    printf $format, $x;
    foreach $y (1..$m) {
        printf $format, $x*$y;
    }
    print "\n";
}
```

### Question 14

- subtracts 3 from each element in `@a`, returns list that satisfy `$_ > 0`
