#!/usr/bin/perl -w

sub printHash {
    my (%hash) = @_;
    my $n = 0;
    while (($key, $value) = each %hash) {
        printf "[%s] => %s\n", $key, $value;
        $n++;
    }
    return $n;
}

%colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");
$n = printHash(%colours);
print "There are $n items in our colours\n";
