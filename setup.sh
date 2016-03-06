#!/usr/bin/env bash

DOMAIN=$1
ROOTPATH=$(pwd)
PROJECT=`basename $ROOTPATH`

# update project name everywhere and working directory
find . -type f ! -name setup.sh -exec sed -i "s/{{ project_name }}/$PROJECT/g" {} +
find . -type f ! -name setup.sh -exec sed -i "s|{{ root_path }}|$ROOTPATH|g" {} +
find . -type f ! -name setup.sh -exec sed -i "s/{{ domain }}/$DOMAIN/g" {} +

mkdir logs


