#!/bin/bash

set -euo pipefail

LOG_DIR="$1"

if [ ! -d "$LOG_DIR" ]; then
    echo "Directory does not exist!"
    exit 1
fi

echo "Compressing logs older than 7 days..."

find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \;

echo "Deleting .gz files older than 30 days..."

find "$LOG_DIR" -name "*.gz" -mtime +30 -delete

echo "Done!"
