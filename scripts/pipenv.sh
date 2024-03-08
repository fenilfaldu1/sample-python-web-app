#!/bin/bash -xe

chown nginx:nginx -R /var/www/SampleApp/
cd /var/www/SampleApp
pyenv install 3.11.0
pipenv --python $(pyenv root)/versions/3.11.0/bin/python3.11
pipenv install
