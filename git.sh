#!/bin/bash

# First argument is directory
DIR="$1"
CUR_DIR=$(pwd)

sudo apt install git
git config --global url."ssh://git@bitbucket.org/".insteadOf "https://bitbucket.org/"

cd "$DIR"
git clone git@bitbucket.org:uniqdevs/ffmpeg-transcoder.git
git clone git@bitbucket.org:uniqdevs/dispatcher.git
git clone git@bitbucket.org:uniqdevs/tvmid-core.git
git clone git@bitbucket.org:uniqdevs/content-manager.git
git clone git@bitbucket.org:uniqdevs/ucast-administration.git

cd "$CUR_DIR"