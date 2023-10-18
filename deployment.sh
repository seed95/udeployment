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
echo "apt update"
sudo apt update

echo "Setup git"
sudo apt install git
git config --global url."ssh://git@bitbucket.org/".insteadOf "https://bitbucket.org/"



# cd ${BACKEND_DEPLOYMENT_PATH}/backend_base;
# docker-compose down &&
# docker-compose up