#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull lovishh/ec2-test-repo:latest

# Run the Docker image as a container
docker run -d -p 6000:6000 lovishh/ec2-test-repo:latest
