#!/bin/bash

# This script schedules a cron job to run a specified command at a specified time

# Variables
CRON_TIME="* * * * *" # Every minute
COMMAND='/home/shubham/Documents/Projects/Static - Website/Shubham-web-1/git_to_github.sh' # Path to the script

# Add the cron job
(crontab -l 2>/dev/null; echo "$CRON_TIME $COMMAND") | crontab -    # The - option to crontab command is used to read the cron job from stdin

echo "Cron job scheduled: $CRON_TIME $COMMAND"   # Print a message to the console

# # Make the script executable
# chmod +x cronjob.sh

# # Run the script
# ./cronjob.sh