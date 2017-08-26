#!/usr/bin/perl -w

$string = "hello1234";
($word, $number) = $string =~ /([a-z]+)(\d+)/i;

print "assign to variables\n";
print "word: $word\n";
print "number: $number\n\n";

$word = $1;
$number = $2;

print "using \$1 and \$2\n";
print "word: $word\n";
print "number: $number\n\n";

@arr = $string =~ /([a-z]+)(\d+)/i;
print "using array\n";
print "word: $arr[0]\n";
print "number: $arr[1]\n\n";

($word) = $string =~ /([a-z]+)(\d+)/i;
print "only match the first one\n";
print "word: $word\n\n";

($a, $b, $c, $d)= $string =~ /([a-z]+)(\d+)/i;
print "match more than 2\n";
print "first: $a\n";
print "second: $b\n";
print "third: $c\n";
print "fourth: $d\n";

($a, $b)= $string =~ /(X+)(\s+)/i;
print "regex don't match\n";
print "first: $a\n";
print "second: $b\n";
