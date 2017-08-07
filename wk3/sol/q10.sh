#!/bin/sh

LIMIT=50

for f in *
do
    if test -d "$f"
    then
        continue
    fi

    count=`wc -c < "$f"`
    if [ $count -gt $LIMIT ]
    then    
        echo "$f"
    fi
done
