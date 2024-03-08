#!/bin/bash -xe

# Remove existing pyenv directory
rm -rf /root/.pyenv

# Install pyenv
curl https://pyenv.run | bash

# Add pyenv to the PATH
export PATH="$HOME/.pyenv/bin:$PATH"

# Initialize pyenv
eval "$(pyenv init --path)"

# Install Python 3.11 using pyenv
pyenv install 3.11.0

# Change ownership of directory to nginx user
chown nginx:nginx -R /var/www/SampleApp/

# Change into the project directory
cd /var/www/SampleApp

# Specify Python 3.11 for the Pipenv environment
pipenv --python $(pyenv root)/versions/3.11.0/bin/python3.11

# Install project dependencies using Pipenv
pipenv install
