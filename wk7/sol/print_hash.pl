#!/usr/bin/perl -w

sub printHash {
    my (%h) = @_;
    my $n = 0;
    foreach $key (sort (keys %h)) {
        printf "[%s] => %s\n", $key, $h{$key};
        $n++;
    }
    return $n;
}

%colours = ("John"=>"blue", "Anne"=>"red", "Andrew"=>"green");
$n = printHash(%colours);
print "There are $n items\n";
