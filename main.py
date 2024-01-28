from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Abdulkadir Kara nın devsecops ödevi'

if __name__ == '__main__':
    app.run(debug=True)
