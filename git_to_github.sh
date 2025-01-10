#!/bin/bash

# Variables
chmod 777 "/home/shubham/Documents/Shell script/git_to_github.sh"
REPO_DIR="/home/shubham/Documents/Shell\ script"
COMMIT_MESSAGE="update"
BRANCH_NAME="main"

# Navigate to the repository directory
cd "$REPO_DIR"

# Add changes to git
git add .

# if commit message is not provided as an argument, then open the default editor
if [ -z "$1" ]
then
    git commit -m "$COMMIT_MESSAGE"
else
    git commit -m "$1"
fi

# Push changes to GitHub
git push origin $BRANCH_NAME

# clear the screen
clear



# # Make the script executable
# chmod +x git_to_github.sh

# # Run the script
# ./git_to_github.sh