#!/bin/sh
while read stid mark extras
do
    case "$mark" in
    [0-9]*) ;;
    *)      echo "$stid ?? ($mark)"
            continue
            ;;
    esac
   
    if test $mark -lt 50
    then
        echo $stid FL
    elif test $mark -lt 65
    then
        echo $stid PS
    elif test $mark -lt 75
    then
        echo $stid CR
    elif test $mark -lt 85
    then
         echo $stid DN
    elif test $mark -le 100
    then
        echo $stid HD
    else
        echo "$stid ?? ($mark)"
    fi
done

