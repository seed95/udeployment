#!/bin/bash



echo "Setup docker"
sudo apt install docker.io

# Specify the Docker authentication configuration
docker_auth_config='{
    "auths": {
        "docker.uniqcast.com:5000": {
            "auth": "dW5pcWFkbWluOlZ0bXlWSkVic2piSw=="
        }
    }
}'

# Set the file path
config_file="$HOME/.docker/config.json"

# Create the .docker directory if it doesn't exist
mkdir -p "$(dirname "$config_file")"

# Write the Docker authentication configuration to the config.json file
echo "$docker_auth_config" > "$config_file"

# Set proper permissions for the config.json file
chmod 600 "$config_file"

# Notify the user
echo "Docker authentication configuration has been saved to $config_file."

sudo systemctl start docker
sudo systemctl enable docker

echo "Setup docker compose"
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Verify the installations"
docker --version
docker-compose --version

