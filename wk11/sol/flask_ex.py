#!/usr/bin/python3

import os, random, re
from flask import Flask, request, render_template

app = Flask(__name__)

# display initial page

@app.route('/', methods=['GET','POST'])
def index():
    if request.method == 'POST':
        x = int(request.form['x'])
        y = int(request.form['y'])
        s = x + y
        return render_template('index.html', x=x, y=y, sum=s)

    return render_template('index.html', sum='?')

# start flask as webserver
if __name__ == '__main__':
	app.secret_key = os.urandom(12)
	app.run(debug=True)
