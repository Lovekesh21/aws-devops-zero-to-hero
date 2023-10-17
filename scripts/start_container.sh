#!/bin/bash
set -e

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    
    # Install Docker (Assuming you are using a Debian-based system)
    sudo apt-get update
    sudo apt-get install -y docker.io

    # Add the user to the docker group (optional)
    sudo usermod -aG docker $USER
    
    echo "Docker installation complete."
fi

# Pull the Docker image from Docker Hub
docker pull lovishh/ec2-test-repo:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 lovishh/ec2-test-repo:latest
