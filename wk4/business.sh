#!/bin/sh

current_time=`date | cut -c17-18`

test $current_time -ge 10  -a $current_time -lt 17
