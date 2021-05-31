#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=caicellsangeon/cloud-devops:ml-microservice_20210531

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath ml-microservice
kubectl expose deployment ml-microservice --port=80 --name=ml-microservice-http

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-microservice-5cb7bf6946-gxz86  8000:80
