#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=galactican/endpoint


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run endpoint-pod --image=$dockerpath --port=80 --labels app=endpoint-pod

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward endpoint-pod 8000:80

