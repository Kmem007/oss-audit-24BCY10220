#!/bin/bash

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
    git) echo "Git is a version control system" ;;
    python) echo "Python programming language" ;;
    vlc) echo "VLC media player" ;;
    *) echo "Unknown package" ;;
esac
