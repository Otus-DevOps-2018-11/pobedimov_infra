#!/bin/bash
set -e
# Add key and mongo repository
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

# Update APT
apt update

# Install Mongodb
apt install -y mongodb-org

# Run MongoDB and add to startup
systemctl start mongod
systemctl enable mongod
