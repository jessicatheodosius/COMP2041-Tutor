#!/bin/sh

for file in *.html
do
    # note use of -i to ignore case and -w to ignore white space
    # however tags containing newlines won't be detected
    # why dev/null?
    # use -q instead
    # LAB HINT for checking a thing is integer
    if egrep -i '</?blink>' $file >/dev/null
    then
        echo  "Removing $file because it uses the <blink> tag"
        rm "$file"
    fi
done
