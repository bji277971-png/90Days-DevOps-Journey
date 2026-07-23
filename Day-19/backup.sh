#!/bin/bash

set -euo pipefail

SOURCE=$1

DEST=$2

DATE=$(date +%F)

BACKUP="$DEST/backup-$DATE.tar.gz"

if [ ! -d "$SOURCE" ]; then
    echo "Source directory not found!"
    exit 1
fi

mkdir -p "$DEST"

tar -czf "$BACKUP" "$SOURCE"

echo "Backup created"

ls -lh "$BACKUP"

find "$DEST" -name "*.tar.gz" -mtime +14 -delete
