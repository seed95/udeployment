#!/bin/bash

# First argument is directory
DIR="$1"
CUR_DIR=$(pwd)

sudo apt install git
git config --global url."ssh://git@bitbucket.org/".insteadOf "https://bitbucket.org/"

cd "$DIR"
git clone git@bitbucket.org:uniqdevs/ffmpeg-transcoder.git


cd "$CUR_DIR"
# cd ${BACKEND_DEPLOYMENT_PATH}/backend_base;
# docker-compose down &&
# docker-compose up