# Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# Create a requirements.txt if you have dependencies beyond Flask.
# For this example, we'll assume Flask is the only one, or it's installed directly.
# If you had more dependencies, you'd create a requirements.txt file:
# Flask==2.0.1
# then uncomment the following line:
# RUN pip install --no-cache-dir -r requirements.txt

# Install Flask directly for this simple example
RUN pip install Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]

