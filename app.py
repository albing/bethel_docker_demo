import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World"


@app.route("/error")
def generate_an_error():
    return lower("FOO")


if __name__ == "__main__":
    debug = os.getenv("DEBUG", "True").lower() == "true"
    port = int(os.getenv("PORT", "80"))

    app.run(
        debug=debug,
        port=port,
        host='0.0.0.0',
    )
