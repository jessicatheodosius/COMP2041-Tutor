#!/bin/sh

for f in `find "$@" -type f`
do
    sed -i '' 's/COMP2041/COMP2041/g;s/COMP9041/COMP9041/g' "$f"
done
