#!/bin/bash

# Check if a commit message was provided
if [ -z "$1" ]; then
    echo "Error: No commit message provided."
    echo "Usage: git_push.sh \"Your commit message\""
    exit 1
fi

# Add all files to the staging area
git add .

# Commit the changes
git commit -m "$1"

# Push the changes to the branch you're on
branch=$(git rev-parse --abbrev-ref HEAD)
git push origin $branch

# source push..sh 
