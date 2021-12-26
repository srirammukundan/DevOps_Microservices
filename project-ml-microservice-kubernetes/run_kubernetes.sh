#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=9894034584/udacity:p4udacity-image

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run p4udacity --image=9894034584/udacity:p4udacity-image --port=1025


# Step 3:
# List kubernetes pods
kubectl get pods  

# Step 4:
# Forward the container port to a host
kubectl port-forward p4udacity 1025:80

