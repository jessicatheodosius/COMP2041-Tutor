#!/usr/bin/perl -w

sub printHash {
    my (%myHash) = @_;
    my $i = 0;

    foreach $key (sort keys %myHash) {
        printf "[%s] => [%s]\n", $key, $myHash{$key};
        $i++;
    }

    return $i;
}

%colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");

$a = printHash(%colours);
print "$a\n";
