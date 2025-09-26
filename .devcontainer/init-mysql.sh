#!/bin/bash

# Check if MySQL container is already running
if ! docker ps --format '{{.Names}}' | grep -q '^mysql$'; then
  echo "Starting MySQL container..."
  docker run -d \
    --name mysql \
    -e MYSQL_ROOT_PASSWORD=Passwd@123 \
    -v mysql_data:/var/lib/mysql \
    -p 3306:3306 \
    mysql:8
else
  echo "MySQL container is already running."
fi
