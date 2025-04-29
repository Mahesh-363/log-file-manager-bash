#!/bin/bash

mkdir -p archive

# Move log files older than 1 day to archive
find logs/ -name "*.log" -mtime +1 -exec mv {} archive/ \;

# Delete empty log files
find logs/ -name "*.log" -empty -delete

echo "✅ Logs archived and empty logs deleted!"
