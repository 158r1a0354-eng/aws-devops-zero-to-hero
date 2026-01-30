#!/bin/bash
set -e

CONTAINER_NAME=flask-app

echo "Stopping container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Container stopped"
