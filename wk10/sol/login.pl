#!/usr/bin/perl -w

print "username: ";
$username = <STDIN>;
chomp $username;
print "password: ";
$password = <STDIN>;
chomp $password;

if (open F, "<users/$username.password") {
    $correct_password = <F>;
    chomp $correct_password;
    if ($password eq $correct_password) {
        print "You are authenticated.\n";
    } else {
        print "Incorrect password.\n";
    }
} else {
    print "Unknown username!\n";
}
