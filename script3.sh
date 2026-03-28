#!/bin/bash

DIRS=("/etc" "/home" "/usr")

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        echo "$DIR exists"
        du -sh $DIR
    else
        echo "$DIR not found"
    fi
done
