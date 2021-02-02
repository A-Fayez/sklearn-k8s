#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=afayez14/sklearn:0.1

# Step 2:  
# Authenticate & tag
docker logout
docker login
docker tag 919f2e8a45ce "${dockerpath}"
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push "${dockerpath}"
