#!/usr/bin/env bash

PROJECT=`basename $(pwd)`
DOMAIN=$2
ROOTPATH=$(pwd)

# update project name everywhere and working directory
find . -type f -exec sed -i 's/{{ project_name }}/$PROJECT/g' {} +
find . -type f -exec sed -i 's/{{ root_path }}/$ROOTPATH/g' {} +
find nginx -type f -exec sed -i 's/{{ domain }}/$DOMAIN/g' {} +

mkdir logs


