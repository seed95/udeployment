#!/bin/bash

# First argument is directory
DIR="$1"
# Check if the directory argument is empty
if [ -z "$DIR" ]; then
  DIR="./uniqcast"
fi

# Create the directory if it doesn't exist
if [ ! -d "$DIR" ]; then
  mkdir -p "$DIR"
  echo "Directory '$DIR' created."
else
  echo "Directory '$DIR' already exists."
fi

# Install git
sudo apt update
sudo apt install git

# cd ${BACKEND_DEPLOYMENT_PATH}/backend_base;
# docker-compose down &&
# docker-compose up