#!/usr/bin/python3

# This script allows game.py to also be run as a CGI script


from wsgiref.handlers import CGIHandler
from flask_ex import app
app.secret_key = 'correct horse battery staple'
CGIHandler().run(app)
