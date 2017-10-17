#!/usr/local/bin/python3
import sqlite3
from User import User


def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

con = sqlite3.connect("system.db")
con.row_factory = dict_factory
cur = con.cursor()
cur.execute("SELECT * FROM users")

users_dict = cur.fetchall()
users = [User(**d) for d in users_dict]

for user in users:
    print('My name is %s, zid %s' % (user.name, user.zid))
