#!/bin/bash -xe

chown nginx:nginx -R /var/www/SampleApp/
cd /var/www/SampleApp
# Install pyenv (assuming it's not already installed)
curl https://pyenv.run | bash

# Add pyenv to the PATH
export PATH="$HOME/.pyenv/bin:$PATH"

# Initialize pyenv
eval "$(pyenv init --path)"
pyenv install 3.11.0
