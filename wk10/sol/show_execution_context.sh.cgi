#!/bin/sh
cat <<eof
Content-type: text/html

<html>
<head></head>
<body>
<h2>Execution Environment</h2>
<pre>
eof

for command in pwd id hostname 'uname -a'
do
  echo "$command: `$command`"
done

cat <<eof
</pre>
</body>
</html>
eof
