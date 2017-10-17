#!/usr/local/bin/python3


class User:
    def __init__(self, name, zid):
        self.name = name
        self.zid = zid

    def get_posts(self):
        return []

    @classmethod
    def get_all(cls):
        return [cls('Shiyun', 'z1234')]

if __name__ == '__main__':
    user_dict = dict(name='Jessica', zid='z5057844')
    jess = User(**user_dict)

    users = User.get_all()
    for user in users:
        print('My name is %s, zid %s' % (user.name, user.zid))
