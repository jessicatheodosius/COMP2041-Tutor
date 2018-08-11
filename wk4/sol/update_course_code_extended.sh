#!/bin/sh

for f in "$@"
do
    if [ -d "$f" ]
    then
        sh update_course_code_extended.sh "$f"/*
    else
        sed -i '' -E 's/COMP(2|9)041/COMP\1042/g' "$f"
    fi
done
