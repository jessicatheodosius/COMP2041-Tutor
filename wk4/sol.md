## COMP2041 Week 4 Tutorial

`hashbang`

### Question 1

Shell script is executed by a separate shell so it does not affect its parent shell.
Do `. ./cd_up.sh` instead.

### Question 2

```
for f in "$@"
do
    sed -i '' 's/COMP2041/COMP2041/g;s/COMP9041/COMP9041/g' "$f"
done
```

### Question 3

```
for f in "$@"
do
    if [ -d "$f" ]
    then
        ./update_course_code.sh "$f"/x
    else
        sed -i '' 's/COMP2041/COMP2041/g;s/COMP9041/COMP9041/g' "$f"
    fi
done
```

### Question 4

```
time=`date | cut -c17-18`

if [ $time -ge 9 -a $time -lt 17 ]
then
    exit 0
else
    exit 1
fi
```

```
time=`date | cut -c17-18`
test $time -ge 9 -a $time -lt 17
```

### Question 5

```
egrep -v ':' aliases | sed 's/^ *//'
```

### Question 6

```
acc jessicat | tr -s ' ' '\n' | egrep '[A-Z]{4}[0-9]{4}_Student' | cut  -d'_' -f1
```

try `grep` first, then just realise grep does not support quantifier

### Question 7

### Question 8

`~` is escaped in double quotes. does not handle spaces in filenames correctly.

```
for image_file in ~/friends/*
do
    ln -s "$image_file" .
done
```

### Question 9

```
start=1
step=1

if [ $# -eq 1 ]
then
    stop=$1
elif [ $# -eq 2 ]
then
    start=$1
    stop=$2
elif [ $# -eq 3 ]
    start=$1
    step=`expr $2 - $1`
    stop=$3
fi

while [ $start -le $stop ]
do
    echo "$start"
    start=`expr $start + $step`
done
```

### Question 10

```
for i in `seq 2 $(($1 - 1))`
do
    if [ `expr $1 % $i` -eq 0 ]
    then
        echo "$1 is not prime"
        exit 1
    fi
done

echo "$1 is prime"
```

### Question 11

```
egrep "^#include" "$@" | sed 's/[">][^">]*$//' | sed 's/^.*["<]//' | sort | uniq
```

### Question 12

`IFS` indicate argument separator, so the script will print "mountainside"
