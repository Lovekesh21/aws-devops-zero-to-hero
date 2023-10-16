#!/bin/bash
set -e

# Full path to the Docker executable (replace with the actual path)
DOCKER_EXECUTABLE="/usr/bin/docker"

# Pull the Docker image from Docker Hub
$DOCKER_EXECUTABLE pull nginx:latest

# Run the Docker image as a container
$DOCKER_EXECUTABLE run -d --name first-conatiner nginx:latest
