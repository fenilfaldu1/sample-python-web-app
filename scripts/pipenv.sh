#!/bin/bash -xe

# Remove existing pyenv directory
rm -rf /root/.pyenv

# Change ownership of directory to nginx user
chown nginx:nginx -R /var/www/SampleApp/

# Change into the project directory
cd /var/www/SampleApp

# Install Python 3.11 using pyenv
pyenv install 3.11.0

# Specify Python 3.11 for the Pipenv environment
pipenv --python $(pyenv root)/versions/3.11.0/bin/python3.11

# Install project dependencies using Pipenv
pipenv install

