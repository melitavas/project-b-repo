from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from Project B! CI/CD pipeline works! 🚀"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))  # Read PORT from environment
    app.run(host="0.0.0.0", port=port)