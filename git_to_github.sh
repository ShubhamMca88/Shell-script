#!/bin/bash

# Variables
REPO_DIR="/home/shubham/Documents/Shell script"
COMMIT_MESSAGE="update"
BRANCH_NAME="main"

# Ensure the repository directory path is quoted to handle spaces
cd "$REPO_DIR" || { echo "Failed to navigate to repository directory: $REPO_DIR"; exit 1; }

# Add changes to git
git add .

# Check if a commit message is passed as an argument
if [ -z "$1" ]; then
    git commit -m "$COMMIT_MESSAGE"
else
    git commit -m "$1"
fi

# Push changes to GitHub
git push origin "$BRANCH_NAME"

# Clear the screen
clear

echo "Changes pushed to GitHub successfully."

# Make the script executable (optional)
# chmod +x git_to_github.sh       # 777 for all

# Run the script (optional)
# ./git_to_github.sh
