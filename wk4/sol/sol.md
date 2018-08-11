## COMP2041 Week 4 Tutorial

### Question 1

Shell scripts are run inside a subshell, and each subshell has its own concept of what the current directory is.
Do `. ./cd_up.sh` instead.

### Question 2

```
for f in "$@"
do
    sed 's/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g' "$f" > "$f"
    # you get an empty file because the shell opens (and truncates) the file before running the command.

    # do an in place, '' is backup file
    sed -i '' 's/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g' "$f"

    # use grouping
    sed -i '' -E 's/COMP(2|9)041/COMP\1042/g' "$f"
done

```

### Question 3

```
for f in "$@"
do
    if [ -d "$f" ]
    then
        sh update_course_code_extended.sh "$f"/*
    else
        sed -i '' -E 's/COMP(2|9)041/COMP\1042/g' "$f"
    fi
done
```

### Question 4

```
time=`date | cut -c12-13`

if [ "$time" -ge 9 -a "$time" -lt 17 ]
then
    exit 0
else
    exit 1
fi

[ "$time" -ge 9 -a "$time" -lt 17 ]

test "$time" -ge 9 -a "$time" -lt 17
```

### Question 5

```
egrep -v ':' aliases | sed 's/^ *//'
```

### Question 6

```
tr -s ', ' '\n' < jessicat | egrep '[A-Z]{4}[0-9]{4}_Student' | egrep -o '[A-Z]{4}[0-9]{4}'
```

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
number=$1

for i in `seq 2 $(($number - 1))`
do
    if [ $(($number % $i)) -eq 0 -a $number -gt 2 ]
    then
        echo "$number is not a prime"
        exit 1
    fi
done

echo "$number is a prime"
```

### Question 12

`IFS` indicate argument separator, so the script will print "mountainside"

### If There is Spare Time

- talk a bit about expression `expr.sh`
- 
