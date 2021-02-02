#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t sklearn:0.1 .

# Step 2: 
docker images ls 

# Step 3: 
docker run -p 8000:80 sklearn:0.1
