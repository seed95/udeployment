#!/bin/bash

# First argument is directory
DIR="$1"
# Check if the directory argument is empty
if [ -z "$DIR" ]; then
  DIR="./uniqcast"
fi

rm -r "$DIR"

# Create the directory if it doesn't exist
if [ ! -d "$DIR" ]; then
  mkdir -p "$DIR"
  echo "Directory '$DIR' created."
else
  echo "Directory '$DIR' already exists."
fi

# Install git
echo "Run apt update"
sudo apt update

echo "Setup git and repositories"
./git.sh $DIR


echo "Setup docker and docker-compose"
./docker.sh
