#!/bin/sh

number=$1

for i in `seq 2 $(( $number - 1 ))`
do
    if [ `expr $number % $i` -eq 0 ]
    then
        echo "$number is not prime"
        exit 1
    fi
done

echo "$number is prime"
