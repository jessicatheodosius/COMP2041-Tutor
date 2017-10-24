#!/usr/local/bin/python3
import sys

for line in sys.stdin:
    words = line.split()
    words.reverse()
    print(' '.join(words))
