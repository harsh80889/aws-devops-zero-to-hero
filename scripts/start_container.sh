#!/bin/bash
set -e

# Pull the Docker image from Dockers Hub
docker pull harshf5/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 harshf5/simple-python-flask-app:latest






