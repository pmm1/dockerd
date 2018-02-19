#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential g++ python git libjpeg-dev libpango1.0-dev libgif-dev fonts-cantarell fonts-lato

echo "Updating font-cache..."
fc-cache -f > /dev/null
