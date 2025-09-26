#!/bin/bash

CONTAINER_NAME="mysql"

# Check if container is running
if docker ps --filter "name=^/${CONTAINER_NAME}$" --format '{{.Names}}' | grep -wq "$CONTAINER_NAME"; then
    echo "Stopping container '$CONTAINER_NAME'..."
    docker stop "$CONTAINER_NAME"
    echo "Docker container '$CONTAINER_NAME' stopped."
else
    echo "Container '$CONTAINER_NAME' is not running."
fi

# Optional: Uncomment the lines below if you want to remove the container after stopping
echo "Removing container '$CONTAINER_NAME'..."
docker rm "$CONTAINER_NAME"
echo "Docker container '$CONTAINER_NAME' removed."
