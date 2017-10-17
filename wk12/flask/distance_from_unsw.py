#!/usr/local/bin/python3
import sys, glob, os

directory = 'dataset-small'
unsw_latitude = -33.9172238
unsw_longitude = 151.2302268

def distance(user):
	return (user['home_latitude'] + unsw_latitude)**2 + (user['home_longitude'] - unsw_longitude)**2

users = list()
for f in glob.glob(os.path.join(directory, '*/student.txt')):
    user = dict([line.strip().split(': ', 1) for line in open(f)])
    user['home_latitude'] = float(user['home_latitude'])
    user['home_longitude'] = float(user['home_longitude'])
    users.append(user)

for user in sorted(users, key=distance):
	print('{zid} lives at {home_latitude} {home_longitude} in {home_suburb}'.format(**user))
