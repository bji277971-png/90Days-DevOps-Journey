#!/bin/bash

set -euo pipefail

LOGFILE=maintenance.log

echo "$(date) Maintenance Started" >> "$LOGFILE"

./log_rotate.sh logs >> "$LOGFILE"

./backup.sh data backups >> "$LOGFILE"

echo "$(date) Maintenance Finished" >> "$LOGFILE"
