#!/usr/local/bin/python3

import sys

# why 3? in python, the program itself is first argv
if len(sys.argv) != 3:
    print('2 arguments pls')
    exit(1)

for i in range(int(sys.argv[1])):
    print(sys.argv[2])
