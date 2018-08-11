#!/bin/sh

time=`date | cut -c12-13`

if [ "$time" -ge 9 -a "$time" -lt 17 ]
then
    exit 0
else
    exit 1
fi

[ "$time" -ge 9 -a "$time" -lt 17 ]

test "$time" -ge 9 -a "$time" -lt 17
