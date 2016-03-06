#!/usr/bin/env bash

DOMAIN=$1
ROOTPATH=`$(pwd)`
PROJECT=`basename $(pwd)`

# update project name everywhere and working directory
find . -type f ! -name setup.sh -exec sed -i "s/{{ project_name }}/$PROJECT/g" {} +
find . -type f ! -name setup.sh -exec sed -i "s|{{ root_path }}|$ROOTPATH|g" {} +
find . -type f ! -name setup.sh -exec sed -i "s/{{ domain }}/$DOMAIN/g" {} +

# install virtualenv and geonode
sudo pip install virtualenv
virtualenv venv --system-site-packages
pip install geonode
pip install -e .
mkdir logs



