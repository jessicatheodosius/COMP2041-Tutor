#!/usr/local/bin/python3
from collections import Counter
import sys

counters = [Counter(line) for line in sys.stdin]
counter = sum(counters, Counter())
for letter in sorted(counter):
    if letter.isalnum():
        print("'%s' occured %d times" % (letter, counter[letter]))
