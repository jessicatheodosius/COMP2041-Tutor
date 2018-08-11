#!/bin/sh

number=$1

for i in `seq 2 $(($number - 1))`
do
    if [ $(($number % $i)) -eq 0 -a $number -gt 2 ]
    then
        echo "$number is not a prime"
        exit 1
    fi
done

echo "$number is a prime"
