from flask import Flask
from flask_cors import CORS

ytd = Flask(__name__)

CORS(ytd, resources = { r'/*': { 'origins': '*'}})

@ytd.route('/', methods=['GET'])
def home():
    return 'hello there!'

@ytd.route('/health', methods=['GET'])
def check():
    return 'online'

if __name__ == '__main__':
    ytd.run()

