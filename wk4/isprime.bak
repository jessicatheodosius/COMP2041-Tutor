#!/bin/sh

for i in `seq 2 $(($1 - 1))`
do
    if [ `expr $1 % $i` -eq 0 ]
    then
        echo "$1 is not prime"
        exit 1
    fi
done

echo "$1 is prime"
