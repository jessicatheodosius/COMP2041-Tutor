#!/bin/sh

for f in "$@"
do
    sed 's/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g' "$f" > "$f"
    # you get an empty file because the shell opens (and truncates) the file before running the command.

    # do an in place, '' is backup file
    sed -i '' 's/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g' "$f"

    # use grouping
    sed -i '' -E 's/COMP(2|9)041/COMP\1042/g' "$f"
done
