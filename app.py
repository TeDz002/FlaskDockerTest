from flask import Flask

app = Flask(__name__)

@app.route("/")
@app.route("/index")
def home():
    return ("Hello world!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5013, debug=True)