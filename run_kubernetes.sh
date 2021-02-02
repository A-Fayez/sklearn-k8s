#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=afayez14/sklearn
tag=0.1
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image="${dockerpath}:${tag}" sklearn-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment sklearn-app --port=8000 --target-port=80
kubectl port-forward sklearn-app 8000:80