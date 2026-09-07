#!/bin/bash

echo "Running tests..."

if grep -q "Jenkins CI Demo" app.txt; then
    echo "Test passed"
else
    echo "Test failed"
    exit 1
fi
