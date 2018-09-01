#!/usr/bin/env python3
import sys
import re
from collections import defaultdict

freq = defaultdict(int)
lines = sys.stdin.readlines()
s = ''.join(lines).lower()

for word in re.split(r'\W+', s):
    freq[word] += 1

for word in sorted(freq, key=freq.get):
    print('{} {}'.format(freq[word], word))
