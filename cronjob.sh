#!/bin/bash

# This script schedules a cron job to run a specified command at a specified time

# Variables
CRON_TIME="0 0 * * *" # Schedule to run daily at midnight
COMMAND="/path/to/your/command"

# Add the cron job
(crontab -l 2>/dev/null; echo "$CRON_TIME $COMMAND") | crontab -

echo "Cron job scheduled: $CRON_TIME $COMMAND"