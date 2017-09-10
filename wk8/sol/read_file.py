#!/usr/local/bin/python3

# f = open('read_file.py', 'r')
# f.close()

with open('read_file.py', 'r') as f:
    lines = f.readlines()
    print(''.join(lines))

# f.readlines()
