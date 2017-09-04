#!/bin/sh


for f in "$@"
do
    if [ -f "$f" ]
    then
        echo "===== `echo "$f" | sed 's/\.txt//'` ====="
        while read line
        do
            echo "$line"
        done < "$f"
    else
        echo "soz can't read $f"
    fi
done

