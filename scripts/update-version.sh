#!/bin/bash
FILE=_data/versions.yml
VERSION=$1
echo "Setting version to $VERSION"
if [[ -f "$FILE" ]]
then
    echo "mutiny_version: $VERSION" > $FILE
else 
    echo "Cannot find $FILE"    
    exit 1
fi
