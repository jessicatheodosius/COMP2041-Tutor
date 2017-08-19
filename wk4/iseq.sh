#!/bin/sh

numberArgs="$#"
minimum=1
step=1

if [ $numberArgs -eq 1 ]
then
    maximum=$1
elif [ $numberArgs -eq 2 ]
then
    minimum=$1
    maximum=$2
elif [ $numberArgs -eq 3 ]
then
    minimum=$1
    step=`expr $2 - $1`
    maximum=$3
else
    echo "too many arguments"
    exit 1
fi


while [ $minimum -le $maximum ]
do
    echo "$minimum"
    minimum=`expr $minimum + $step`
done
