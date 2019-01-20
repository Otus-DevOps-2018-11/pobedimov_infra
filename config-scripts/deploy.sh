#!/bin/bash

cd /home/appuser

# Clone application code from github
git clone -b monolith https://github.com/express42/reddit.git

# Install application dependencies
cd reddit && bundle install

# Run application
puma -d
