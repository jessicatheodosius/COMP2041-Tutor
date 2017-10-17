#!/usr/local/bin/python3

fields = [['name', 'Jessica'], ['age', 19], ['zid', 'z5057844']]
user = dict(fields)

print('Dictionary:')
print(user)

print('My name is %s. Age %d. zid %s' % (user['name'], user['age'], user['zid']))


print('\nFormatting:')
print('My name is {name}. I am {age} years old. My zid is {zid}.'.format(**user))

print('\nAnother formatting:')
print('My name is {}. I am {} years old. My zid is {}.'.format('Jessica', 19, 'z5057844'))

print('\nAnother formatting again:')
print('My name is {0}. I am {2} years old. My zid is {1}.'.format('Jessica', 'z5057844', 19))
