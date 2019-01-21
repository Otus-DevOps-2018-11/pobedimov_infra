#!/bin/bash
set -e
# Update APT
apt update
# Install Ruby and Bundler
apt install -y ruby-full ruby-bundler build-essential

# Check Ruby and Bundler correct install
#echo "Ruby has been installed"
#ruby -v
#echo "Bundler has been installed"
#bundler -v
