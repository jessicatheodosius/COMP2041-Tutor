#!/usr/bin/perl -w

use CGI qw/:all/;
use CGI::Carp qw(fatalsToBrowser warningsToBrowser);

print <<eof;
Content-Type: text/html

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sum Two Numbers</title>
</head>
<body>
eof

warningsToBrowser(1);

$x = param('x');
$y = param('y');

if (defined $x && defined $y) {
    $sum = $x + $y;
} else {
    $sum = '?';
}

print <<eof;
    <form method="GET">
    <input type="text" name="x" value=$x>
    +
    <input type="text" name="y" value=$y>
    =
    $sum
    <input type="submit" value="Calculate">
</body>
</html>
eof
