from flask import Flask
import db

app = Flask(__name__)

@app.route("/", methods = ['POST', 'GET'])
def hello_world():
    return "Hello, World!"

@app.route("/showtable", methods = ['POST', 'GET'])
def sT():
    return db.showTable()

if __name__ == '__main__':
    app.run()