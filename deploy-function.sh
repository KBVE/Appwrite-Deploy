#!/bin/bash

FILE=./.appwrite # The path of the Appwrite file

for d in ./*/; do # Go through each subdirectory
        cd "$d" # cd into the directory
        if [ -f "$FILE" ]; then # Check whether the Appwrite file exists
            . $FILE # set values from .appwrite file as variables
            appwrite functions createDeployment --functionId=$FUNCID --activate=true --entrypoint="index.js" --code="${CODE}" --endpoint=$1
        fi
        cd .. # cd back to root directory
done