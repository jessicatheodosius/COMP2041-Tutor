#!/bin/sh

if [ $# -eq 0 ]
then
    echo "error m8"
    exit 1
fi

num=0
from=1
step=1

if [ $# -eq 1 ]
then
    num=$1
elif [ $# -eq 2 ]
then
    from=$1
    num=$2
else
    from=$1
    step=`expr $2 - $1`
    num=$3
fi

while [ $from -le $num ]
do
    echo "$from"
    from=`expr $from + $step`
done








