#!/bin/sh 

for f in "$@"
do
    if ! test -r "$f"
    then
        echo "No such file $f"
    else
        while read line
        do
            echo "$line"
        done < $f
    fi
    
done
