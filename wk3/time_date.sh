#!/bin/sh

current_month=`date | cut -c8-10`

while test $current_month = `date| cut -c8-10`
do
    date
    sleep 3
done
