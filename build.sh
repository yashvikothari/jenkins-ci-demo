#!/bin/bash

echo "Building application..."

if [ ! -f app.txt ]; then
    echo "ERROR: app.txt not found"
    exit 1
fi

echo "Build successful"
