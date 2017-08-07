#!/bin/sh

while read zid name init
do
    mark=`grep $zid Marks | cut -d' ' -f2`
    echo "$mark $name $init"
done
