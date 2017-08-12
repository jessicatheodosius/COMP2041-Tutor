#!/bin/sh

time=`date | cut -c17-18`
test $time -ge 9 -a $time -le 17
