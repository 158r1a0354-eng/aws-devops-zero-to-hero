#!/bin/bash
set -e

IMAGE_NAME=eagnesh/flask-app:latest
CONTAINER_NAME=flask-app
PORT=5000

echo "Pulling latest Docker image..."
docker pull $IMAGE_NAME

echo "Stopping existing container (if any)..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Starting new container..."
docker run -d \
  --name $CONTAINER_NAME \
  -p $PORT:$PORT \
  $IMAGE_NAME

echo "Container started successfully"
