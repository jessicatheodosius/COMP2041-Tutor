#!/bin/sh

if test "$REQUEST_METHOD" = "GET"
then
	data="$QUERY_STRING"
else
	data=`cat`
fi

sum='?'
x=`echo $data | cut -d'&' -f1 | cut -d'=' -f2`
y=`echo $data | cut -d'&' -f2 | cut -d'=' -f2`
test "$x" -a "$y" && sum=`expr $x + $y`

cat <<eof
Content-Type: text/html

<html>
<head>
<title>Sum Two Numbers</title>
</head>
<body>
<form method="GET">
<input type="text" name="x" value=$x>
<input type="text" name="y" value=$y>
= $sum
<input type="submit" value="Calculate">
</body>
</html>
eof
