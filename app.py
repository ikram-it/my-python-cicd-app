# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    """
    Root endpoint that returns a simple greeting.
    """
    return 'Hello, World! This is a Dockerized Python Flask App with CI/CD!'

@app.route('/health')
def health_check():
    """
    Health check endpoint for container orchestration.
    """
    return 'OK', 200

if __name__ == '__main__':
    # Run the Flask app on all available interfaces (0.0.0.0) and port 5000.
    # This is important for Docker containers to be accessible from outside the container.
    app.run(host='0.0.0.0', port=5000)

