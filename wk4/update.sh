#!/bin/sh

for f in "$@"
do
    if [ -d "$f" ]
    then
        ./update.sh "$f"/*
    else
        sed -i '' 's/COMP2042/COMP2041/g;s/COMP9042/COMP9041/g' "$f""    
    fi
done
