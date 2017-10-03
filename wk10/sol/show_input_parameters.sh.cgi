#!/bin/sh

if test "$REQUEST_METHOD" = "GET"
then
    parameters="$QUERY_STRING"
else
    parameters="`cat`"
fi

cat <<eof
Content-type: text/html

<html>
<head></head>
<body>
<h2>$REQUEST_METHOD Request - Input Parameters</h2>
<pre>
$parameters
</pre>
</body>
</html>
eof
