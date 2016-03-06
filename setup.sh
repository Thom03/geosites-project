#!/usr/bin/env bash

PROJECT=$1
DOMAIN=$2
ROOTPATH=$(pwd)

# update project name everywhere and working directory
sed 's/{{ project_name }}/$PROJECT/g' * -R
sed 's/{{ root_path }}/$ROOTPATH/g' * -R
sed 's/{{ domain }}/$DOMAIN/g' * -R

mkdir logs


