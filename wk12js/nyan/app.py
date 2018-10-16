#!/usr/local/bin/env python3.5
from flask import Flask, request
from flask_cors import CORS
from flask_restplus import Resource, Api, fields

app = Flask(__name__)
CORS(app)
api = Api(app, version='1.0', title='Test', description='Some random data')
cats = []

@api.route('/cats')
class Cats(Resource):
    @api.response(200, 'Success')
    @api.doc(description='Retrieve all cats')
    def get(self):
        return cats, 200

    @api.response(201, 'Created')
    @api.expect(api.model('Cat', {'name': fields.String, 'url': fields.String,
        'description': fields.String}), validate=True)
    def post(self):
        payload = request.json
        _id = len(cats)
        cat = {
            'name': payload['name'],
            'description': payload['description'],
            'url': payload['url'],
            '_id': _id
        }
        cats.append(cat)
        return cat, 201


@api.route('/cats/<int:cat_id>')
class Cat(Resource):
    @api.response(200, 'Success')
    @api.response(404, 'Not Found')
    @api.doc(description='Retrieve a cat based on its id')
    def get(self, cat_id):
        filtered = list(filter(lambda c: c['_id'] == cat_id, cats))
        if len(filtered):
            return filtered[0]
        else:
            api.abort(404, 'cat_id {} not found'.format(cat_id))


if __name__ == '__main__':
    # run the application
    app.run(debug=True)
