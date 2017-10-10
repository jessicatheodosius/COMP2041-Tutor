#!/usr/local/bin/python3

# f = open('read_file.py', 'r')
# f.close()

# calculate blablabla
def a():
    # some complicated algos comments
    return x + 5
    pass

with open('read_file.py', 'r') as f:
    lines = f.readlines()
    print(''.join(lines))

# f.readlines()
