#!/bin/bash

# Default time range: last 7 days (change as needed)
DAYS=7

# Check if user supplied a custom number of days
if [ ! -z "$1" ]; then
    DAYS=$1
fi

echo "Searching for files changed within the last $DAYS days..."

# List files committed recently
git log --since="$DAYS days ago" --name-only --pretty=format: | \
sort -u | grep '\.log$'

echo "Search Complete."

