#!/bin/sh
cat <<eof
Content-type: text/html

<html>
<head></head>
<body>
<h2>Environment Environment</h2>
<pre>
`env`
</pre>
</body>
</html>
eof
