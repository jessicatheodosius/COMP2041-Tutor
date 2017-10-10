#!/usr/bin/perl -w

use CGI qw/:all/;
use CGI::Carp qw(fatalsToBrowser warningsToBrowser);

print <<eof;
Content-Type: text/html

<!DOCTYPE html>
<html lang="en">
<head>
    <title>What is this?</title>
</head>
<body>
eof

warningsToBrowser(1);

print "<!-- ".join(",", map({"$_='".param($_)."'"} param()))."-->\n";

print <<eof;
</body>
</html>
eof
