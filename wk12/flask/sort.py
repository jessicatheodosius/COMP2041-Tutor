#!/usr/local/bin/python3

s = dict()
s['a'] = 10
s['b'] = 3
s['c'] = 17
s['d'] = 0

letters = sorted(s, key=s.get)

print(letters)
