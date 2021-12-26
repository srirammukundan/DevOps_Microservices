#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
docker tag 9894034584/udacity:p4udacity 9894034584/udacity:p4udacity-image
dockerpath=9894034584/udacity:p4udacity-image

# Step 2:  
# Authenticate & tag
docker login -u 9894034584
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push 9894034584/udacity:p4udacity-image
