#!/bin/bash

# create local machine if it does not exist yet
if ! docker-machine ls | grep ueberdb > /dev/null; then
  docker-machine create --driver virtualbox ueberdb
fi

FILE_NAME="defaultTestSettings.js"
CONFIG_FILE="ueberDB/$FILE_NAME"
# need to use db on the container, not on the host
cp $CONFIG_FILE /tmp/$FILE_NAME && cat /tmp/$FILE_NAME | sed 's#localhost#db#g' > $CONFIG_FILE

