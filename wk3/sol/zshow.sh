#!/bin/sh

for f in "$@"
do
    echo "==== `echo $f | sed 's/\.txt//'` ===="
    cat "$f"
done
