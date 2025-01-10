#!/bin/bash

# Variables
REPO_DIR="/home/shubham/Documents/Shell script"
COMMIT_MESSAGE="Your commit message"
BRANCH_NAME="main"

# Navigate to the repository directory
cd $REPO_DIR

# Add changes to git
git add .

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push changes to GitHub
git push origin $BRANCH_NAME


# # Make the script executable
# chmod +x git_to_github.sh

# # Run the script
# ./git_to_github.sh