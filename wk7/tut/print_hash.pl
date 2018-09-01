#!/usr/bin/perl -w
sub printHash {

}

%colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");
$n = printHash(%colours);
print "There are $n items in our colours\n";
