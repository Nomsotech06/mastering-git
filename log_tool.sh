#!/bin/bash

#!/bin/bash

# Script to find recent log files (modified within the last 24 hours)

# Default directory (can be changed or passed as argument)
LOGDIR=${1:-/var/log}

echo "======================================"
echo " Finding recent log files"
echo " Directory: $LOGDIR"
echo " Time Range: Last 24 hours"
echo "======================================"

# Check if directory exists
if [ ! -d "$LOGDIR" ]; then
    echo "Error: Directory not found: $LOGDIR"
    exit 1
fi

# Find log files modified in last 24 hours
echo "Recent log files:"
find "$LOGDIR" -type f -mtime -1 -print

echo "======================================"
echo " Search complete"
echo "======================================"

